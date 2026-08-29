Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.03?download=true
inline.NumInlined: 1586
inline.NumDeleted: 883
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex8TypeCodeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr:bb.a

_RNvXsS_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB5_8TypeCodeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3607
  store i32 %.val, ptr %i.a, align 4, !noalias !3607
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !3610, !noalias !3613, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3607
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex8TypeCodeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex8TypeCodeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvXs1W_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB6_8TypeCodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXs1W_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB6_8TypeCodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SectionTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3615)
  %i.c = icmp ult i32 %.val, 16
  %switch.maskindex = trunc i32 %.val to i16
  %switch.shifted = lshr i16 -12289, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvXsE_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_11SectionTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SectionTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SectionTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr.459, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SectionTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXsE_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_11SectionTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3615
  store i32 %.val, ptr %i.a, align 4, !noalias !3615
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !3618, !noalias !3621, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3615
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SectionTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SectionTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SegmentTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3623)
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
  %.sroa.0.0.i5.i = phi ptr [ @194, %bb.l ], [ @184, %bb.b ], [ @185, %bb.c ], [ @186, %bb.d ], [ @187, %bb.e ], [ @188, %bb.f ], [ @189, %bb.g ], [ @190, %bb.h ], [ @191, %bb.i ], [ @192, %bb.j ], [ @193, %bb.k ], [ @183, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i5.i, i64 noundef %.sroa.15.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SegmentTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXsI_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_11SegmentTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3623
  store i32 %.val, ptr %i.a, align 4, !noalias !3623
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !3626, !noalias !3629, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3623
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SegmentTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf11SegmentTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXs27_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_11SegmentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf13SymVisibilityENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3631)
  %i.c = icmp ugt i32 %.val, 3
  %2 = and i32 %.val, 255
  %.not1.i = icmp eq i32 %2, 255
  %.not.i = or i1 %i.c, %.not1.i
  br i1 %.not.i, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf13SymVisibilityENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf13SymVisibilityENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr.460, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf13SymVisibilityENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3631
  store i32 %.val, ptr %i.a, align 4, !noalias !3631
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !3634, !noalias !3637, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3631
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf13SymVisibilityENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf13SymVisibilityENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf4TypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3639)
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
  %.sroa.0.0.i4.i = phi ptr [ @98, %bb.g ], [ @93, %bb.b ], [ @94, %bb.c ], [ @95, %bb.d ], [ @96, %bb.e ], [ @97, %bb.f ], [ @92, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i4.i, i64 noundef %.sroa.10.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf4TypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXss_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_4TypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3639
  store i32 %.val, ptr %i.a, align 4, !noalias !3639
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !3642, !noalias !3645, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3639
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf4TypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf4TypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvXs1B_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXs1B_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf5OsAbiENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3647)
  switch i32 %.val, label %_RNvXsA_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_5OsAbiNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i [
    i32 0, label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 8, label %bb.h
    i32 9, label %bb.i
    i32 10, label %bb.j
    i32 11, label %bb.k
    i32 12, label %bb.l
    i32 13, label %bb.m
    i32 14, label %bb.n
    i32 15, label %bb.o
    i32 16, label %bb.p
    i32 17, label %bb.q
    i32 18, label %bb.r
    i32 64, label %bb.s
    i32 97, label %bb.t
    i32 255, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

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

bb.p:                                             ; preds = %bb.a
  br label %_RNvXs1R_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_5OsAbiNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7DynTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr:bb.a

bb.aj:                                            ; preds = %bb.a
  br label %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i

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

_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i: ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.51.0.i.i = phi i64 [ 9, %bb.av ], [ 9, %bb.b ], [ 11, %bb.c ], [ 9, %bb.d ], [ 7, %bb.e ], [ 9, %bb.f ], [ 9, %bb.g ], [ 7, %bb.h ], [ 9, %bb.i ], [ 10, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 7, %bb.m ], [ 7, %bb.n ], [ 9, %bb.o ], [ 8, %bb.p ], [ 11, %bb.q ], [ 6, %bb.r ], [ 8, %bb.s ], [ 9, %bb.t ], [ 9, %bb.u ], [ 8, %bb.v ], [ 10, %bb.w ], [ 9, %bb.x ], [ 11, %bb.y ], [ 13, %bb.z ], [ 13, %bb.aa ], [ 15, %bb.ab ], [ 15, %bb.ac ], [ 10, %bb.ad ], [ 8, %bb.ae ], [ 11, %bb.af ], [ 7, %bb.ag ], [ 7, %bb.ah ], [ 11, %bb.ai ], [ 11, %bb.aj ], [ 12, %bb.ak ], [ 12, %bb.al ], [ 9, %bb.am ], [ 12, %bb.an ], [ 11, %bb.ao ], [ 10, %bb.ap ], [ 9, %bb.aq ], [ 12, %bb.ar ], [ 10, %bb.as ], [ 13, %bb.at ], [ 9, %bb.au ], [ 7, %bb.a ]
  %.sroa.0.0.i5.i = phi ptr [ @246, %bb.av ], [ @200, %bb.b ], [ @201, %bb.c ], [ @202, %bb.d ], [ @203, %bb.e ], [ @204, %bb.f ], [ @205, %bb.g ], [ @206, %bb.h ], [ @207, %bb.i ], [ @208, %bb.j ], [ @209, %bb.k ], [ @210, %bb.l ], [ @211, %bb.m ], [ @212, %bb.n ], [ @213, %bb.o ], [ @214, %bb.p ], [ @215, %bb.q ], [ @216, %bb.r ], [ @217, %bb.s ], [ @218, %bb.t ], [ @219, %bb.u ], [ @220, %bb.v ], [ @221, %bb.w ], [ @222, %bb.x ], [ @223, %bb.y ], [ @224, %bb.z ], [ @225, %bb.aa ], [ @226, %bb.ab ], [ @227, %bb.ac ], [ @228, %bb.ad ], [ @229, %bb.ae ], [ @230, %bb.af ], [ @231, %bb.ag ], [ @232, %bb.ah ], [ @233, %bb.ai ], [ @234, %bb.aj ], [ @235, %bb.ak ], [ @236, %bb.al ], [ @237, %bb.am ], [ @238, %bb.an ], [ @239, %bb.ao ], [ @240, %bb.ap ], [ @241, %bb.aq ], [ @242, %bb.ar ], [ @243, %bb.as ], [ @244, %bb.at ], [ @245, %bb.au ], [ @199, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i5.i, i64 noundef %.sroa.51.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7DynTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs12_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3655
  store i32 %.val, ptr %i.a, align 4, !noalias !3655
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !3658, !noalias !3661, !noundef !6 ; 2 uses
  %i.f = and i32 %i.e, 33554432
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvXs12_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.g = and i32 %i.e, 67108864
  %.not1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1.i.i, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %_RNvXs12_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i
  %i.h = call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.i = call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

bb.az:                                            ; preds = %bb.aw
  %i.j = call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i: ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.0.0.in.i.i = phi i1 [ %i.h, %bb.ax ], [ %i.j, %bb.az ], [ %i.i, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3655
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7DynTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7DynTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXs2L_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7DynTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7MachineENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3663)
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
  %.sroa.0.0.i5.i = phi ptr [ @114, %bb.p ], [ @100, %bb.b ], [ @101, %bb.c ], [ @102, %bb.d ], [ @103, %bb.e ], [ @104, %bb.f ], [ @105, %bb.g ], [ @106, %bb.h ], [ @107, %bb.i ], [ @108, %bb.j ], [ @109, %bb.k ], [ @110, %bb.l ], [ @111, %bb.m ], [ @112, %bb.n ], [ @113, %bb.o ], [ @99, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i5.i, i64 noundef %.sroa.19.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7MachineENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXsw_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB5_7MachineNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3663
  store i32 %.val, ptr %i.a, align 4, !noalias !3663
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !3666, !noalias !3669, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3663
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7MachineENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7MachineENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXs1J_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elfNtB6_7MachineNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymBindENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3671)
  %i.c = icmp ugt i32 %.val, 2
  %2 = and i32 %.val, 255
  %.not1.i = icmp eq i32 %2, 255
  %.not.i = or i1 %i.c, %.not1.i
  br i1 %.not.i, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymBindENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymBindENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr.461, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymBindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3671
  store i32 %.val, ptr %i.a, align 4, !noalias !3671
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !3674, !noalias !3677, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3671
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymBindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymBindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3679)
  %i.c = icmp ugt i32 %.val, 6
  %2 = and i32 %.val, 255
  %.not1.i = icmp eq i32 %2, 255
  %.not.i = or i1 %i.c, %.not1.i
  br i1 %.not.i, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr.462, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3679
  store i32 %.val, ptr %i.a, align 4, !noalias !3679
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !3682, !noalias !3685, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3679
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf7SymTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11ShowCommandENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3687)
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
  %.sroa.0.0.i5.i = phi ptr [ @314, %bb.c ], [ @313, %bb.b ], [ @312, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i5.i, i64 noundef %.sroa.6.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11ShowCommandENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXsk_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3687
  store i32 %.val, ptr %i.a, align 4, !noalias !3687
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !3690, !noalias !3693, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3687
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11ShowCommandENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11ShowCommandENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvXsZ_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXsZ_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_11ShowCommandNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk13ShellItemTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3695)
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
  %.sroa.0.0.i5.i = phi ptr [ @182, %bb.l ], [ @172, %bb.b ], [ @173, %bb.c ], [ @174, %bb.d ], [ @175, %bb.e ], [ @176, %bb.f ], [ @177, %bb.g ], [ @178, %bb.h ], [ @179, %bb.i ], [ @180, %bb.j ], [ @181, %bb.k ], [ @171, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i5.i, i64 noundef %.sroa.15.0.i.i)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk13ShellItemTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXss_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_13ShellItemTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3695
  store i32 %.val, ptr %i.a, align 4, !noalias !3695
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !3698, !noalias !3701, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3695
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk13ShellItemTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk13ShellItemTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.c, %_RNvXs1f_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB6_13ShellItemTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit.i ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9DriveTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3703)
  %i.c = icmp ugt i32 %.val, 6
  %2 = and i32 %.val, 255
  %.not1.i = icmp eq i32 %2, 255
  %.not.i = or i1 %i.c, %.not1.i
  br i1 %.not.i, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9DriveTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9DriveTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr.463, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9DriveTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3703
  store i32 %.val, ptr %i.a, align 4, !noalias !3703
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !3706, !noalias !3709, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3703
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9DriveTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk9DriveTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3711)
  %i.c = icmp ugt i32 %.val, 3
  %switch.idx.cast.i.i = trunc i32 %.val to i8    ; 2 uses
  %.not1.i = icmp eq i8 %switch.idx.cast.i.i, 0
  %.not.i = or i1 %i.c, %.not1.i
  br i1 %.not.i, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %switch.tableidx = add nsw i8 %switch.idx.cast.i.i, -1 ; 2 uses
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr.464, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3711
  store i32 %.val, ptr %i.a, align 4, !noalias !3711
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !3714, !noalias !3717, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3711
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba10ModuleTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3719)
  %switch.tableidx = add i32 %.val, -36           ; 4 uses
  %i.c = icmp ult i32 %switch.tableidx, 13
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 6147, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvXs2I_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_10DeviceTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr.465, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs2I_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_10DeviceTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3719
  store i32 %.val, ptr %i.a, align 4, !noalias !3719
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !3722, !noalias !3725, !noundef !6 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3719
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit: ; preds = %switch.lookup, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i
  %.sroa.0.0.in.i = phi i1 [ %i.f, %switch.lookup ], [ %.sroa.0.0.in.i.i, %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecf10StreamTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !3416, !noundef !6
  %.val = load i32, ptr %i.b, align 4, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3727)
  %i.c = icmp ult i32 %.val, 6
  %switch.maskindex = trunc i32 %.val to i8
  %switch.shifted = lshr i8 39, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvXsa_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecfNtB5_10StreamTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecf10StreamTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecf10StreamTypeENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr.466, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  br label %_RNvXs3_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB5_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecf10StreamTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr.exit

_RNvXsa_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecfNtB5_10StreamTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_i32.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3727
  store i32 %.val, ptr %i.a, align 4, !noalias !3727
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_1
