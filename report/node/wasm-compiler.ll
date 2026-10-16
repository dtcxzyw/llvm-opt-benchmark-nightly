Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-compiler?download=true
inline.NumInlined: 1898
inline.NumDeleted: 899
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2v88internal8compiler15CommonNodeCacheC2EPNS0_4ZoneE:bb.a

bb.bj:                                            ; preds = %_ZN2v88internal8compiler9NodeCacheISt4pairIicENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneE.exit
  %i.ig = icmp eq i64 %i.id, 1
  br i1 %i.ig, label %bb.bk, label %bb.bl, !prof !11

bb.bk:                                            ; preds = %bb.bj
  store ptr null, ptr %i.hy, align 8
  br label %_ZNSt10_HashtableISt4pairIlcES0_IKS1_PN2v88internal8compiler4NodeEENS4_13ZoneAllocatorIS8_EENSt8__detail10_Select1stESt8equal_toIS1_ENS3_4base4hashIS1_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.ih = load ptr, ptr %i.hw, align 8            ; 3 uses
  %i.ii = icmp ult i64 %i.id, 2305843009213693951
  br i1 %i.ii, label %bb.bn, label %bb.bm, !prof !16

bb.bm:                                            ; preds = %bb.bl
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #24
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.ij = shl nuw i64 %i.id, 3                    ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.il = load i64, ptr %i.ik, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 3 uses
  %i.in = load i64, ptr %i.im, align 8            ; 2 uses
  %i.io = sub i64 %i.il, %i.in
  %i.ip = icmp ugt i64 %i.ij, %i.io
  br i1 %i.ip, label %bb.bo, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKS5_IlcEPNS2_8compiler4NodeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, !prof !11

bb.bo:                                            ; preds = %bb.bn
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ih, i64 noundef %i.ij) #22
  %.pre.i.i.i.i.i.i.i.i.i.i52 = load i64, ptr %i.im, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKS5_IlcEPNS2_8compiler4NodeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKS5_IlcEPNS2_8compiler4NodeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i: ; preds = %bb.bo, %bb.bn
  %i.iq = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i52, %bb.bo ], [ %i.in, %bb.bn ] ; 2 uses
  %i.ir = inttoptr i64 %i.iq to ptr               ; 2 uses
  %i.is = add i64 %i.iq, %i.ij
  store i64 %i.is, ptr %i.im, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ir, i8 0, i64 %i.ij, i1 false)
  br label %_ZNSt10_HashtableISt4pairIlcES0_IKS1_PN2v88internal8compiler4NodeEENS4_13ZoneAllocatorIS8_EENSt8__detail10_Select1stESt8equal_toIS1_ENS3_4base4hashIS1_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt10_HashtableISt4pairIlcES0_IKS1_PN2v88internal8compiler4NodeEENS4_13ZoneAllocatorIS8_EENSt8__detail10_Select1stESt8equal_toIS1_ENS3_4base4hashIS1_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKS5_IlcEPNS2_8compiler4NodeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, %bb.bk
  %.0.i.i.i.i.i51 = phi ptr [ %i.hy, %bb.bk ], [ %i.ir, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKS5_IlcEPNS2_8compiler4NodeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i ]
  store ptr %.0.i.i.i.i.i51, ptr %i.hx, align 8
  store i64 %i.id, ptr %i.hz, align 8
  br label %_ZN2v88internal8compiler9NodeCacheISt4pairIlcENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneE.exit

_ZN2v88internal8compiler9NodeCacheISt4pairIlcENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler9NodeCacheISt4pairIicENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneE.exit, %_ZNSt10_HashtableISt4pairIlcES0_IKS1_PN2v88internal8compiler4NodeEENS4_13ZoneAllocatorIS8_EENSt8__detail10_Select1stESt8equal_toIS1_ENS3_4base4hashIS1_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i
  ret void
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal8compiler7TFGraphC1EPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #4

declare void @_ZN2v88internal8compiler21CommonOperatorBuilderC1EPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare void @_ZN2v88internal8compiler22MachineOperatorBuilderC1EPNS0_4ZoneENS0_21MachineRepresentationENS_4base5FlagsINS2_4FlagEjjEENS2_21AlignmentRequirementsE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i8 noundef zeroext, i32, i64, i32) unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler5StoreENS1_19StoreRepresentationEPNS1_4NodeEiS5_(ptr noundef nonnull align 8 dereferenceable(161), i16, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler24BitcastMaybeObjectToWordEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK2v88internal20FunctionTemplateInfo12GetCFunctionEPNS0_7IsolateEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK2v88internal20FunctionTemplateInfo13GetCSignatureEPNS0_7IsolateEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler18WasmGraphAssembler22LoadSharedFunctionInfoEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler13fast_api_call16BuildFastApiCallEPNS0_7IsolateEPNS1_7TFGraphEPNS1_14GraphAssemblerENS1_19FastApiCallFunctionEPNS1_4NodeERKSt8functionIFSB_iPNS1_19GraphAssemblerLabelILm0EEEEERKSC_IFSB_PKNS_13CFunctionInfoESB_EERKSC_IFvSB_EERKSC_IFSB_vEE(ptr noundef, ptr noundef, ptr noundef, i64, ptr, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal8compiler14GraphAssembler9Word32AndENS0_11SloppyTNodeINS0_7Word32TEEES5_(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.1182") align 8, ptr noundef nonnull align 8 dereferenceable(161), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler18WasmGraphAssembler21LoadFixedArrayElementEPNS1_4NodeEiNS0_11MachineTypeE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i32 noundef, i16) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler14GraphAssembler6GotoIfIJPNS1_4NodeEEEEvS5_PNS1_6detail29GraphAssemblerLabelForXHelperIS5_vJDpT_EE4TypeENS0_10BranchHintES9_(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.std::array.1115", align 8  ; 4 uses
  %6 = alloca %"struct.std::array.1115", align 8  ; 4 uses
  %7 = alloca %"struct.std::array.1183", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6BranchENS0_10BranchHintENS1_15BranchSemanticsE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 noundef zeroext %3, i32 noundef %i.g) #22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %1, ptr %7, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.j, ptr %i.k, align 8
  %i.l = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef %i.h, i32 noundef 2, ptr noundef nonnull %7, i1 noundef zeroext false) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6IfTrueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.l, ptr %6, align 8
  %i.r = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef %i.q, i32 noundef 1, ptr noundef nonnull %6, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  store ptr %i.r, ptr %i.i, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler10MergeStateIJPNS1_4NodeEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIS5_vJDpT_EE4TypeES9_(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %2, ptr noundef %4)
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder7IfFalseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.l, ptr %5, align 8
  %i.x = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef %i.w, i32 noundef 1, ptr noundef nonnull %5, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.y = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.x) #22
  store ptr %i.y, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler14GraphAssembler4BindILm1EEEvPNS1_19GraphAssemblerLabelIXT_EEE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1115", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.f, align 8
  store i8 1, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.m) #22 ; 0 uses
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.o) #22 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.r) #22 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef 1) #22
  %i.z = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.z, ptr %2, align 8
  %i.aa = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.v, ptr noundef %i.y, i32 noundef 1, ptr noundef nonnull %2, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.ab = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.aa) #22
  store ptr %i.ab, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler14GraphAssembler10MergeStateIJPNS1_4NodeEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIS5_vJDpT_EE4TypeES9_(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1184", align 8  ; 6 uses
  %4 = alloca %"struct.std::array.1184", align 8  ; 6 uses
  %5 = alloca %"struct.std::array.1183", align 8  ; 5 uses
  %6 = alloca %"struct.std::array.1184", align 8  ; 6 uses
  %7 = alloca %"struct.std::array.1183", align 16 ; 4 uses
  %8 = alloca %"struct.std::array.1184", align 8  ; 6 uses
  %9 = alloca %"struct.std::array.1183", align 8  ; 5 uses
  %10 = alloca %"struct.std::array.1183", align 8 ; 5 uses
  %11 = alloca %"struct.std::array.1183", align 16 ; 4 uses
  %12 = alloca %"struct.std::array.1183", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.c = load <2 x ptr>, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 7 uses
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.j = load i32, ptr %i.i, align 4
  %.not = icmp eq i32 %i.h, %i.j
  br i1 %.not, label %bb.b, label %.loopexit176

.loopexit176:                                     ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder8LoopExitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #22
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.q, ptr %12, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.v, ptr %i.w, align 8
  %i.x = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef %i.p, i32 noundef 2, ptr noundef nonnull %12, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.y = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.x) #22 ; 0 uses
  %i.z = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder14LoopExitEffectEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ae = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.ae, ptr %11, align 16
  %i.af = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, ptr noundef %i.ad, i32 noundef 2, ptr noundef nonnull %11, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ag = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.af) #22 ; 0 uses
  %i.ah = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder13LoopExitValueENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 noundef zeroext 9) #22
  %i.am = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %2, ptr %10, align 8
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.am, ptr %13, align 8
  %i.an = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ai, ptr noundef %i.al, i32 noundef 2, ptr noundef nonnull %10, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ao = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.an) #22
  br label %bb.b

bb.b:                                             ; preds = %.loopexit176, %bb.a
  %.sroa.0.0 = phi ptr [ %2, %bb.a ], [ %i.ao, %.loopexit176 ] ; 16 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.as = icmp eq i32 %i.f, 0
  br i1 %i.as, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4LoopEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i32 noundef 2) #22
  %i.az = load ptr, ptr %i.b, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.az, ptr %9, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.av, ptr noundef %i.ay, i32 noundef 2, ptr noundef nonnull %9, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i32 noundef 2) #22
  %i.bi = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bj = load ptr, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.bi, ptr %8, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bi, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.bj, ptr %i.bl, align 8
  %i.bm = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.be, ptr noundef %i.bh, i32 noundef 3, ptr noundef nonnull %8, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9TerminateEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bt = load <2 x ptr>, ptr %i.bn, align 8
  store <2 x ptr> %i.bt, ptr %7, align 16
  %i.bu = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bp, ptr noundef %i.bs, i32 noundef 2, ptr noundef nonnull %7, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bv = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void @_ZN2v88internal8compiler14NodeProperties17MergeControlToEndEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderEPNS1_4NodeE(ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.bu) #22
  %14 = load ptr, ptr %i.at, align 8              ; 2 uses
  %15 = load ptr, ptr %14, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = load i8, ptr %i.cb, align 8
  %i.cd = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 noundef zeroext %i.cc, i32 noundef 2) #22
  %i.ce = load ptr, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %.sroa.0.0, ptr %6, align 8
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.0.0, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ce, ptr %17, align 8
  %i.cf = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef %i.cd, i32 noundef 3, ptr noundef nonnull %6, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.cf, ptr %18, align 8
  br label %.loopexit172

bb.d:                                             ; preds = %bb.c
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %i.ci = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = and i32 %i.ck, 251658240
  %.not.i.i = icmp eq i32 %i.cl, 251658240
  %i.cm = ptrtoint ptr %i.ch to i64
  %i.cn = add i64 %i.cm, 32
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  br i1 %.not.i.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %bb.d
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = add i64 %i.cq, 16
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.cu, %i.ci
  br i1 %.not.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %bb.d
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.cw, %i.ci
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.cx = phi ptr [ %i.cv, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.ct, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.cy = phi ptr [ %i.cw, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.cu, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.cz = phi ptr [ %i.ch, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.cp, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -48 ; 2 uses
  %.not14.i = icmp eq ptr %i.cy, null
  br i1 %.not14.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull %i.da) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %i.ci, ptr %i.cx, align 8
  %.not15.i = icmp eq ptr %i.ci, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull %i.da) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %bb.f, %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dc = load ptr, ptr %i.db, align 8            ; 3 uses
  %i.dd = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = and i32 %i.df, 251658240
  %.not.i.i116 = icmp eq i32 %i.dg, 251658240
  %i.dh = ptrtoint ptr %i.dc to i64
  %i.di = add i64 %i.dh, 32
  %i.dj = inttoptr i64 %i.di to ptr               ; 2 uses
  br i1 %.not.i.i116, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i122, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i117

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i122: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = add i64 %i.dl, 16
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not.i123 = icmp eq ptr %i.dp, %i.dd
  br i1 %.not.i123, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit124, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i119

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i117: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %.not18.i118 = icmp eq ptr %i.dr, %i.dd
  br i1 %.not18.i118, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit124, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i119

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i119: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i117, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i122
  %i.ds = phi ptr [ %i.dq, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i117 ], [ %i.do, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i122 ]
  %i.dt = phi ptr [ %i.dr, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i117 ], [ %i.dp, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i122 ] ; 2 uses
  %i.du = phi ptr [ %i.dc, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i117 ], [ %i.dk, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i122 ]
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -48 ; 2 uses
  %.not14.i120 = icmp eq ptr %i.dt, null
  br i1 %.not14.i120, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i119
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull %i.dv) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i119
  store ptr %i.dd, ptr %i.ds, align 8
  %.not15.i121 = icmp eq ptr %i.dd, null
  br i1 %.not15.i121, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit124, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull %i.dv) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit124

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit124: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i122, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i117, %bb.i, %bb.j
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8            ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = and i32 %i.dz, 251658240
  %.not.i.i125 = icmp eq i32 %i.ea, 251658240
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = add i64 %i.eb, 32
  %i.ed = inttoptr i64 %i.ec to ptr               ; 2 uses
  br i1 %.not.i.i125, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i131, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i126

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i131: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit124
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = add i64 %i.ef, 16
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %.not.i132 = icmp eq ptr %i.ej, %.sroa.0.0
  br i1 %.not.i132, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit133, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i128

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i126: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit124
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not18.i127 = icmp eq ptr %i.el, %.sroa.0.0
  br i1 %.not18.i127, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit133, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i128

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i128: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i126, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i131
  %i.em = phi ptr [ %i.ek, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i126 ], [ %i.ei, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i131 ]
  %i.en = phi ptr [ %i.el, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i126 ], [ %i.ej, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i131 ] ; 2 uses
  %i.eo = phi ptr [ %i.dx, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i126 ], [ %i.ee, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i131 ]
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -48 ; 2 uses
  %.not14.i129 = icmp eq ptr %i.en, null
  br i1 %.not14.i129, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i128
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.en, ptr noundef nonnull %i.ep) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i128
  store ptr %.sroa.0.0, ptr %i.em, align 8
  %.not15.i130 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not15.i130, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit133, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0, ptr noundef nonnull %i.ep) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit133

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit133: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i131, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i126, %bb.l, %bb.m
  %19 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %19, align 8
  %.not171 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not171, label %.loopexit172, label %bb.n, !prof !16

bb.n:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit133
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.33) #24
  unreachable

bb.o:                                             ; preds = %bb.b
  switch i32 %i.f, label %bb.p [
    i32 0, label %.loopexit174
    i32 1, label %.loopexit175
  ]

.loopexit174:                                     ; preds = %bb.o
  %i.eq = load ptr, ptr %i.b, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.eq, ptr %i.er, align 8
  %i.es = load ptr, ptr %i.a, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.es, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %.sroa.0.0, ptr %i.eu, align 8
  br label %.loopexit172

.loopexit175:                                     ; preds = %bb.o
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i32 noundef 2) #22
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.fc, ptr %5, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.fd, ptr %i.fe, align 8
  %i.ff = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ex, ptr noundef %i.fa, i32 noundef 2, ptr noundef nonnull %5, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  store ptr %i.ff, ptr %i.fb, align 8
  %i.fg = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i32 noundef 2) #22
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = load ptr, ptr %i.a, align 8
  %i.fo = load ptr, ptr %i.fb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.fm, ptr %4, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.fn, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.fo, ptr %i.fq, align 8
  %i.fr = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.fh, ptr noundef %i.fk, i32 noundef 3, ptr noundef nonnull %4, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store ptr %i.fr, ptr %i.fl, align 8
  %20 = load ptr, ptr %i.ev, align 8              ; 2 uses
  %21 = load ptr, ptr %20, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %22 = load i8, ptr %i.fu, align 8
  %23 = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i8 noundef zeroext %22, i32 noundef 2) #22
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fv = load ptr, ptr %24, align 8
  %i.fw = load ptr, ptr %i.fb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.fv, ptr %3, align 8
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.0.0, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.fw, ptr %26, align 8
  %i.fx = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %21, ptr noundef %23, i32 noundef 3, ptr noundef nonnull %3, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr %i.fx, ptr %24, align 8
  br label %.loopexit172

bb.p:                                             ; preds = %bb.o
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.fz, ptr noundef %i.gd, ptr noundef %i.ge) #22
  %i.gf = load ptr, ptr %i.fy, align 8
  %i.gg = load ptr, ptr %i.ga, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = add nsw i32 %i.f, 1                     ; 3 uses
  %i.gk = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i32 noundef %i.gj) #22
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %i.gf, ptr noundef %i.gk) #22
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.gm = load ptr, ptr %i.gl, align 8            ; 3 uses
  %i.gn = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 20
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = and i32 %i.gp, 251658240
  %.not.i.i134 = icmp eq i32 %i.gq, 251658240
  %i.gr = ptrtoint ptr %i.gm to i64
  %i.gs = add i64 %i.gr, 32
  %i.gt = inttoptr i64 %i.gs to ptr               ; 2 uses
  br i1 %.not.i.i134, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i140, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i135

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i140: ; preds = %bb.p
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = add i64 %i.gv, 16
  %i.gx = inttoptr i64 %i.gw to ptr
  %sext164 = shl i64 %i.e, 32
  %i.gy = ashr exact i64 %sext164, 29
  %i.gz = getelementptr inbounds i8, ptr %i.gx, i64 %i.gy ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8            ; 2 uses
  %.not.i141 = icmp eq ptr %i.ha, %i.gn
  br i1 %.not.i141, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit142, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i137

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i135: ; preds = %bb.p
  %sext = shl i64 %i.e, 32
  %i.hb = ashr exact i64 %sext, 29
  %i.hc = getelementptr inbounds i8, ptr %i.gt, i64 %i.hb ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8            ; 2 uses
  %.not18.i136 = icmp eq ptr %i.hd, %i.gn
  br i1 %.not18.i136, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit142, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i137

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i137: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i135, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i140
  %i.he = phi ptr [ %i.hc, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i135 ], [ %i.gz, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i140 ]
  %i.hf = phi ptr [ %i.hd, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i135 ], [ %i.ha, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i140 ] ; 2 uses
  %i.hg = phi ptr [ %i.gm, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i135 ], [ %i.gu, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i140 ]
  %i.hh = xor i64 %i.e, -1
  %sext165 = shl i64 %i.hh, 32
  %i.hi = ashr exact i64 %sext165, 32
  %i.hj = getelementptr inbounds [24 x i8], ptr %i.hg, i64 %i.hi ; 2 uses
  %.not14.i138 = icmp eq ptr %i.hf, null
  br i1 %.not14.i138, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i137
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.hf, ptr noundef %i.hj) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i137
  store ptr %i.gn, ptr %i.he, align 8
  %.not15.i139 = icmp eq ptr %i.gn, null
  br i1 %.not15.i139, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit142, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.gn, ptr noundef %i.hj) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit142

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit142: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i140, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i135, %bb.r, %bb.s
  %i.hk = load ptr, ptr %i.gl, align 8
  %i.hl = load ptr, ptr %i.ga, align 8
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = load ptr, ptr %i.fy, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.hk, ptr noundef %i.hn, ptr noundef %i.ho) #22
  %i.hp = load ptr, ptr %i.gl, align 8
  %i.hq = load ptr, ptr %i.ga, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i32 noundef %i.gj) #22
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %i.hp, ptr noundef %i.ht) #22
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.hv = load ptr, ptr %i.hu, align 8            ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 20
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = and i32 %i.hx, 251658240
  %.not.i.i143 = icmp eq i32 %i.hy, 251658240
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = add i64 %i.hz, 32
  %i.ib = inttoptr i64 %i.ia to ptr               ; 2 uses
  br i1 %.not.i.i143, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i149, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i144

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i149: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit142
  %i.ic = load ptr, ptr %i.ib, align 8            ; 2 uses
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = add i64 %i.id, 16
  %i.if = inttoptr i64 %i.ie to ptr
  %sext167 = shl i64 %i.e, 32
  %27 = ashr exact i64 %sext167, 29
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %27 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %.not.i150 = icmp eq ptr %i.ih, %.sroa.0.0
  br i1 %.not.i150, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit151, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i146

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i144: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit142
  %sext166 = shl i64 %i.e, 32
  %28 = ashr exact i64 %sext166, 29
  %i.ii = getelementptr inbounds i8, ptr %i.ib, i64 %28 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8            ; 2 uses
  %.not18.i145 = icmp eq ptr %i.ij, %.sroa.0.0
  br i1 %.not18.i145, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit151, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i146

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i146: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i144, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i149
  %i.ik = phi ptr [ %i.ii, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i144 ], [ %i.ig, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i149 ]
  %i.il = phi ptr [ %i.ij, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i144 ], [ %i.ih, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i149 ] ; 2 uses
  %i.im = phi ptr [ %i.hv, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i144 ], [ %i.ic, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i149 ]
  %29 = xor i64 %i.e, -1
  %sext168 = shl i64 %29, 32
  %30 = ashr exact i64 %sext168, 32
  %i.in = getelementptr inbounds [24 x i8], ptr %i.im, i64 %30 ; 2 uses
  %.not14.i147 = icmp eq ptr %i.il, null
  br i1 %.not14.i147, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i146
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.il, ptr noundef %i.in) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i146
  store ptr %.sroa.0.0, ptr %i.ik, align 8
  %.not15.i148 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not15.i148, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit151, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0, ptr noundef %i.in) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit151

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit151: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i149, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i144, %bb.u, %bb.v
  %i.io = load ptr, ptr %i.hu, align 8
  %i.ip = load ptr, ptr %i.ga, align 8
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = load ptr, ptr %i.fy, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.io, ptr noundef %i.ir, ptr noundef %i.is) #22
  %i.it = load ptr, ptr %i.hu, align 8
  %i.iu = load ptr, ptr %i.ga, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ix = load i8, ptr %31, align 8
  %i.iy = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.iw, i8 noundef zeroext %i.ix, i32 noundef %i.gj) #22
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %i.it, ptr noundef %i.iy) #22
  %i.iz = load ptr, ptr %i.hu, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %.sroa.0.0.copyload.i.i152 = load i64, ptr %i.ja, align 8 ; 2 uses
  %.not169 = icmp eq i64 %.sroa.0.0.copyload.i.i152, 0
  br i1 %.not169, label %.loopexit172, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit151
  %32 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.copyload.i.i153 = load i64, ptr %32, align 8 ; 2 uses
  %.not170 = icmp eq i64 %.sroa.0.0.copyload.i.i153, 0
  br i1 %.not170, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.34) #24
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.jb = load ptr, ptr %i.ga, align 8
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = call i64 @_ZN2v88internal8compiler4Type5UnionES2_S2_PNS0_4ZoneE(i64 %.sroa.0.0.copyload.i.i152, i64 %.sroa.0.0.copyload.i.i153, ptr noundef %i.jd) #22
  %i.jf = load ptr, ptr %i.hu, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store i64 %i.je, ptr %i.jg, align 8
  br label %.loopexit172

.loopexit172:                                     ; preds = %bb.y, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit151, %.loopexit175, %.loopexit174, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit133, %.loopexit
  %i.jh = load i64, ptr %i.d, align 8
  %i.ji = add i64 %i.jh, 1
  store i64 %i.ji, ptr %i.d, align 8
  store <2 x ptr> %i.c, ptr %i.a, align 8
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder8LoopExitEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder14LoopExitEffectEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder13LoopExitValueENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4LoopEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9TerminateEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @_ZN2v88internal8compiler4Type5UnionES2_S2_PNS0_4ZoneE(i64, i64, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler16ExternalConstantENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(161), i64) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference39wasm_switch_to_the_central_stack_for_jsEv() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler16LoadFramePointerEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler16LoadStackPointerEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler15SetStackPointerEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZNSt17_Function_handlerIFPN2v88internal8compiler4NodeEiPNS2_19GraphAssemblerLabelILm0EEEEZNS2_12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS1_12DirectHandleINS1_10JSReceiverEEEEUliS7_E_E9_M_invokeERKSt9_Any_dataOiOS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1115", align 8  ; 4 uses
  %4 = alloca %"struct.std::array.1115", align 8  ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %.val3 = load i32, ptr %1, align 4              ; 6 uses
  %i.a = load ptr, ptr %.val, align 8             ; 6 uses
  %i.b = icmp eq i32 %.val3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler18AdaptLocalArgumentEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %i.c, ptr noundef %i.e) #22
  br label %_ZSt10__invoke_rIPN2v88internal8compiler4NodeERZNS2_12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS1_12DirectHandleINS1_10JSReceiverEEEEUliPNS2_19GraphAssemblerLabelILm0EEEE_JiSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 1 dereferenceable(2) ptr @_ZNK2v813CFunctionInfo12ArgumentInfoEj(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i32 noundef %.val3) #22
  %i.j = load i8, ptr %i.i, align 1
  %cond.i.i.i = icmp eq i8 %i.j, 10
  br i1 %cond.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = add nsw i32 %.val3, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = sext i32 %i.l to i64                     ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %_ZN2v88internal8compiler16WasmGraphBuilder5ParamEiPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9ParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i32 noundef %.val3, ptr noundef null) #22
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.ab, ptr %4, align 8
  %i.ac = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef %i.x, i32 noundef 1, ptr noundef nonnull %4, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = load ptr, ptr %i.m, align 8
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.o
  store ptr %i.ac, ptr %i.ae, align 8
  %.pre.i.i.i.i = load ptr, ptr %i.m, align 8
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i, i64 %i.o
  %.pre6.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8
  br label %_ZN2v88internal8compiler16WasmGraphBuilder5ParamEiPKc.exit.i.i.i

_ZN2v88internal8compiler16WasmGraphBuilder5ParamEiPKc.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.af = phi ptr [ %.pre6.i.i.i.i, %bb.e ], [ %i.q, %bb.d ]
  %i.ag = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler18AdaptLocalArgumentEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %i.k, ptr noundef %i.af) #22
  br label %_ZSt10__invoke_rIPN2v88internal8compiler4NodeERZNS2_12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS1_12DirectHandleINS1_10JSReceiverEEEEUliPNS2_19GraphAssemblerLabelILm0EEEE_JiSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit

bb.f:                                             ; preds = %bb.c
  %i.ah = add nsw i32 %.val3, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = sext i32 %i.ah to i64                   ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.g, label %_ZSt10__invoke_rIPN2v88internal8compiler4NodeERZNS2_12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS1_12DirectHandleINS1_10JSReceiverEEEEUliPNS2_19GraphAssemblerLabelILm0EEEE_JiSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9ParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i32 noundef %.val3, ptr noundef null) #22
  %i.au = load ptr, ptr %i.ao, align 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.ax, ptr %3, align 8
  %i.ay = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aq, ptr noundef %i.at, i32 noundef 1, ptr noundef nonnull %3, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.az = load ptr, ptr %i.ai, align 8
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ak
  store ptr %i.ay, ptr %i.ba, align 8
  %.pre.i6.i.i.i = load ptr, ptr %i.ai, align 8
  %.phi.trans.insert.i7.i.i.i = getelementptr inbounds [8 x i8], ptr %.pre.i6.i.i.i, i64 %i.ak
  %.pre6.i8.i.i.i = load ptr, ptr %.phi.trans.insert.i7.i.i.i, align 8
  br label %_ZSt10__invoke_rIPN2v88internal8compiler4NodeERZNS2_12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS1_12DirectHandleINS1_10JSReceiverEEEEUliPNS2_19GraphAssemblerLabelILm0EEEE_JiSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit

_ZSt10__invoke_rIPN2v88internal8compiler4NodeERZNS2_12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS1_12DirectHandleINS1_10JSReceiverEEEEUliPNS2_19GraphAssemblerLabelILm0EEEE_JiSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit: ; preds = %bb.b, %_ZN2v88internal8compiler16WasmGraphBuilder5ParamEiPKc.exit.i.i.i, %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.ag, %_ZN2v88internal8compiler16WasmGraphBuilder5ParamEiPKc.exit.i.i.i ], [ %.pre6.i8.i.i.i, %bb.g ], [ %i.am, %bb.f ]
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFPN2v88internal8compiler4NodeEiPNS2_19GraphAssemblerLabelILm0EEEEZNS2_12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS1_12DirectHandleINS1_10JSReceiverEEEEUliS7_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS2_12DirectHandleINS2_10JSReceiverEEEEUliPNS3_19GraphAssemblerLabelILm0EEEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8
  store ptr %.val, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS2_12DirectHandleINS2_10JSReceiverEEEEUliPNS3_19GraphAssemblerLabelILm0EEEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS2_12DirectHandleINS2_10JSReceiverEEEEUliPNS3_19GraphAssemblerLabelILm0EEEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val5, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS2_12DirectHandleINS2_10JSReceiverEEEEUliPNS3_19GraphAssemblerLabelILm0EEEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8            ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS2_12DirectHandleINS2_10JSReceiverEEEEUliPNS3_19GraphAssemblerLabelILm0EEEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 24) #25
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS2_12DirectHandleINS2_10JSReceiverEEEEUliPNS3_19GraphAssemblerLabelILm0EEEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS2_12DirectHandleINS2_10JSReceiverEEEEUliPNS3_19GraphAssemblerLabelILm0EEEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler18AdaptLocalArgumentEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 1 dereferenceable(2) ptr @_ZNK2v813CFunctionInfo12ArgumentInfoEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZNSt17_Function_handlerIFPN2v88internal8compiler4NodeEPKNS0_13CFunctionInfoES4_EZNS2_12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS1_12DirectHandleINS1_10JSReceiverEEEEUlS7_S4_E_E9_M_invokeERKSt9_Any_dataOS7_OS4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #17 align 2 {
bb.a:
  %.val = load ptr, ptr %2, align 8
  ret ptr %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFPN2v88internal8compiler4NodeEPKNS0_13CFunctionInfoES4_EZNS2_12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS1_12DirectHandleINS1_10JSReceiverEEEEUlS7_S4_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS2_12DirectHandleINS2_10JSReceiverEEEEUlPKNS1_13CFunctionInfoEPNS3_4NodeEE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS2_12DirectHandleINS2_10JSReceiverEEEEUlPKNS1_13CFunctionInfoEPNS3_4NodeEE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler12_GLOBAL__N_123WasmWrapperGraphBuilder25BuildJSFastApiCallWrapperENS2_12DirectHandleINS2_10JSReceiverEEEEUlPKNS1_13CFunctionInfoEPNS3_4NodeEE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split
end_hunk_0
begin_hunk_1_@_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm19ESaIS5_EE4GrowEm:bb.a
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.p, align 8
  store ptr %i.w, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.x = shl nuw i64 1, %i.j
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.y, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm19ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm19ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #13 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler24GetBuiltinCallDescriptorENS0_7BuiltinEPNS0_4ZoneENS0_12StubCallModeEbNS_4base5FlagsINS1_8Operator8PropertyEhhEE(i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i8) local_unnamed_addr #4

declare void @_ZN2v88internal8compiler14GraphAssembler4CallEPKNS1_8OperatorEiPPNS1_4NodeE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode") align 8, ptr noundef nonnull align 8 dereferenceable(161), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind allocsize(0) }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{ptr @_ZN2v88internal8compiler16WasmGraphBuilderC2EPNS0_4wasm14CompilationEnvEPNS0_4ZoneEPNS1_12MachineGraphEPKNS0_9SignatureINS3_9ValueTypeEEEPNS1_19SourcePositionTableENS2_13ParameterModeEPNS0_7IsolateENS3_19WasmEnabledFeaturesEPKNS3_12CanonicalSigE, null, null, null, null, null, null, null}
!1 = distinct !{ptr @_ZN2v88internal8compiler16WasmGraphBuilderD2Ev, null, null}
!2 = distinct !{null}
!3 = distinct !{null, null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{ptr @_ZN2v88internal12StdoutStreamD1Ev}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{ptr @_ZN2v88internal8OFStreamD1Ev}
!18 = distinct !{!18, i1 true, !"_ZSt11make_uniqueIN2v88internal8compiler18WasmGraphAssemblerEJRPNS2_12MachineGraphERPNS1_4ZoneEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!19 = distinct !{!19, !18, !"_ZSt11make_uniqueIN2v88internal8compiler18WasmGraphAssemblerEJRPNS2_12MachineGraphERPNS1_4ZoneEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20 = distinct !{null, null, null, null, null, null, null}
!21 = !{!19}
!22 = distinct !{!22, i1 true, !"_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_"}
!23 = distinct !{!23, !22, !"_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_: argument 0"}
!24 = distinct !{!24, i1 true, !"_ZSt20atomic_load_explicitIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_St12memory_order"}
!25 = distinct !{!25, !24, !"_ZSt20atomic_load_explicitIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_St12memory_order: argument 0"}
!26 = distinct !{null, null, null}
!27 = !{!25, !23}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !31}
!30 = distinct !{!30, !15}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{ptr @_ZN2v88internal8compiler16WasmGraphBuilder10LowerInt64EPNS0_9SignatureINS0_21MachineRepresentationEEE}
!33 = distinct !{!33, i1 true, !"_ZN2v88internal8compiler14GraphAssembler4CallIJPNS1_4NodeEEEENS0_5TNodeINS0_6ObjectEEEPKNS1_14CallDescriptorES5_DpT_"}
!34 = distinct !{!34, !33, !"_ZN2v88internal8compiler14GraphAssembler4CallIJPNS1_4NodeEEEENS0_5TNodeINS0_6ObjectEEEPKNS1_14CallDescriptorES5_DpT_: argument 0"}
!35 = distinct !{!35, i1 true, !"_ZN2v88internal8compiler14GraphAssembler4CallIJPNS1_4NodeEEEENS0_5TNodeINS0_6ObjectEEEPKNS1_8OperatorES5_DpT_"}
!36 = distinct !{!36, !35, !"_ZN2v88internal8compiler14GraphAssembler4CallIJPNS1_4NodeEEEENS0_5TNodeINS0_6ObjectEEEPKNS1_8OperatorES5_DpT_: argument 0"}
!37 = distinct !{!37, i1 true, !"_ZN2v88internal8compiler14GraphAssembler4CallIJPNS1_4NodeES5_EEENS0_5TNodeINS0_6ObjectEEEPKNS1_14CallDescriptorES5_DpT_"}
!38 = distinct !{!38, !37, !"_ZN2v88internal8compiler14GraphAssembler4CallIJPNS1_4NodeES5_EEENS0_5TNodeINS0_6ObjectEEEPKNS1_14CallDescriptorES5_DpT_: argument 0"}
!39 = distinct !{!39, i1 true, !"_ZN2v88internal8compiler14GraphAssembler4CallIJPNS1_4NodeES5_EEENS0_5TNodeINS0_6ObjectEEEPKNS1_8OperatorES5_DpT_"}
!40 = distinct !{!40, !39, !"_ZN2v88internal8compiler14GraphAssembler4CallIJPNS1_4NodeES5_EEENS0_5TNodeINS0_6ObjectEEEPKNS1_8OperatorES5_DpT_: argument 0"}
!41 = !{!34}
!42 = !{!36, !34}
!43 = !{!38}
!44 = !{!40, !38}
!45 = distinct !{!45, i1 true, !"_ZSt11make_uniqueIN2v88internal8compiler18WasmGraphAssemblerEJRPNS2_12MachineGraphERPNS1_4ZoneEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!46 = distinct !{!46, !45, !"_ZSt11make_uniqueIN2v88internal8compiler18WasmGraphAssemblerEJRPNS2_12MachineGraphERPNS1_4ZoneEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{null, ptr @_ZN2v88internal8compiler16WasmGraphBuilder10LowerInt64ENS0_4wasm10CallOriginE, ptr @_ZN2v88internal8compiler16WasmGraphBuilder10LowerInt64EPNS0_9SignatureINS0_21MachineRepresentationEEE}
!50 = !{!46}
!51 = distinct !{null, null}
!52 = distinct !{!52, i1 true, !"_ZN2v88internal8compiler20WasmAssemblerOptionsEv"}
!53 = distinct !{!53, !52, !"_ZN2v88internal8compiler20WasmAssemblerOptionsEv: argument 0"}
!54 = !{!53}
!55 = distinct !{!55, i1 true, !"_ZN2v88internal8compiler24WasmStubAssemblerOptionsEv"}
!56 = distinct !{!56, !55, !"_ZN2v88internal8compiler24WasmStubAssemblerOptionsEv: argument 0"}
!57 = !{!56}
!58 = distinct !{!58, i1 true, !"_ZN2v88internal8compiler24WasmStubAssemblerOptionsEv"}
!59 = distinct !{!59, !58, !"_ZN2v88internal8compiler24WasmStubAssemblerOptionsEv: argument 0"}
!60 = !{!59}
!61 = distinct !{!61, i1 true, !"_ZN2v88internal8compiler24WasmStubAssemblerOptionsEv"}
!62 = distinct !{!62, !61, !"_ZN2v88internal8compiler24WasmStubAssemblerOptionsEv: argument 0"}
!63 = !{!62}
!64 = distinct !{!64, i1 true, !"_ZSt11make_uniqueIN2v88internal8compiler18WasmGraphAssemblerEJRPNS2_12MachineGraphERPNS1_4ZoneEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!65 = distinct !{!65, !64, !"_ZSt11make_uniqueIN2v88internal8compiler18WasmGraphAssemblerEJRPNS2_12MachineGraphERPNS1_4ZoneEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!66 = distinct !{!66, i1 true, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeES8_"}
!67 = distinct !{!67, !66, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeES8_: argument 0"}
!68 = distinct !{!68, i1 true, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!69 = distinct !{!69, !68, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!70 = distinct !{null, null}
!71 = distinct !{!71, i1 true, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!72 = distinct !{!72, !71, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!74 = distinct !{!74, !73, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!75 = distinct !{!75, i1 true, !"_ZN2v88internal8compiler24WasmStubAssemblerOptionsEv"}
!76 = distinct !{!76, !75, !"_ZN2v88internal8compiler24WasmStubAssemblerOptionsEv: argument 0"}
!77 = !{!65}
!78 = !{!67}
!79 = !{!69}
!80 = !{!69, !67}
!81 = !{!72}
!82 = !{!74}
!83 = !{!74, !72}
!84 = !{!76}
!85 = distinct !{!85, i1 true, !"_ZSt11make_uniqueIN2v88internal4ZoneEJPNS1_19AccountingAllocatorERA18_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!86 = distinct !{!86, !85, !"_ZSt11make_uniqueIN2v88internal4ZoneEJPNS1_19AccountingAllocatorERA18_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZSt11make_uniqueIN2v88internal8compiler18WasmGraphAssemblerEJRPNS2_12MachineGraphERPNS1_4ZoneEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!88 = distinct !{!88, !87, !"_ZSt11make_uniqueIN2v88internal8compiler18WasmGraphAssemblerEJRPNS2_12MachineGraphERPNS1_4ZoneEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!89 = distinct !{null}
!90 = distinct !{null, null}
!91 = !{!86}
!92 = !{!88}
!93 = !{ptr @_ZN2v88internal8OFStreamD0Ev, ptr @_ZN2v88internal8OFStreamD1Ev}
!94 = !{ptr @_ZN2v88internal8OFStreamD0Ev}
!95 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev, ptr @_ZN2v88internal12StdoutStreamD1Ev}
!96 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev}
!97 = distinct !{null}
!98 = distinct !{!98, !15}
end_hunk_1
