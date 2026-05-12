inline.NumInlined: 114
inline.NumDeleted: 48
begin_hunk_0_@_ZN9NCompress8NDeflate8NDecoder6CCoder10ReadTablesEv:bb.a
  %.04758.i = phi i32 [ 0, %bb.an ], [ %i.mc, %.loopexit.i ]
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv73.i
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !4
  %i.ma = trunc nuw nsw i64 %indvars.iv73.i to i32
  %2 = xor i32 %i.ma, 15
  %i.mb = shl i32 %i.lz, %2
  %i.mc = add i32 %i.mb, %.04758.i                ; 4 uses
  %i.md = icmp ugt i32 %i.mc, 32768
end_hunk_0
begin_hunk_1_@_ZN9NCompress8NDeflate8NDecoder6CCoder10ReadTablesEv:bb.a
  %.04758.i117 = phi i32 [ 0, %bb.ay ], [ %i.oo, %.loopexit.i118 ]
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv73.i115
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !4
  %i.om = trunc nuw nsw i64 %indvars.iv73.i115 to i32
  %3 = xor i32 %i.om, 15
  %i.on = shl i32 %i.ol, %3
  %i.oo = add i32 %i.on, %.04758.i117             ; 4 uses
  %i.op = icmp ugt i32 %i.oo, 32768
end_hunk_1
begin_hunk_2_@_ZN9NCompress8NHuffman8CDecoderILi15ELj19EE14SetCodeLengthsEPKh:.preheader53
  %.04758 = phi i32 [ 0, %bb.s ], [ %i.fd, %.loopexit ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv70
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4
  %i.fb = trunc nuw nsw i64 %indvars.iv70 to i32
  %2 = xor i32 %i.fb, 15
  %i.fc = shl i32 %i.fa, %2
  %i.fd = add i32 %i.fc, %.04758                  ; 4 uses
  %i.fe = icmp ugt i32 %i.fd, 32768
end_hunk_2
