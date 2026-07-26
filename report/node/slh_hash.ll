inline.NumInlined: 12
inline.NumDeleted: 4
begin_hunk_0_@slh_prf_shake:bb.a

xof_digest_3.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %i.t = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.s, %bb.e ]
  ret i32 %i.t
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @slh_prf_msg_shake(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 5 uses
  %i.j = tail call i32 @EVP_DigestInit_ex2(ptr noundef %i.i, ptr noundef null, ptr noundef null) #5
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %xof_digest_3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @EVP_DigestUpdate(ptr noundef %i.i, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %i.g) #5
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %xof_digest_3.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @EVP_DigestUpdate(ptr noundef %i.i, ptr noundef %2, i64 noundef range(i64 0, 4294967296) %i.g) #5
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.d, label %xof_digest_3.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @EVP_DigestUpdate(ptr noundef %i.i, ptr noundef %3, i64 noundef %4) #5
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %xof_digest_3.exit, label %xof_digest_3.exit.thread

xof_digest_3.exit:                                ; preds = %bb.d
  %i.r = call i32 @EVP_DigestFinalXOF(ptr noundef %i.i, ptr noundef nonnull %i.a, i64 noundef range(i64 0, 4294967296) %i.g) #5
  %.not = icmp eq i32 %i.r, 1
  br i1 %.not, label %bb.e, label %xof_digest_3.exit.thread

bb.e:                                             ; preds = %xof_digest_3.exit
  %i.s = call i32 @WPACKET_memcpy(ptr noundef %5, ptr noundef nonnull %i.a, i64 noundef %i.g) #5
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  br label %xof_digest_3.exit.thread

xof_digest_3.exit.thread:                         ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %xof_digest_3.exit
  %i.v = phi i32 [ 0, %xof_digest_3.exit ], [ %i.u, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.v
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @slh_f_shake(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 5 uses
  %i.i = tail call i32 @EVP_DigestInit_ex2(ptr noundef %i.h, ptr noundef null, ptr noundef null) #5
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %xof_digest_3.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @EVP_DigestUpdate(ptr noundef %i.h, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %i.f) #5
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %xof_digest_3.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @EVP_DigestUpdate(ptr noundef %i.h, ptr noundef %2, i64 noundef 32) #5
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.d, label %xof_digest_3.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @EVP_DigestUpdate(ptr noundef %i.h, ptr noundef %3, i64 noundef %4) #5
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %xof_digest_3.exit

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @EVP_DigestFinalXOF(ptr noundef %i.h, ptr noundef %5, i64 noundef range(i64 0, 4294967296) %i.f) #5
  %i.r = icmp eq i32 %i.q, 1
  %i.s = zext i1 %i.r to i32
  br label %xof_digest_3.exit

xof_digest_3.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %i.t = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.s, %bb.e ]
  ret i32 %i.t
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @slh_h_shake(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 %6) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 6 uses
  %i.i = tail call i32 @EVP_DigestInit_ex2(ptr noundef %i.h, ptr noundef null, ptr noundef null) #5
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %xof_digest_4.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @EVP_DigestUpdate(ptr noundef %i.h, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %i.f) #5
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %xof_digest_4.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @EVP_DigestUpdate(ptr noundef %i.h, ptr noundef %2, i64 noundef 32) #5
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.d, label %xof_digest_4.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @EVP_DigestUpdate(ptr noundef %i.h, ptr noundef %3, i64 noundef range(i64 0, 4294967296) %i.f) #5
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %xof_digest_4.exit

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @EVP_DigestUpdate(ptr noundef %i.h, ptr noundef %4, i64 noundef %i.f) #5
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.f, label %xof_digest_4.exit

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @EVP_DigestFinalXOF(ptr noundef %i.h, ptr noundef %5, i64 noundef range(i64 0, 4294967296) %i.f) #5
  %i.t = icmp eq i32 %i.s, 1
  %i.u = zext i1 %i.t to i32
  br label %xof_digest_4.exit

xof_digest_4.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.v = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.u, %bb.f ]
  ret i32 %i.v
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @slh_t_shake(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 5 uses
  %i.i = tail call i32 @EVP_DigestInit_ex2(ptr noundef %i.h, ptr noundef null, ptr noundef null) #5
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %xof_digest_3.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @EVP_DigestUpdate(ptr noundef %i.h, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %i.f) #5
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %xof_digest_3.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @EVP_DigestUpdate(ptr noundef %i.h, ptr noundef %2, i64 noundef 32) #5
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.d, label %xof_digest_3.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @EVP_DigestUpdate(ptr noundef %i.h, ptr noundef %3, i64 noundef %4) #5
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %xof_digest_3.exit

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @EVP_DigestFinalXOF(ptr noundef %i.h, ptr noundef %5, i64 noundef range(i64 0, 4294967296) %i.f) #5
  %i.r = icmp eq i32 %i.q, 1
  %i.s = zext i1 %i.r to i32
  br label %xof_digest_3.exit

xof_digest_3.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %i.t = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.s, %bb.e ]
  ret i32 %i.t
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @slh_hmsg_sha2(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 %7) #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  %i.j = zext i32 %i.i to i64                     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.m = tail call i32 @EVP_MD_get_size(ptr noundef %i.l) #5 ; 2 uses
  %8 = sext i32 %i.m to i64
  %i.n = shl nuw nsw i64 %i.j, 1                  ; 2 uses
  %i.o = add nsw i64 %i.n, %8
  %i.p = icmp slt i32 %i.m, 1
  br i1 %i.p, label %digest_4.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %1, i64 %i.j, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %2, i64 %i.j, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %i.u = tail call i32 @EVP_DigestInit_ex2(ptr noundef %i.s, ptr noundef null, ptr noundef null) #5
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.c, label %digest_4.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.w = tail call i32 @EVP_DigestUpdate(ptr noundef %i.s, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %i.j) #5
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.d, label %digest_4.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = tail call i32 @EVP_DigestUpdate(ptr noundef %i.s, ptr noundef %2, i64 noundef %i.j) #5
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.e, label %digest_4.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call i32 @EVP_DigestUpdate(ptr noundef %i.s, ptr noundef %3, i64 noundef range(i64 0, 4294967296) %i.j) #5
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %digest_4.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call i32 @EVP_DigestUpdate(ptr noundef %i.s, ptr noundef %4, i64 noundef %5) #5
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %digest_4.exit, label %digest_4.exit.thread

digest_4.exit:                                    ; preds = %bb.f
  %i.ae = call i32 @EVP_DigestFinal_ex(ptr noundef %i.s, ptr noundef nonnull %i.t, ptr noundef null) #5
  %.not = icmp eq i32 %i.ae, 1
  br i1 %.not, label %bb.g, label %digest_4.exit.thread

bb.g:                                             ; preds = %digest_4.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.ai = call i32 @PKCS1_MGF1(ptr noundef %6, i64 noundef %i.g, ptr noundef nonnull %i.a, i64 noundef %i.o, ptr noundef %i.ah) #5
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  br label %digest_4.exit.thread

digest_4.exit.thread:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %digest_4.exit, %bb.g, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %digest_4.exit ], [ %i.ak, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @slh_prf_sha2(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 %5) #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = zext i32 %i.g to i64                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.k = sub nsw i64 64, %i.h
  %i.l = tail call i32 @EVP_DigestInit_ex2(ptr noundef %i.j, ptr noundef null, ptr noundef null) #5
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %do_hash.exit

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @EVP_DigestUpdate(ptr noundef %i.j, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %i.h) #5
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.c, label %do_hash.exit

bb.c:                                             ; preds = %bb.b
  %i.p = call i32 @EVP_DigestUpdate(ptr noundef %i.j, ptr noundef nonnull %i.a, i64 noundef %i.k) #5
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %do_hash.exit

bb.d:                                             ; preds = %bb.c
  %i.r = call i32 @EVP_DigestUpdate(ptr noundef %i.j, ptr noundef %3, i64 noundef 22) #5
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.e, label %do_hash.exit

bb.e:                                             ; preds = %bb.d
  %i.t = call i32 @EVP_DigestUpdate(ptr noundef %i.j, ptr noundef %2, i64 noundef %i.h) #5
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.f, label %do_hash.exit

bb.f:                                             ; preds = %bb.e
  %i.v = call i32 @EVP_DigestFinal_ex(ptr noundef %i.j, ptr noundef nonnull %i.b, ptr noundef null) #5
  %i.w = icmp eq i32 %i.v, 1
  %i.x = zext i1 %i.w to i32
  br label %do_hash.exit

do_hash.exit:                                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.y = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.x, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 16 %i.b, i64 range(i64 0, 4294967296) %i.h, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.y
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @slh_prf_msg_sha2(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) #1 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %6 = alloca [3 x %struct.ossl_param_st], align 16 ; 6 uses
  %7 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %8 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.p = tail call ptr @EVP_MD_get0_name(ptr noundef %i.o) #5
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6, ptr noundef nonnull @.str, ptr noundef %i.p, i64 noundef 0) #5
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %7, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.r, i64 noundef 0) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.s, %bb.c ], [ %i.m, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %8) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  store i32 1, ptr %i.j, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi ptr [ %6, %bb.d ], [ null, %bb.a ]
  %i.t = call i32 @EVP_MAC_init(ptr noundef %i.d, ptr noundef %1, i64 noundef %i.i, ptr noundef %.1) #5
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.v = call i32 @EVP_MAC_update(ptr noundef %i.d, ptr noundef %2, i64 noundef %i.i) #5
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = call i32 @EVP_MAC_update(ptr noundef %i.d, ptr noundef %3, i64 noundef %4) #5
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = call i32 @EVP_MAC_final(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 64) #5
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = call i32 @WPACKET_memcpy(ptr noundef %5, ptr noundef nonnull %i.a, i64 noundef %i.i) #5
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ae = phi i32 [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ %i.ad, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.ae
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @slh_f_sha2(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 %6) #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
