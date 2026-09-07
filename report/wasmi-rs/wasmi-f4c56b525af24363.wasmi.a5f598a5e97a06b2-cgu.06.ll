Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.06?download=true
inline.NumInlined: 777
inline.NumDeleted: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegdEBS_ENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1L_2Ip6decode9IpDecoderEB1T_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegdEIBT_fEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1O_2Ip6decode9IpDecoderEB1W_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegdEIBT_xEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1O_2Ip6decode9IpDecoderEB1W_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegdENtNtB7_5index4SlotENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB20_2Ip6decode9IpDecoderEB28_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.614.0.extract.shift = and i64 %i.a, -4294967296
  %.sroa.61.0 = select i1 %i.b, i64 0, i64 %.sroa.614.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.61.0, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegdEdENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1J_2Ip6decode9IpDecoderEB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
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
  %i.h = load double, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegfEBS_ENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1L_2Ip6decode9IpDecoderEB1T_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegfEIBT_dEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1O_2Ip6decode9IpDecoderEB1W_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegfEIBT_xEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1O_2Ip6decode9IpDecoderEB1W_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegfENtNtB7_5index4SlotENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB20_2Ip6decode9IpDecoderEB28_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.614.0.extract.shift = and i64 %i.a, -4294967296
  %.sroa.61.0 = select i1 %i.b, i64 0, i64 %.sroa.614.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.61.0, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegfEfENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1J_2Ip6decode9IpDecoderEB1R_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.614.0.extract.shift = and i64 %i.a, -4294967296
  %.sroa.61.0.insert.ext = select i1 %i.b, i64 0, i64 %.sroa.614.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.61.0.insert.ext, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegxEBS_ENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1L_2Ip6decode9IpDecoderEB1T_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegxEIBT_dEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1O_2Ip6decode9IpDecoderEB1W_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegxEIBT_fEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1O_2Ip6decode9IpDecoderEB1W_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegxENtNtB7_5index4SlotENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB20_2Ip6decode9IpDecoderEB28_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.614.0.extract.shift = and i64 %i.a, -4294967296
  %.sroa.61.0 = select i1 %i.b, i64 0, i64 %.sroa.614.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.61.0, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegxEmENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1J_2Ip6decode9IpDecoderEB1R_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.614.0.extract.shift = and i64 %i.a, -4294967296
  %.sroa.61.0 = select i1 %i.b, i64 0, i64 %.sroa.614.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.61.0, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegxEyENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1J_2Ip6decode9IpDecoderEB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt0_EIBT_Kt1_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt0_EIBT_Kt2_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt0_EIBT_Kt3_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt0_EIBT_Kt4_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt0_EIBT_Kt5_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt0_EINtBV_3RegdEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt0_EINtBV_3RegfEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt0_EINtBV_3RegxEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt1_EIBT_Kt0_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt1_EIBT_Kt2_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt1_EIBT_Kt3_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt1_EIBT_Kt4_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt1_EIBT_Kt5_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt1_EINtBV_3RegdEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt1_EINtBV_3RegfEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt1_EINtBV_3RegxEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt2_EIBT_Kt0_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt2_EIBT_Kt1_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt2_EIBT_Kt3_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt2_EIBT_Kt4_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt2_EIBT_Kt5_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt2_EINtBV_3RegdEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt2_EINtBV_3RegfEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt2_EINtBV_3RegxEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt3_EIBT_Kt0_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt3_EIBT_Kt1_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive5LocalKt3_EIBT_Kt2_EENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
begin_hunk_1_@_RINvXs1_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_11CmpBranchOpyNtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1L_2Ip6decode9IpDecoderEB1T_:bb.a
  %i.l = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.insert.insert.i = lshr i64 %i.l, 8
  %.sroa.424.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.424.0.extract.trunc, ptr %i.n, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.626.0.extract.shift = lshr i64 %i.l, 32
  %.sroa.626.0.extract.trunc = trunc nuw i64 %.sroa.626.0.extract.shift to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.622.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.626.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_13BranchTableOpINtNtBa_9primitive3RegxENtNtBa_4span15BoundedSlotSpanENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2l_2Ip6decode9IpDecoderEB2t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 8 uses
  %i.b = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.618.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.618.0.extract.trunc = trunc nuw i64 %.sroa.618.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.d, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs1_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_4span15BoundedSlotSpanNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1w_2Ip6decode9IpDecoderEB1E_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load i8, ptr %i.a, align 4, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load i32, ptr %i.j, align 4, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i16, ptr %i.l, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %i.n, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.m, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.618.0.extract.trunc, ptr %.sroa.61.0..sroa_idx, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sink = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs2_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_13BranchTableOpINtNtBa_9primitive3RegxEuENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1T_2Ip6decode9IpDecoderEB21_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.0.0.insert.insert = and i64 %i.a, -4294902015
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_13BranchTableOpNtNtBa_5index4SlotNtNtBa_4span15BoundedSlotSpanENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2f_2Ip6decode9IpDecoderEB2n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([20 x i8]) align 4 captures(none) dereferenceable(20) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 8 uses
  %i.b = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.624.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.624.0.extract.trunc = trunc nuw i64 %.sroa.624.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.d, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.628.0.extract.shift = lshr i64 %i.e, 32
  %.sroa.628.0.extract.trunc = trunc nuw i64 %.sroa.628.0.extract.shift to i32
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i = lshr i64 %i.e, 8
  %.sroa.426.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.426.0.extract.trunc, ptr %i.g, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs1_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_4span15BoundedSlotSpanNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1w_2Ip6decode9IpDecoderEB1E_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.h = load i8, ptr %i.a, align 4, !range !4, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.k, ptr %i.l, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = load i32, ptr %i.m, align 4, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i16, ptr %i.o, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.n, ptr %i.q, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.p, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.624.0.extract.trunc, ptr %.sroa.61.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.628.0.extract.trunc, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_13BranchTableOpNtNtBa_5index4SlotuENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1N_2Ip6decode9IpDecoderEB1V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
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
  %.sink = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdEIBX_xEBW_NtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2d_2Ip6decode9IpDecoderEB2l_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.619.0.extract.shift = and i64 %i.a, -4294967296
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.619.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdEIBX_xEBW_dENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
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
  %i.h = load double, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdEIBX_xENtNtBa_5index4SlotB1q_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2e_2Ip6decode9IpDecoderEB2m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.621.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.621.0.extract.trunc = trunc nuw i64 %.sroa.621.0.extract.shift to i32
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
  %.sroa.0.0.insert.insert.i26 = lshr i64 %i.d, 8
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i26 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.423.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.625.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.621.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdEIBX_xENtNtBa_5index4SlotBW_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2d_2Ip6decode9IpDecoderEB2l_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.619.0.extract.shift = and i64 %i.a, -4294967296
  %i.b = trunc i64 %i.a to i1
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.619.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdEIBX_xENtNtBa_5index4SlotdENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2b_2Ip6decode9IpDecoderEB2j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.617.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.617.0.extract.trunc = trunc nuw i64 %.sroa.617.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.d, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load double, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.617.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdEIBX_xEdBW_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
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
  %i.h = load double, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdEIBX_xEdNtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2b_2Ip6decode9IpDecoderEB2j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.f, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load double, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i = lshr i64 %i.i, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.617.0.extract.shift = lshr i64 %i.i, 32
  %.sroa.617.0.extract.trunc = trunc nuw i64 %.sroa.617.0.extract.shift to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.h, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.617.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdEIBX_xEddENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1U_2Ip6decode9IpDecoderEB22_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.g, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load double, ptr %i.h, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.j = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.m, ptr %i.n, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load double, ptr %i.o, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.p, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdENtNtBa_5index4SlotB1k_B1k_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2c_2Ip6decode9IpDecoderEB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.629.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.629.0.extract.trunc = trunc nuw i64 %.sroa.629.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_1
begin_hunk_2_@_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdENtNtBa_5index4SlotBW_dENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB28_2Ip6decode9IpDecoderEB2g_:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load double, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.617.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %.sink = phi i8 [ 1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdENtNtBa_5index4SlotdB1k_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB29_2Ip6decode9IpDecoderEB2h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.625.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.d, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load double, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.insert.insert.i30 = lshr i64 %i.l, 8
  %.sroa.427.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i30 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.427.0.extract.trunc, ptr %i.n, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.629.0.extract.shift = lshr i64 %i.l, 32
  %.sroa.629.0.extract.trunc = trunc nuw i64 %.sroa.629.0.extract.shift to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.k, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.625.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.629.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdENtNtBa_5index4SlotdBW_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB28_2Ip6decode9IpDecoderEB2g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.617.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.617.0.extract.trunc = trunc nuw i64 %.sroa.617.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.d, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load double, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.617.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %.sink = phi i8 [ 1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegdENtNtBa_5index4SlotddENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB26_2Ip6decode9IpDecoderEB2e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.622.0.extract.shift = lshr i64 %i.c, 32
  %.sroa.622.0.extract.trunc = trunc nuw i64 %.sroa.622.0.extract.shift to i32
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.c, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.e, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.f = load i8, ptr %i.b, align 8, !range !4, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.i, ptr %i.j, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load double, ptr %i.k, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.m = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.p, ptr %i.q, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load double, ptr %i.r, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.l, ptr %i.t, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.622.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfEIBX_xEBW_NtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2d_2Ip6decode9IpDecoderEB2l_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.619.0.extract.shift = and i64 %i.a, -4294967296
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.619.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfEIBX_xEBW_fENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.619.0.extract.shift = and i64 %i.a, -4294967296
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.619.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfEIBX_xENtNtBa_5index4SlotB1q_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2e_2Ip6decode9IpDecoderEB2m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.621.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.621.0.extract.trunc = trunc nuw i64 %.sroa.621.0.extract.shift to i32
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
  %.sroa.0.0.insert.insert.i26 = lshr i64 %i.d, 8
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i26 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.423.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.625.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.621.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfEIBX_xENtNtBa_5index4SlotBW_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2d_2Ip6decode9IpDecoderEB2l_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.619.0.extract.shift = and i64 %i.a, -4294967296
  %i.b = trunc i64 %i.a to i1
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.619.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfEIBX_xENtNtBa_5index4SlotfENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2b_2Ip6decode9IpDecoderEB2j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.621.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.621.0.extract.trunc = trunc nuw i64 %.sroa.621.0.extract.shift to i32
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
  %.sroa.423.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.423.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.423.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.625.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.621.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfEIBX_xEfBW_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.619.0.extract.shift = and i64 %i.a, -4294967296
  %i.b = trunc i64 %i.a to i1
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.619.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfEIBX_xEfNtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2b_2Ip6decode9IpDecoderEB2j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.621.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.621.0.extract.trunc = trunc nuw i64 %.sroa.621.0.extract.shift to i32
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
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.423.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.625.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.621.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfEIBX_xEffENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1U_2Ip6decode9IpDecoderEB22_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.621.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.621.0.extract.trunc = trunc nuw i64 %.sroa.621.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.423.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.423.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.423.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.625.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.621.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfENtNtBa_5index4SlotB1k_B1k_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2c_2Ip6decode9IpDecoderEB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.629.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.629.0.extract.trunc = trunc nuw i64 %.sroa.629.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.633.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.633.0.extract.trunc = trunc nuw i64 %.sroa.633.0.extract.shift to i32
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i38 = lshr i64 %i.d, 8
  %.sroa.431.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i38 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.431.0.extract.trunc, ptr %i.f, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.insert.insert.i39 = lshr i64 %i.g, 8
  %.sroa.435.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i39 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.435.0.extract.trunc, ptr %i.i, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.637.0.extract.shift = lshr i64 %i.g, 32
  %.sroa.637.0.extract.trunc = trunc nuw i64 %.sroa.637.0.extract.shift to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.629.0.extract.trunc, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.633.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.637.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfENtNtBa_5index4SlotB1k_BW_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2b_2Ip6decode9IpDecoderEB2j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.621.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.621.0.extract.trunc = trunc nuw i64 %.sroa.621.0.extract.shift to i32
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
  %.sroa.0.0.insert.insert.i26 = lshr i64 %i.d, 8
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i26 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.423.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.625.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.621.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %.sink = phi i8 [ 1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfENtNtBa_5index4SlotB1k_fENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB29_2Ip6decode9IpDecoderEB2h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
end_hunk_2
begin_hunk_3_@_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfENtNtBa_5index4SlotBW_fENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB28_2Ip6decode9IpDecoderEB2g_:bb.a
  %.sroa.621.0.extract.trunc = trunc nuw i64 %.sroa.621.0.extract.shift to i32
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
  %.sroa.423.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.423.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.423.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.625.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.621.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %.sink = phi i8 [ 1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfENtNtBa_5index4SlotfB1k_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB29_2Ip6decode9IpDecoderEB2h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.629.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.629.0.extract.trunc = trunc nuw i64 %.sroa.629.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.633.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.633.0.extract.trunc = trunc nuw i64 %.sroa.633.0.extract.shift to i32
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.431.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.431.0.extract.trunc = trunc i64 %.sroa.431.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.431.0.extract.trunc, ptr %i.f, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.insert.insert.i38 = lshr i64 %i.g, 8
  %.sroa.435.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i38 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.435.0.extract.trunc, ptr %i.i, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.637.0.extract.shift = lshr i64 %i.g, 32
  %.sroa.637.0.extract.trunc = trunc nuw i64 %.sroa.637.0.extract.shift to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.629.0.extract.trunc, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.633.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.637.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfENtNtBa_5index4SlotfBW_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB28_2Ip6decode9IpDecoderEB2g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.621.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.621.0.extract.trunc = trunc nuw i64 %.sroa.621.0.extract.shift to i32
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
  %.sroa.423.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.423.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.423.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.625.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.621.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %.sink = phi i8 [ 1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfENtNtBa_5index4SlotffENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB26_2Ip6decode9IpDecoderEB2e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.629.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.629.0.extract.trunc = trunc nuw i64 %.sroa.629.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.633.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.633.0.extract.trunc = trunc nuw i64 %.sroa.633.0.extract.shift to i32
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.431.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.431.0.extract.trunc = trunc i64 %.sroa.431.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.431.0.extract.trunc, ptr %i.f, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.435.0.extract.shift = lshr i64 %i.g, 8
  %.sroa.435.0.extract.trunc = trunc i64 %.sroa.435.0.extract.shift to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.435.0.extract.trunc, ptr %i.i, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.637.0.extract.shift = lshr i64 %i.g, 32
  %.sroa.637.0.extract.trunc = trunc nuw i64 %.sroa.637.0.extract.shift to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.629.0.extract.trunc, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.633.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.637.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_BW_NtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2a_2Ip6decode9IpDecoderEB2i_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.619.0.extract.shift = and i64 %i.a, -4294967296
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.619.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_BW_mENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1T_2Ip6decode9IpDecoderEB21_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.619.0.extract.shift = and i64 %i.a, -4294967296
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.619.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_BW_yENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1T_2Ip6decode9IpDecoderEB21_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_NtNtBa_5index4SlotB1n_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2b_2Ip6decode9IpDecoderEB2j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.621.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.621.0.extract.trunc = trunc nuw i64 %.sroa.621.0.extract.shift to i32
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
  %.sroa.0.0.insert.insert.i26 = lshr i64 %i.d, 8
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i26 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.423.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.625.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.621.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_NtNtBa_5index4SlotBW_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2a_2Ip6decode9IpDecoderEB2i_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.619.0.extract.shift = and i64 %i.a, -4294967296
  %i.b = trunc i64 %i.a to i1
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.619.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_NtNtBa_5index4SlotmENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB28_2Ip6decode9IpDecoderEB2g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.621.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.621.0.extract.trunc = trunc nuw i64 %.sroa.621.0.extract.shift to i32
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
  %.sroa.423.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.423.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.423.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.625.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.621.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_NtNtBa_5index4SlotyENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB28_2Ip6decode9IpDecoderEB2g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.617.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.617.0.extract.trunc = trunc nuw i64 %.sroa.617.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.d, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.617.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_mBW_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1T_2Ip6decode9IpDecoderEB21_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.619.0.extract.shift = and i64 %i.a, -4294967296
  %i.b = trunc i64 %i.a to i1
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.619.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_mNtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB28_2Ip6decode9IpDecoderEB2g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.621.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.621.0.extract.trunc = trunc nuw i64 %.sroa.621.0.extract.shift to i32
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
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.423.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.625.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.621.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_mmENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1R_2Ip6decode9IpDecoderEB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.621.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.621.0.extract.trunc = trunc nuw i64 %.sroa.621.0.extract.shift to i32
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
  %.sroa.423.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.423.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.423.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.625.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.621.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_yBW_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1T_2Ip6decode9IpDecoderEB21_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_yNtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB28_2Ip6decode9IpDecoderEB2g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i = lshr i64 %i.i, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.617.0.extract.shift = lshr i64 %i.i, 32
  %.sroa.617.0.extract.trunc = trunc nuw i64 %.sroa.617.0.extract.shift to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.617.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegxEBW_yyENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1R_2Ip6decode9IpDecoderEB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.g, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_3
begin_hunk_4_@_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16INtNtBa_9primitive10SlotAndRegfEINtB1a_3RegxEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2i_2Ip6decode9IpDecoderEB2q_:bb.a
  %.sroa.616.0.extract.trunc = trunc nuw i64 %.sroa.616.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i32 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.418.0.extract.shift = lshr i32 %i.d, 8
  %.sroa.418.0.extract.trunc = trunc i32 %.sroa.418.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.418.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.519.0.extract.shift = lshr i32 %i.d, 16
  %.sroa.519.0.extract.trunc = trunc nuw i32 %.sroa.519.0.extract.shift to i16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.616.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.519.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sink = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16INtNtBa_9primitive10SlotAndRegfENtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2n_2Ip6decode9IpDecoderEB2v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.625.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.629.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.629.0.extract.trunc = trunc nuw i64 %.sroa.629.0.extract.shift to i32
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i33 = lshr i64 %i.d, 8
  %.sroa.427.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i33 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.427.0.extract.trunc, ptr %i.f, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.h = trunc i32 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.431.0.extract.shift = lshr i32 %i.g, 8
  %.sroa.431.0.extract.trunc = trunc i32 %.sroa.431.0.extract.shift to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.431.0.extract.trunc, ptr %i.i, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.532.0.extract.shift = lshr i32 %i.g, 16
  %.sroa.532.0.extract.trunc = trunc nuw i32 %.sroa.532.0.extract.shift to i16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.625.0.extract.trunc, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.629.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %.sroa.532.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16INtNtBa_9primitive10SlotAndRegxEINtB1a_3RegxEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2i_2Ip6decode9IpDecoderEB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.616.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.616.0.extract.trunc = trunc nuw i64 %.sroa.616.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i32 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.418.0.extract.shift = lshr i32 %i.d, 8
  %.sroa.418.0.extract.trunc = trunc i32 %.sroa.418.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.418.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.519.0.extract.shift = lshr i32 %i.d, 16
  %.sroa.519.0.extract.trunc = trunc nuw i32 %.sroa.519.0.extract.shift to i16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.616.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.519.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sink = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16INtNtBa_9primitive10SlotAndRegxENtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2n_2Ip6decode9IpDecoderEB2v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.625.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.629.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.629.0.extract.trunc = trunc nuw i64 %.sroa.629.0.extract.shift to i32
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i33 = lshr i64 %i.d, 8
  %.sroa.427.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i33 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.427.0.extract.trunc, ptr %i.f, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.h = trunc i32 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.431.0.extract.shift = lshr i32 %i.g, 8
  %.sroa.431.0.extract.trunc = trunc i32 %.sroa.431.0.extract.shift to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.431.0.extract.trunc, ptr %i.i, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.532.0.extract.shift = lshr i32 %i.g, 16
  %.sroa.532.0.extract.trunc = trunc nuw i32 %.sroa.532.0.extract.shift to i16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.625.0.extract.trunc, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.629.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %.sroa.532.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16INtNtBa_9primitive3RegdEIB18_xEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i32 %i.a to i1
  %.sroa.512.0.extract.shift = and i32 %i.a, -65536
  %spec.select = select i1 %i.b, i32 0, i32 %.sroa.512.0.extract.shift
  %i.c = and i32 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i32 %spec.select, %i.c
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16INtNtBa_9primitive3RegdENtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2f_2Ip6decode9IpDecoderEB2n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.616.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.616.0.extract.trunc = trunc nuw i64 %.sroa.616.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i32 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.418.0.extract.shift = lshr i32 %i.d, 8
  %.sroa.418.0.extract.trunc = trunc i32 %.sroa.418.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.418.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.519.0.extract.shift = lshr i32 %i.d, 16
  %.sroa.519.0.extract.trunc = trunc nuw i32 %.sroa.519.0.extract.shift to i16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.616.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.519.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16INtNtBa_9primitive3RegfEIB18_xEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i32 %i.a to i1
  %.sroa.512.0.extract.shift = and i32 %i.a, -65536
  %spec.select = select i1 %i.b, i32 0, i32 %.sroa.512.0.extract.shift
  %i.c = and i32 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i32 %spec.select, %i.c
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16INtNtBa_9primitive3RegfENtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2f_2Ip6decode9IpDecoderEB2n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.616.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.616.0.extract.trunc = trunc nuw i64 %.sroa.616.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i32 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.418.0.extract.shift = lshr i32 %i.d, 8
  %.sroa.418.0.extract.trunc = trunc i32 %.sroa.418.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.418.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.519.0.extract.shift = lshr i32 %i.d, 16
  %.sroa.519.0.extract.trunc = trunc nuw i32 %.sroa.519.0.extract.shift to i16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.616.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.519.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16INtNtBa_9primitive3RegxEB17_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB21_2Ip6decode9IpDecoderEB29_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i32 %i.a to i1
  %.sroa.512.0.extract.shift = and i32 %i.a, -65536
  %spec.select = select i1 %i.b, i32 0, i32 %.sroa.512.0.extract.shift
  %i.c = and i32 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i32 %spec.select, %i.c
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16INtNtBa_9primitive3RegxENtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2f_2Ip6decode9IpDecoderEB2n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.616.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.616.0.extract.trunc = trunc nuw i64 %.sroa.616.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i32 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.418.0.extract.shift = lshr i32 %i.d, 8
  %.sroa.418.0.extract.trunc = trunc i32 %.sroa.418.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.418.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.519.0.extract.shift = lshr i32 %i.d, 16
  %.sroa.519.0.extract.trunc = trunc nuw i32 %.sroa.519.0.extract.shift to i16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.616.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.519.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16NtNtBa_5index4SlotB17_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1V_2Ip6decode9IpDecoderEB23_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.625.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.629.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.629.0.extract.trunc = trunc nuw i64 %.sroa.629.0.extract.shift to i32
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i33 = lshr i64 %i.d, 8
  %.sroa.427.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i33 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.427.0.extract.trunc, ptr %i.f, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.h = trunc i32 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.431.0.extract.shift = lshr i32 %i.g, 8
  %.sroa.431.0.extract.trunc = trunc i32 %.sroa.431.0.extract.shift to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.431.0.extract.trunc, ptr %i.i, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.532.0.extract.shift = lshr i32 %i.g, 16
  %.sroa.532.0.extract.trunc = trunc nuw i32 %.sroa.532.0.extract.shift to i16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.625.0.extract.trunc, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.629.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %.sroa.532.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16NtNtBa_5index4SlotINtNtBa_9primitive3RegxEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2f_2Ip6decode9IpDecoderEB2n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.616.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.616.0.extract.trunc = trunc nuw i64 %.sroa.616.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i32 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.418.0.extract.shift = lshr i32 %i.d, 8
  %.sroa.418.0.extract.trunc = trunc i32 %.sroa.418.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.418.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.519.0.extract.shift = lshr i32 %i.d, 16
  %.sroa.519.0.extract.trunc = trunc nuw i32 %.sroa.519.0.extract.shift to i16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.616.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.519.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sink = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_7StoreOpINtNtBa_9primitive3RegxEIBW_dEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1R_2Ip6decode9IpDecoderEB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsy_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive6OffsetNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1r_2Ip6decode9IpDecoderEB1z_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.f, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = tail call i32 @_RINvXsE_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index10MemoryAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1s_2Ip6decode9IpDecoderEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0.extract.shift = lshr i32 %i.i, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.514.0.extract.shift = lshr i32 %i.i, 16
  %.sroa.514.0.extract.trunc = trunc nuw i32 %.sroa.514.0.extract.shift to i16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.514.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %.sink = phi i8 [ 1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 8
end_hunk_4
begin_hunk_5_@_RINvXs8_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_9StoreAtOplENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1q_2Ip6decode9IpDecoderEB1y_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_9StoreAtOpmENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1q_2Ip6decode9IpDecoderEB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.629.0.extract.shift = lshr i64 %i.i, 32
  %.sroa.629.0.extract.trunc = trunc nuw i64 %.sroa.629.0.extract.shift to i32
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0.extract.shift = lshr i64 %i.i, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.k, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i32 @_RINvXsE_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index10MemoryAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1s_2Ip6decode9IpDecoderEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.m = trunc i32 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.431.0.extract.shift = lshr i32 %i.l, 8
  %.sroa.431.0.extract.trunc = trunc i32 %.sroa.431.0.extract.shift to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.431.0.extract.trunc, ptr %i.n, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.532.0.extract.shift = lshr i32 %i.l, 16
  %.sroa.532.0.extract.trunc = trunc nuw i32 %.sroa.532.0.extract.shift to i16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.629.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %.sroa.532.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_9StoreAtOpsENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1q_2Ip6decode9IpDecoderEB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = tail call i32 @_RINvXso_NtCs6kx5fqqPdgs_8wasmi_ir6decodesNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.526.0.extract.shift = lshr i32 %i.i, 16
  %.sroa.526.0.extract.trunc = trunc nuw i32 %.sroa.526.0.extract.shift to i16
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0.extract.shift = lshr i32 %i.i, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.k, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i32 @_RINvXsE_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index10MemoryAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1s_2Ip6decode9IpDecoderEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.m = trunc i32 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.428.0.extract.shift = lshr i32 %i.l, 8
  %.sroa.428.0.extract.trunc = trunc i32 %.sroa.428.0.extract.shift to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.428.0.extract.trunc, ptr %i.n, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.529.0.extract.shift = lshr i32 %i.l, 16
  %.sroa.529.0.extract.trunc = trunc nuw i32 %.sroa.529.0.extract.shift to i16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.526.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.sroa.529.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_9StoreAtOpyENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1q_2Ip6decode9IpDecoderEB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.c = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.g, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.j = load i8, ptr %i.b, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.m, ptr %i.n, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = tail call i32 @_RINvXsE_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index10MemoryAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1s_2Ip6decode9IpDecoderEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.4.0.extract.shift = lshr i32 %i.q, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.s, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.524.0.extract.shift = lshr i32 %i.q, 16
  %.sroa.524.0.extract.trunc = trunc nuw i32 %.sroa.524.0.extract.shift to i16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.t, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %.sroa.524.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16INtNtBa_9primitive3RegxEIB19_dEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB25_2Ip6decode9IpDecoderEB2d_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.512.0.extract.shift = and i32 %i.a, -65536
  %i.b = trunc i32 %i.a to i1
  %spec.select = select i1 %i.b, i32 0, i32 %.sroa.512.0.extract.shift
  %i.c = and i32 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i32 %spec.select, %i.c
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16INtNtBa_9primitive3RegxEIB19_fEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB25_2Ip6decode9IpDecoderEB2d_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.512.0.extract.shift = and i32 %i.a, -65536
  %i.b = trunc i32 %i.a to i1
  %spec.select = select i1 %i.b, i32 0, i32 %.sroa.512.0.extract.shift
  %i.c = and i32 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i32 %spec.select, %i.c
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16INtNtBa_9primitive3RegxENtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2g_2Ip6decode9IpDecoderEB2o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.515.0.extract.shift = lshr i32 %i.a, 16
  %.sroa.515.0.extract.trunc = trunc nuw i32 %.sroa.515.0.extract.shift to i16
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i = lshr i64 %i.d, 8
  %.sroa.417.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.417.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.619.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.619.0.extract.trunc = trunc nuw i64 %.sroa.619.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.619.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.515.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i48 0, 1099511627776) i48 @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16INtNtBa_9primitive3RegxEaENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.516.0.extract.shift = lshr i32 %i.a, 16
  %.sroa.516.0.extract.trunc = trunc nuw i32 %.sroa.516.0.extract.shift to i16
  %i.c = tail call { i1, i8 } @_RINvXsn_NtCs6kx5fqqPdgs_8wasmi_ir6decodeaNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %i.d = extractvalue { i1, i8 } %i.c, 0
  %i.e = extractvalue { i1, i8 } %i.c, 1          ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.9.0 = phi i8 [ %i.e, %bb.c ], [ undef, %bb.b ], [ undef, %bb.e ]
  %.sroa.8.0 = phi i16 [ %.sroa.516.0.extract.trunc, %bb.c ], [ undef, %bb.b ], [ undef, %bb.e ]
  %.sroa.5.0 = phi i8 [ undef, %bb.c ], [ %.sroa.4.0.extract.trunc, %bb.b ], [ %i.e, %bb.e ]
  %.sroa.0.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.e ]
  %.sroa.9.0.insert.ext = zext i8 %.sroa.9.0 to i48
  %.sroa.9.0.insert.shift = shl nuw nsw i48 %.sroa.9.0.insert.ext, 32
  %.sroa.8.0.insert.ext = zext i16 %.sroa.8.0 to i48
  %.sroa.8.0.insert.shift = shl nuw nsw i48 %.sroa.8.0.insert.ext, 16
  %.sroa.8.0.insert.insert = or disjoint i48 %.sroa.8.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %.sroa.5.0 to i48
  %.sroa.5.0.insert.shift = shl nuw nsw i48 %.sroa.5.0.insert.ext, 8
  %.sroa.5.0.insert.insert = or disjoint i48 %.sroa.8.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert

bb.e:                                             ; preds = %bb.c
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16INtNtBa_9primitive3RegxElENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.515.0.extract.shift = lshr i32 %i.a, 16
  %.sroa.515.0.extract.trunc = trunc nuw i32 %.sroa.515.0.extract.shift to i16
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsp_NtCs6kx5fqqPdgs_8wasmi_ir6decodelNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.417.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.417.0.extract.trunc = trunc i64 %.sroa.417.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.417.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.619.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.619.0.extract.trunc = trunc nuw i64 %.sroa.619.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.619.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.515.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16INtNtBa_9primitive3RegxEmENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.515.0.extract.shift = lshr i32 %i.a, 16
  %.sroa.515.0.extract.trunc = trunc nuw i32 %.sroa.515.0.extract.shift to i16
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.417.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.417.0.extract.trunc = trunc i64 %.sroa.417.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.417.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.619.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.619.0.extract.trunc = trunc nuw i64 %.sroa.619.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.619.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.515.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i48 @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16INtNtBa_9primitive3RegxEsENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.515.0.extract.shift = lshr i32 %i.a, 16
  %.sroa.515.0.extract.trunc = trunc nuw i32 %.sroa.515.0.extract.shift to i16
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_RINvXso_NtCs6kx5fqqPdgs_8wasmi_ir6decodesNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.d = trunc i32 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.518.0.extract.shift = lshr i32 %i.c, 16
  %.sroa.518.0.extract.trunc = trunc nuw i32 %.sroa.518.0.extract.shift to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.9.0 = phi i16 [ undef, %bb.e ], [ %.sroa.518.0.extract.trunc, %bb.c ]
  %.sroa.8.0 = phi i16 [ undef, %bb.e ], [ %.sroa.515.0.extract.trunc, %bb.c ]
  %.sroa.5.0 = phi i8 [ %.sroa.5.1, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.c ]
  %.sroa.9.0.insert.ext = zext i16 %.sroa.9.0 to i48
  %.sroa.9.0.insert.shift = shl nuw i48 %.sroa.9.0.insert.ext, 32
  %.sroa.8.0.insert.ext = zext i16 %.sroa.8.0 to i48
  %.sroa.8.0.insert.shift = shl nuw nsw i48 %.sroa.8.0.insert.ext, 16
  %.sroa.8.0.insert.insert = or disjoint i48 %.sroa.8.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %.sroa.5.0 to i48
  %.sroa.5.0.insert.shift = shl nuw nsw i48 %.sroa.5.0.insert.ext, 8
  %.sroa.5.0.insert.insert = or disjoint i48 %.sroa.8.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert

bb.e:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.1.in.in = phi i32 [ %i.a, %bb.a ], [ %i.c, %bb.b ]
  %.sroa.5.1.in = lshr i32 %.sroa.5.1.in.in, 8
  %.sroa.5.1 = trunc i32 %.sroa.5.1.in to i8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16INtNtBa_9primitive3RegxEyENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.511.0.extract.shift = lshr i32 %i.b, 16
  %.sroa.511.0.extract.trunc = trunc nuw i32 %.sroa.511.0.extract.shift to i16
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.d, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.511.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16NtNtBa_5index4SlotB18_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.625.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.528.0.extract.shift = lshr i32 %i.d, 16
  %.sroa.528.0.extract.trunc = trunc nuw i32 %.sroa.528.0.extract.shift to i16
  %i.e = trunc i32 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.427.0.extract.shift = lshr i32 %i.d, 8
  %.sroa.427.0.extract.trunc = trunc i32 %.sroa.427.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.427.0.extract.trunc, ptr %i.f, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.insert.insert.i33 = lshr i64 %i.g, 8
  %.sroa.430.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i33 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.430.0.extract.trunc, ptr %i.i, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.632.0.extract.shift = lshr i64 %i.g, 32
  %.sroa.632.0.extract.trunc = trunc nuw i64 %.sroa.632.0.extract.shift to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.625.0.extract.trunc, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.632.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %.sroa.528.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16NtNtBa_5index4SlotINtNtBa_9primitive3RegdEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2g_2Ip6decode9IpDecoderEB2o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.616.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.616.0.extract.trunc = trunc nuw i64 %.sroa.616.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_9primitive8Offset16NtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1t_2Ip6decode9IpDecoderEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i32 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.418.0.extract.shift = lshr i32 %i.d, 8
  %.sroa.418.0.extract.trunc = trunc i32 %.sroa.418.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.418.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.519.0.extract.shift = lshr i32 %i.d, 16
  %.sroa.519.0.extract.trunc = trunc nuw i32 %.sroa.519.0.extract.shift to i16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.616.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.519.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sink = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16NtNtBa_5index4SlotINtNtBa_9primitive3RegfEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2g_2Ip6decode9IpDecoderEB2o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.616.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.616.0.extract.trunc = trunc nuw i64 %.sroa.616.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_5
begin_hunk_6_@_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive10SlotAndRegxEINtBY_3RegxExENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB26_2Ip6decode9IpDecoderEB2e_:bb.a
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.614.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sink = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive10SlotAndRegxENtNtB9_5index4SlotB1r_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2f_2Ip6decode9IpDecoderEB2n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.626.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.626.0.extract.trunc = trunc nuw i64 %.sroa.626.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.630.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.630.0.extract.trunc = trunc nuw i64 %.sroa.630.0.extract.shift to i32
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i35 = lshr i64 %i.d, 8
  %.sroa.428.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i35 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.428.0.extract.trunc, ptr %i.f, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.insert.insert.i36 = lshr i64 %i.g, 8
  %.sroa.432.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i36 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.432.0.extract.trunc, ptr %i.i, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.634.0.extract.shift = lshr i64 %i.g, 32
  %.sroa.634.0.extract.trunc = trunc nuw i64 %.sroa.634.0.extract.shift to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.626.0.extract.trunc, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.630.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.634.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive10SlotAndRegxENtNtB9_5index4SlotlENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2c_2Ip6decode9IpDecoderEB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.626.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.626.0.extract.trunc = trunc nuw i64 %.sroa.626.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.630.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.630.0.extract.trunc = trunc nuw i64 %.sroa.630.0.extract.shift to i32
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i35 = lshr i64 %i.d, 8
  %.sroa.428.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i35 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.428.0.extract.trunc, ptr %i.f, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i64 @_RINvXsp_NtCs6kx5fqqPdgs_8wasmi_ir6decodelNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.432.0.extract.shift = lshr i64 %i.g, 8
  %.sroa.432.0.extract.trunc = trunc i64 %.sroa.432.0.extract.shift to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.432.0.extract.trunc, ptr %i.i, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.634.0.extract.shift = lshr i64 %i.g, 32
  %.sroa.634.0.extract.trunc = trunc nuw i64 %.sroa.634.0.extract.shift to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.626.0.extract.trunc, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.630.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.634.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive10SlotAndRegxENtNtB9_5index4SlotxENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2c_2Ip6decode9IpDecoderEB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.622.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.622.0.extract.trunc = trunc nuw i64 %.sroa.622.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.d, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.626.0.extract.shift = lshr i64 %i.e, 32
  %.sroa.626.0.extract.trunc = trunc nuw i64 %.sroa.626.0.extract.shift to i32
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i27 = lshr i64 %i.e, 8
  %.sroa.424.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i27 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.424.0.extract.trunc, ptr %i.g, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsq_NtCs6kx5fqqPdgs_8wasmi_ir6decodexNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.h = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.k, ptr %i.l, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.622.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.626.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegdEBV_BV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1R_2Ip6decode9IpDecoderEB1Z_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  ret i8 2
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegdEBV_NtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB26_2Ip6decode9IpDecoderEB2e_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegdEBV_dENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
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
  %i.h = load double, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegdENtNtB9_5index4SlotB1j_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB27_2Ip6decode9IpDecoderEB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegdENtNtB9_5index4SlotBV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB26_2Ip6decode9IpDecoderEB2e_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegdENtNtB9_5index4SlotdENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.614.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.614.0.extract.trunc = trunc nuw i64 %.sroa.614.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.d, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load double, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.614.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegdEdBV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
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
  %i.h = load double, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegdEdNtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.f, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load double, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i = lshr i64 %i.i, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.614.0.extract.shift = lshr i64 %i.i, 32
  %.sroa.614.0.extract.trunc = trunc nuw i64 %.sroa.614.0.extract.shift to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.h, ptr %i.l, align 8
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegfEBV_NtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB26_2Ip6decode9IpDecoderEB2e_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegfEBV_fENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegfENtNtB9_5index4SlotBV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB26_2Ip6decode9IpDecoderEB2e_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegfEfBV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_INtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZerolEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2A_2Ip6decode9IpDecoderEB2I_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_INtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2A_2Ip6decode9IpDecoderEB2I_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_NtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB26_2Ip6decode9IpDecoderEB2e_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_lENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEBV_mENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEIBW_dENtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB29_2Ip6decode9IpDecoderEB2h_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEIBW_dEdENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1S_2Ip6decode9IpDecoderEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
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
  %i.h = load double, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEIBW_fENtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB29_2Ip6decode9IpDecoderEB2h_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEIBW_fEfENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1S_2Ip6decode9IpDecoderEB20_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxENtNtB9_5index4SlotB1j_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB27_2Ip6decode9IpDecoderEB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxENtNtB9_5index4SlotBV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB26_2Ip6decode9IpDecoderEB2e_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxENtNtB9_5index4SlotIBW_dEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB29_2Ip6decode9IpDecoderEB2h_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxENtNtB9_5index4SlotIBW_fEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB29_2Ip6decode9IpDecoderEB2h_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxENtNtB9_5index4SlotINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZerolEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2P_2Ip6decode9IpDecoderEB2X_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.619.0.extract.shift = lshr i64 %i.a, 32  ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_RINvXsp_NtCs6kx5fqqPdgs_8wasmi_ir6decodelNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 4 uses
  %i.d = trunc i64 %i.c to i1                     ; 2 uses
  %.not.i = icmp ult i64 %i.c, 4294967296
  %.sroa.4.1.i = select i1 %i.d, i64 %i.c, i64 256
  %narrow = or i1 %.not.i, %i.d
  br i1 %narrow, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.623.0.extract.shift = lshr i64 %i.c, 32
  %i.e = and i64 %.sroa.619.0.extract.shift, 4294967040
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.5.sroa.5.sroa.0.0 = phi i64 [ 0, %bb.e ], [ %i.e, %bb.c ]
  %.sroa.5.sroa.0.0.in = phi i64 [ %.sroa.5.sroa.0.1.in, %bb.e ], [ %.sroa.619.0.extract.shift, %bb.c ]
  %.sroa.0.0 = phi i64 [ 0, %bb.e ], [ %.sroa.623.0.extract.shift, %bb.c ]
  %.sroa.5.sroa.0.0.insert.ext = and i64 %.sroa.5.sroa.0.0.in, 255
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.sroa.0.0.insert.ext, %.sroa.5.sroa.5.sroa.0.0
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.sroa.0.0.insert.insert, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert

bb.e:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.sroa.0.1.in.in = phi i64 [ %i.a, %bb.a ], [ %.sroa.4.1.i, %bb.b ]
  %.sroa.5.sroa.0.1.in = lshr i64 %.sroa.5.sroa.0.1.in.in, 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxENtNtB9_5index4SlotINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2P_2Ip6decode9IpDecoderEB2X_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.619.0.extract.shift = lshr i64 %i.a, 32  ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 4 uses
  %i.d = trunc i64 %i.c to i1                     ; 2 uses
  %.not.i = icmp ult i64 %i.c, 4294967296
  %.sroa.4.1.i = select i1 %i.d, i64 %i.c, i64 256
  %narrow = or i1 %.not.i, %i.d
  br i1 %narrow, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.623.0.extract.shift = lshr i64 %i.c, 32
  %i.e = and i64 %.sroa.619.0.extract.shift, 4294967040
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.5.sroa.5.sroa.0.0 = phi i64 [ 0, %bb.e ], [ %i.e, %bb.c ]
  %.sroa.5.sroa.0.0.in = phi i64 [ %.sroa.5.sroa.0.1.in, %bb.e ], [ %.sroa.619.0.extract.shift, %bb.c ]
  %.sroa.0.0 = phi i64 [ 0, %bb.e ], [ %.sroa.623.0.extract.shift, %bb.c ]
  %.sroa.5.sroa.0.0.insert.ext = and i64 %.sroa.5.sroa.0.0.in, 255
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.sroa.0.0.insert.ext, %.sroa.5.sroa.5.sroa.0.0
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.sroa.0.0.insert.insert, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert

bb.e:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.sroa.0.1.in.in = phi i64 [ %i.a, %bb.a ], [ %.sroa.4.1.i, %bb.b ]
  %.sroa.5.sroa.0.1.in = lshr i64 %.sroa.5.sroa.0.1.in.in, 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxENtNtB9_5index4SlotINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroxEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2P_2Ip6decode9IpDecoderEB2X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 9)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.614.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.614.0.extract.trunc = trunc nuw i64 %.sroa.614.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19
  call void @_RINvXsq_NtCs6kx5fqqPdgs_8wasmi_ir6decodexNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !20
  %i.d = load i8, ptr %i.a, align 8, !range !4, !noalias !19, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !4, !noalias !19, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !19, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.g, label %_RINvXsN_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroxENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit

_RINvXsN_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroxENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit: ; preds = %bb.e
  store i64 %i.i, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.614.0.extract.trunc, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_RINvXsN_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroxENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit
  ret void

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sroa.5.0.ph.sink = phi i8 [ %.sroa.4.0.extract.trunc, %bb.b ], [ %i.g, %bb.d ], [ 1, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0.ph.sink, ptr %i.k, align 8
  store i64 0, ptr %0, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxENtNtB9_5index4SlotINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2P_2Ip6decode9IpDecoderEB2X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 9)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.614.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.614.0.extract.trunc = trunc nuw i64 %.sroa.614.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24
  call void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !25
  %i.d = load i8, ptr %i.a, align 8, !range !4, !noalias !24, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !4, !noalias !24, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !24, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.g, label %_RINvXsP_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit

_RINvXsP_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit: ; preds = %bb.e
  store i64 %i.i, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.614.0.extract.trunc, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_RINvXsP_NtCs6kx5fqqPdgs_8wasmi_ir6decodeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyENtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_.exit
  ret void

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sroa.5.0.ph.sink = phi i8 [ %.sroa.4.0.extract.trunc, %bb.b ], [ %i.g, %bb.d ], [ 1, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0.ph.sink, ptr %i.k, align 8
  store i64 0, ptr %0, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxENtNtB9_5index4SlotNtNtCs5zeGauAcNNa_10wasmi_core12shift_amount11ShiftAmountENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2Y_2Ip6decode9IpDecoderEB36_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.617.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.617.0.extract.trunc = trunc nuw i64 %.sroa.617.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
end_hunk_6
begin_hunk_7_@_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxENtNtB9_5index4SlotmENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_:bb.a

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
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxENtNtB9_5index4SlotxENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.614.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.614.0.extract.trunc = trunc nuw i64 %.sroa.614.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.d, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsq_NtCs6kx5fqqPdgs_8wasmi_ir6decodexNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.614.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxENtNtB9_5index4SlotyENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.614.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.614.0.extract.trunc = trunc nuw i64 %.sroa.614.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.d, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.614.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEdIBW_dEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1S_2Ip6decode9IpDecoderEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
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
  %i.h = load double, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEdNtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.f, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load double, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i = lshr i64 %i.i, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.614.0.extract.shift = lshr i64 %i.i, 32
  %.sroa.614.0.extract.trunc = trunc nuw i64 %.sroa.614.0.extract.shift to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.h, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.614.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEfIBW_fEENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1S_2Ip6decode9IpDecoderEB20_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEfNtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxElBV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsp_NtCs6kx5fqqPdgs_8wasmi_ir6decodelNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.616.0.extract.shift = and i64 %i.a, -4294967296
  %i.b = trunc i64 %i.a to i1
  %spec.select = select i1 %i.b, i64 0, i64 %.sroa.616.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %spec.select, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxElNtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsp_NtCs6kx5fqqPdgs_8wasmi_ir6decodelNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
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

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEmBV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEmNtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxExBV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxExNtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i = lshr i64 %i.i, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.614.0.extract.shift = lshr i64 %i.i, 32
  %.sroa.614.0.extract.trunc = trunc nuw i64 %.sroa.614.0.extract.shift to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.614.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEyBV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1P_2Ip6decode9IpDecoderEB1X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define hidden void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpINtNtB9_9primitive3RegxEyNtNtB9_5index4SlotENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i = lshr i64 %i.i, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.614.0.extract.shift = lshr i64 %i.i, 32
end_hunk_7
begin_hunk_8_@_RINvXsc_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_9GlobalGetNtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1H_2Ip6decode9IpDecoderEB1P_:bb.a
bb.a:
  %i.a = tail call i64 @_RINvXsD_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index10GlobalAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1s_2Ip6decode9IpDecoderEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.615.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.615.0.extract.trunc = trunc nuw i64 %.sroa.615.0.extract.shift to i32
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
  %.sroa.417.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.417.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.619.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.619.0.extract.trunc = trunc nuw i64 %.sroa.619.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.615.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.619.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXsd_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_9GlobalSetINtNtBa_9primitive3RegdEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1N_2Ip6decode9IpDecoderEB1V_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_RINvXsD_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index10GlobalAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1s_2Ip6decode9IpDecoderEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.0.0.insert.insert = and i64 %i.a, -4294902015
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXsd_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_9GlobalSetINtNtBa_9primitive3RegfEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1N_2Ip6decode9IpDecoderEB1V_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_RINvXsD_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index10GlobalAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1s_2Ip6decode9IpDecoderEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.0.0.insert.insert = and i64 %i.a, -4294902015
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXsd_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_9GlobalSetINtNtBa_9primitive3RegxEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1N_2Ip6decode9IpDecoderEB1V_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_RINvXsD_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index10GlobalAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1s_2Ip6decode9IpDecoderEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.0.0.insert.insert = and i64 %i.a, -4294902015
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_9GlobalSetNtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1H_2Ip6decode9IpDecoderEB1P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_RINvXsD_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index10GlobalAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1s_2Ip6decode9IpDecoderEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.615.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.615.0.extract.trunc = trunc nuw i64 %.sroa.615.0.extract.shift to i32
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
  %.sroa.417.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.417.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.619.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.619.0.extract.trunc = trunc nuw i64 %.sroa.619.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.615.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.619.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_9GlobalSetmENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1q_2Ip6decode9IpDecoderEB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_RINvXsD_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index10GlobalAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1s_2Ip6decode9IpDecoderEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.615.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.615.0.extract.trunc = trunc nuw i64 %.sroa.615.0.extract.shift to i32
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
  %.sroa.417.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.417.0.extract.trunc = trunc i64 %.sroa.417.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.417.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.619.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.619.0.extract.trunc = trunc nuw i64 %.sroa.619.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.615.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.619.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_9GlobalSetyENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1q_2Ip6decode9IpDecoderEB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call i64 @_RINvXsD_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index10GlobalAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1s_2Ip6decode9IpDecoderEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.611.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.611.0.extract.trunc = trunc nuw i64 %.sroa.611.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i64 %i.b, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.d, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.611.0.extract.trunc, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901760) i64 @_RINvXse_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8TableGetINtNtBa_9primitive3RegxEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1M_2Ip6decode9IpDecoderEB1U_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsF_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index9TableAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1q_2Ip6decode9IpDecoderEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %.sroa.614.0.extract.shift = and i64 %i.a, -4294967296
  %.sroa.61.0 = select i1 %i.b, i64 0, i64 %.sroa.614.0.extract.shift
  %i.c = and i64 %i.a, 65281
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.61.0, %i.c
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8TableGetNtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1G_2Ip6decode9IpDecoderEB1O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.615.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.615.0.extract.trunc = trunc nuw i64 %.sroa.615.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.i = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsF_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index9TableAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1q_2Ip6decode9IpDecoderEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.417.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.417.0.extract.trunc = trunc i64 %.sroa.417.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.417.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.619.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.619.0.extract.trunc = trunc nuw i64 %.sroa.619.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.615.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.619.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8TableGetmENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1p_2Ip6decode9IpDecoderEB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.615.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.615.0.extract.trunc = trunc nuw i64 %.sroa.615.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsF_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index9TableAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1q_2Ip6decode9IpDecoderEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.417.0.extract.shift = lshr i64 %i.d, 8
  %.sroa.417.0.extract.trunc = trunc i64 %.sroa.417.0.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.417.0.extract.trunc, ptr %i.f, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.619.0.extract.shift = lshr i64 %i.d, 32
  %.sroa.619.0.extract.trunc = trunc nuw i64 %.sroa.619.0.extract.shift to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.615.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.619.0.extract.trunc, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsf_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8TableSetINtNtBa_9primitive3RegxENtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsF_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index9TableAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1q_2Ip6decode9IpDecoderEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
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
  %.sink = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsf_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8TableSetINtNtBa_9primitive3RegxEmENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1N_2Ip6decode9IpDecoderEB1V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsF_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index9TableAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1q_2Ip6decode9IpDecoderEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
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
  %.sink = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  store i8 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsf_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8TableSetNtNtBa_5index4SlotBW_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1J_2Ip6decode9IpDecoderEB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @_RINvXsF_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtNtB8_5index9TableAddrNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1q_2Ip6decode9IpDecoderEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %.sroa.626.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.626.0.extract.trunc = trunc nuw i64 %.sroa.626.0.extract.shift to i32
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i64 %i.a, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.c, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
end_hunk_8
