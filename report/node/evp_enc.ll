inline.NumInlined: 64
inline.NumDeleted: 30
begin_hunk_0_@EVP_CIPHER_CTX_ctrl:bb.a
  %13 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %14 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %15 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %16 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %17 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %18 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %19 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %20 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %21 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %22 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %23 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %24 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %25 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %26 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %27 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %28 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %29 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %30 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %31 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = sext i32 %2 to i64                       ; 8 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !40
end_hunk_0
begin_hunk_1_@EVP_CIPHER_CTX_ctrl:bb.a
  br i1 %i.m, label %bb.ax, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  store i32 -1, ptr %i.k, align 8, !tbaa !53
  br label %.thread

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6, ptr noundef nonnull @.str.5, ptr noundef %3, i64 noundef %i.c) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %.thread100

bb.j:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@EVP_CIPHER_CTX_ctrl:bb.a
  br i1 %i.q, label %bb.ax, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %7, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  store i32 -1, ptr %i.o, align 4, !tbaa !29
  br label %.thread

end_hunk_2
begin_hunk_3_@EVP_CIPHER_CTX_ctrl:bb.a
  %i.s = sub nuw nsw i32 15, %2
  %i.t = zext nneg i32 %i.s to i64
  store i64 %i.t, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %8, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 -1, ptr %i.u, align 4, !tbaa !29
  br label %.thread

bb.o:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %9, ptr noundef nonnull @.str.7, ptr noundef %3, i64 noundef %i.c) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %.thread

bb.p:                                             ; preds = %bb.e
end_hunk_3
begin_hunk_4_@EVP_CIPHER_CTX_ctrl:bb.a

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.w = phi i64 [ 0, %bb.q ], [ %i.c, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %10, ptr noundef nonnull @.str.8, ptr noundef %3, i64 noundef %i.w) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.thread100

bb.s:                                             ; preds = %bb.e
end_hunk_4
begin_hunk_5_@EVP_CIPHER_CTX_ctrl:bb.a
  br i1 %i.x, label %bb.ax, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %11, ptr noundef nonnull @.str.9, ptr noundef %3, i64 noundef %i.c) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %.thread

bb.u:                                             ; preds = %bb.e
end_hunk_5
begin_hunk_6_@EVP_CIPHER_CTX_ctrl:bb.a

bb.w:                                             ; preds = %bb.v
  store i32 %2, ptr %i.b, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %12, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.b) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  br label %bb.as

bb.x:                                             ; preds = %bb.e
end_hunk_6
begin_hunk_7_@EVP_CIPHER_CTX_ctrl:bb.a

bb.y:                                             ; preds = %bb.x
  store i32 %2, ptr %i.b, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %13, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.b) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  br label %.thread

bb.z:                                             ; preds = %bb.e
end_hunk_7
begin_hunk_8_@EVP_CIPHER_CTX_ctrl:bb.a

bb.aa:                                            ; preds = %bb.z, %bb.e
  %.185 = phi i32 [ 0, %bb.z ], [ 1, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %14, ptr noundef nonnull @.str.12, ptr noundef %3, i64 noundef %i.c) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  br label %bb.as

bb.ab:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %15, ptr noundef nonnull @.str.13, ptr noundef %3, i64 noundef %i.c) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.aa = load ptr, ptr %0, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
end_hunk_8
begin_hunk_9_@EVP_CIPHER_CTX_ctrl:bb.a
  br i1 %i.ae, label %bb.aw, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %16, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.af = load ptr, ptr %0, align 8, !tbaa !9
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ah = call i32 @evp_do_ciph_ctx_getparams(ptr noundef %i.af, ptr noundef %i.ag, ptr noundef nonnull %4) #9 ; 2 uses
end_hunk_9
begin_hunk_10_@EVP_CIPHER_CTX_ctrl:bb.a

bb.af:                                            ; preds = %bb.ae, %bb.e
  %.286 = phi i32 [ 0, %bb.ae ], [ 1, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %17, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %17, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #9
  br label %bb.as

bb.ag:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %18, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %18, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #9
  %i.al = load ptr, ptr %0, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !20
end_hunk_10
begin_hunk_11_@EVP_CIPHER_CTX_ctrl:bb.a
  br i1 %i.ap, label %bb.ax, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %19, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %19, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #9
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #9
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %20) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %20, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #9
  %i.ar = load ptr, ptr %0, align 8, !tbaa !9
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.at = call i32 @evp_do_ciph_ctx_getparams(ptr noundef %i.ar, ptr noundef %i.as, ptr noundef nonnull %4) #9
end_hunk_11
begin_hunk_12_@EVP_CIPHER_CTX_ctrl:bb.a
  br i1 %i.ax, label %bb.ax, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #9
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !84
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !86
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %21, ptr noundef nonnull @.str.18, ptr noundef %i.az, i64 noundef %i.bb) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %21, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #9
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #9
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %22, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.bd) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %22, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #9
  %i.be = load ptr, ptr %0, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !20
end_hunk_12
begin_hunk_13_@EVP_CIPHER_CTX_ctrl:bb.a
  br i1 %i.bi, label %bb.ax, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %23, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %23, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #9
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %24, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.bd) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %24, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #9
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #9
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %25) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %25, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #9
  %i.bk = load ptr, ptr %0, align 8, !tbaa !9
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.bm = call i32 @evp_do_ciph_ctx_getparams(ptr noundef %i.bk, ptr noundef %i.bl, ptr noundef nonnull %4) #9
end_hunk_13
begin_hunk_14_@EVP_CIPHER_CTX_ctrl:bb.a
  br label %bb.ax

bb.an:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #9
  %i.bq = load ptr, ptr %3, align 8, !tbaa !87
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !86
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %26, ptr noundef nonnull @.str.21, ptr noundef %i.bq, i64 noundef %i.bs) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %26, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #9
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #9
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !84
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !86
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %27, ptr noundef nonnull @.str.22, ptr noundef %i.bv, i64 noundef %i.bw) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %27, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #9
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #9
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %28, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.by) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %28, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #9
  %i.bz = load ptr, ptr %0, align 8, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !20
end_hunk_14
begin_hunk_15_@EVP_CIPHER_CTX_ctrl:bb.a
  br i1 %i.cd, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #9
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %29, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %29, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #9
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %30) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %30, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #9
  %i.ce = load ptr, ptr %0, align 8, !tbaa !9
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !20
  %i.cg = call i32 @evp_do_ciph_ctx_getparams(ptr noundef %i.ce, ptr noundef %i.cf, ptr noundef nonnull %4) #9
end_hunk_15
begin_hunk_16_@EVP_CIPHER_CTX_ctrl:bb.a
  br i1 %i.ck, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #9
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %31, ptr noundef nonnull @.str.24, ptr noundef %3, i64 noundef %i.c) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %31, i64 40, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #9
  br label %.thread

bb.as:                                            ; preds = %bb.af, %bb.aa, %bb.w
end_hunk_16
