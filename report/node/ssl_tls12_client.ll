inline.NumInlined: 76
inline.NumDeleted: 28
begin_hunk_0_@mbedtls_ssl_handshake_client_step:bb.a
  %.val303.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  %.phi.trans.insert.i = getelementptr i8, ptr %.val303.pre.i, i64 9
  %.val303.val.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !22
  %i.cp = icmp eq i8 %.val303.val.pre.i, 1
  %i.cq = select i1 %i.cp, i64 12, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.m
  %.val303.val.i = phi i64 [ %i.cq, %bb.z ], [ 4, %bb.m ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !66
  %4 = add nuw nsw i64 %.val303.val.i, 38
  %i.ct = icmp ult i64 %i.cs, %4
  br i1 %i.ct, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@mbedtls_ssl_handshake_client_step:bb.a
  br label %ssl_parse_server_hello.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 %.val303.val.i ; 8 uses
  tail call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1269, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.cw, i64 noundef 2) #13
  %i.cx = load ptr, ptr %0, align 8, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 9
end_hunk_1
begin_hunk_2_@mbedtls_ssl_handshake_client_step:bb.a
  %.val301.i = load ptr, ptr %0, align 8, !tbaa !21
  %i.ed = getelementptr i8, ptr %.val301.i, i64 9
  %.val301.val.i = load i8, ptr %i.ed, align 1, !tbaa !22
  %i.ee = icmp eq i8 %.val301.val.i, 1
  %..i305.i = select i1 %i.ee, i64 12, i64 4      ; 3 uses
  %5 = add nuw nsw i64 %i.dz, 39
  %i.ef = add nuw nsw i64 %5, %..i305.i
  %i.eg = icmp ugt i64 %i.ec, %i.ef
  br i1 %i.eg, label %bb.ai, label %bb.al

end_hunk_2
begin_hunk_3_@mbedtls_ssl_handshake_client_step:bb.a

bb.aj:                                            ; preds = %bb.ai
  %i.em = zext i16 %i.ej to i64                   ; 2 uses
  %6 = add nuw nsw i64 %i.dz, 40
  %i.en = add nuw nsw i64 %6, %..i305.i
  %i.eo = add nuw nsw i64 %i.en, %i.em
  %.not276.i = icmp eq i64 %i.ec, %i.eo
  br i1 %.not276.i, label %bb.an, label %bb.ak
end_hunk_3
begin_hunk_4_@mbedtls_ssl_handshake_client_step:bb.a
  br label %ssl_parse_server_hello.exit

bb.al:                                            ; preds = %bb.ah
  %7 = add nuw nsw i64 %i.dz, 38
  %i.eq = add nuw nsw i64 %7, %..i305.i
  %i.er = icmp eq i64 %i.ec, %i.eq
  br i1 %i.er, label %bb.an, label %bb.am

end_hunk_4
begin_hunk_5_@mbedtls_ssl_handshake_client_step:bb.a
  %.val115.i = load ptr, ptr %0, align 8, !tbaa !21
  %i.ol = getelementptr i8, ptr %.val115.i, i64 9
  %.val115.val.i = load i8, ptr %i.ol, align 1, !tbaa !22 ; 2 uses
  %i.om = icmp eq i8 %.val115.val.i, 1
  %..i.i30 = select i1 %i.om, i64 12, i64 4       ; 4 uses
  %.not97.i = icmp ugt i64 %i.ok, %..i.i30
  br i1 %.not97.i, label %bb.ew, label %bb.ev

end_hunk_5
begin_hunk_6_@mbedtls_ssl_handshake_client_step:bb.a
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 %..i.i30 ; 3 uses
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !20
  %i.oq = zext i8 %i.op to i64                    ; 5 uses
  %8 = or disjoint i64 %..i.i30, 2
  %i.or = add nuw nsw i64 %8, %i.oq
  %.not98.i = icmp ugt i64 %i.ok, %i.or
  br i1 %.not98.i, label %bb.ey, label %bb.ex

end_hunk_6
begin_hunk_7_@mbedtls_ssl_handshake_client_step:bb.a
  %.0.copyload.i107.i = load i16, ptr %i.ou, align 1 ; 2 uses
  %i.ov = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i107.i)
  %i.ow = zext i16 %i.ov to i64                   ; 3 uses
  %9 = or disjoint i64 %..i.i30, 3
  %i.ox = add nuw nsw i64 %9, %i.oq
  %i.oy = add nuw nsw i64 %i.ox, %i.ow
  %.not99.i = icmp ugt i64 %i.ok, %i.oy
  br i1 %.not99.i, label %bb.fa, label %bb.ez
end_hunk_7
begin_hunk_8_@mbedtls_ssl_handshake_client_step:bb.a
  %.val109.val.i = phi i8 [ %.val109.val.pre.i, %._crit_edge.loopexit.i ], [ %.val115.val.i, %bb.fa ]
  %i.pd = add nuw nsw i64 %i.oq, 2
  %i.pe = add nuw nsw i64 %i.pd, %i.ow            ; 3 uses
  %i.pf = icmp eq i8 %.val109.val.i, 1
  %..i122.i = select i1 %i.pf, i64 12, i64 4      ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oi, i64 %..i122.i ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 1
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pe
  %.0.copyload.i106.i = load i16, ptr %i.pi, align 1 ; 2 uses
  %i.pj = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i106.i)
  %i.pk = zext i16 %i.pj to i64                   ; 3 uses
  %10 = add nuw nsw i64 %i.pe, 3
  %i.pl = add nuw nsw i64 %10, %..i122.i
  %i.pm = add nuw nsw i64 %i.pl, %i.pk
  %.not100.i = icmp eq i64 %i.pc, %i.pm
  br i1 %.not100.i, label %bb.fc, label %bb.fb
end_hunk_8
begin_hunk_9_@mbedtls_ssl_handshake_client_step:bb.a
  %.val64.i = load ptr, ptr %0, align 8, !tbaa !21
  %i.abj = getelementptr i8, ptr %.val64.i, i64 9
  %.val64.val.i = load i8, ptr %i.abj, align 1, !tbaa !22
  %i.abk = icmp eq i8 %.val64.val.i, 1
  %..i.i53.a = select i1 %i.abk, i64 12, i64 4    ; 2 uses
  %11 = add nuw nsw i64 %..i.i53.a, 6             ; 2 uses
  %i.abl = icmp ult i64 %i.abi, %11
  br i1 %i.abl, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy, %bb.hx
end_hunk_9
begin_hunk_10_@mbedtls_ssl_handshake_client_step:bb.a
  br label %ssl_parse_server_hello.exit

bb.ia:                                            ; preds = %bb.hy
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abf, i64 %..i.i53.a ; 3 uses
  %.0.copyload.i62.i = load i32, ptr %i.abn, align 1
  %i.abo = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i62.i)
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 4
  %.0.copyload.i.i54 = load i16, ptr %i.abp, align 1 ; 2 uses
  %i.abq = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i54)
  %i.abr = zext i16 %i.abq to i64                 ; 5 uses
  %i.abs = add nuw nsw i64 %11, %i.abr
  %.not59.i = icmp eq i64 %i.abs, %i.abi
  br i1 %.not59.i, label %bb.ic, label %bb.ib

end_hunk_10
