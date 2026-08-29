Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.14?download=true
inline.NumInlined: 3742
inline.NumDeleted: 1475
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex8TypeCodeENtB6_5Debug3fmtB1C_:bb.a

_RNvXsS_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB5_8TypeCodeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7984
  store i32 %.val, ptr %i.a, align 4, !noalias !7984
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !7987, !noalias !7990, !noundef !7 ; 2 uses
  %i.f = and i32 %i.e, 33554432
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsS_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB5_8TypeCodeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.g = and i32 %i.e, 67108864
  %.not1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1.i.i, label %bb.x, label %bb.y

bb.w:                                             ; preds = %_RNvXsS_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB5_8TypeCodeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.h = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.x:                                             ; preds = %bb.v
  %i.i = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.y:                                             ; preds = %bb.v
  %i.j = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %.sroa.0.0.in.i.i = phi i1 [ %i.h, %bb.w ], [ %i.j, %bb.y ], [ %i.i, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7984
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex8TypeCodeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex8TypeCodeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %_RNvXs1W_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB6_8TypeCodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXs1W_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB6_8TypeCodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SectionTypeENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7992)
  %i.c = icmp ult i32 %.val, 16
  %switch.maskindex = trunc i32 %.val to i16
  %switch.shifted = lshr i16 -12289, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvXsE_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_11SectionTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SectionTypeENtB6_5Debug3fmtB1C_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SectionTypeENtB6_5Debug3fmtB1C_.911, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SectionTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXsE_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_11SectionTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7992
  store i32 %.val, ptr %i.a, align 4, !noalias !7992
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !7995, !noalias !7998, !noundef !7 ; 2 uses
  %i.i = and i32 %i.h, 33554432
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXsE_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_11SectionTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.j = and i32 %i.h, 67108864
  %.not1.i.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %_RNvXsE_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_11SectionTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.k = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.b
  %i.m = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in.i.i = phi i1 [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7992
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SectionTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SectionTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SegmentTypeENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8000)
  switch i32 %.val, label %_RNvXsI_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_11SegmentTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i [
    i32 0, label %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 1685382480, label %bb.i
    i32 1685382481, label %bb.j
    i32 1685382482, label %bb.k
    i32 1685382483, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  br label %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.c:                                             ; preds = %bb.a
  br label %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.d:                                             ; preds = %bb.a
  br label %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.a
  br label %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.a
  br label %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.g:                                             ; preds = %bb.a
  br label %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.h:                                             ; preds = %bb.a
  br label %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.i:                                             ; preds = %bb.a
  br label %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.j:                                             ; preds = %bb.a
  br label %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.k:                                             ; preds = %bb.a
  br label %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.l:                                             ; preds = %bb.a
  br label %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.15.0.i.i = phi i64 [ 15, %bb.l ], [ 7, %bb.b ], [ 10, %bb.c ], [ 9, %bb.d ], [ 7, %bb.e ], [ 8, %bb.f ], [ 7, %bb.g ], [ 6, %bb.h ], [ 15, %bb.i ], [ 12, %bb.j ], [ 12, %bb.k ], [ 7, %bb.a ]
  %.sroa.0.0.i5.i = phi ptr [ @798, %bb.l ], [ @788, %bb.b ], [ @789, %bb.c ], [ @790, %bb.d ], [ @791, %bb.e ], [ @792, %bb.f ], [ @793, %bb.g ], [ @794, %bb.h ], [ @795, %bb.i ], [ @796, %bb.j ], [ @797, %bb.k ], [ @787, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i5.i, i64 noundef %.sroa.15.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SegmentTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXsI_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_11SegmentTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8000
  store i32 %.val, ptr %i.a, align 4, !noalias !8000
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !8003, !noalias !8006, !noundef !7 ; 2 uses
  %i.f = and i32 %i.e, 33554432
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXsI_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_11SegmentTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.g = and i32 %i.e, 67108864
  %.not1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1.i.i, label %bb.o, label %bb.p

bb.n:                                             ; preds = %_RNvXsI_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_11SegmentTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.h = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.o:                                             ; preds = %bb.m
  %i.i = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.p:                                             ; preds = %bb.m
  %i.j = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0.0.in.i.i = phi i1 [ %i.h, %bb.n ], [ %i.j, %bb.p ], [ %i.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8000
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SegmentTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SegmentTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf13SymVisibilityENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8008)
  %i.c = icmp ugt i32 %.val, 3
  br i1 %i.c, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf13SymVisibilityENtB6_5Debug3fmtB1C_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf13SymVisibilityENtB6_5Debug3fmtB1C_.912, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf13SymVisibilityENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8008
  store i32 %.val, ptr %i.a, align 4, !noalias !8008
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !8011, !noalias !8014, !noundef !7 ; 2 uses
  %i.i = and i32 %i.h, 33554432
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 67108864
  %.not1.i.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.in.i.i = phi i1 [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8008
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf13SymVisibilityENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf13SymVisibilityENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf4TypeENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8016)
  switch i32 %.val, label %_RNvXss_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_4TypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i [
    i32 0, label %_RNvXs1B_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 65280, label %bb.f
    i32 255, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br label %_RNvXs1B_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.c:                                             ; preds = %bb.a
  br label %_RNvXs1B_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.d:                                             ; preds = %bb.a
  br label %_RNvXs1B_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.a
  br label %_RNvXs1B_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.a
  br label %_RNvXs1B_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.g:                                             ; preds = %bb.a
  br label %_RNvXs1B_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

_RNvXs1B_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.10.0.i.i = phi i64 [ 9, %bb.g ], [ 6, %bb.b ], [ 7, %bb.c ], [ 6, %bb.d ], [ 7, %bb.e ], [ 9, %bb.f ], [ 7, %bb.a ]
  %.sroa.0.0.i4.i = phi ptr [ @533, %bb.g ], [ @528, %bb.b ], [ @529, %bb.c ], [ @530, %bb.d ], [ @531, %bb.e ], [ @532, %bb.f ], [ @527, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i4.i, i64 noundef %.sroa.10.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf4TypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXss_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_4TypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8016
  store i32 %.val, ptr %i.a, align 4, !noalias !8016
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !8019, !noalias !8022, !noundef !7 ; 2 uses
  %i.f = and i32 %i.e, 33554432
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvXss_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_4TypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.g = and i32 %i.e, 67108864
  %.not1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1.i.i, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvXss_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_4TypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.h = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.j:                                             ; preds = %bb.h
  %i.i = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.k:                                             ; preds = %bb.h
  %i.j = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.in.i.i = phi i1 [ %i.h, %bb.i ], [ %i.j, %bb.k ], [ %i.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8016
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf4TypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf4TypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %_RNvXs1B_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXs1B_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf5OsAbiENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8024)
  %i.c = tail call fastcc noundef i8 @_RNvXsA_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_5OsAbiNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32(i32 noundef %.val)
  switch i8 %i.c, label %bb.b [
    i8 -2, label %bb.w
    i8 0, label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
    i8 11, label %bb.l
    i8 12, label %bb.m
    i8 13, label %bb.n
    i8 14, label %bb.o
    i8 15, label %bb.p
    i8 16, label %bb.q
    i8 17, label %bb.r
    i8 18, label %bb.s
    i8 64, label %bb.t
    i8 97, label %bb.u
    i8 -1, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.d:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.g:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.h:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.i:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.j:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.k:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.l:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.m:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.n:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.o:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7DynTypeENtB6_5Debug3fmtB1C_:bb.a

bb.ak:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.al:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.am:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.an:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.ao:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.ap:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.aq:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.ar:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.as:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.at:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.au:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.av:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.aw:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i: ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.51.0.i.i = phi i64 [ 9, %bb.aw ], [ 9, %bb.c ], [ 11, %bb.d ], [ 9, %bb.e ], [ 7, %bb.f ], [ 9, %bb.g ], [ 9, %bb.h ], [ 7, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 8, %bb.l ], [ 9, %bb.m ], [ 7, %bb.n ], [ 7, %bb.o ], [ 9, %bb.p ], [ 8, %bb.q ], [ 11, %bb.r ], [ 6, %bb.s ], [ 8, %bb.t ], [ 9, %bb.u ], [ 9, %bb.v ], [ 8, %bb.w ], [ 10, %bb.x ], [ 9, %bb.y ], [ 11, %bb.z ], [ 13, %bb.aa ], [ 13, %bb.ab ], [ 15, %bb.ac ], [ 15, %bb.ad ], [ 10, %bb.ae ], [ 8, %bb.af ], [ 11, %bb.ag ], [ 7, %bb.ah ], [ 7, %bb.ai ], [ 11, %bb.aj ], [ 11, %bb.ak ], [ 12, %bb.al ], [ 12, %bb.am ], [ 9, %bb.an ], [ 12, %bb.ao ], [ 11, %bb.ap ], [ 10, %bb.aq ], [ 9, %bb.ar ], [ 12, %bb.as ], [ 10, %bb.at ], [ 13, %bb.au ], [ 9, %bb.av ], [ 7, %bb.a ]
  %.sroa.0.0.i.i = phi ptr [ @516, %bb.aw ], [ @470, %bb.c ], [ @471, %bb.d ], [ @472, %bb.e ], [ @473, %bb.f ], [ @474, %bb.g ], [ @475, %bb.h ], [ @476, %bb.i ], [ @477, %bb.j ], [ @478, %bb.k ], [ @479, %bb.l ], [ @480, %bb.m ], [ @481, %bb.n ], [ @482, %bb.o ], [ @483, %bb.p ], [ @484, %bb.q ], [ @485, %bb.r ], [ @486, %bb.s ], [ @487, %bb.t ], [ @488, %bb.u ], [ @489, %bb.v ], [ @490, %bb.w ], [ @491, %bb.x ], [ @492, %bb.y ], [ @493, %bb.z ], [ @494, %bb.aa ], [ @495, %bb.ab ], [ @496, %bb.ac ], [ @497, %bb.ad ], [ @498, %bb.ae ], [ @499, %bb.af ], [ @500, %bb.ag ], [ @501, %bb.ah ], [ @502, %bb.ai ], [ @503, %bb.aj ], [ @504, %bb.ak ], [ @505, %bb.al ], [ @506, %bb.am ], [ @507, %bb.an ], [ @508, %bb.ao ], [ @509, %bb.ap ], [ @510, %bb.aq ], [ @511, %bb.ar ], [ @512, %bb.as ], [ @513, %bb.at ], [ @514, %bb.au ], [ @515, %bb.av ], [ @469, %bb.a ]
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.51.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7DynTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

bb.ax:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8032
  store i32 %.val, ptr %i.a, align 4, !noalias !8032
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !8035, !noalias !8038, !noundef !7 ; 2 uses
  %i.g = and i32 %i.f, 33554432
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.h = and i32 %i.f, 67108864
  %.not1.i.i = icmp eq i32 %i.h, 0
  br i1 %.not1.i.i, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.i = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.j = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.bb:                                            ; preds = %bb.ay
  %i.k = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.bb, %bb.ba, %bb.az
  %.sroa.0.0.in.i.i = phi i1 [ %i.i, %bb.az ], [ %i.k, %bb.bb ], [ %i.j, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8032
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7DynTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7DynTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.d, %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7MachineENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8040)
  switch i32 %.val, label %_RNvXsw_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_7MachineNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i [
    i32 0, label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 20, label %bb.l
    i32 21, label %bb.m
    i32 40, label %bb.n
    i32 62, label %bb.o
    i32 183, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.c:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.d:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.g:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.h:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.i:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.j:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.k:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.l:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.m:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.n:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.o:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.p:                                             ; preds = %bb.a
  br label %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.19.0.i.i = phi i64 [ 10, %bb.p ], [ 6, %bb.b ], [ 8, %bb.c ], [ 6, %bb.d ], [ 6, %bb.e ], [ 6, %bb.f ], [ 8, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 7, %bb.j ], [ 14, %bb.k ], [ 6, %bb.l ], [ 8, %bb.m ], [ 6, %bb.n ], [ 9, %bb.o ], [ 7, %bb.a ]
  %.sroa.0.0.i5.i = phi ptr [ @572, %bb.p ], [ @558, %bb.b ], [ @559, %bb.c ], [ @560, %bb.d ], [ @561, %bb.e ], [ @562, %bb.f ], [ @563, %bb.g ], [ @564, %bb.h ], [ @565, %bb.i ], [ @566, %bb.j ], [ @567, %bb.k ], [ @568, %bb.l ], [ @569, %bb.m ], [ @570, %bb.n ], [ @571, %bb.o ], [ @557, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i5.i, i64 noundef %.sroa.19.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7MachineENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXsw_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_7MachineNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8040
  store i32 %.val, ptr %i.a, align 4, !noalias !8040
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !8043, !noalias !8046, !noundef !7 ; 2 uses
  %i.f = and i32 %i.e, 33554432
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvXsw_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_7MachineNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.g = and i32 %i.e, 67108864
  %.not1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1.i.i, label %bb.s, label %bb.t

bb.r:                                             ; preds = %_RNvXsw_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_7MachineNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.h = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.s:                                             ; preds = %bb.q
  %i.i = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.t:                                             ; preds = %bb.q
  %i.j = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.in.i.i = phi i1 [ %i.h, %bb.r ], [ %i.j, %bb.t ], [ %i.i, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8040
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7MachineENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7MachineENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymBindENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8048)
  %i.c = icmp ugt i32 %.val, 2
  br i1 %i.c, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymBindENtB6_5Debug3fmtB1C_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymBindENtB6_5Debug3fmtB1C_.913, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymBindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8048
  store i32 %.val, ptr %i.a, align 4, !noalias !8048
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !8051, !noalias !8054, !noundef !7 ; 2 uses
  %i.i = and i32 %i.h, 33554432
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 67108864
  %.not1.i.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.in.i.i = phi i1 [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8048
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymBindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymBindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymTypeENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8056)
  %i.c = icmp ugt i32 %.val, 6
  br i1 %i.c, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymTypeENtB6_5Debug3fmtB1C_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymTypeENtB6_5Debug3fmtB1C_.914, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8056
  store i32 %.val, ptr %i.a, align 4, !noalias !8056
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !8059, !noalias !8062, !noundef !7 ; 2 uses
  %i.i = and i32 %i.h, 33554432
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 67108864
  %.not1.i.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.in.i.i = phi i1 [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8056
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11ShowCommandENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8064)
  switch i32 %.val, label %_RNvXsk_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i [
    i32 1, label %_RNvXsZ_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i
    i32 3, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %_RNvXsZ_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.c:                                             ; preds = %bb.a
  br label %_RNvXsZ_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

_RNvXsZ_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.6.0.i.i = phi i64 [ 13, %bb.c ], [ 9, %bb.b ], [ 6, %bb.a ]
  %.sroa.0.0.i5.i = phi ptr [ @1228, %bb.c ], [ @1227, %bb.b ], [ @1226, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i5.i, i64 noundef %.sroa.6.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11ShowCommandENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXsk_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8064
  store i32 %.val, ptr %i.a, align 4, !noalias !8064
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !8067, !noalias !8070, !noundef !7 ; 2 uses
  %i.f = and i32 %i.e, 33554432
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXsk_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.g = and i32 %i.e, 67108864
  %.not1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1.i.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvXsk_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.h = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.g:                                             ; preds = %bb.d
  %i.j = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.in.i.i = phi i1 [ %i.h, %bb.e ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8064
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11ShowCommandENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11ShowCommandENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %_RNvXsZ_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXsZ_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk13ShellItemTypeENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8072)
  switch i32 %.val, label %_RNvXss_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_13ShellItemTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i [
    i32 0, label %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i
    i32 1, label %bb.b
    i32 31, label %bb.c
    i32 32, label %bb.d
    i32 48, label %bb.e
    i32 64, label %bb.f
    i32 82, label %bb.g
    i32 97, label %bb.h
    i32 113, label %bb.i
    i32 114, label %bb.j
    i32 115, label %bb.k
    i32 116, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  br label %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.c:                                             ; preds = %bb.a
  br label %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.d:                                             ; preds = %bb.a
  br label %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.a
  br label %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.a
  br label %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.g:                                             ; preds = %bb.a
  br label %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.h:                                             ; preds = %bb.a
  br label %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.i:                                             ; preds = %bb.a
  br label %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.j:                                             ; preds = %bb.a
  br label %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.k:                                             ; preds = %bb.a
  br label %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.l:                                             ; preds = %bb.a
  br label %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.15.0.i.i = phi i64 [ 18, %bb.l ], [ 22, %bb.b ], [ 11, %bb.c ], [ 6, %bb.d ], [ 10, %bb.e ], [ 16, %bb.f ], [ 17, %bb.g ], [ 3, %bb.h ], [ 13, %bb.i ], [ 8, %bb.j ], [ 20, %bb.k ], [ 17, %bb.a ]
  %.sroa.0.0.i5.i = phi ptr [ @666, %bb.l ], [ @656, %bb.b ], [ @657, %bb.c ], [ @658, %bb.d ], [ @659, %bb.e ], [ @660, %bb.f ], [ @661, %bb.g ], [ @662, %bb.h ], [ @663, %bb.i ], [ @664, %bb.j ], [ @665, %bb.k ], [ @655, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i5.i, i64 noundef %.sroa.15.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk13ShellItemTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXss_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_13ShellItemTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8072
  store i32 %.val, ptr %i.a, align 4, !noalias !8072
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !8075, !noalias !8078, !noundef !7 ; 2 uses
  %i.f = and i32 %i.e, 33554432
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXss_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_13ShellItemTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.g = and i32 %i.e, 67108864
  %.not1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1.i.i, label %bb.o, label %bb.p

bb.n:                                             ; preds = %_RNvXss_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_13ShellItemTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.h = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.o:                                             ; preds = %bb.m
  %i.i = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.p:                                             ; preds = %bb.m
  %i.j = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0.0.in.i.i = phi i1 [ %i.h, %bb.n ], [ %i.j, %bb.p ], [ %i.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8072
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk13ShellItemTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk13ShellItemTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9DriveTypeENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8080)
  %i.c = icmp ugt i32 %.val, 6
  br i1 %i.c, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9DriveTypeENtB6_5Debug3fmtB1C_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9DriveTypeENtB6_5Debug3fmtB1C_.915, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9DriveTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8080
  store i32 %.val, ptr %i.a, align 4, !noalias !8080
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !8083, !noalias !8086, !noundef !7 ; 2 uses
  %i.i = and i32 %i.h, 33554432
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 67108864
  %.not1.i.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.in.i.i = phi i1 [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8080
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9DriveTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9DriveTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8088)
  %i.c = icmp ugt i32 %.val, 3
  %switch.idx.cast.i.i = trunc i32 %.val to i8    ; 2 uses
  %.not1.i = icmp eq i8 %switch.idx.cast.i.i, 0
  %.not.i = or i1 %i.c, %.not1.i
  br i1 %.not.i, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %switch.tableidx = add nsw i8 %switch.idx.cast.i.i, -1 ; 2 uses
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtB6_5Debug3fmtB1C_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtB6_5Debug3fmtB1C_.916, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8088
  store i32 %.val, ptr %i.a, align 4, !noalias !8088
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !8091, !noalias !8094, !noundef !7 ; 2 uses
  %i.i = and i32 %i.h, 33554432
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 67108864
  %.not1.i.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.in.i.i = phi i1 [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8088
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip11CompressionENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8096)
  switch i32 %.val, label %_RNvXsa_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i [
    i32 0, label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 8, label %bb.h
    i32 9, label %bb.i
    i32 10, label %bb.j
    i32 12, label %bb.k
    i32 14, label %bb.l
    i32 93, label %bb.m
    i32 95, label %bb.n
    i32 255, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.c:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.d:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.g:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.h:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.i:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.j:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.k:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.l:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.m:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.n:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

bb.o:                                             ; preds = %bb.a
  br label %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.18.0.i.i = phi i64 [ 7, %bb.o ], [ 6, %bb.b ], [ 9, %bb.c ], [ 9, %bb.d ], [ 9, %bb.e ], [ 9, %bb.f ], [ 8, %bb.g ], [ 8, %bb.h ], [ 9, %bb.i ], [ 16, %bb.j ], [ 5, %bb.k ], [ 4, %bb.l ], [ 4, %bb.m ], [ 2, %bb.n ], [ 6, %bb.a ]
  %.sroa.0.0.i5.i = phi ptr [ @520, %bb.o ], [ @1287, %bb.b ], [ @1288, %bb.c ], [ @1289, %bb.d ], [ @1290, %bb.e ], [ @1291, %bb.f ], [ @1292, %bb.g ], [ @1293, %bb.h ], [ @1294, %bb.i ], [ @1295, %bb.j ], [ @1296, %bb.k ], [ @1297, %bb.l ], [ @1298, %bb.m ], [ @1299, %bb.n ], [ @1286, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i5.i, i64 noundef %.sroa.18.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip11CompressionENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXsa_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8096
  store i32 %.val, ptr %i.a, align 4, !noalias !8096
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !8099, !noalias !8102, !noundef !7 ; 2 uses
  %i.f = and i32 %i.e, 33554432
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvXsa_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.g = and i32 %i.e, 67108864
  %.not1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1.i.i, label %bb.r, label %bb.s

bb.q:                                             ; preds = %_RNvXsa_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.h = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.r:                                             ; preds = %bb.p
  %i.i = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.s:                                             ; preds = %bb.p
  %i.j = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.0.0.in.i.i = phi i1 [ %i.h, %bb.q ], [ %i.j, %bb.s ], [ %i.i, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8096
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip11CompressionENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip11CompressionENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXsu_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_11CompressionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8104)
  %switch.tableidx = add i32 %.val, -36           ; 4 uses
  %i.c = icmp ult i32 %switch.tableidx, 13
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 6147, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvXs2I_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_10DeviceTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeENtB6_5Debug3fmtB1C_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeENtB6_5Debug3fmtB1C_.917, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs2I_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_10DeviceTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8104
  store i32 %.val, ptr %i.a, align 4, !noalias !8104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !8107, !noalias !8110, !noundef !7 ; 2 uses
  %i.i = and i32 %i.h, 33554432
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs2I_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_10DeviceTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.j = and i32 %i.h, 67108864
  %.not1.i.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %_RNvXs2I_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_10DeviceTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.k = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.b
  %i.m = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in.i.i = phi i1 [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8104
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecf10StreamTypeENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8112)
  %i.c = icmp ult i32 %.val, 6
  %switch.maskindex = trunc i32 %.val to i8
  %switch.shifted = lshr i8 39, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvXsa_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecfNtB5_10StreamTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecf10StreamTypeENtB6_5Debug3fmtB1C_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecf10StreamTypeENtB6_5Debug3fmtB1C_.918, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecf10StreamTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXsa_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecfNtB5_10StreamTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8112
  store i32 %.val, ptr %i.a, align 4, !noalias !8112
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !8115, !noalias !8118, !noundef !7 ; 2 uses
  %i.i = and i32 %i.h, 33554432
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXsa_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecfNtB5_10StreamTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.j = and i32 %i.h, 67108864
  %.not1.i.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %_RNvXsa_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecfNtB5_10StreamTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.k = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.b
  %i.m = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in.i.i = phi i1 [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8112
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecf10StreamTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecf10StreamTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox10VerdictTagENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8120)
  %i.c = icmp ugt i32 %.val, 13
  br i1 %i.c, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox10VerdictTagENtB6_5Debug3fmtB1C_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox10VerdictTagENtB6_5Debug3fmtB1C_.919, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox10VerdictTagENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8120
  store i32 %.val, ptr %i.a, align 4, !noalias !8120
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !8123, !noalias !8126, !noundef !7 ; 2 uses
  %i.i = and i32 %i.h, 33554432
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 67108864
  %.not1.i.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.in.i.i = phi i1 [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8120
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox10VerdictTagENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox10VerdictTagENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox12BehaviourTagENtB6_5Debug3fmtB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8128)
  %i.c = tail call noundef i8 @_RNvXs1q_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandboxNtB6_12BehaviourTagNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32(i32 noundef %.val) ; 3 uses
  %.not.i = icmp eq i8 %i.c, -1
  br i1 %.not.i, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox12BehaviourTagENtB6_5Debug3fmtB1C_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox12BehaviourTagENtB6_5Debug3fmtB1C_.920, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox12BehaviourTagENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8128
  store i32 %.val, ptr %i.a, align 4, !noalias !8128
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !8131, !noalias !8134, !noundef !7 ; 2 uses
  %i.i = and i32 %i.h, 33554432
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 67108864
  %.not1.i.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.in.i.i = phi i1 [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8128
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox12BehaviourTagENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox12BehaviourTagENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1e_.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto211test_proto211EnumerationENtB6_5Debug3fmtB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7948, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !noundef !7 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8136)
  %i.c = icmp ugt i32 %.val, 3
  br i1 %i.c, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto211test_proto211EnumerationENtB6_5Debug3fmtB1E_, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load, i64 noundef 6)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto211test_proto211EnumerationENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1g_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8136
  store i32 %.val, ptr %i.a, align 4, !noalias !8136
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !alias.scope !8139, !noalias !8142, !noundef !7 ; 2 uses
  %i.h = and i32 %i.g, 33554432
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %i.g, 67108864
  %.not1.i.i = icmp eq i32 %i.i, 0
  br i1 %.not1.i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.f:                                             ; preds = %bb.c
  %i.l = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.in.i.i = phi i1 [ %i.j, %bb.d ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8136
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto211test_proto211EnumerationENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1g_.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto211test_proto211EnumerationENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1g_.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.e, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCs7gfv9tzbXmh_6yara_x5teddy7generic3FatNtNtNtB8_9core_arch3x867___m256iKj1_ENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7915, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8144
  store ptr %i.b, ptr %i.a, align 8, !noalias !8144
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1321, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1320, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1307, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1311)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8144
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCs7gfv9tzbXmh_6yara_x5teddy7generic3FatNtNtNtB8_9core_arch3x867___m256iKj2_ENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7915, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8148
  store ptr %i.b, ptr %i.a, align 8, !noalias !8148
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1321, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1320, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1307, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1312)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8148
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCs7gfv9tzbXmh_6yara_x5teddy7generic3FatNtNtNtB8_9core_arch3x867___m256iKj3_ENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7915, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8152
  store ptr %i.b, ptr %i.a, align 8, !noalias !8152
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1321, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1320, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1307, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1313)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8152
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCs7gfv9tzbXmh_6yara_x5teddy7generic3FatNtNtNtB8_9core_arch3x867___m256iKj4_ENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7915, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8156
  store ptr %i.b, ptr %i.a, align 8, !noalias !8156
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1321, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1320, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1307, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1314)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8156
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCs7gfv9tzbXmh_6yara_x5teddy7generic4MaskNtNtNtB8_9core_arch3x867___m128iENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7882, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8160
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8, !noalias !8160
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1194, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1195, i64 noundef 2, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1192, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1196, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1193)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8160
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCs7gfv9tzbXmh_6yara_x5teddy7generic4MaskNtNtNtB8_9core_arch3x867___m256iENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7915, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8164
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.a, align 8, !noalias !8164
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1194, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1195, i64 noundef 2, ptr noundef nonnull readonly align 32 dereferenceable(64) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1197, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1196, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1198)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8164
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCs7gfv9tzbXmh_6yara_x5teddy7generic4SlimNtNtNtB8_9core_arch3x867___m128iKj1_ENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7882, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8168
  store ptr %i.b, ptr %i.a, align 8, !noalias !8168
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1305, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1303, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1307, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1304)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8168
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCs7gfv9tzbXmh_6yara_x5teddy7generic4SlimNtNtNtB8_9core_arch3x867___m128iKj2_ENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7882, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8172
  store ptr %i.b, ptr %i.a, align 8, !noalias !8172
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1305, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1303, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1307, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1308)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8172
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCs7gfv9tzbXmh_6yara_x5teddy7generic4SlimNtNtNtB8_9core_arch3x867___m128iKj3_ENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7882, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8176
  store ptr %i.b, ptr %i.a, align 8, !noalias !8176
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1305, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1303, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1307, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1309)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8176
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCs7gfv9tzbXmh_6yara_x5teddy7generic4SlimNtNtNtB8_9core_arch3x867___m128iKj4_ENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7882, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8180
  store ptr %i.b, ptr %i.a, align 8, !noalias !8180
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1305, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1303, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1307, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1310)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8180
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCs7gfv9tzbXmh_6yara_x5teddy7generic4SlimNtNtNtB8_9core_arch3x867___m256iKj1_ENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7915, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8184
  store ptr %i.b, ptr %i.a, align 8, !noalias !8184
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1305, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1303, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1307, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1311)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8184
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCs7gfv9tzbXmh_6yara_x5teddy7generic4SlimNtNtNtB8_9core_arch3x867___m256iKj2_ENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !7915, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8188
  store ptr %i.b, ptr %i.a, align 8, !noalias !8188
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1305, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1306, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1303, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1307, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1312)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8188
  ret i1 %i.d
}

end_hunk_1
