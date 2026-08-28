Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.2?download=true
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
  br i1 %i.b, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !4, !noundef !18 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !4, !noundef !18
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
  %i.v = load i8, ptr %i.l, align 1, !noalias !4, !noundef !18
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
  %i.af = load i8, ptr %i.u, align 1, !noalias !4, !noundef !18
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i.i.i.i.i ], [ %i.f, %bb.b ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i.i.i.i.i ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %i.e
  %i.ar = add i64 %i.aq, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
    i32 13, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
    i32 12, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
    i32 11, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
    i32 10, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
    i32 9, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.as, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !19, !noundef !18
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !19, !noundef !18
  %i.bg = lshr i8 %i.bf, 1
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit

_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.e, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.020 = phi ptr [ %0, %bb.a ], [ %i.an, %bb.d ], [ %i.an, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i ], [ %i.an, %bb.e ] ; 6 uses
  %.sroa.14.018 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.d ], [ %i.ar, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bj = icmp eq ptr %.sroa.4.020, %i.a
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit, %bb.t
  %i.bk = phi ptr [ %i.cu, %bb.t ], [ %i.a, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit ] ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -1 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !20, !noundef !18 ; 3 uses
  %i.bn = icmp sgt i8 %i.bm, -1
  br i1 %i.bn, label %bb.j, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit17.i.i.i.i.i

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bo = icmp ne ptr %.sroa.4.020, %i.bl
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 -2 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !20, !noundef !18 ; 3 uses
  %i.br = and i8 %i.bq, 31
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = icmp slt i8 %i.bq, -64
  br i1 %i.bt, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bu = zext nneg i8 %i.bm to i32
  br label %bb.m

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit17.i.i.i.i.i
  %i.bv = icmp ne ptr %.sroa.4.020, %i.bp
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds i8, ptr %i.bk, i64 -3 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !20, !noundef !18 ; 3 uses
  %i.by = and i8 %i.bx, 15
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = icmp slt i8 %i.bx, -64
  br i1 %i.ca, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit17.i.i.i.i.i
  %i.cb = phi ptr [ %i.cp, %bb.l ], [ %i.bp, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.ct, %bb.l ], [ %i.bs, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit17.i.i.i.i.i ]
  %i.cc = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cd = and i8 %i.bm, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cc, %i.ce
  br label %bb.m

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit19.i.i.i.i.i
  %i.cg = icmp ne ptr %.sroa.4.020, %i.bw
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !20, !noundef !18
  %i.cj = and i8 %i.ci, 7
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 6
  %i.cm = and i8 %i.bx, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit19.i.i.i.i.i
  %i.cp = phi ptr [ %i.ch, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit21.i.i.i.i.i ], [ %i.bw, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.co, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit21.i.i.i.i.i ], [ %i.bz, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RMo4C3Dvu6_10raft_proto.exit19.i.i.i.i.i ]
  %i.cq = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cr = and i8 %i.bq, 63
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cq, %i.cs
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.cu = phi ptr [ %i.bl, %bb.j ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bu, %bb.j ], [ %i.cf, %bb.k ] ; 8 uses
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cv)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cw, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cx, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cz = zext i1 %i.cy to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.da = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.db = zext i1 %i.da to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.dc = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !34, !noundef !18
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.dg = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !34, !noundef !18
  %i.dk = lshr i8 %i.dj, 1
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.db, %bb.q ], [ %i.df, %bb.r ], [ %i.cz, %bb.p ], [ %i.dk, %bb.s ]
  %i.dl = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dm = icmp eq ptr %.sroa.4.020, %i.cu
  br i1 %i.dm, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6, %bb.o, %bb.n
  %i.dn = ptrtoint ptr %i.bk to i64
  %i.do = ptrtoint ptr %.sroa.4.020 to i64
  %i.dp = sub i64 %.sroa.14.018, %i.do
  %i.dq = add i64 %i.dp, %i.dn
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i, %bb.t, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit, %bb.u
  %.sroa.0.045 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i ] ; 2 uses
end_hunk_0
