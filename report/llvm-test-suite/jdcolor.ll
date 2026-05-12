inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@ycck_cmyk_convert:bb.a
  %.04959.us = phi ptr [ %i.ag, %.lr.ph.us ], [ %i.br, %bb.b ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@ycck_cmyk_convert:bb.a
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %5 = xor i8 %i.ai, -1
  %.neg53.us = zext i8 %5 to i32                  ; 3 uses
  %i.aq = sub i32 %.neg53.us, %i.ap
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.f, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
end_hunk_1
begin_hunk_2_@ycck_cmyk_convert:bb.a
  %i.az = add nsw i64 %i.ay, %i.aw
  %i.ba = lshr i64 %i.az, 16
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = sub i32 %.neg53.us, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.f, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !69
end_hunk_2
begin_hunk_3_@ycck_cmyk_convert:bb.a
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !69
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = sub i32 %.neg53.us, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %i.f, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !69
end_hunk_3
