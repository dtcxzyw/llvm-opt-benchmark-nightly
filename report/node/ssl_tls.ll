inline.NumInlined: 174
inline.NumDeleted: 64
begin_hunk_0_@mbedtls_ssl_parse_certificate:bb.a
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !271
  %i.ac = getelementptr i8, ptr %i.w, i64 9
  %.val8.val.i = load i8, ptr %i.ac, align 1, !tbaa !31
  %i.ad = icmp eq i8 %.val8.val.i, 1              ; 2 uses
  %..i.i = select i1 %i.ad, i64 12, i64 4
  %1 = select i1 %i.ad, i64 15, i64 7
  %i.ae = icmp eq i64 %i.ab, %1
  br i1 %i.ae, label %bb.k, label %bb.o

end_hunk_0
begin_hunk_1_@mbedtls_ssl_parse_certificate:bb.a

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !271 ; 4 uses
  %.val78.i = load ptr, ptr %0, align 8, !tbaa !25 ; 2 uses
  %i.bn = getelementptr i8, ptr %.val78.i, i64 9
  %.val78.val.i = load i8, ptr %i.bn, align 1, !tbaa !31
  %i.bo = icmp eq i8 %.val78.val.i, 1             ; 3 uses
  %..i.i52.a = select i1 %i.bo, i64 18, i64 10    ; 4 uses
  %i.bp = icmp ult i64 %i.bm, %..i.i52.a
  br i1 %i.bp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
end_hunk_1
begin_hunk_2_@mbedtls_ssl_parse_certificate:bb.a
  br label %ssl_parse_certificate_chain.exit.thread.sink.split

bb.w:                                             ; preds = %bb.u
  %..i.i52 = select i1 %i.bo, i64 12, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %..i.i52 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !80
  %.not72.i = icmp eq i8 %i.br, 0
  br i1 %.not72.i, label %bb.x, label %bb.y
end_hunk_2
begin_hunk_3_@mbedtls_ssl_parse_certificate:bb.a
  %.0.copyload.i76.i = load i16, ptr %i.bs, align 1
  %i.bt = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i76.i)
  %i.bu = zext i16 %i.bt to i64
  %2 = select i1 %i.bo, i64 15, i64 7             ; 3 uses
  %i.bv = add nuw nsw i64 %2, %i.bu
  %.not73.i = icmp eq i64 %i.bm, %i.bv
  br i1 %.not73.i, label %3, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7793, ptr noundef nonnull @.str.196) #25
  br label %ssl_parse_certificate_chain.exit.thread.sink.split

3:                                                ; preds = %bb.x
  %4 = icmp samesign ult i64 %2, %i.bm
  br i1 %4, label %bb.z, label %ssl_parse_certificate_chain.exit.thread59

bb.z:                                             ; preds = %3
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bx = getelementptr i8, ptr %0, i64 96
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %2 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !80
  %.not74.peel.i = icmp eq i8 %i.bz, 0
  br i1 %.not74.peel.i, label %bb.aa, label %.loopexit94.i
end_hunk_3
begin_hunk_4_@mbedtls_ssl_parse_certificate:bb.a
  br i1 %i.cd, label %.loopexit95.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = add nuw nsw i64 %..i.i52.a, %i.cc       ; 3 uses
  %i.cf = icmp samesign ugt i64 %i.ce, %i.bm
  br i1 %i.cf, label %.loopexit95.i, label %bb.ac

end_hunk_4
begin_hunk_5_@mbedtls_ssl_parse_certificate:bb.a
bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 7843, ptr noundef nonnull @.str.197) #25
  %i.cl = load ptr, ptr %i.bi, align 8, !tbaa !272
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %..i.i52.a
  %.val79.peel.i = load ptr, ptr %i.bx, align 8, !tbaa !125 ; 2 uses
  %i.cn = getelementptr i8, ptr %.val79.peel.i, i64 112
  %.val79.val.peel.i = load ptr, ptr %i.cn, align 8, !tbaa !45 ; 3 uses
end_hunk_5
begin_hunk_6_@mbedtls_ssl_parse_certificate:bb.a

bb.ah:                                            ; preds = %bb.ag, %bb.ad, %bb.ac
  %i.ct = phi ptr [ %i.bj, %bb.ac ], [ %.pre.i, %bb.ag ], [ %i.bj, %bb.ad ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %..i.i52.a
  %i.cv = tail call i32 @mbedtls_x509_crt_parse_der(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.cu, i64 noundef %i.cc) #25 ; 2 uses
  switch i32 %i.cv, label %ssl_parse_certificate_chain.exit [
    i32 0, label %bb.ai
end_hunk_6
begin_hunk_7_@mbedtls_ssl_parse_certificate:bb.a
  %i.dn = icmp ult i64 %i.di, %i.dm
  br i1 %i.dn, label %.peel.next.i, label %ssl_parse_certificate_chain.exit.thread59, !llvm.loop !273

ssl_parse_certificate_chain.exit.thread59:        ; preds = %bb.an, %3, %bb.ai
  tail call void @mbedtls_debug_print_crt(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 7893, ptr noundef nonnull @.str.200, ptr noundef nonnull %i.bd) #25
  br label %bb.ao

end_hunk_7
begin_hunk_8_@mbedtls_ssl_parse_finished:bb.a
  %.val50 = load ptr, ptr %0, align 8, !tbaa !25
  %i.v = getelementptr i8, ptr %.val50, i64 9
  %.val50.val = load i8, ptr %i.v, align 1, !tbaa !31
  %i.w = icmp eq i8 %.val50.val, 1                ; 2 uses
  %..i.a = select i1 %i.w, i64 24, i64 16
  %.not47 = icmp eq i64 %i.u, %..i.a
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_8
begin_hunk_9_@mbedtls_ssl_parse_finished:bb.a
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %..i = select i1 %i.w, i64 12, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %..i
  %i.z = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, i64 noundef 12) #25
  %.not48 = icmp eq i32 %i.z, 0
  br i1 %.not48, label %bb.m, label %bb.l
end_hunk_9
