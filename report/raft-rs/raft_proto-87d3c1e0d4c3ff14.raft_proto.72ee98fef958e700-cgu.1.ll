Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.1?download=true
inline.NumInlined: 393
inline.NumDeleted: 189
begin_hunk_0_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v122FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtB6_5Debug3fmtB1L_:bb.a
  %i.j = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 7) #19, !inline_history !248
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.e ], [ %i.g, %bb.c ], [ %i.j, %bb.f ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v122FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageENtB6_5Debug3fmtB1L_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !align !13, !noundef !14
  %.val = load i64, ptr %i.a, align 8, !range !15, !noundef !14
  %.val1 = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %.val, i64 4)
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !14, !nonnull !14 ; 5 uses
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 24) #19, !inline_history !249
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 10) #19, !inline_history !249
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 12) #19, !inline_history !249
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 12) #19, !inline_history !249
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 7) #19, !inline_history !249
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.e ], [ %i.g, %bb.c ], [ %i.j, %bb.f ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v122FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotENtB6_5Debug3fmtB1L_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !align !13, !noundef !14
  %.val = load i64, ptr %i.a, align 8, !range !15, !noundef !14
  %.val1 = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %.val, i64 4)
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !14, !nonnull !14 ; 5 uses
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 24) #19, !inline_history !250
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 10) #19, !inline_history !250
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 12) #19, !inline_history !250
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 12) #19, !inline_history !250
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 7) #19, !inline_history !250
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.e ], [ %i.g, %bb.c ], [ %i.j, %bb.f ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v122FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateENtB6_5Debug3fmtB1L_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !align !13, !noundef !14
  %.val = load i64, ptr %i.a, align 8, !range !15, !noundef !14
  %.val1 = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %.val, i64 4)
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !14, !nonnull !14 ; 5 uses
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 24) #19, !inline_history !251
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 10) #19, !inline_history !251
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 12) #19, !inline_history !251
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 12) #19, !inline_history !251
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 7) #19, !inline_history !251
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.e ], [ %i.g, %bb.c ], [ %i.j, %bb.f ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v122FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateENtB6_5Debug3fmtB1L_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !align !13, !noundef !14
  %.val = load i64, ptr %i.a, align 8, !range !15, !noundef !14
  %.val1 = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %.val, i64 4)
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !14, !nonnull !14 ; 5 uses
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 24) #19, !inline_history !252
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 10) #19, !inline_history !252
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 12) #19, !inline_history !252
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 12) #19, !inline_history !252
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 7) #19, !inline_history !252
  br label %_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit

_RNvXs2_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_22FieldAccessorFunctionsNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1n_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.e ], [ %i.g, %bb.c ], [ %i.j, %bb.f ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs4_NtNtCslpwiOMB70Kp_8protobuf7reflect5valuebNtB5_13ProtobufValue6as_ref(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 2)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !20, !noundef !14
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.a, ptr %2, align 1
  store i8 6, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_17FieldAccessorImplNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeENtB5_18FieldAccessorTrait11get_reflectB1i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i64, ptr %1, align 8, !range !15, !noundef !14 ; 2 uses
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 4)
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !14, !noundef !14
  %i.k = tail call noundef nonnull align 8 ptr @_RINvNtCslpwiOMB70Kp_8protobuf7message17message_down_castNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeEBY_(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %3)
  %i.l = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 %i.k)
  br i1 %i.l, label %bb.g, label %_RNvMs1_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_14SingularGetSetNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE7get_refB1f_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !14, !noundef !14
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !14, !align !13, !noundef !14
  %i.q = tail call noundef nonnull align 8 ptr @_RINvNtCslpwiOMB70Kp_8protobuf7message17message_down_castNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeEBY_(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %3)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !14, !nonnull !14
  %i.t = tail call { ptr, ptr } %i.s(ptr noundef nonnull %i.n, ptr noundef nonnull align 8 %i.q) #19 ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.t, 1        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !14, !nonnull !14
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef %i.u) #19
  br i1 %i.y, label %bb.n, label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !14, !noundef !14
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !14, !align !13, !noundef !14
  %i.ad = tail call noundef nonnull align 8 ptr @_RINvNtCslpwiOMB70Kp_8protobuf7message17message_down_castNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeEBY_(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %3)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !14, !nonnull !14
  %i.ag = tail call { ptr, ptr } %i.af(ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 %i.ad) #19 ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !14, !nonnull !14
  %i.al = tail call { ptr, ptr } %i.ak(ptr noundef %i.ah) #19 ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.al, 0      ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.q, label %bb.p

bb.e:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !14, !noundef !14
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !14, !align !13, !noundef !14
  %i.ar = tail call noundef nonnull align 8 ptr @_RINvNtCslpwiOMB70Kp_8protobuf7message17message_down_castNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeEBY_(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %3)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !14, !nonnull !14
  %i.au = tail call { ptr, ptr } %i.at(ptr noundef nonnull %i.ao, ptr noundef nonnull align 8 %i.ar) #19 ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %i.aw = extractvalue { ptr, ptr } %i.au, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aw, ptr %i.ay, align 8
  store i8 11, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !14, !noundef !14
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !14, !align !13, !noundef !14
  %i.bd = tail call noundef nonnull align 8 ptr @_RINvNtCslpwiOMB70Kp_8protobuf7message17message_down_castNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeEBY_(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %3)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !14, !nonnull !14
  %i.bg = tail call { ptr, ptr } %i.bf(ptr noundef nonnull %i.ba, ptr noundef nonnull align 8 %i.bd) #19 ; 2 uses
  %i.bh = extractvalue { ptr, ptr } %i.bg, 0
  %i.bi = extractvalue { ptr, ptr } %i.bg, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bi, ptr %i.bk, align 8
  store i8 12, ptr %0, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  %i.bl = tail call noundef nonnull align 8 ptr @_RINvNtCslpwiOMB70Kp_8protobuf7message17message_down_castNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeEBY_(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %3) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !256, !nonnull !14, !noundef !14 ; 5 uses
  switch i64 %i.g, label %default.unreachable1.i [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.l
  ]

default.unreachable1.i:                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !256, !nonnull !14, !align !13, !noundef !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !14, !noalias !257, !nonnull !14
  call void %i.br(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.bn, ptr noundef nonnull align 8 %i.bl) #19, !inline_history !0
  %.sroa.011.0.copyload.pre = load i8, ptr %i.b, align 8
  br label %_RNvMs1_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_14SingularGetSetNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE7get_refB1f_.exit

bb.i:                                             ; preds = %bb.g
  %i.bs = tail call { ptr, i64 } %i.bn(ptr noundef nonnull align 8 %i.bl), !noalias !257, !inline_history !0 ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bt, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bu, ptr %i.bw, align 8
  br label %_RNvMs1_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_14SingularGetSetNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE7get_refB1f_.exit

bb.j:                                             ; preds = %bb.g
  %i.bx = tail call { ptr, i64 } %i.bn(ptr noundef nonnull align 8 %i.bl), !noalias !257, !inline_history !0 ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bx, 0
  %i.bz = extractvalue { ptr, i64 } %i.bx, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.by, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bz, ptr %i.cb, align 8
  br label %_RNvMs1_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_14SingularGetSetNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE7get_refB1f_.exit

bb.k:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !256, !nonnull !14, !align !13, !noundef !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !invariant.load !14, !noalias !257, !nonnull !14
  %i.cg = tail call noundef nonnull align 8 ptr %i.cf(ptr noundef nonnull %i.bn, ptr noundef nonnull align 8 %i.bl) #19, !noalias !257, !inline_history !0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cg, ptr %i.ch, align 8
  br label %_RNvMs1_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_14SingularGetSetNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE7get_refB1f_.exit

bb.l:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !256, !nonnull !14, !align !13, !noundef !14
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !14, !noalias !257, !nonnull !14
  %i.cm = tail call { ptr, ptr } %i.cl(ptr noundef nonnull %i.bn, ptr noundef nonnull align 8 %i.bl) #19, !noalias !257, !inline_history !0 ; 2 uses
  %i.cn = extractvalue { ptr, ptr } %i.cm, 0
  %i.co = extractvalue { ptr, ptr } %i.cm, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cn, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.co, ptr %i.cq, align 8
  br label %_RNvMs1_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_14SingularGetSetNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE7get_refB1f_.exit

_RNvMs1_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_14SingularGetSetNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE7get_refB1f_.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.b
  %.sroa.011.0 = phi i8 [ -1, %bb.b ], [ %.sroa.011.0.copyload.pre, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ]
  store i8 %.sroa.011.0, ptr %0, align 8
  %.sroa.513.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.513.0..sroa_idx14, ptr noundef nonnull align 1 dereferenceable(23) %i.c, i64 23, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %bb.o, %_RNvMs1_NtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v1INtB5_14SingularGetSetNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE7get_refB1f_.exit, %bb.f, %bb.e
  ret void

bb.n:                                             ; preds = %bb.c
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !invariant.load !14, !nonnull !14
  call void %i.cs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef %i.u) #19
  %.sroa.07.0.copyload = load i8, ptr %i.d, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.n
  %.sroa.07.0 = phi i8 [ %.sroa.07.0.copyload, %bb.n ], [ -1, %bb.c ]
  store i8 %.sroa.07.0, ptr %0, align 8
  %.sroa.59.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.59.0..sroa_idx10, ptr noundef nonnull align 1 dereferenceable(23) %i.e, i64 23, i1 false)
  br label %bb.m

bb.p:                                             ; preds = %bb.d
  %i.ct = extractvalue { ptr, ptr } %i.al, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !invariant.load !14, !nonnull !14
end_hunk_0
