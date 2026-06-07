inline.NumInlined: 985
inline.NumDeleted: 479
begin_hunk_0_@_ZN6google8protobuf8internal21InternalFeatureHelper27GetResolvedFeatureExtensionINS0_14FileDescriptorEN2pb12JavaFeaturesELh11ELb0EEEDaRKT_RKNS1_19ExtensionIdentifierINS0_10FeatureSetENS1_17MessageTypeTraitsIT0_EEXT1_EXT2_EEE:bb.a
_ZN2pb12JavaFeatures9MergeFromERKS0_.exit:        ; preds = %_ZN2pb12JavaFeaturesC2ERKS0_.exit
  invoke void @_ZN2pb12JavaFeaturesC2EPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %_ZN2pb12JavaFeatures9MergeFromERKS0_.exit
  %i.az = icmp eq ptr %0, %4
  br i1 %i.az, label %_ZN2pb12JavaFeaturesC2EOS0_.exit20, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !118 ; 3 uses
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %bb.w, label %bb.x, !prof !82

bb.w:                                             ; preds = %bb.v
  %i.bd = add nsw i64 %i.bb, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !120
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i16

bb.x:                                             ; preds = %bb.v
  %i.bg = inttoptr i64 %i.bb to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i16

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i16: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i17 = phi ptr [ %i.bf, %bb.w ], [ %i.bg, %bb.x ]
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !118 ; 3 uses
  %i.bj = trunc i64 %i.bi to i1
  br i1 %i.bj, label %bb.y, label %bb.z, !prof !82

bb.y:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i16
  %i.bk = add nsw i64 %i.bi, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !120
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i18

bb.z:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i16
  %i.bn = inttoptr i64 %i.bi to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i18

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i18: ; preds = %bb.z, %bb.y
  %.0.i.i7.i.i.i19 = phi ptr [ %i.bm, %bb.y ], [ %i.bn, %bb.z ]
  %i.bo = icmp eq ptr %.0.i.i.i.i.i17, %.0.i.i7.i.i.i19
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i18
  invoke void @_ZN2pb12JavaFeatures12InternalSwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %_ZN2pb12JavaFeaturesC2EOS0_.exit20 unwind label %bb.ac

bb.ab:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i18
  invoke void @_ZN2pb12JavaFeatures8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %_ZN2pb12JavaFeaturesC2EOS0_.exit20 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #27
  unreachable

bb.ad:                                            ; preds = %_ZN2pb12JavaFeatures9MergeFromERKS0_.exit
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #27
  unreachable

_ZN2pb12JavaFeaturesC2EOS0_.exit20:               ; preds = %bb.u, %bb.aa, %bb.ab
  call void @_ZN2pb12JavaFeaturesD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN2pb12JavaFeaturesC2EOS0_.exit

bb.ae:                                            ; preds = %bb.q, %_ZN6google8protobuf8internal21InternalFeatureHelper10GetEditionERKNS0_14FileDescriptorE.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZNK6google8protobuf10FeatureSet12GetExtensionINS0_8internal17MessageTypeTraitsIN2pb12JavaFeaturesEEELh11ELb0ETnNSt9enable_ifIXsrT_14kLifetimeBoundEiE4typeELi0EEENS9_8Singular9ConstTypeERKNS3_19ExtensionIdentifierIS1_S9_XT0_EXT1_EEE.exit15, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #23
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.af ], [ %i.bt, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN2pb12JavaFeaturesC2ERKS0_.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2pb12JavaFeaturesD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn11 = phi { ptr, i32 } [ %i.bv, %bb.ah ], [ %.pn, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.aj

_ZN2pb12JavaFeaturesC2EOS0_.exit:                 ; preds = %bb.m, %bb.l, %bb.f, %_ZN2pb12JavaFeaturesC2EOS0_.exit20
  call void @_ZN2pb12JavaFeaturesD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.aj:                                            ; preds = %bb.ai, %bb.p
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.ai ], [ %i.am, %bb.p ]
  call void @_ZN2pb12JavaFeaturesD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn11.pn
}

declare void @_ZN6google8protobuf8internal21InternalFeatureHelper36ParseAndGetEditionResolvedFeatureSetESt17basic_string_viewIcSt11char_traitsIcEENS0_7EditionE(ptr dead_on_unwind writable sret(%"class.google::protobuf::FeatureSet") align 8, i64, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf8internal12ExtensionSet10GetMessageEPNS0_5ArenaEiRKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN2pb12JavaFeaturesC2EPN6google8protobuf5ArenaERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool23ResolvesFeaturesForImplEi(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef) local_unnamed_addr #2

declare void @_ZN2pb12JavaFeaturesC2EPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

declare void @_ZN2pb12JavaFeatures12InternalSwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @_ZN2pb12JavaFeatures8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef i32 @_ZNK6google8protobuf14FileDescriptor7editionEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

declare void @_ZN2pb12JavaFeatures9MergeImplERN6google8protobuf11MessageLiteERKS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14FileDescriptorEPFbPKS3_EEERKDaPKT_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair", align 8        ; 7 uses
  %3 = alloca %"struct.std::pair.63", align 8     ; 7 uses
  %4 = alloca %"struct.std::pair.65", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14FileDescriptorEPFbPKS3_EEERKDaPKT_T0_E8type_key, ptr %i.c, align 8, !tbaa !129
  tail call void @_ZN4absl12lts_202505125Mutex10ReaderLockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.f = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE4findIS7_EENSP_8iteratorERSM_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %.not = icmp eq ptr %i.g, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !132
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit23 unwind label %bb.k

bb.e:                                             ; preds = %bb.b, %bb.c
  %.015 = phi ptr [ %i.k, %bb.c ], [ undef, %bb.b ]
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #27
  unreachable

_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit: ; preds = %bb.e
  br i1 %.not, label %bb.g, label %_ZNSt10unique_ptrIN6google8protobuf14DescriptorPool8MemoDataIbEESt14default_deleteIS4_EED2Ev.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit
  %i.o = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28, !noalias !134 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !noalias !134
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6google8protobuf14DescriptorPool8MemoDataIbEE, i32 0, i32 0, i32 2), ptr %i.o, align 8, !tbaa !137, !noalias !134
  %i.p = invoke noundef zeroext i1 %1(ptr noundef nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = zext i1 %i.p to i8
  store i8 %i.r, ptr %i.q, align 8, !tbaa !139
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.m

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.o, ptr %i.t, align 8, !tbaa !142
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE30find_or_prepare_insert_non_sooIS7_EES4_INSP_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.63") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i8, ptr %i.u, align 8, !tbaa !159, !range !8, !alias.scope !162, !noundef !9
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread: ; preds = %.noexc
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !162 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0.copyload.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.y = load i64, ptr %i.t, align 8, !tbaa !132, !noalias !167
  store i64 %i.y, ptr %i.x, align 8, !tbaa !132
  br label %bb.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit: ; preds = %.noexc
  %.pr = load ptr, ptr %i.t, align 8, !tbaa !132  ; 3 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %bb.i, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit
  %i.z = load ptr, ptr %.pr, align 8, !tbaa !137
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #23, !inline_history !168
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit, %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !132
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt10unique_ptrIN6google8protobuf14DescriptorPool8MemoDataIbEESt14default_deleteIS4_EED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #27
  unreachable

bb.k:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #27
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataIbEEEclEPS4_.exit.i29

bb.m:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !137
  br label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataIbEEEclEPS4_.exit.i29

bb.n:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !132 ; 3 uses
  %.not.i.i24 = icmp eq ptr %i.am, null
  br i1 %.not.i.i24, label %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit26, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i25

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i25: ; preds = %bb.n
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !137
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #23, !inline_history !168
  br label %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit26

_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit26: ; preds = %bb.n, %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit23 unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit26
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #27
  unreachable

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataIbEEEclEPS4_.exit.i29: ; preds = %bb.l, %bb.m
  %i.as = phi ptr [ %.pre, %bb.m ], [ getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6google8protobuf14DescriptorPool8MemoDataIbEE, i32 0, i32 0, i32 2), %bb.l ]
  %.pn18.pn.pn.ph = phi { ptr, i32 } [ %i.ak, %bb.m ], [ %i.aj, %bb.l ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(9) %i.o) #23, !inline_history !169
  br label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit23

_ZNSt10unique_ptrIN6google8protobuf14DescriptorPool8MemoDataIbEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.i, %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit
  %.116 = phi ptr [ %.015, %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit ], [ %i.ae, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %.116

_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit23: ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataIbEEEclEPS4_.exit.i29, %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit26, %bb.d
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %.pn18.pn.pn.ph, %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataIbEEEclEPS4_.exit.i29 ], [ %i.al, %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn18.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE4findIS7_EENSP_8iteratorERSM_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !170    ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !173
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_smallIS7_EENSP_8iteratorERSM_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !7 ; 2 uses
  %i.f = load <2 x ptr>, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8
  %i.g = load <2 x ptr>, ptr %1, align 8
  %i.h = icmp eq <2 x ptr> %i.f, %i.g             ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 0
  %i.j = extractelement <2 x i1> %i.h, i64 1
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_smallIS7_EENSP_8iteratorERSM_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !7, !nonnull !9, !noundef !9
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_smallIS7_EENSP_8iteratorERSM_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !7    ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %1, align 8, !tbaa !174    ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = xor i64 %i.r, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.t = mul i64 %i.s, -2543921745674291987
  %i.u = tail call noundef i64 @llvm.bswap.i64(i64 %i.t)
  %i.v = xor i64 %i.u, %i.r
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !174  ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.x, %i.z
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !173, !noalias !175
  %i.ai = and i64 %i.ah, 65535
  %i.aj = lshr i64 %i.af, 7
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = trunc i64 %i.af to i8
  %i.am = and i8 %i.al, 127
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !7 ; 2 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i6 = phi i64 [ %i.ak, %bb.e ], [ %i.bm, %bb.h ]
  %.sroa.13.0.i = phi i64 [ 0, %bb.e ], [ %i.bl, %bb.h ]
  %.sroa.6.0.i = and i64 %.pn.i6, %i.a            ; 4 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.6.0.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !tbaa !7 ; 2 uses
  %i.at = icmp eq <16 x i8> %i.ap, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.au, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.sroa.017.046.i = phi i16 [ %i.bi, %bb.g ], [ %i.au, %bb.f ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.6.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.a                     ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ay ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !127
  %i.bb = icmp eq ptr %i.ba, %i.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp eq ptr %i.bd, %i.y
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %.thread32.i, label %bb.g, !prof !178

.thread32.i:                                      ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ay ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_largeIS7_EENSP_8iteratorERSM_m.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.bh = add i16 %.sroa.017.046.i, -1
  %i.bi = and i16 %i.bh, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %i.bj = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %.not43.i = icmp eq i16 %i.bk, 0
  br i1 %.not43.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_largeIS7_EENSP_8iteratorERSM_m.exit, !prof !82

bb.h:                                             ; preds = %._crit_edge.i
  %i.bl = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bm = add i64 %i.bl, %.sroa.6.0.i
  br label %bb.f, !llvm.loop !179

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_largeIS7_EENSP_8iteratorERSM_m.exit: ; preds = %._crit_edge.i, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bg, %.thread32.i ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.az, %.thread32.i ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_smallIS7_EENSP_8iteratorERSM_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_smallIS7_EENSP_8iteratorERSM_.exit: ; preds = %bb.d, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_largeIS7_EENSP_8iteratorERSM_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_largeIS7_EENSP_8iteratorERSM_m.exit ], [ %.fca.1.insert.i.i, %bb.d ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %bb.b ]
  ret { ptr, ptr } %.pn
}

declare void @_ZN4absl12lts_202505125Mutex10ReaderLockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

declare void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf14DescriptorPool8MemoBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf14DescriptorPool8MemoDataIbED0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE30find_or_prepare_insert_non_sooIS7_EES4_INSP_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.63") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %2, align 8, !tbaa !174    ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = xor i64 %i.e, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  %i.i = xor i64 %i.h, %i.e
  %i.j = mul i64 %i.i, -2543921745674291987
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !174  ; 2 uses
end_hunk_0
