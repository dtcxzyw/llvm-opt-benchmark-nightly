Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_rendezvous-2ad7321e65efd16c.libp2p_rendezvous.bc366a826b06a5dd-cgu.06?download=true
inline.NumInlined: 161
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB4_14ResponseStatus13from_str_name:bb.a
  %.sroa.0.0 = phi i32 [ -1, %bb.j ], [ 300, %bb.h ], [ 0, %bb.b ], [ 100, %bb.c ], [ 101, %bb.d ], [ 102, %bb.e ], [ 103, %bb.f ], [ 200, %bb.g ], [ 400, %bb.i ]
  ret i32 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXCsdTHTBGblh3Z_11libp2p_coreNtB2_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownINtNtCsaWL0NgJnjb3_5bimap3mem3RefNtNtCsg9QLscIEtAL_17libp2p_rendezvous6server14RegistrationIdEINtB2_10EquivalentBq_E10equivalentB11_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.a = icmp eq ptr %.val, %.val1
  br i1 %i.a, label %_RNvXs6_NtCsaWL0NgJnjb3_5bimap3memINtB5_3RefNtNtCsg9QLscIEtAL_17libp2p_rendezvous6server14RegistrationIdENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqBJ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %.val.i.i = load i64, ptr %i.b, align 8, !noundef !5
  %.val2.i.i = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = icmp eq i64 %.val.i.i, %.val2.i.i
  br label %_RNvXs6_NtCsaWL0NgJnjb3_5bimap3memINtB5_3RefNtNtCsg9QLscIEtAL_17libp2p_rendezvous6server14RegistrationIdENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqBJ_.exit

_RNvXs6_NtCsaWL0NgJnjb3_5bimap3memINtB5_3RefNtNtCsg9QLscIEtAL_17libp2p_rendezvous6server14RegistrationIdENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqBJ_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownINtNtCsaWL0NgJnjb3_5bimap3mem3RefTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEINtB2_10EquivalentBq_E10equivalentB1Q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.a = icmp eq ptr %.val, %.val1
  br i1 %i.a, label %_RNvXs6_NtCsaWL0NgJnjb3_5bimap3memINtB5_3RefTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.d = tail call noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.c)
  br i1 %i.d, label %bb.c, label %_RNvXs6_NtCsaWL0NgJnjb3_5bimap3memINtB5_3RefTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1y_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !194, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 112
  %.val3.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !195, !noundef !5
  %i.g = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i
  br i1 %i.g, label %bb.d, label %_RNvXs6_NtCsaWL0NgJnjb3_5bimap3memINtB5_3RefTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1y_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 104
  %.val2.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !195, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !194, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val1.i.i.i)
  %i.j = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br label %_RNvXs6_NtCsaWL0NgJnjb3_5bimap3memINtB5_3RefTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1y_.exit

_RNvXs6_NtCsaWL0NgJnjb3_5bimap3memINtB5_3RefTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1y_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.i = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.j, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownINtNtCsaWL0NgJnjb3_5bimap3mem7WrapperNtNtCsg9QLscIEtAL_17libp2p_rendezvous6server14RegistrationIdEINtB2_10EquivalentINtBt_3RefB11_EE10equivalentB15_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val1 = load i64, ptr %0, align 8, !noundef !5
  %.val2 = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = icmp eq i64 %.val1, %.val2
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownINtNtCsaWL0NgJnjb3_5bimap3mem7WrapperTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEINtB2_10EquivalentINtBt_3RefB11_EE10equivalentB1U_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.a)
  br i1 %i.b, label %bb.b, label %_RNvXsd_NtCsaWL0NgJnjb3_5bimap3memINtB5_7WrapperTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1C_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !206, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %.val3.i.i = load i64, ptr %i.d, align 8, !alias.scope !207, !noundef !5
  %i.e = icmp eq i64 %.val1.i.i, %.val3.i.i
  br i1 %i.e, label %bb.c, label %_RNvXsd_NtCsaWL0NgJnjb3_5bimap3memINtB5_7WrapperTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1C_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %.val2.i.i = load ptr, ptr %i.f, align 8, !alias.scope !207, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !206, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i, i64 %.val1.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_RNvXsd_NtCsaWL0NgJnjb3_5bimap3memINtB5_7WrapperTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1C_.exit

_RNvXsd_NtCsaWL0NgJnjb3_5bimap3memINtB5_7WrapperTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1C_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEINtB2_10EquivalentBq_E10equivalentB1j_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.a = tail call noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
  br i1 %i.a, label %bb.b, label %_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !211, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !212, !noundef !5
  %i.d = icmp eq i64 %.val1.i, %.val3.i
  br i1 %i.d, label %bb.c, label %_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val2.i = load ptr, ptr %i.e, align 8, !alias.scope !212, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !211, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val2.i, i64 %.val1.i)
  %i.g = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_.exit

_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = tail call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !217
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
    i64 1, label %bb.e
  ], !prof !6

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !218, !noalias !217
  store i8 3, ptr %i.a, align 8, !alias.scope !218, !noalias !217
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous.exit.i unwind label %bb.g, !noalias !217

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !217
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsg9QLscIEtAL_17libp2p_rendezvous.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsg9QLscIEtAL_17libp2p_rendezvous.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvXsg_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtBb_16RegisterResponseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB5_13ScalarWrapperB1M_3fmtNtB2_5InnerB1M_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !5
  switch i32 %i.b, label %bb.b [
    i32 0, label %bb.n
    i32 100, label %bb.g
    i32 101, label %bb.h
    i32 102, label %bb.i
    i32 103, label %bb.j
    i32 200, label %bb.k
    i32 300, label %bb.l
    i32 400, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !221, !noundef !5 ; 2 uses
  %i.e = and i32 %i.d, 33554432
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.d, 67108864
  %.not1.i = icmp eq i32 %i.f, 0
  br i1 %.not1.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.f:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.18.0 = phi i64 [ 12, %bb.m ], [ 17, %bb.g ], [ 24, %bb.h ], [ 11, %bb.i ], [ 14, %bb.j ], [ 14, %bb.k ], [ 14, %bb.l ], [ 2, %bb.a ]
  %.sroa.010.0 = phi ptr [ @27, %bb.m ], [ @21, %bb.g ], [ @22, %bb.h ], [ @23, %bb.i ], [ @24, %bb.j ], [ @25, %bb.k ], [ @26, %bb.l ], [ @20, %bb.a ]
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.010.0, i64 noundef %.sroa.18.0)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.n
  %.sroa.0.0.in = phi i1 [ %i.j, %bb.n ], [ %i.g, %bb.d ], [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs7_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_8RegisterNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1A_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.d, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.c
  store ptr %., ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXsF_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16DiscoverResponseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1J_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.d, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.c
  store ptr %., ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs_NvXsF_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtBd_16DiscoverResponseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB7_s_13ScalarWrapperB1O_3fmtNtB2_5InnerB1O_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !5
  switch i32 %i.b, label %bb.b [
    i32 0, label %bb.n
    i32 100, label %bb.g
    i32 101, label %bb.h
    i32 102, label %bb.i
    i32 103, label %bb.j
    i32 200, label %bb.k
    i32 300, label %bb.l
    i32 400, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !224, !noundef !5 ; 2 uses
  %i.e = and i32 %i.d, 33554432
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.d, 67108864
  %.not1.i = icmp eq i32 %i.f, 0
  br i1 %.not1.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.f:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  br label %bb.n

end_hunk_0
begin_hunk_1_@_RNvXsw_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_8DiscoverNtNtCsbZN1VVVQjZP_5prost7message7Message5clear:bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  store i64 -1, ptr %i.a, align 8
  br label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  store i64 -1, ptr %i.a, align 8
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !range !4, !alias.scope !297, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body9 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body9

.body9:                                           ; preds = %bb.g, %bb.i
  %eh.lpad-body10 = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.j, %bb.g ]
  store i64 -1, ptr %i.g, align 8
  br label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  store i64 -1, ptr %i.g, align 8
  ret void

bb.j:                                             ; preds = %.body9, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body10, %.body9 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsy_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_8DiscoverNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.c, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 2, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !307
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !307
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !307
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !307
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !307
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !307
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !307
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !307
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !307
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !307
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !308, !nonnull !5, !noundef !5
  %i.ad = call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i), !noalias !308 ; 3 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsg9QLscIEtAL_17libp2p_rendezvous.exit

bb.h:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !308, !noundef !5 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i
    i64 1, label %bb.k
  ], !prof !6

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !310, !noalias !309
  store i8 3, ptr %i.a, align 8, !alias.scope !310, !noalias !309
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i unwind label %bb.l, !noalias !311

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !308
  resume { ptr, i32 } %i.an

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !308
  br label %_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsg9QLscIEtAL_17libp2p_rendezvous.exit

_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCsg9QLscIEtAL_17libp2p_rendezvous.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !312
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCsdTHTBGblh3Z_11libp2p_core11DecodeErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @109, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsdTHTBGblh3Z_11libp2p_core11DecodeErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsdTHTBGblh3Z_11libp2p_core11DecodeErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsg9QLscIEtAL_17libp2p_rendezvous(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @110, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @109, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !315, !noundef !5
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %_RNvXsj_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 2, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsj_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsj_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

_RNvXsj_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.0.i = phi ptr [ @101, %bb.b ], [ @103, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ]
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %.sroa.4.0.i, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsg9QLscIEtAL_17libp2p_rendezvous(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @111, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @109, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsg9QLscIEtAL_17libp2p_rendezvous(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @112, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsdTHTBGblh3Z_11libp2p_core11peer_record17FromEnvelopeErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !alias.scope !318, !noundef !5 ; 2 uses
  %i.b = icmp slt i64 %i.a, -9223372036854775804
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RNvXs4_NtCsdTHTBGblh3Z_11libp2p_core11peer_recordNtB5_17FromEnvelopeErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs4_NtCsdTHTBGblh3Z_11libp2p_core11peer_recordNtB5_17FromEnvelopeErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs4_NtCsdTHTBGblh3Z_11libp2p_core11peer_recordNtB5_17FromEnvelopeErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  br label %_RNvXs4_NtCsdTHTBGblh3Z_11libp2p_core11peer_recordNtB5_17FromEnvelopeErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs4_NtCsdTHTBGblh3Z_11libp2p_core11peer_recordNtB5_17FromEnvelopeErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

_RNvXs4_NtCsdTHTBGblh3Z_11libp2p_core11peer_recordNtB5_17FromEnvelopeErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.6.0.i = phi ptr [ @52, %bb.f ], [ @48, %bb.c ], [ @50, %bb.d ], [ undef, %bb.e ], [ @46, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.g, %bb.f ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ null, %bb.e ], [ %0, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.6.0.i, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope16ReadPayloadErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @109, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope16ReadPayloadErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope16ReadPayloadErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope16ReadPayloadErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsg9QLscIEtAL_17libp2p_rendezvous(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @113, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsgW4lhAJgVdS_9multihash5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @109, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsgW4lhAJgVdS_9multihash5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !8, !alias.scope !321, !noundef !5
  %i.b = icmp eq i8 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @35, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsgW4lhAJgVdS_9multihash5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsgW4lhAJgVdS_9multihash5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsg9QLscIEtAL_17libp2p_rendezvous(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @114, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsk7Z1gFMStHv_4bs586decode5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @109, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsk7Z1gFMStHv_4bs586decode5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsk7Z1gFMStHv_4bs586decode5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsk7Z1gFMStHv_4bs586decode5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsg9QLscIEtAL_17libp2p_rendezvous(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @115, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @109, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsg9QLscIEtAL_17libp2p_rendezvous(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @116, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTReBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTReBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs1_NtCsbZN1VVVQjZP_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint18decode_varint_slowQRShECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationE32forget_allocation_drop_remainingB10_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6string6encodeNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECsg9QLscIEtAL_17libp2p_rendezvous(i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECsg9QLscIEtAL_17libp2p_rendezvous(i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6string5mergeQRShECsg9QLscIEtAL_17libp2p_rendezvous(i8 noundef range(i8 0, 6), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECsg9QLscIEtAL_17libp2p_rendezvous(i8 noundef range(i8 0, 6), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtCsbZN1VVVQjZP_5prost8encoding10skip_fieldQRShECsg9QLscIEtAL_17libp2p_rendezvous(i8 noundef range(i8 0, 6), i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding7message6encodeNtNtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7message8RegisterNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEBY_(i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5int326encodeNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECsg9QLscIEtAL_17libp2p_rendezvous(i32 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding7message14merge_repeatedNtNtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7message8RegisterQRShEB17_(i8 noundef range(i8 0, 6), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5int325mergeQRShECsg9QLscIEtAL_17libp2p_rendezvous(i8 noundef range(i8 0, 6), ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsbZN1VVVQjZP_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsbZN1VVVQjZP_5prost5error11DecodeErrorNtB6_5Debug3fmtCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationENCNvXs9_B1N_NtNtNtB1N_5proto13rendezvous_pb7MessageINtNtBc_7convert4FromNtB1N_7MessageE4froms0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB2V_7message8RegisterENCINvNtB12_16in_place_collect24write_in_place_with_dropB5y_E0INtNtBc_6result6ResultB4X_zEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRyNtB6_5Debug3fmtCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB4_6PeerIdNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

end_hunk_1
begin_hunk_2_@llvm.experimental.noalias.scope.decl
!111 = !{!105}
!112 = distinct !{!112, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous"}
!113 = distinct !{!113, !112, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!114 = distinct !{!114, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionlE18get_or_insert_withNvYlNtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous"}
!115 = distinct !{!115, !114, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionlE18get_or_insert_withNvYlNtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!116 = distinct !{!116, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous"}
!117 = distinct !{!117, !116, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!118 = distinct !{!118, i1 true, !"_RNCINvXsD_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16DiscoverResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShE0Bg_"}
!119 = distinct !{!119, !118, !"_RNCINvXsD_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16DiscoverResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShE0Bg_: argument 0"}
!120 = distinct !{!120, i1 true, !"_RNCINvXsD_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16DiscoverResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs_0Bg_"}
!121 = distinct !{!121, !120, !"_RNCINvXsD_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16DiscoverResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs_0Bg_: argument 0"}
!122 = distinct !{!122, i1 true, !"_RNCINvXsD_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16DiscoverResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs0_0Bg_"}
!123 = distinct !{!123, !122, !"_RNCINvXsD_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16DiscoverResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs0_0Bg_: argument 0"}
!124 = distinct !{!124, i1 true, !"_RNCINvXsD_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16DiscoverResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs1_0Bg_"}
!125 = distinct !{!125, !124, !"_RNCINvXsD_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16DiscoverResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs1_0Bg_: argument 0"}
!126 = !{!113}
!127 = !{!115}
!128 = !{!117}
!129 = !{!119}
!130 = !{!121}
!131 = !{!123}
!132 = !{!125}
!133 = distinct !{!133, i1 true, !"_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13encode_varintNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECsg9QLscIEtAL_17libp2p_rendezvous"}
!134 = distinct !{!134, !133, !"_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13encode_varintNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!135 = distinct !{!135, i1 true, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csg9QLscIEtAL_17libp2p_rendezvous"}
!136 = distinct !{!136, !135, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!137 = !{!136, !134}
!138 = distinct !{!138, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionlE18get_or_insert_withNvYlNtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous"}
!139 = distinct !{!139, !138, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionlE18get_or_insert_withNvYlNtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!140 = distinct !{!140, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous"}
!141 = distinct !{!141, !140, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!142 = distinct !{!142, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous"}
!143 = distinct !{!143, !142, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!144 = distinct !{!144, i1 true, !"_RNCINvXse_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16RegisterResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShE0Bg_"}
!145 = distinct !{!145, !144, !"_RNCINvXse_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16RegisterResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShE0Bg_: argument 0"}
!146 = distinct !{!146, i1 true, !"_RNCINvXse_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16RegisterResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs_0Bg_"}
!147 = distinct !{!147, !146, !"_RNCINvXse_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16RegisterResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs_0Bg_: argument 0"}
!148 = distinct !{!148, i1 true, !"_RNCINvXse_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16RegisterResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs0_0Bg_"}
!149 = distinct !{!149, !148, !"_RNCINvXse_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_16RegisterResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs0_0Bg_: argument 0"}
!150 = !{!139}
!151 = !{!141}
!152 = !{!143}
!153 = !{!145}
!154 = !{!147}
!155 = !{!149}
!156 = distinct !{!156, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous"}
!157 = distinct !{!157, !156, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!158 = distinct !{!158, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous"}
!159 = distinct !{!159, !158, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!160 = distinct !{!160, i1 true, !"_RNCINvXsn_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_10UnregisterNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShE0Bg_"}
!161 = distinct !{!161, !160, !"_RNCINvXsn_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_10UnregisterNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShE0Bg_: argument 0"}
!162 = distinct !{!162, i1 true, !"_RNCINvXsn_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_10UnregisterNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs_0Bg_"}
!163 = distinct !{!163, !162, !"_RNCINvXsn_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_10UnregisterNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs_0Bg_: argument 0"}
!164 = !{!157}
!165 = !{!159}
!166 = !{!161}
!167 = !{!163}
!168 = distinct !{!168, i1 true, !"_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13encode_varintNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECsg9QLscIEtAL_17libp2p_rendezvous"}
!169 = distinct !{!169, !168, !"_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13encode_varintNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!170 = distinct !{!170, i1 true, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csg9QLscIEtAL_17libp2p_rendezvous"}
!171 = distinct !{!171, !170, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!172 = !{!171, !169}
!173 = distinct !{!173, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous"}
!174 = distinct !{!174, !173, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!175 = distinct !{!175, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous"}
!176 = distinct !{!176, !175, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!177 = distinct !{!177, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous"}
!178 = distinct !{!178, !177, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!179 = distinct !{!179, i1 true, !"_RNCINvXsw_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_8DiscoverNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShE0Bg_"}
!180 = distinct !{!180, !179, !"_RNCINvXsw_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_8DiscoverNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShE0Bg_: argument 0"}
!181 = distinct !{!181, i1 true, !"_RNCINvXsw_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_8DiscoverNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs_0Bg_"}
!182 = distinct !{!182, !181, !"_RNCINvXsw_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_8DiscoverNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs_0Bg_: argument 0"}
!183 = distinct !{!183, i1 true, !"_RNCINvXsw_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_8DiscoverNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs0_0Bg_"}
!184 = distinct !{!184, !183, !"_RNCINvXsw_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB8_8DiscoverNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEs0_0Bg_: argument 0"}
!185 = !{!174}
!186 = !{!176}
!187 = !{!178}
!188 = !{!180}
!189 = !{!182}
!190 = !{!184}
!191 = distinct !{!191, i1 true, !"_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_"}
!192 = distinct !{!192, !191, !"_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_: argument 0"}
!193 = distinct !{!193, !191, !"_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_: argument 1"}
!194 = !{!192}
!195 = !{!193}
!196 = distinct !{!196, i1 true, !"_RNvXsd_NtCsaWL0NgJnjb3_5bimap3memINtB5_7WrapperTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1C_"}
!197 = distinct !{!197, !196, !"_RNvXsd_NtCsaWL0NgJnjb3_5bimap3memINtB5_7WrapperTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1C_: argument 0"}
!198 = distinct !{!198, !196, !"_RNvXsd_NtCsaWL0NgJnjb3_5bimap3memINtB5_7WrapperTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1C_: argument 1"}
!199 = distinct !{!199, i1 true, !"_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_"}
!200 = distinct !{!200, !199, !"_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_: argument 0"}
!201 = distinct !{!201, !199, !"_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_: argument 1"}
!202 = !{!197}
!203 = !{!198}
!204 = !{!200}
!205 = !{!201}
!206 = !{!200, !197}
!207 = !{!201, !198}
!208 = distinct !{!208, i1 true, !"_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_"}
!209 = distinct !{!209, !208, !"_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_: argument 0"}
!210 = distinct !{!210, !208, !"_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtB7_3cmp9PartialEq2eqB1p_: argument 1"}
!211 = !{!209}
!212 = !{!210}
!213 = distinct !{!213, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous"}
!214 = distinct !{!214, !213, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!215 = distinct !{!215, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsg9QLscIEtAL_17libp2p_rendezvous"}
!216 = distinct !{!216, !215, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!217 = !{!214}
!218 = !{!216}
!219 = distinct !{!219, i1 true, !"_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt"}
!220 = distinct !{!220, !219, !"_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt: argument 1"}
!221 = !{!220}
!222 = distinct !{!222, i1 true, !"_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt"}
!223 = distinct !{!223, !222, !"_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt: argument 1"}
!224 = !{!223}
!225 = distinct !{!225, i1 true, !"_RNvXsi_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!226 = distinct !{!226, !225, !"_RNvXsi_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!227 = distinct !{!227, !225, !"_RNvXsi_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!228 = !{!226}
!229 = !{!226, !227}
!230 = distinct !{!230, i1 true, !"_RNvXsa_NtCsdTHTBGblh3Z_11libp2p_core11peer_recordNtB5_17FromEnvelopeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!231 = distinct !{!231, !230, !"_RNvXsa_NtCsdTHTBGblh3Z_11libp2p_core11peer_recordNtB5_17FromEnvelopeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!232 = distinct !{!232, !230, !"_RNvXsa_NtCsdTHTBGblh3Z_11libp2p_core11peer_recordNtB5_17FromEnvelopeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!233 = !{!231}
!234 = !{!231, !232}
!235 = distinct !{!235, i1 true, !"_RNvXs3_NtCsgW4lhAJgVdS_9multihash5errorNtB5_4KindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!236 = distinct !{!236, !235, !"_RNvXs3_NtCsgW4lhAJgVdS_9multihash5errorNtB5_4KindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!237 = distinct !{!237, !235, !"_RNvXs3_NtCsgW4lhAJgVdS_9multihash5errorNtB5_4KindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!238 = !{!236}
!239 = !{!236, !237}
!240 = distinct !{!240, i1 true, !"_RNvXs2_NtCsgW4lhAJgVdS_9multihash5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!241 = distinct !{!241, !240, !"_RNvXs2_NtCsgW4lhAJgVdS_9multihash5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!242 = distinct !{!242, !240, !"_RNvXs2_NtCsgW4lhAJgVdS_9multihash5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!243 = !{!242, !241}
!244 = distinct !{!244, i1 true, !"_RNvXsp_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_10UnregisterNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!245 = distinct !{!245, !244, !"_RNvXsp_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_10UnregisterNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!246 = distinct !{!246, !244, !"_RNvXsp_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_10UnregisterNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!247 = !{!246, !245}
!248 = !{!246}
!249 = !{i32 0, i32 401}
!250 = distinct !{!250, i1 true, !"_RNvXsF_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_16DiscoverResponseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!251 = distinct !{!251, !250, !"_RNvXsF_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_16DiscoverResponseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!252 = distinct !{!252, !250, !"_RNvXsF_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_16DiscoverResponseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!253 = !{!252, !251}
!254 = !{!252}
!255 = distinct !{!255, i1 true, !"_RNvXsg_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_16RegisterResponseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!256 = distinct !{!256, !255, !"_RNvXsg_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_16RegisterResponseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!257 = distinct !{!257, !255, !"_RNvXsg_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_16RegisterResponseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!258 = !{!257, !256}
!259 = !{!257}
!260 = distinct !{!260, i1 true, !"_RNvXsy_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_8DiscoverNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!261 = distinct !{!261, !260, !"_RNvXsy_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_8DiscoverNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!262 = distinct !{!262, !260, !"_RNvXsy_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_8DiscoverNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!263 = !{!262, !261}
!264 = !{!262}
!265 = distinct !{!265, i1 true, !"_RNvXs7_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_8RegisterNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!266 = distinct !{!266, !265, !"_RNvXs7_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_8RegisterNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!267 = distinct !{!267, !265, !"_RNvXs7_NtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7messageNtB5_8RegisterNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!268 = !{!267, !266}
!269 = !{!267}
!270 = distinct !{!270, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous"}
!271 = distinct !{!271, !270, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!272 = distinct !{!272, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous"}
!273 = distinct !{!273, !272, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!274 = !{!271}
!275 = !{!273}
!276 = distinct !{!276, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous"}
!277 = distinct !{!277, !276, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!278 = distinct !{!278, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous"}
!279 = distinct !{!279, !278, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!280 = !{!277}
!281 = !{!279}
!282 = !{i32 0, i32 3}
!283 = distinct !{!283, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous"}
!284 = distinct !{!284, !283, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!285 = !{!284}
!286 = distinct !{!286, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous"}
!287 = distinct !{!287, !286, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!288 = distinct !{!288, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous"}
!289 = distinct !{!289, !288, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!290 = !{!287}
!291 = !{!289}
!292 = distinct !{!292, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous"}
!293 = distinct !{!293, !292, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!294 = distinct !{!294, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous"}
!295 = distinct !{!295, !294, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!296 = !{!293}
!297 = !{!295}
!298 = distinct !{!298, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw"}
!299 = distinct !{!299, !298, !"_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw: argument 0"}
!300 = distinct !{!300, i1 true, !"_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsg9QLscIEtAL_17libp2p_rendezvous"}
!301 = distinct !{!301, !300, !"_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!302 = distinct !{!302, !300, !"_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsg9QLscIEtAL_17libp2p_rendezvous: argument 1"}
!303 = distinct !{!303, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous"}
!304 = distinct !{!304, !303, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!305 = distinct !{!305, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsg9QLscIEtAL_17libp2p_rendezvous"}
!306 = distinct !{!306, !305, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsg9QLscIEtAL_17libp2p_rendezvous: argument 0"}
!307 = !{!299}
!308 = !{!301}
!309 = !{!304, !301, !302}
!310 = !{!306}
!311 = !{!304, !301}
!312 = distinct !{null}
!313 = distinct !{!313, i1 true, !"_RNvXsj_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error6source"}
!314 = distinct !{!314, !313, !"_RNvXsj_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error6source: argument 0"}
!315 = !{!314}
!316 = distinct !{!316, i1 true, !"_RNvXs4_NtCsdTHTBGblh3Z_11libp2p_core11peer_recordNtB5_17FromEnvelopeErrorNtNtCskKLDkoKarTP_4core5error5Error6source"}
!317 = distinct !{!317, !316, !"_RNvXs4_NtCsdTHTBGblh3Z_11libp2p_core11peer_recordNtB5_17FromEnvelopeErrorNtNtCskKLDkoKarTP_4core5error5Error6source: argument 0"}
!318 = !{!317}
!319 = distinct !{!319, i1 true, !"_RNvXs1_NtCsgW4lhAJgVdS_9multihash5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core5error5Error6source"}
!320 = distinct !{!320, !319, !"_RNvXs1_NtCsgW4lhAJgVdS_9multihash5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core5error5Error6source: argument 0"}
!321 = !{!320}
end_hunk_2
