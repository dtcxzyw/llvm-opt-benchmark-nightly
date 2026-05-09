inline.NumInlined: 76
inline.NumDeleted: 28
begin_hunk_0_@mbedtls_ssl_handshake_client_step:bb.a
  %.val303.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  %.phi.trans.insert.i = getelementptr i8, ptr %.val303.pre.i, i64 9
  %.val303.val.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !22
  %.val303.val.pre.fr.i = freeze i8 %.val303.val.pre.i
  %i.cp = icmp eq i8 %.val303.val.pre.fr.i, 1     ; 2 uses
  %spec.select = select i1 %i.cp, i64 12, i64 4
  %i.cq = select i1 %i.cp, i64 50, i64 42
  br label %bb.aa

bb.aa:                                            ; preds = %bb.m, %bb.z
  %4 = phi i64 [ %spec.select, %bb.z ], [ 4, %bb.m ]
  %.val303.val.i = phi i64 [ %i.cq, %bb.z ], [ 42, %bb.m ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !66
  %i.ct = icmp ult i64 %i.cs, %.val303.val.i
  br i1 %i.ct, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@mbedtls_ssl_handshake_client_step:bb.a
  br label %ssl_parse_server_hello.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 8 uses
  tail call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1269, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.cw, i64 noundef 2) #13
  %i.cx = load ptr, ptr %0, align 8, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 9
end_hunk_1
begin_hunk_2_@mbedtls_ssl_handshake_client_step:bb.a
  %.val301.i = load ptr, ptr %0, align 8, !tbaa !21
  %i.ed = getelementptr i8, ptr %.val301.i, i64 9
  %.val301.val.i = load i8, ptr %i.ed, align 1, !tbaa !22
  %i.ee = icmp eq i8 %.val301.val.i, 1            ; 3 uses
  %..i305.i = select i1 %i.ee, i64 51, i64 43
  %i.ef = add nuw nsw i64 %..i305.i, %i.dz
  %i.eg = icmp ugt i64 %i.ec, %i.ef
  br i1 %i.eg, label %bb.ai, label %bb.al

end_hunk_2
begin_hunk_3_@mbedtls_ssl_handshake_client_step:bb.a

bb.aj:                                            ; preds = %bb.ai
  %i.em = zext i16 %i.ej to i64                   ; 2 uses
  %5 = select i1 %i.ee, i64 52, i64 44
  %i.en = add nuw nsw i64 %5, %i.dz
  %i.eo = add nuw nsw i64 %i.en, %i.em
  %.not276.i = icmp eq i64 %i.ec, %i.eo
  br i1 %.not276.i, label %bb.an, label %bb.ak
end_hunk_3
begin_hunk_4_@mbedtls_ssl_handshake_client_step:bb.a
  br label %ssl_parse_server_hello.exit

bb.al:                                            ; preds = %bb.ah
  %6 = select i1 %i.ee, i64 50, i64 42
  %i.eq = add nuw nsw i64 %6, %i.dz
  %i.er = icmp eq i64 %i.ec, %i.eq
  br i1 %i.er, label %bb.an, label %bb.am

end_hunk_4
begin_hunk_5_@mbedtls_ssl_handshake_client_step:bb.a
  %.val115.i = load ptr, ptr %0, align 8, !tbaa !21
  %i.ol = getelementptr i8, ptr %.val115.i, i64 9
  %.val115.val.i = load i8, ptr %i.ol, align 1, !tbaa !22 ; 2 uses
  %i.om = icmp eq i8 %.val115.val.i, 1            ; 3 uses
  %..i.i30 = select i1 %i.om, i64 12, i64 4       ; 2 uses
  %.not97.i = icmp ugt i64 %i.ok, %..i.i30
  br i1 %.not97.i, label %bb.ew, label %bb.ev

end_hunk_5
begin_hunk_6_@mbedtls_ssl_handshake_client_step:bb.a
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 %..i.i30 ; 3 uses
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !20
  %i.oq = zext i8 %i.op to i64                    ; 5 uses
  %7 = select i1 %i.om, i64 14, i64 6
  %i.or = add nuw nsw i64 %7, %i.oq
  %.not98.i = icmp ugt i64 %i.ok, %i.or
  br i1 %.not98.i, label %bb.ey, label %bb.ex

end_hunk_6
begin_hunk_7_@mbedtls_ssl_handshake_client_step:bb.a
  %.0.copyload.i107.i = load i16, ptr %i.ou, align 1 ; 2 uses
  %i.ov = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i107.i)
  %i.ow = zext i16 %i.ov to i64                   ; 3 uses
  %8 = select i1 %i.om, i64 15, i64 7
  %i.ox = add nuw nsw i64 %8, %i.oq
  %i.oy = add nuw nsw i64 %i.ox, %i.ow
  %.not99.i = icmp ugt i64 %i.ok, %i.oy
  br i1 %.not99.i, label %bb.fa, label %bb.ez
end_hunk_7
begin_hunk_8_@mbedtls_ssl_handshake_client_step:bb.a
  %.val109.val.i = phi i8 [ %.val109.val.pre.i, %._crit_edge.loopexit.i ], [ %.val115.val.i, %bb.fa ]
  %i.pd = add nuw nsw i64 %i.oq, 2
  %i.pe = add nuw nsw i64 %i.pd, %i.ow            ; 3 uses
  %i.pf = icmp eq i8 %.val109.val.i, 1            ; 2 uses
  %..i122.i = select i1 %i.pf, i64 12, i64 4
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oi, i64 %..i122.i ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 1
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pe
  %.0.copyload.i106.i = load i16, ptr %i.pi, align 1 ; 2 uses
  %i.pj = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i106.i)
  %i.pk = zext i16 %i.pj to i64                   ; 3 uses
  %9 = select i1 %i.pf, i64 15, i64 7
  %i.pl = add nuw nsw i64 %9, %i.pe
  %i.pm = add nuw nsw i64 %i.pl, %i.pk
  %.not100.i = icmp eq i64 %i.pc, %i.pm
  br i1 %.not100.i, label %bb.fc, label %bb.fb
end_hunk_8
begin_hunk_9_@mbedtls_ssl_handshake_client_step:bb.a
  %.val64.i = load ptr, ptr %0, align 8, !tbaa !21
  %i.abj = getelementptr i8, ptr %.val64.i, i64 9
  %.val64.val.i = load i8, ptr %i.abj, align 1, !tbaa !22
  %i.abk = icmp eq i8 %.val64.val.i, 1            ; 2 uses
  %..i.i53.a = select i1 %i.abk, i64 18, i64 10   ; 2 uses
  %i.abl = icmp ult i64 %i.abi, %..i.i53.a
  br i1 %i.abl, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy, %bb.hx
end_hunk_9
begin_hunk_10_@mbedtls_ssl_handshake_client_step:bb.a
  br label %ssl_parse_server_hello.exit

bb.ia:                                            ; preds = %bb.hy
  %..i.i53 = select i1 %i.abk, i64 12, i64 4
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abf, i64 %..i.i53 ; 3 uses
  %.0.copyload.i62.i = load i32, ptr %i.abn, align 1
  %i.abo = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i62.i)
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 4
  %.0.copyload.i.i54 = load i16, ptr %i.abp, align 1 ; 2 uses
  %i.abq = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i54)
  %i.abr = zext i16 %i.abq to i64                 ; 5 uses
  %i.abs = add nuw nsw i64 %..i.i53.a, %i.abr
  %.not59.i = icmp eq i64 %i.abs, %i.abi
  br i1 %.not59.i, label %bb.ic, label %bb.ib

end_hunk_10
