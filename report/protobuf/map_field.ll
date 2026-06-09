inline.NumInlined: 1797
inline.NumDeleted: 852
begin_hunk_0_@_ZNK6google8protobuf8compiler10objectivec17MapFieldGenerator28DetermineForwardDeclarationsEPN4absl12lts_202505129btree_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISC_ESaISC_EEEb:bb.a
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.a
  ret void
}

declare void @_ZNK6google8protobuf8compiler10objectivec14FieldGenerator28DetermineForwardDeclarationsEPN4absl12lts_202505129btree_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISC_ESaISC_EEEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i1 noundef zeroext) unnamed_addr #1

declare noundef zeroext i1 @_ZN6google8protobuf8compiler10objectivec33IsProtobufLibraryBundledProtoFileEPKNS0_14FileDescriptorE(ptr noundef) local_unnamed_addr #1

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6google8protobuf8compiler10objectivec17MapFieldGenerator35DetermineObjectiveCClassDefinitionsEPN4absl12lts_202505129btree_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISC_ESaISC_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"struct.std::pair", align 8        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
  %i.d = tail call noundef ptr @_ZNK6google8protobuf10Descriptor9map_valueEv(ptr noundef nonnull align 8 dereferenceable(160) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !96
  %i.g = zext i8 %i.f to i32
  %i.h = tail call noundef i32 @_ZN6google8protobuf8compiler10objectivec17GetObjectiveCTypeENS0_8internal19FieldDescriptorLite4TypeE(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 10
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @_ZNK6google8protobuf8compiler10objectivec15SubstitutionMap5ValueB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 8, ptr nonnull @.str.12)
  %i.m = load ptr, ptr %3, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18
  invoke void @_ZN6google8protobuf8compiler10objectivec20ObjCClassDeclarationB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 %i.o, ptr %i.m)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13insert_uniqueIS9_JS9_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSK_EEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEEE6insertEOSA_.exit unwind label %bb.e

_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEEE6insertEOSA_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.p = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEEE6insertEOSA_.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !21
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEEE6insertEOSA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !21
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ab = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.e
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.d
  %.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.aa, %bb.e ]
  %i.ag = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.a
  ret void
}

declare void @_ZN6google8protobuf8compiler10objectivec20ObjCClassDeclarationB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6google8protobuf8compiler10objectivec17MapFieldGenerator20DetermineNeededFilesEPN4absl12lts_2025051213flat_hash_setIPKNS0_14FileDescriptorENS5_18container_internal6HashEqIS9_vE4HashENSC_2EqESaIS9_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
  %i.d = tail call noundef ptr @_ZNK6google8protobuf10Descriptor9map_valueEv(ptr noundef nonnull align 8 dereferenceable(160) %i.c) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !96
  %i.g = zext i8 %i.f to i32
  %i.h = tail call noundef i32 @_ZN6google8protobuf8compiler10objectivec17GetObjectiveCTypeENS0_8internal19FieldDescriptorLite4TypeE(i32 noundef %i.g)
  switch i32 %i.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit [
    i32 10, label %bb.b
    i32 9, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.d)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !131
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121  ; 6 uses
  %.not11 = icmp eq ptr %i.l, %i.n
  br i1 %.not11, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %1, align 8, !tbaa !73, !noalias !132 ; 5 uses
  %i.p = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i64 %i.o, 2
  br i1 %i.q, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !79, !noalias !147
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.s, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 131072, ptr %i.r, align 8, !tbaa !29, !noalias !147
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !150, !noalias !147 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = xor i64 %i.x, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.z = mul i64 %i.y, -2543921745674291987
  %i.aa = tail call noundef i64 @llvm.bswap.i64(i64 %i.z)
  %i.ab = xor i64 %i.aa, %i.x
  %i.ac = mul i64 %i.ab, 6679450291180483821
  %i.ad = lshr i64 %i.ac, 56
  %i.ae = trunc nuw i64 %i.ad to i8
  %i.af = and i8 %i.ae, 127
  %i.ag = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.ah = xor i64 %i.ag, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ai = mul i64 %i.ah, -2543921745674291987
  %i.aj = tail call noundef i64 @llvm.bswap.i64(i64 %i.ai)
  %i.ak = xor i64 %i.aj, %i.ag
  %i.al = mul i64 %i.ak, -2543921745674291987
  %i.am = tail call noundef i64 @llvm.bswap.i64(i64 %i.al)
  %i.an = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.am, i8 noundef signext %i.af), !noalias !147
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !21, !noalias !147
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.an
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.h:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21, !noalias !151 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 1, i32 1), !noalias !151
  %i.as = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.at = xor i64 %i.as, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.au = mul i64 %i.at, -2543921745674291987
  %i.av = tail call noundef i64 @llvm.bswap.i64(i64 %i.au)
  %i.aw = xor i64 %i.av, %i.as
  %i.ax = mul i64 %i.aw, -2543921745674291987
  %i.ay = tail call noundef i64 @llvm.bswap.i64(i64 %i.ax) ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !79, !noalias !154
  %i.bb = and i64 %i.ba, 65535
  %i.bc = lshr i64 %i.ay, 7
  %i.bd = xor i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.ay to i8
  %i.bf = and i8 %i.be, 127
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !21, !noalias !151 ; 2 uses
  %i.bh = insertelement <16 x i8> poison, i8 %i.bf, i64 0
  %i.bi = shufflevector <16 x i8> %i.bh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.pn.i = phi i64 [ %i.bd, %bb.h ], [ %i.cg, %bb.j ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.h ], [ %i.cf, %bb.j ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.o             ; 5 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.bj, i32 0, i32 3, i32 1), !noalias !151
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.7.0.i
  %i.bl = load <16 x i8>, ptr %i.bk, align 1, !tbaa !21, !noalias !151 ; 2 uses
  %i.bm = icmp eq <16 x i8> %i.bi, %i.bl
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not59.i = icmp eq i16 %i.bn, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.critedge.i
  %.sroa.033.060.i = phi i16 [ %i.bw, %.critedge.i ], [ %i.bn, %bb.i ] ; 3 uses
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.7.0.i, %i.bp
  %i.br = and i64 %i.bq, %i.o
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !150, !noalias !151
  %i.bu = icmp eq ptr %i.bt, %i.n
  br i1 %i.bu, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit, label %.critedge.i, !prof !157

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bv = add i16 %.sroa.033.060.i, -1
  %i.bw = and i16 %i.bv, %.sroa.033.060.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.i
  %i.bx = icmp eq <16 x i8> %i.bl, splat (i8 -128)
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.by, 0
  br i1 %.not51.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread57, !prof !72

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread57: ; preds = %.critedge18.i
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = add i64 %.sroa.7.0.i, %i.ca
  %i.cc = and i64 %i.cb, %i.o
  %i.cd = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ay, i64 %i.cc, i64 %.sroa.15.0.i), !noalias !151 ; 2 uses
  %2 = load ptr, ptr %i.aq, align 8, !tbaa !21, !noalias !151
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 %i.cd
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.bg, align 8, !tbaa !21, !noalias !151
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.cd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.j:                                             ; preds = %.critedge18.i
  %i.cf = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.7.0.i
  br label %bb.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.e, %bb.g, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread57
  %.sroa.447.054 = phi ptr [ %i.ce, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread57 ], [ %i.t, %bb.e ], [ %i.ap, %bb.g ]
  store ptr %i.n, ptr %.sroa.447.054, align 8, !tbaa !150
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit

bb.k:                                             ; preds = %bb.a
  %i.ch = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.d)
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !131
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !158 ; 6 uses
  %.not = icmp eq ptr %i.ck, %i.cm
  br i1 %.not, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = load i64, ptr %1, align 8, !tbaa !73, !noalias !163 ; 5 uses
  %i.co = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = icmp ult i64 %i.cn, 2
  br i1 %i.cp, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !79, !noalias !178
  %.not.i.i.i.i.i.i.i.i.i17 = icmp ult i64 %i.cr, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i17, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 131072, ptr %i.cq, align 8, !tbaa !29, !noalias !178
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i14.thread

bb.o:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !150, !noalias !178 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cm
  br i1 %i.cv, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = xor i64 %i.cw, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cy = mul i64 %i.cx, -2543921745674291987
  %i.cz = tail call noundef i64 @llvm.bswap.i64(i64 %i.cy)
  %i.da = xor i64 %i.cz, %i.cw
  %i.db = mul i64 %i.da, 6679450291180483821
  %i.dc = lshr i64 %i.db, 56
  %i.dd = trunc nuw i64 %i.dc to i8
  %i.de = and i8 %i.dd, 127
  %i.df = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.dg = xor i64 %i.df, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.dh = mul i64 %i.dg, -2543921745674291987
  %i.di = tail call noundef i64 @llvm.bswap.i64(i64 %i.dh)
  %i.dj = xor i64 %i.di, %i.df
  %i.dk = mul i64 %i.dj, -2543921745674291987
  %i.dl = tail call noundef i64 @llvm.bswap.i64(i64 %i.dk)
  %i.dm = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.dl, i8 noundef signext %i.de), !noalias !178
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i18 = load ptr, ptr %i.dn, align 8, !tbaa !21, !noalias !178
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i18, i64 %i.dm
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i14.thread

bb.q:                                             ; preds = %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !21, !noalias !181 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dq, i32 0, i32 1, i32 1), !noalias !181
  %i.dr = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.ds = xor i64 %i.dr, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.dt = mul i64 %i.ds, -2543921745674291987
  %i.du = tail call noundef i64 @llvm.bswap.i64(i64 %i.dt)
  %i.dv = xor i64 %i.du, %i.dr
  %i.dw = mul i64 %i.dv, -2543921745674291987
  %i.dx = tail call noundef i64 @llvm.bswap.i64(i64 %i.dw) ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !79, !noalias !184
  %i.ea = and i64 %i.dz, 65535
  %i.eb = lshr i64 %i.dx, 7
  %i.ec = xor i64 %i.ea, %i.eb
  %i.ed = trunc i64 %i.dx to i8
  %i.ee = and i8 %i.ed, 127
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25 = load ptr, ptr %i.ef, align 8, !tbaa !21, !noalias !181 ; 2 uses
  %i.eg = insertelement <16 x i8> poison, i8 %i.ee, i64 0
  %i.eh = shufflevector <16 x i8> %i.eg, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.pn.i26 = phi i64 [ %i.ec, %bb.q ], [ %i.ff, %bb.s ]
  %.sroa.15.0.i27 = phi i64 [ 0, %bb.q ], [ %i.fe, %bb.s ] ; 2 uses
  %.sroa.7.0.i28 = and i64 %.pn.i26, %i.cn        ; 5 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i25, i64 %.sroa.7.0.i28
  tail call void @llvm.prefetch.p0(ptr %i.ei, i32 0, i32 3, i32 1), !noalias !181
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.7.0.i28
  %i.ek = load <16 x i8>, ptr %i.ej, align 1, !tbaa !21, !noalias !181 ; 2 uses
  %i.el = icmp eq <16 x i8> %i.eh, %i.ek
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not59.i29 = icmp eq i16 %i.em, 0
  br i1 %.not59.i29, label %.critedge18.i34, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.r, %.critedge.i32
  %.sroa.033.060.i31 = phi i16 [ %i.ev, %.critedge.i32 ], [ %i.em, %bb.r ] ; 3 uses
  %i.en = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i31, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = add i64 %.sroa.7.0.i28, %i.eo
  %i.eq = and i64 %i.ep, %i.cn
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i25, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !150, !noalias !181
  %i.et = icmp eq ptr %i.es, %i.cm
  br i1 %i.et, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit, label %.critedge.i32, !prof !157

.critedge.i32:                                    ; preds = %.lr.ph.i30
  %i.eu = add i16 %.sroa.033.060.i31, -1
  %i.ev = and i16 %i.eu, %.sroa.033.060.i31       ; 2 uses
  %.not.i33 = icmp eq i16 %i.ev, 0
  br i1 %.not.i33, label %.critedge18.i34, label %.lr.ph.i30

.critedge18.i34:                                  ; preds = %.critedge.i32, %bb.r
  %i.ew = icmp eq <16 x i8> %i.ek, splat (i8 -128)
  %i.ex = bitcast <16 x i1> %i.ew to i16          ; 2 uses
  %.not51.i35 = icmp eq i16 %i.ex, 0
  br i1 %.not51.i35, label %bb.s, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i14.thread65, !prof !72

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i14.thread65: ; preds = %.critedge18.i34
  %i.ey = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ex, i1 true)
  %i.ez = zext nneg i16 %i.ey to i64
  %i.fa = add i64 %.sroa.7.0.i28, %i.ez
  %i.fb = and i64 %i.fa, %i.cn
  %i.fc = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.dx, i64 %i.fb, i64 %.sroa.15.0.i27), !noalias !181 ; 2 uses
  %4 = load ptr, ptr %i.dp, align 8, !tbaa !21, !noalias !181
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.fc
  %.sroa.0.0.copyload.i.i.i.i22.i37 = load ptr, ptr %i.ef, align 8, !tbaa !21, !noalias !181
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i37, i64 %i.fc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i14.thread

bb.s:                                             ; preds = %.critedge18.i34
  %i.fe = add i64 %.sroa.15.0.i27, 16             ; 2 uses
  %i.ff = add i64 %i.fe, %.sroa.7.0.i28
  br label %bb.r

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i14.thread: ; preds = %bb.n, %bb.p, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i14.thread65
  %.sroa.4.062 = phi ptr [ %i.fd, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i14.thread65 ], [ %i.cs, %bb.n ], [ %i.do, %bb.p ]
  store ptr %i.cm, ptr %.sroa.4.062, align 8, !tbaa !150
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit: ; preds = %.lr.ph.i30, %.lr.ph.i, %bb.o, %bb.f, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i14.thread, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread, %bb.k, %bb.a, %bb.b
  ret void
}

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler10objectivec17MapFieldGeneratorD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6google8protobuf8compiler10objectivec17MapFieldGeneratorE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec14FieldGeneratorESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec14FieldGeneratorEEclEPS4_.exit.i

_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec14FieldGeneratorEEclEPS4_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #24, !inline_history !32
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec14FieldGeneratorESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf8compiler10objectivec14FieldGeneratorESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec14FieldGeneratorEEclEPS4_.exit.i
  tail call void @_ZN6google8protobuf8compiler10objectivec14FieldGeneratorD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler10objectivec17MapFieldGeneratorD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6google8protobuf8compiler10objectivec17MapFieldGeneratorE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8compiler10objectivec17MapFieldGeneratorD2Ev.exit, label %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec14FieldGeneratorEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec14FieldGeneratorEEclEPS4_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #24, !inline_history !187
  br label %_ZN6google8protobuf8compiler10objectivec17MapFieldGeneratorD2Ev.exit

_ZN6google8protobuf8compiler10objectivec17MapFieldGeneratorD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec14FieldGeneratorEEclEPS4_.exit.i.i
  tail call void @_ZN6google8protobuf8compiler10objectivec14FieldGeneratorD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #24, !inline_history !188
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #25
  ret void
}

declare void @_ZNK6google8protobuf8compiler10objectivec22RepeatedFieldGenerator31GenerateFieldStorageDeclarationEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #1

declare void @_ZNK6google8protobuf8compiler10objectivec22RepeatedFieldGenerator27GeneratePropertyDeclarationEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #1

declare void @_ZNK6google8protobuf8compiler10objectivec22RepeatedFieldGenerator30GeneratePropertyImplementationEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #1

declare void @_ZNK6google8protobuf8compiler10objectivec14FieldGenerator29GenerateCFunctionDeclarationsEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #1

declare void @_ZNK6google8protobuf8compiler10objectivec14FieldGenerator32GenerateCFunctionImplementationsEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK6google8protobuf8compiler10objectivec22RepeatedFieldGenerator17RuntimeUsesHasBitEv(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare noundef i32 @_ZNK6google8protobuf8compiler10objectivec14FieldGenerator25ExtraRuntimeHasBitsNeededEv(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare void @_ZN6google8protobuf8compiler10objectivec14FieldGenerator26SetExtraRuntimeHasBitsBaseEi(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf8compiler10objectivec15SubstitutionMap5ValueB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  store i64 %2, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE4findISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !70   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 184                 ; 2 uses
  %.not.i.i = icmp ult i64 %i.h, %i.o
  br i1 %.not.i.i, label %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, i64 noundef %i.h, i64 noundef %i.o) #27
  unreachable

_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE2atEm.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [184 x i8], ptr %i.k, i64 %i.h
  %i.q = call { i64, ptr } @_ZNK6google8protobuf2io7Printer3Sub5valueEv(ptr noundef nonnull align 8 dereferenceable(184) %i.p) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0        ; 5 uses
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !15
  %i.u = icmp eq ptr %i.s, null
  %i.v = icmp ne i64 %i.r, 0
  %or.cond.i.i.i = and i1 %i.v, %i.u
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE2atEm.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.24) #27
  unreachable

bb.d:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.r, ptr %i.a, align 8, !tbaa !29
  %i.w = icmp ugt i64 %i.r, 15
  br i1 %i.w, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !22
  %i.y = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.y, ptr %i.t, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.z = phi ptr [ %i.x, %.noexc.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  switch i64 %i.r, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.j
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i8, ptr %i.s, align 1, !tbaa !21
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !21
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.s, i64 %i.r, i1 false)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.15, i32 noundef 181) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 19, ptr nonnull @.str.16)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit: ; preds = %bb.g
  %.sroa.0.0.copyload = load i64, ptr %4, align 8, !tbaa !29
  %.sroa.2.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !189
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.i

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.h
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !18
  %i.af = load ptr, ptr %0, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { i64, ptr } @_ZNK6google8protobuf2io7Printer3Sub5valueEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf2io7Printer3Sub5valueEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !58
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !157

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.20, i32 noundef 1002, ptr noundef nonnull @.str.21) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 15, ptr nonnull @.str.22)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit: ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %i.e, ptr %i.c)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 24, ptr nonnull @.str.23)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit: ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  unreachable

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit, %bb.c, %bb.b, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.k, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.i, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE4findISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !73
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !79
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_smallISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !21 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18   ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !29
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !189
  %i.i = icmp eq i64 %i.h, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_smallISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE12EqualElementISt17basic_string_viewIcS7_EEEJRSI_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %i.h)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE12EqualElementISt17basic_string_viewIcS7_EEEJRSI_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_smallISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE12EqualElementISt17basic_string_viewIcS7_EEEJRSI_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21, !nonnull !49, !noundef !49
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_smallISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !29 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !189
  %i.p = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.q = add i64 %.sroa.0.0.copyload.i, 87
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !79, !noalias !190
  %i.u = and i64 %i.t, 65535
  %i.v = load i64, ptr %0, align 8, !tbaa !73, !noalias !190 ; 4 uses
  %i.w = lshr i64 %i.r, 7
  %i.x = xor i64 %i.u, %i.w                       ; 2 uses
  %i.y = trunc i64 %i.r to i8
  %i.z = and i8 %i.y, 127
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !21  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 4 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ae, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.an, %bb.f ], [ %i.x, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.am, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.v      ; 4 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i.us
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !21 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ad, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.aj, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ak = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %.not43.i.us = icmp eq i16 %i.al, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_largeISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_m.exit, !prof !72

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.am = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.an = add i64 %i.am, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !193

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.ax, %bb.g ], [ %i.aj, %.split.us ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.6.0.i.us, %i.ap
  %i.ar = and i64 %i.aq, %i.v                     ; 2 uses
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !18
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread32.i, label %bb.g, !prof !194

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.aw = add i16 %.sroa.017.046.i.us.us, -1
  %i.ax = and i16 %i.aw, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.ax, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bt, %bb.i ], [ %i.x, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bs, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.v            ; 4 uses
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !21 ; 2 uses
  %i.bb = icmp eq <16 x i8> %i.ad, %i.ba
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.bc, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bp, %bb.h ], [ %i.bc, %.split ] ; 3 uses
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.6.0.i, %i.be
  %i.bg = and i64 %i.bf, %i.v                     ; 2 uses
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !18
  %i.bk = icmp eq i64 %i.bj, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, label %bb.h, !prof !194

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10: ; preds = %.lr.ph.i
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !22
  %bcmp.i.i.i.i.i.i.i.i11 = tail call i32 @bcmp(ptr %i.bl, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.bm = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i11, 0
  br i1 %i.bm, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_largeISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
  %i.bo = add i16 %.sroa.017.046.i, -1
  %i.bp = and i16 %i.bo, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bq = icmp eq <16 x i8> %i.ba, splat (i8 -128)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %.not43.i = icmp eq i16 %i.br, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_largeISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_m.exit, !prof !72

bb.i:                                             ; preds = %._crit_edge.i
  %i.bs = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bt = add i64 %i.bs, %.sroa.6.0.i
  br label %.split, !llvm.loop !193

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_largeISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bn, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi15, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_smallISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_smallISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE12EqualElementISt17basic_string_viewIcS7_EEEJRSI_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_largeISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_largeISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE12EqualElementISt17basic_string_viewIcS7_EEEJRSI_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %1, align 1
  %i.c = zext i32 %.0.copyload.i.i to i64
  %i.d = shl nuw i64 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %.0.copyload.i4.i = load i32, ptr %i.f, align 1
  %i.g = zext i32 %.0.copyload.i4.i to i64
  %i.h = or disjoint i64 %i.d, %i.g
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 1, !tbaa !21
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !21
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !21
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.p, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.v, %bb.e ]
  %i.w = xor i64 %.0.i, %0
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.g:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %2, 17
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.0.copyload.i.i4.i = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.i.i, %0
  %i.ad = xor i64 %.0.copyload.i.i4.i, -2543921745674291987
  %i.ae = zext i64 %i.ac to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %2, 33
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i20 = load i64, ptr %1, align 1
  %i.al = xor i64 %.0.copyload.i.i20, 1376283091369227076
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i21 = load i64, ptr %i.am, align 1
  %i.an = xor i64 %.0.copyload.i.i21, %0
  %i.ao = zext i64 %i.al to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = mul nuw i128 %i.ap, %i.ao               ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %.0.copyload.i.i22 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i22, 589684135938649225
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %.0.copyload.i.i23 = load i64, ptr %i.au, align 1
  %i.av = xor i64 %.0.copyload.i.i23, %0
  %i.aw = zext i64 %i.at to i128
  %i.ax = zext i64 %i.av to i128
  %i.ay = mul nuw i128 %i.ax, %i.aw               ; 2 uses
  %i.az = xor i128 %i.ay, %i.aq
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.aq, %i.ba
  %i.bc = xor i128 %i.bb, %i.ay
  %i.bd = trunc i128 %i.bc to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !72

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  %i.bf = xor i64 %i.be, %0
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 15902822328035259629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #16

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #17

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #9

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_mEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSM_SN_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEERS4_DpOT_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %1, align 8, !tbaa !22
  store i64 0, ptr %i.l, align 8, !tbaa !18
  store i8 0, ptr %i.f, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !15
  %i.n = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b
  %i.o = load i64, ptr %i.f, align 8, !tbaa !21
  store i64 %i.o, ptr %.sroa.4, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %1, align 8, !tbaa !22
  store i64 0, ptr %i.p, align 8, !tbaa !18
  store i8 0, ptr %i.f, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.b, align 8, !tbaa !22
  %.sroa.4.0..sroa.4.16. = load i64, ptr %.sroa.4, align 8, !tbaa !21
  store i64 %.sroa.4.0..sroa.4.16., ptr %i.q, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread
  %i.r = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.t = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18   ; 3 uses
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.y, i1 false)
  store ptr %i.u, ptr %2, align 8, !tbaa !22
  store i64 0, ptr %i.w, align 8, !tbaa !18
  store i8 0, ptr %i.u, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.aa = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !21
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  store ptr %i.u, ptr %2, align 8, !tbaa !22
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  store i8 0, ptr %i.u, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !21, !alias.scope !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i
  %.sink.i = phi ptr [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.ad = phi i64 [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sink.i, ptr %i.ae, align 8, !tbaa !15, !alias.scope !198
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !18, !alias.scope !195
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.ag, align 8, !tbaa !58, !alias.scope !195
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %i.aj, align 8, !tbaa !18
  store i8 0, ptr %i.ai, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 0, ptr %i.ak, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 0, ptr %i.al, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 184 ; 2 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre9 = load ptr, ptr %i.a, align 8, !tbaa !200
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.ao = phi ptr [ %.pre9, %bb.c ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -184
  ret ptr %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE30find_or_prepare_insert_non_sooIS9_EESD_INSH_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.111") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.c, i64 noundef %i.e)
  %i.g = add i64 %i.e, 87
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !79, !noalias !201
  %i.k = and i64 %i.j, 65535
  %i.l = load i64, ptr %1, align 8, !tbaa !73, !noalias !201 ; 3 uses
  %i.m = lshr i64 %i.h, 7
  %i.n = xor i64 %i.k, %i.m
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 127
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !21 ; 2 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = load ptr, ptr %2, align 8
  %i.v = load i64, ptr %i.d, align 8              ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.n, %bb.a ], [ %i.az, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.ay, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.l                 ; 5 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.7.0
  %i.z = load <16 x i8>, ptr %i.y, align 1, !tbaa !21 ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.t, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ab, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.an, %.critedge ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.7.0, %i.ad
  %i.af = and i64 %i.ae, %i.l                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.ak = icmp eq i64 %i.aj, %i.v
  br i1 %i.ak, label %bb.c, label %.critedge, !prof !194

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.w, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.u, i64 %i.v)
  %i.al = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.am = add i16 %.sroa.033.059, -1
  %i.an = and i16 %i.am, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.an, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ao = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ap, 0
  br i1 %.not51, label %bb.d, label %.thread, !prof !72

.thread:                                          ; preds = %.critedge18
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.ay = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bb, align 8, !tbaa !43
  ret void
}

declare noundef ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.a, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE19transfer_n_slots_fnEPvSI_SI_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit
  %.014 = phi i64 [ %i.p, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.r, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit ], [ %1, %bb.a ] ; 6 uses
  %.01012 = phi ptr [ %i.q, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit ], [ %2, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 3 uses
  store ptr %i.a, ptr %.0913, align 8, !tbaa !15
  %i.b = load ptr, ptr %.01012, align 8, !tbaa !22 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  store ptr %i.b, ptr %.0913, align 8, !tbaa !22
  %i.i = load i64, ptr %i.c, align 8, !tbaa !21
  store i64 %i.i, ptr %i.a, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01012, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !18
  store ptr %i.c, ptr %.01012, align 8, !tbaa !22
  store i64 0, ptr %i.j, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.01012, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !50
  store i64 %i.o, ptr %i.m, align 8, !tbaa !50
  %i.p = add i64 %.014, -1                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01012, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !204

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef %0, i64 noundef %1) #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !72

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #29
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSN_PFvSN_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !73     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !79
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.063 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.063
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.063 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not61 = icmp eq i16 %i.r, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %bb.c
  %i.s = add nuw i64 %.063, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !205

.lr.ph:                                           ; preds = %bb.c, %bb.v
  %.sroa.055.062 = phi i16 [ %i.dy, %bb.v ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.055.062, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.063, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.w ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22   ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !18  ; 14 uses
  %i.ab = icmp ult i64 %i.aa, 9
  br i1 %i.ab, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.ac = icmp samesign ugt i64 %i.aa, 3
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i = load i32, ptr %i.y, align 1
  %i.ad = zext i32 %.0.copyload.i.i.i to i64
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.ag, align 1
  %i.ah = zext i32 %.0.copyload.i4.i.i to i64
  %i.ai = or disjoint i64 %i.ae, %i.ah
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i8, ptr %i.y, align 1, !tbaa !21
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 16
  %i.am = getelementptr i8, ptr %i.y, i64 %i.aa
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %i.al, %i.ap
  %i.ar = lshr i64 %i.aa, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !21
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 8
  %i.aw = or disjoint i64 %i.aq, %i.av
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0.i.i = phi i64 [ %i.ai, %bb.e ], [ %i.aw, %bb.g ]
  %i.ax = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ay = mul i64 %i.ax, -2543921745674291987
  %i.az = tail call noundef i64 @llvm.bswap.i64(i64 %i.ay)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ba = icmp ult i64 %i.aa, 17
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i = load i64, ptr %i.y, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %.0.copyload.i.i4.i.i = load i64, ptr %i.bc, align 1
  %i.bd = xor i64 %.0.copyload.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.be = xor i64 %.0.copyload.i.i4.i.i, -2543921745674291987
  %i.bf = zext i64 %i.bd to i128
end_hunk_2
