Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.2?download=true
inline.NumInlined: 246
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [68 x i8] c"assertion failed: amt <= self.limit_within_buf - self.pos_within_buf", align 1
@1 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/protobuf-2.28.0/src/buf_read_iter.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"i\00\00\00\00\00\00\00\AD\01\00\00\09\00\00\00" }>, align 8
@3 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/protobuf-2.28.0/src/repeated.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"d\00\00\00\00\00\00\00*\01\00\00\15\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"d\00\00\00\00\00\00\00-\01\00\00\19\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"d\00\00\00\00\00\00\00_\00\00\00\16\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes13static_to_vec, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes13static_to_mut, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop }>, align 8
@_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@8 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1697178231188267480 to ptr), ptr inttoptr (i64 -4536524515711152499 to ptr) }>, align 8
@9 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8294660207793033087 to ptr), ptr inttoptr (i64 1593726942315916911 to ptr) }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEBH_, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtB2_3Any7type_idBx_ }>, align 8
@11 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCslpwiOMB70Kp_8protobuf7reflect8repeatedINtB5_28ReflectRepeatedIterImplSliceNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtB5_24ReflectRepeatedIterTrait4nextB1t_ }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"d\00\00\00\00\00\00\00\AC\01\00\00\12\00\00\00" }>, align 8
@13 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/protobuf-2.28.0/src/reflect/repeated.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"l\00\00\00\00\00\00\00:\00\00\00\0E\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtB2_3Any7type_idBx_, ptr @_RNvXsJ_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtNtCslpwiOMB70Kp_8protobuf7reflect5value13ProtobufValue6as_ref, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtNtCslpwiOMB70Kp_8protobuf7reflect5value13ProtobufValue6as_anyB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtNtCslpwiOMB70Kp_8protobuf7reflect5value13ProtobufValue11is_non_zeroB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtNtCslpwiOMB70Kp_8protobuf7reflect5value13ProtobufValue11as_ref_copyB8_ }>, align 8
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCslpwiOMB70Kp_8protobuf7reflect8repeatedINtB5_28ReflectRepeatedIterImplSliceNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtB5_24ReflectRepeatedIterTrait4nextB1t_ }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEBH_, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtB2_3Any7type_idBx_, ptr @_RNvXs3_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtNtCslpwiOMB70Kp_8protobuf7reflect5value13ProtobufValue6as_ref, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtNtCslpwiOMB70Kp_8protobuf7reflect5value13ProtobufValue6as_anyB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtNtCslpwiOMB70Kp_8protobuf7reflect5value13ProtobufValue11is_non_zeroB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtNtCslpwiOMB70Kp_8protobuf7reflect5value13ProtobufValue11as_ref_copyB8_ }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEBH_, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf5clear5Clear5clear }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEBH_, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXs1_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf5clear5Clear5clear, ptr @18, ptr @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtB2_3Any7type_idBx_, ptr @10, ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message10descriptor, ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized, ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from, ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes, ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size, ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message15get_cached_size, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message8write_toB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message25write_length_delimited_toB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message29write_length_delimited_to_vecB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message16merge_from_bytesB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message17check_initializedB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message15write_to_writerB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message12write_to_vecB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message14write_to_bytesB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message32write_length_delimited_to_writerB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message31write_length_delimited_to_bytesB8_, ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message18get_unknown_fields, ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message18mut_unknown_fields, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message7type_idB8_, ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message6as_any, ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message10as_any_mut, ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message8into_any }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtB2_3Any7type_idBx_ }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsH_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf5clear5Clear5clear }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsI_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXsH_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf5clear5Clear5clear, ptr @21, ptr @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtB2_3Any7type_idBx_, ptr @20, ptr @_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message10descriptor, ptr @_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized, ptr @_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from, ptr @_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes, ptr @_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size, ptr @_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message15get_cached_size, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message8write_toB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message25write_length_delimited_toB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message29write_length_delimited_to_vecB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message16merge_from_bytesB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message17check_initializedB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message15write_to_writerB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12write_to_vecB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message14write_to_bytesB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message32write_length_delimited_to_writerB8_, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message31write_length_delimited_to_bytesB8_, ptr @_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message18get_unknown_fields, ptr @_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message18mut_unknown_fields, ptr @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message7type_idB8_, ptr @_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message6as_any, ptr @_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message10as_any_mut, ptr @_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message8into_any }>, align 8
@23 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@24 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @23, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@25 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/io/write.rs\00", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !41, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !41, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !41, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !41, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i.i.i.i.i ] ; 9 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
    i32 13, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
    i32 12, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
    i32 11, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
    i32 10, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
    i32 9, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !42, !noundef !4
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !42, !noundef !4
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit

_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.e, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i, %bb.d
  %i.bi = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !43, !noundef !4 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit17.i.i.i.i.i

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.0, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !43, !noundef !4 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.0, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !43, !noundef !4 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.0, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !43, !noundef !4
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !44, !noundef !4
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !44, !noundef !4
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.0, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.0 to i64
  %i.do = sub i64 %i.aq, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i, %bb.t, %bb.a, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit, %bb.u
  %.sroa.0.02934 = phi i64 [ %i.c, %bb.u ], [ %i.c, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit ], [ 0, %bb.a ], [ %i.c, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %i.aq, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit ], [ 0, %bb.a ], [ %i.aq, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.02934
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02934
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB3_16CodedInputStream13merge_messageNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !49, !noalias !48, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !49, !noalias !48, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !49, !noalias !48, !noundef !4 ; 2 uses
  %i.i = sub i64 %i.h, %i.f                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 10 uses
  %.not.i = icmp eq i64 %i.h, %i.f
  br i1 %.not.i, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.j, align 1, !noalias !50, !noundef !4 ; 4 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %i.i, 1
  br i1 %i.m, label %bb.e, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.d:                                             ; preds = %bb.e
  %i.n = icmp ugt i64 %i.i, 9
  br i1 %i.n, label %.preheader.2, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noalias !50, !noundef !4 ; 3 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.d

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53: ; preds = %.preheader.9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !48, !noalias !49
  br label %bb.i

.preheader.2:                                     ; preds = %bb.d
  %i.r = and i8 %i.p, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 7
  %i.u = and i8 %i.k, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = or disjoint i64 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.y = load i8, ptr %i.x, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.z = and i8 %i.y, 127
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 14
  %i.ac = or disjoint i64 %i.ab, %i.w             ; 2 uses
  %i.ad = icmp sgt i8 %i.y, -1
  br i1 %i.ad, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.ag = and i8 %i.af, 127
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 21
  %i.aj = or disjoint i64 %i.ai, %i.ac            ; 2 uses
  %i.ak = icmp sgt i8 %i.af, -1
  br i1 %i.ak, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.am = load i8, ptr %i.al, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.an = and i8 %i.am, 127
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 28
  %i.aq = or disjoint i64 %i.ap, %i.aj            ; 2 uses
  %i.ar = icmp sgt i8 %i.am, -1
  br i1 %i.ar, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.at = load i8, ptr %i.as, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.au = and i8 %i.at, 127
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 35
  %i.ax = or i64 %i.aw, %i.aq                     ; 2 uses
  %i.ay = icmp sgt i8 %i.at, -1
  br i1 %i.ay, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.ba = load i8, ptr %i.az, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.bb = and i8 %i.ba, 127
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 42
  %i.be = or i64 %i.bd, %i.ax                     ; 2 uses
  %i.bf = icmp sgt i8 %i.ba, -1
  br i1 %i.bf, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.bi = and i8 %i.bh, 127
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 49
  %i.bl = or i64 %i.bk, %i.be                     ; 2 uses
  %i.bm = icmp sgt i8 %i.bh, -1
  br i1 %i.bm, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.bp = and i8 %i.bo, 127
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 56
  %i.bs = or i64 %i.br, %i.bl                     ; 2 uses
  %i.bt = icmp sgt i8 %i.bo, -1
  br i1 %i.bt, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl i64 %i.bw, 63
  %i.by = or i64 %i.bx, %i.bs
  %i.bz = icmp sgt i8 %i.bv, -1
  br i1 %i.bz, label %.loopexit, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53

bb.f:                                             ; preds = %bb.e
  %i.ca = and i8 %i.k, 127
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = zext nneg i8 %i.p to i64
  %i.cd = shl nuw nsw i64 %i.cc, 7
  %i.ce = or disjoint i64 %i.cd, %i.cb
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %bb.g, %bb.f
  %.sroa.02.1.i = phi i64 [ 1, %bb.g ], [ 2, %bb.f ], [ 9, %.preheader.8 ], [ 10, %.preheader.9 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ], [ 8, %.preheader.7 ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.cf, %bb.g ], [ %i.ce, %bb.f ], [ %i.bs, %.preheader.8 ], [ %i.by, %.preheader.9 ], [ %i.ac, %.preheader.2 ], [ %i.aj, %.preheader.3 ], [ %i.aq, %.preheader.4 ], [ %i.ax, %.preheader.5 ], [ %i.be, %.preheader.6 ], [ %i.bl, %.preheader.7 ]
  %.not13.i = icmp ugt i64 %.sroa.02.1.i, %i.i
  br i1 %.not13.i, label %bb.h, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread, !prof !5

bb.g:                                             ; preds = %bb.b
  %i.cf = zext nneg i8 %i.k to i64
  br label %.loopexit

bb.h:                                             ; preds = %.loopexit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26, !noalias !50
  unreachable

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread: ; preds = %.loopexit
  %i.cg = add i64 %.sroa.02.1.i, %i.f
  store i64 %i.cg, ptr %i.e, align 8, !alias.scope !49, !noalias !48
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit: ; preds = %bb.c, %bb.a, %bb.d
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream22read_raw_varint64_slow(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %.pr = load i32, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i32 %.pr, -1
  br i1 %.not, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %.sroa.431.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.431.0.copyload.pre = load i32, ptr %.sroa.431.0..sroa_idx.phi.trans.insert, align 4
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53
  %.sroa.431.0.copyload = phi i32 [ 4, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53 ], [ %.sroa.431.0.copyload.pre, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge ]
  %i.ch = phi i32 [ 1, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53 ], [ %.pr, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge ]
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load <2 x i64>, ptr %.sroa.532.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %i.ch, ptr %0, align 8
  store i32 %.sroa.431.0.copyload, ptr %.sroa.435.0..sroa_idx, align 4
  store <2 x i64> %i.ci, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.o

bb.j:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread
  %i.cj = phi i64 [ %.pre, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58 ], [ %.sroa.0.1.i, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream10push_limit(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.cj)
  %i.ck = load i32, ptr %i.b, align 8, !range !6, !noundef !4 ; 2 uses
  %.not50 = icmp eq i32 %i.ck, -1
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
end_hunk_0
