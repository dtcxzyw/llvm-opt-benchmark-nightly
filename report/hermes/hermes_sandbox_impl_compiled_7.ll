inline.NumInlined: 10002
inline.NumDeleted: 29
begin_hunk_0_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3Cis_hashable_data0x3Cunsigned0x20int0x20const0x3E0x3A0x3Avalue0x2C0x20llvh0x3A0x3Ahash_code0x3E0x3A0x3Atype0x20llvh0x3A0x3Ahashing0x3A0x3Adetail0x3A0x3Ahash_combine_range_impl0x3Cunsigned0x20int0x20const0x3E0x28unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20int0x20const0x2A0x29:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0741 = phi i64 [ %.0.copyload.i782, %bb.b ], [ %i.g, %bb.c ] ; 10 uses
  %i.i = sub i32 %2, %1                           ; 5 uses
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %bb.e, label %bb.f
end_hunk_0
begin_hunk_1_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3Cis_hashable_data0x3Cunsigned0x20int0x20const0x3E0x3A0x3Avalue0x2C0x20llvh0x3A0x3Ahash_code0x3E0x3A0x3Atype0x20llvh0x3A0x3Ahashing0x3A0x3Adetail0x3A0x3Ahash_combine_range_impl0x3Cunsigned0x20int0x20const0x3E0x28unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20int0x20const0x2A0x29:bb.a
  %.0.copyload.i784 = load i64, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i784) #13, !srcloc !33
  %i.p = lshr i64 %.0741, 47
  %i.q = xor i64 %i.p, %.0741                     ; 3 uses
  %i.r = xor i64 %.0741, -5435081209227447693     ; 3 uses
  %i.s = mul i64 %i.r, -7070675565921424023       ; 2 uses
  %i.t = lshr i64 %i.s, 47
end_hunk_1
begin_hunk_2_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3Cis_hashable_data0x3Cunsigned0x20int0x20const0x3E0x3A0x3Avalue0x2C0x20llvh0x3A0x3Ahash_code0x3E0x3A0x3Atype0x20llvh0x3A0x3Ahashing0x3A0x3Adetail0x3A0x3Ahash_combine_range_impl0x3Cunsigned0x20int0x20const0x3E0x28unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20int0x20const0x2A0x29:bb.a
  %i.ad = mul i64 %.0741, -5435081209227447693
  %i.ae = xor i64 %i.q, %i.ad
  %i.af = mul i64 %i.ae, -7070675565921424023     ; 2 uses
  %3 = xor i64 %i.af, %.0741
  %i.ag = lshr i64 %3, 47
  %i.ah = xor i64 %.0741, %i.ag
  %i.ai = xor i64 %i.ah, %i.af
  %i.aj = mul i64 %i.ai, -7070675565921424023     ; 2 uses
  %i.ak = lshr i64 %i.aj, 47
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = mul i64 %i.al, -7070675565921424023     ; 2 uses
  %i.an = add i64 %i.am, %i.ac
  %i.ao = add i64 %i.an, %.0.copyload.i784        ; 3 uses
  %.val777 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val777, i64 %i.m
end_hunk_2
