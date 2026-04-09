begin_hunk_0_@gs_type1_interpret:bb.a
  %i.bk = zext i8 %i.bj to i16
  %i.bl = add i16 %.16261141, %i.bk
  %i.bm = mul i16 %i.bl, -12691
  %i.bn = getelementptr inbounds nuw i8, ptr %.16171142, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !10
  %i.bp = zext i8 %i.bo to i16
  %i.bq = add i16 %i.bm, %i.bp
  %i.br = mul i16 %i.bq, -12691
  %i.bs = getelementptr inbounds nuw i8, ptr %.16171142, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !10
  %i.bu = zext i8 %i.bt to i16
  %i.bv = add i16 %i.br, %i.bu
  %i.bw = mul i16 %i.bv, -12691
  %i.bx = getelementptr inbounds nuw i8, ptr %.16171142, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.bz = zext i8 %i.by to i16
  %i.ca = add i16 %i.bw, %i.bz
  %i.cb = mul i16 %i.ca, -12691
  %i.cc = add i16 %i.cb, -23692                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.16171142, i64 4
  %i.ce = add nsw i32 %.26141143, -4
  %i.cf = icmp sgt i32 %.26141143, 4
end_hunk_0
