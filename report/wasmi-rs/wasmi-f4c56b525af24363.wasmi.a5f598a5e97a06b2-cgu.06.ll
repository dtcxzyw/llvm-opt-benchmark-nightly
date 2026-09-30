Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.06?download=true
inline.NumInlined: 777
inline.NumDeleted: 23
begin_hunk_0_@_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegdEdNtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.614.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegfEBV_BV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1R_2Ip6decode9IpDecoderEB1Z_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegfEBV_NtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB26_2Ip6decode9IpDecoderEB2e_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.616.0.extract.shift = and i64 %i.a, -4294967296
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.616.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegfEBV_fENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.616.0.extract.shift = and i64 %i.a, -4294967296
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.616.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegfENtNtB9_5index4SlotB1j_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB27_2Ip6decode9IpDecoderEB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.618.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.618.0.extract.trunc = trunc nuw i64 %.sroa.618.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i23 = lshr i64 %i.d, 8
  %.sroa.420.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i23 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.420.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.622.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.622.0.extract.trunc = trunc nuw i64 %.sroa.622.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.618.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.622.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegfENtNtB9_5index4SlotBV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB26_2Ip6decode9IpDecoderEB2e_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.616.0.extract.shift = and i64 %i.a, -4294967296
  %i.b = trunc i64 %i.a to i1
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.616.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegfENtNtB9_5index4SlotfENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.618.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.618.0.extract.trunc = trunc nuw i64 %.sroa.618.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.420.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.420.0.extract.trunc = trunc i64 %.sroa.420.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.420.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.622.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.622.0.extract.trunc = trunc nuw i64 %.sroa.622.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.618.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.622.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegfEfBV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.616.0.extract.shift = and i64 %i.a, -4294967296
  %i.b = trunc i64 %i.a to i1
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.616.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegfEfNtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.618.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.618.0.extract.trunc = trunc nuw i64 %.sroa.618.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i = lshr i64 %i.d, 8
  %.sroa.420.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.420.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.622.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.622.0.extract.trunc = trunc nuw i64 %.sroa.622.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.618.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.622.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_BV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1R_2Ip6decode9IpDecoderEB1Z_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_INtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZerolEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2A_2Ip6decode9IpDecoderEB2I_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsp_NtCs6kx5fqqPdgs_8wasmi_ir6decodelNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 4 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = and i64 %i.a, 65280
  %.not.i = icmp ult i64 %i.a, 4294967296
  %.sroa.4.1.i = select i1 %i.b, i64 %i.c, i64 256
  %narrow = or i1 %.not.i, %i.b                   ; 2 uses
  %.sroa.61.0.insert.shift.i = and i64 %i.a, -4294967296
  %spec.select = select i1 %narrow, i64 0, i64 %.sroa.61.0.insert.shift.i
  %spec.select17 = zext i1 %narrow to i64
  %.sroa.5.0.insert.insert = or disjoint i64 %spec.select, %.sroa.4.1.i
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %spec.select17
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_INtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2A_2Ip6decode9IpDecoderEB2I_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 4 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = and i64 %i.a, 65280
  %.not.i = icmp ult i64 %i.a, 4294967296
  %.sroa.4.1.i = select i1 %i.b, i64 %i.c, i64 256
  %narrow = or i1 %.not.i, %i.b                   ; 2 uses
  %.sroa.61.0.insert.shift.i = and i64 %i.a, -4294967296
  %spec.select = select i1 %narrow, i64 0, i64 %.sroa.61.0.insert.shift.i
  %spec.select17 = zext i1 %narrow to i64
  %.sroa.5.0.insert.insert = or disjoint i64 %spec.select, %.sroa.4.1.i
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %spec.select17
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_INtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroxEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2A_2Ip6decode9IpDecoderEB2I_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9
  call void @_RINvXsq_NtCs6kx5fqqPdgs_8wasmi_ir6decodexNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !10
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noalias !9, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !range !4, !noalias !9, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !9, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.d, label %_RINvXsN_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroxENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.0.ph = phi i8 [ %i.e, %bb.b ], [ 1, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.ph, ptr %i.h, align 1
  br label %bb.e

_RINvXsN_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroxENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvXsN_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroxENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit
  %storemerge = phi i8 [ 0, %_RINvXsN_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroxENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_INtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2A_2Ip6decode9IpDecoderEB2I_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14
  call void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !15
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noalias !14, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !range !4, !noalias !14, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !14, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.d, label %_RINvXsP_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.0.ph = phi i8 [ %i.e, %bb.b ], [ 1, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.ph, ptr %i.h, align 1
  br label %bb.e

_RINvXsP_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvXsP_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit
  %storemerge = phi i8 [ 0, %_RINvXsP_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_NtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB26_2Ip6decode9IpDecoderEB2e_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.616.0.extract.shift = and i64 %i.a, -4294967296
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.616.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_NtNtCs5zeGauAcNNa_10wasmi_core12shift_amount11ShiftAmountENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2J_2Ip6decode9IpDecoderEB2R_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i1, i8 } @_RINvXsI_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtCs5zeGauAcNNa_10wasmi_core12shift_amount11ShiftAmountNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Y_2Ip6decode9IpDecoderEB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  ret { i1, i8 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_lENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsp_NtCs6kx5fqqPdgs_8wasmi_ir6decodelNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.616.0.extract.shift = and i64 %i.a, -4294967296
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.616.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_mENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.616.0.extract.shift = and i64 %i.a, -4294967296
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.616.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_xENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsq_NtCs6kx5fqqPdgs_8wasmi_ir6decodexNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.f, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_yENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.f, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEIBW_dENtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB29_2Ip6decode9IpDecoderEB2h_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.616.0.extract.shift = and i64 %i.a, -4294967296
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.616.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
end_hunk_0
