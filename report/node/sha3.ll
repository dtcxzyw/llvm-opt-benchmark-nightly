inline.NumInlined: 8
begin_hunk_0_@mbedtls_sha3_update:bb.a
  br i1 %.not71, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = xor i32 %i.d, 6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.t = load i8, ptr %i.e, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i64
end_hunk_0
begin_hunk_1_@mbedtls_sha3_update:bb.a
  %i.ae = add i64 %2, -2
  %i.af = add i32 %i.c, 2                         ; 4 uses
  store i32 %i.af, ptr %i.b, align 8, !tbaa !15
  %4 = icmp samesign ugt i32 %3, 1
  br i1 %4, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
end_hunk_1
