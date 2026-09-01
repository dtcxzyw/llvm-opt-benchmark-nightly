Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ssl?download=true
inline.NumInlined: 157
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@wolfSSL_CTX_use_certificate_chain_file:bb.a

bb.b:                                             ; preds = %.split
  %i.j = load i64, ptr %i.d, align 8, !tbaa !39
  %i.k = call i32 @ProcessBuffer(ptr noundef null, ptr noundef %i.i, i64 noundef %i.j, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 1, ptr readonly poison)
  br label %ProcessChainBuffer.exit.i

ProcessChainBuffer.exit.i:                        ; preds = %.split, %bb.b
  %.2.i = phi i32 [ %i.k, %bb.b ], [ %i.g, %.split ]
  %.val45.i = load i32, ptr %i.f, align 4, !tbaa !227
  %.not.i.i = icmp eq i32 %.val45.i, 0
  %.not4.i.i = icmp eq ptr %i.i, null
  %or.cond.i46.i = select i1 %.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %or.cond.i46.i, label %ProcessFile.exit, label %bb.c

bb.c:                                             ; preds = %ProcessChainBuffer.exit.i
  call void @wolfSSL_Free(ptr noundef nonnull %i.i) #23
  br label %ProcessFile.exit

ProcessFile.exit:                                 ; preds = %ProcessChainBuffer.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.f

.split5:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.m = load i16, ptr %i.l, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %2, align 8, !tbaa !224
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1024, ptr %i.n, align 8, !tbaa !226
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !227
  %i.p = call fastcc i32 @wolfssl_read_file_static(ptr noundef readonly %1, ptr noundef %2, ptr noundef %i.b) ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %.ProcessChainBuffer.exit_crit_edge.i7

.ProcessChainBuffer.exit_crit_edge.i7:            ; preds = %.split5
  %.val.pre.i8 = load ptr, ptr %2, align 8
  br label %ProcessChainBuffer.exit.i9

bb.d:                                             ; preds = %.split5
  %i.r = and i16 %i.m, 2
  %.not6 = icmp eq i16 %i.r, 0
  %i.s = zext i1 %.not6 to i32
  %i.t = load ptr, ptr %2, align 8, !tbaa !224    ; 2 uses
  %i.u = load i64, ptr %i.b, align 8, !tbaa !39
  %i.v = call i32 @ProcessBuffer(ptr noundef nonnull %0, ptr noundef %i.t, i64 noundef %i.u, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef %i.s, ptr readonly poison)
  br label %ProcessChainBuffer.exit.i9

ProcessChainBuffer.exit.i9:                       ; preds = %bb.d, %.ProcessChainBuffer.exit_crit_edge.i7
  %.val.i10 = phi ptr [ %.val.pre.i8, %.ProcessChainBuffer.exit_crit_edge.i7 ], [ %i.t, %bb.d ] ; 2 uses
  %.2.i11 = phi i32 [ %i.p, %.ProcessChainBuffer.exit_crit_edge.i7 ], [ %i.v, %bb.d ]
  %.val45.i12 = load i32, ptr %i.o, align 4, !tbaa !227
  %.not.i.i13 = icmp eq i32 %.val45.i12, 0
  %.not4.i.i14 = icmp eq ptr %.val.i10, null
  %or.cond.i46.i15 = select i1 %.not.i.i13, i1 true, i1 %.not4.i.i14
  br i1 %or.cond.i46.i15, label %ProcessFile.exit30, label %bb.e

bb.e:                                             ; preds = %ProcessChainBuffer.exit.i9
  call void @wolfSSL_Free(ptr noundef nonnull %.val.i10) #23
  br label %ProcessFile.exit30

ProcessFile.exit30:                               ; preds = %ProcessChainBuffer.exit.i9, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.f:                                             ; preds = %ProcessFile.exit, %ProcessFile.exit30
  %phi.call = phi i32 [ %.2.i, %ProcessFile.exit ], [ %.2.i11, %ProcessFile.exit30 ]
  %i.w = icmp eq i32 %phi.call, 1
  %i.x = zext i1 %i.w to i32
  ret i32 %i.x
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_CTX_use_certificate_chain_file_format(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 3 uses
  %3 = alloca %struct.StaticBuffer, align 8       ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 3 uses
  %4 = alloca %struct.StaticBuffer, align 8       ; 7 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.split, label %.split6

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.c, ptr %4, align 8, !tbaa !224
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1024, ptr %i.e, align 8, !tbaa !226
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !227
  %i.g = call fastcc i32 @wolfssl_read_file_static(ptr noundef readonly %1, ptr noundef %4, ptr noundef %i.d) ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = load ptr, ptr %4, align 8                ; 3 uses
  br i1 %i.h, label %bb.b, label %ProcessChainBuffer.exit.i

bb.b:                                             ; preds = %.split
  %i.j = load i64, ptr %i.d, align 8, !tbaa !39
  %i.k = call i32 @ProcessBuffer(ptr noundef null, ptr noundef %i.i, i64 noundef %i.j, i32 noundef %2, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 1, ptr readonly poison)
  br label %ProcessChainBuffer.exit.i

ProcessChainBuffer.exit.i:                        ; preds = %.split, %bb.b
  %.2.i = phi i32 [ %i.k, %bb.b ], [ %i.g, %.split ]
  %.val45.i = load i32, ptr %i.f, align 4, !tbaa !227
  %.not.i.i = icmp eq i32 %.val45.i, 0
  %.not4.i.i = icmp eq ptr %i.i, null
  %or.cond.i46.i = select i1 %.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %or.cond.i46.i, label %ProcessFile.exit, label %bb.c

bb.c:                                             ; preds = %ProcessChainBuffer.exit.i
  call void @wolfSSL_Free(ptr noundef nonnull %i.i) #23
  br label %ProcessFile.exit

ProcessFile.exit:                                 ; preds = %ProcessChainBuffer.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.f

.split6:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.m = load i16, ptr %i.l, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %3, align 8, !tbaa !224
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1024, ptr %i.n, align 8, !tbaa !226
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !227
  %i.p = call fastcc i32 @wolfssl_read_file_static(ptr noundef readonly %1, ptr noundef %3, ptr noundef %i.b) ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %.ProcessChainBuffer.exit_crit_edge.i8

.ProcessChainBuffer.exit_crit_edge.i8:            ; preds = %.split6
  %.val.pre.i9 = load ptr, ptr %3, align 8
  br label %ProcessChainBuffer.exit.i10

bb.d:                                             ; preds = %.split6
  %i.r = and i16 %i.m, 2
  %.not7 = icmp eq i16 %i.r, 0
  %i.s = zext i1 %.not7 to i32
  %i.t = load ptr, ptr %3, align 8, !tbaa !224    ; 2 uses
  %i.u = load i64, ptr %i.b, align 8, !tbaa !39
  %i.v = call i32 @ProcessBuffer(ptr noundef nonnull %0, ptr noundef %i.t, i64 noundef %i.u, i32 noundef %2, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef %i.s, ptr readonly poison)
  br label %ProcessChainBuffer.exit.i10

ProcessChainBuffer.exit.i10:                      ; preds = %bb.d, %.ProcessChainBuffer.exit_crit_edge.i8
  %.val.i11 = phi ptr [ %.val.pre.i9, %.ProcessChainBuffer.exit_crit_edge.i8 ], [ %i.t, %bb.d ] ; 2 uses
  %.2.i12 = phi i32 [ %i.p, %.ProcessChainBuffer.exit_crit_edge.i8 ], [ %i.v, %bb.d ]
  %.val45.i13 = load i32, ptr %i.o, align 4, !tbaa !227
  %.not.i.i14 = icmp eq i32 %.val45.i13, 0
  %.not4.i.i15 = icmp eq ptr %.val.i11, null
  %or.cond.i46.i16 = select i1 %.not.i.i14, i1 true, i1 %.not4.i.i15
  br i1 %or.cond.i46.i16, label %ProcessFile.exit32, label %bb.e

bb.e:                                             ; preds = %ProcessChainBuffer.exit.i10
  call void @wolfSSL_Free(ptr noundef nonnull %.val.i11) #23
  br label %ProcessFile.exit32

ProcessFile.exit32:                               ; preds = %ProcessChainBuffer.exit.i10, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.f:                                             ; preds = %ProcessFile.exit, %ProcessFile.exit32
  %phi.call = phi i32 [ %.2.i, %ProcessFile.exit ], [ %.2.i12, %ProcessFile.exit32 ]
  %i.w = icmp eq i32 %phi.call, 1
  %i.x = zext i1 %i.w to i32
  ret i32 %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef ptr @wolfSSL_get_system_CA_dirs(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 4, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ @systemCaDirs, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -461, 2) i32 @wolfSSL_CTX_load_system_CA_certs(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null                     ; 2 uses
  br i1 %i.a, label %.lr.ph.split.preheader.i, label %bb.b

.lr.ph.split.preheader.i:                         ; preds = %bb.a
  %i.b = load ptr, ptr @systemCaDirs, align 16, !tbaa !228
  %i.c = tail call i32 @wolfSSL_CTX_load_verify_locations_ex(ptr noundef nonnull %0, ptr noundef null, ptr noundef %i.b, i32 noundef 1)
  %.not.i = icmp eq i32 %i.c, 1
  br i1 %.not.i, label %LoadSystemCaCertsNix.exit.thread, label %.lr.ph.split.1.i

.lr.ph.split.1.i:                                 ; preds = %.lr.ph.split.preheader.i
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @systemCaDirs, i64 8), align 8, !tbaa !228
  %i.e = tail call i32 @wolfSSL_CTX_load_verify_locations_ex(ptr noundef nonnull %0, ptr noundef null, ptr noundef %i.d, i32 noundef 1)
  %.not.1.i = icmp eq i32 %i.e, 1
  br i1 %.not.1.i, label %LoadSystemCaCertsNix.exit.thread, label %.lr.ph.split.2.i

.lr.ph.split.2.i:                                 ; preds = %.lr.ph.split.1.i
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @systemCaDirs, i64 16), align 16, !tbaa !228
  %i.g = tail call i32 @wolfSSL_CTX_load_verify_locations_ex(ptr noundef nonnull %0, ptr noundef null, ptr noundef %i.f, i32 noundef 1)
  %.not.2.i = icmp eq i32 %i.g, 1
  br i1 %.not.2.i, label %LoadSystemCaCertsNix.exit.thread, label %bb.b

LoadSystemCaCertsNix.exit.thread:                 ; preds = %.lr.ph.split.2.i, %.lr.ph.split.1.i, %.lr.ph.split.preheader.i
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.split.2.i, %LoadSystemCaCertsNix.exit.thread
  %1 = phi i1 [ true, %LoadSystemCaCertsNix.exit.thread ], [ false, %.lr.ph.split.2.i ], [ false, %bb.a ]
  %spec.select.i = zext i1 %i.a to i32
  %2 = icmp eq ptr %0, null
  %or.cond = or i1 %2, %1
  %spec.store.select = select i1 %or.cond, i32 %spec.select.i, i32 -461
  ret i32 %spec.store.select
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_use_certificate_ASN1(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 128
  %.not = icmp eq i64 %i.g, 0
  %i.h = zext i1 %.not to i32
  %i.i = call i32 @ProcessBuffer(ptr noundef null, ptr noundef nonnull %1, i64 noundef %i.d, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.h, ptr nonnull poison)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.j = icmp eq i32 %i.i, 1
  %i.k = zext i1 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 2) i32 @wolfSSL_use_certificate_file(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 3 uses
  %3 = alloca %struct.StaticBuffer, align 8       ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 16, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.f = load i64, ptr %i.e, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %3, align 8, !tbaa !224
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1024, ptr %i.g, align 8, !tbaa !226
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !227
  %i.i = call fastcc i32 @wolfssl_read_file_static(ptr noundef readonly %1, ptr noundef %3, ptr noundef %i.b)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.ProcessChainBuffer.exit_crit_edge.i

.ProcessChainBuffer.exit_crit_edge.i:             ; preds = %bb.b
  %.val.pre.i = load ptr, ptr %3, align 8
  br label %ProcessChainBuffer.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.f, 128
  %.not = icmp eq i64 %i.k, 0
  %i.l = zext i1 %.not to i32
  %i.m = load ptr, ptr %3, align 8, !tbaa !224    ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !39
  %i.o = call i32 @ProcessBuffer(ptr noundef %i.d, ptr noundef %i.m, i64 noundef %i.n, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef %i.l, ptr readonly poison)
  %i.p = icmp eq i32 %i.o, 1
  %i.q = zext i1 %i.p to i32
  br label %ProcessChainBuffer.exit.i

ProcessChainBuffer.exit.i:                        ; preds = %bb.c, %.ProcessChainBuffer.exit_crit_edge.i
  %.val.i = phi ptr [ %.val.pre.i, %.ProcessChainBuffer.exit_crit_edge.i ], [ %i.m, %bb.c ] ; 2 uses
  %.2.i = phi i32 [ 0, %.ProcessChainBuffer.exit_crit_edge.i ], [ %i.q, %bb.c ]
  %.val45.i = load i32, ptr %i.h, align 4, !tbaa !227
  %.not.i.i = icmp eq i32 %.val45.i, 0
  %.not4.i.i = icmp eq ptr %.val.i, null
  %or.cond.i46.i = select i1 %.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %or.cond.i46.i, label %ProcessFile.exit, label %bb.d

bb.d:                                             ; preds = %ProcessChainBuffer.exit.i
  call void @wolfSSL_Free(ptr noundef nonnull %.val.i) #23
  br label %ProcessFile.exit

ProcessFile.exit:                                 ; preds = %ProcessChainBuffer.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %ProcessFile.exit
  %.0 = phi i32 [ %.2.i, %ProcessFile.exit ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 2) i32 @wolfSSL_use_PrivateKey_file(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 3 uses
  %3 = alloca %struct.StaticBuffer, align 8       ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 16, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.f = load i64, ptr %i.e, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %3, align 8, !tbaa !224
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1024, ptr %i.g, align 8, !tbaa !226
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !227
  %i.i = call fastcc i32 @wolfssl_read_file_static(ptr noundef readonly %1, ptr noundef %3, ptr noundef %i.b)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.ProcessChainBuffer.exit_crit_edge.i

.ProcessChainBuffer.exit_crit_edge.i:             ; preds = %bb.b
  %.val.pre.i = load ptr, ptr %3, align 8
  br label %ProcessChainBuffer.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.f, 128
  %.not = icmp eq i64 %i.k, 0
  %i.l = zext i1 %.not to i32
  %i.m = load ptr, ptr %3, align 8, !tbaa !224    ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !39
  %i.o = call i32 @ProcessBuffer(ptr noundef %i.d, ptr noundef %i.m, i64 noundef %i.n, i32 noundef %2, i32 noundef 1, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef %i.l, ptr readonly poison)
  %i.p = icmp eq i32 %i.o, 1
  %i.q = zext i1 %i.p to i32
  br label %ProcessChainBuffer.exit.i

ProcessChainBuffer.exit.i:                        ; preds = %bb.c, %.ProcessChainBuffer.exit_crit_edge.i
  %.val.i = phi ptr [ %.val.pre.i, %.ProcessChainBuffer.exit_crit_edge.i ], [ %i.m, %bb.c ] ; 2 uses
  %.2.i = phi i32 [ 0, %.ProcessChainBuffer.exit_crit_edge.i ], [ %i.q, %bb.c ]
  %.val45.i = load i32, ptr %i.h, align 4, !tbaa !227
  %.not.i.i = icmp eq i32 %.val45.i, 0
  %.not4.i.i = icmp eq ptr %.val.i, null
  %or.cond.i46.i = select i1 %.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %or.cond.i46.i, label %ProcessFile.exit, label %bb.d

bb.d:                                             ; preds = %ProcessChainBuffer.exit.i
  call void @wolfSSL_Free(ptr noundef nonnull %.val.i) #23
  br label %ProcessFile.exit

ProcessFile.exit:                                 ; preds = %ProcessChainBuffer.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %ProcessFile.exit
  %.0 = phi i32 [ %.2.i, %ProcessFile.exit ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 2) i32 @wolfSSL_use_certificate_chain_file(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 3 uses
  %2 = alloca %struct.StaticBuffer, align 8       ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 16, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.f = load i64, ptr %i.e, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %2, align 8, !tbaa !224
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1024, ptr %i.g, align 8, !tbaa !226
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !227
  %i.i = call fastcc i32 @wolfssl_read_file_static(ptr noundef readonly %1, ptr noundef %2, ptr noundef %i.b)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.ProcessChainBuffer.exit_crit_edge.i

.ProcessChainBuffer.exit_crit_edge.i:             ; preds = %bb.b
  %.val.pre.i = load ptr, ptr %2, align 8
  br label %ProcessChainBuffer.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.f, 128
  %.not = icmp eq i64 %i.k, 0
  %i.l = zext i1 %.not to i32
  %i.m = load ptr, ptr %2, align 8, !tbaa !224    ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !39
  %i.o = call i32 @ProcessBuffer(ptr noundef %i.d, ptr noundef %i.m, i64 noundef %i.n, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %0, ptr noundef null, i32 noundef 1, i32 noundef %i.l, ptr readonly poison)
  %i.p = icmp eq i32 %i.o, 1
  %i.q = zext i1 %i.p to i32
  br label %ProcessChainBuffer.exit.i

ProcessChainBuffer.exit.i:                        ; preds = %bb.c, %.ProcessChainBuffer.exit_crit_edge.i
  %.val.i = phi ptr [ %.val.pre.i, %.ProcessChainBuffer.exit_crit_edge.i ], [ %i.m, %bb.c ] ; 2 uses
end_hunk_0
