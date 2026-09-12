Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Benchmark?download=true
inline.NumInlined: 7389
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE16_M_allocate_nodeIJRKSC_EEEPSD_DpOT_:bb.a
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5folly6detail15BenchmarkResultEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN5folly6detail15BenchmarkResultEEvPT_.exit
  %.05 = phi ptr [ %i.ae, %_ZSt8_DestroyIN5folly6detail15BenchmarkResultEEvPT_.exit ], [ %0, %bb.a ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !159 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !104
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i, i64 noundef 72) #43
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i, %.lr.ph
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.l = getelementptr inbounds nuw i8, ptr %.05, i64 80 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !138
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05, i64 120
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !138
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #43
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !103  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05, i64 48 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !104
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.z = load ptr, ptr %.05, align 8, !tbaa !103  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyIN5folly6detail15BenchmarkResultEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !104
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #43
  br label %_ZSt8_DestroyIN5folly6detail15BenchmarkResultEEvPT_.exit

_ZSt8_DestroyIN5folly6detail15BenchmarkResultEEvPT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05, i64 128 ; 2 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1943

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN5folly6detail15BenchmarkResultEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK5folly7dynamic5printERSo(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !149
  switch i32 %i.a, label %bb.i [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.158, i64 noundef 4) ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK5folly7dynamic20print_as_pseudo_jsonERSo(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !191, !range !192, !noundef !193
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %i.e) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !162
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.h) ; 0 uses
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !125
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.k) ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNK5folly7dynamic20print_as_pseudo_jsonERSo(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !105
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.n, i64 noundef %i.p) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @abort() #46
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #25

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare void @_ZNK5folly7dynamic20print_as_pseudo_jsonERSo(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplIiJiDnEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSB_IKS4_S4_EEEEEbESB_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.98") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.folly::dynamic", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !234  ; 3 uses
  %.not = icmp ult i64 %i.b, 256
  br i1 %.not, label %.thread68, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %3, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = trunc i64 %3 to i8
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.h = and i64 %i.b, 255
  %i.i = shl nuw i64 1, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.024.i83 = phi i64 [ %i.i, %bb.b ], [ %i.ap, %bb.f ]
  %.026.i82 = phi i64 [ %2, %bb.b ], [ %i.aq, %bb.f ] ; 2 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !234
  %i.l = and i64 %i.k, 255
  %notmask.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i, -1
  %i.n = and i64 %.026.i82, %i.m
  %i.o = load ptr, ptr %1, align 8, !tbaa !158
  %i.p = shl nuw nsw i64 %i.n, 7
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 80
  call void @llvm.prefetch.p0(ptr %i.r, i32 0, i32 3, i32 1)
  %i.s = load <16 x i8>, ptr %i.q, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, %i.g
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 16383
  %.not70 = icmp eq i32 %i.w, 0
  %i.x = extractelement <16 x i8> %i.s, i64 15
  br i1 %.not70, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.y = icmp ne ptr %i.q, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.y)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.043.0 = phi i32 [ %i.ac, %.critedge.i ], [ %i.v, %.preheader ] ; 4 uses
  %i.z = icmp ne i32 %.sroa.043.0, 0
  call void @llvm.assume(i1 %i.z)
  %i.aa = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.043.0, i1 true)
  %i.ab = add nsw i32 %.sroa.043.0, -1
  %i.ac = and i32 %i.ab, %.sroa.043.0             ; 2 uses
  %i.ad = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = getelementptr i8, ptr %i.q, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #42
  %i.ah = load i32, ptr %4, align 4, !tbaa !124
  store i32 4, ptr %7, align 8, !tbaa !149
  %i.ai = sext i32 %i.ah to i64
  store i64 %i.ai, ptr %i.j, align 8, !tbaa !125
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !233
  %i.ak = invoke noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %i.aj)
          to label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemIiEEbRKT_RKPSt4pairIKS3_S3_E.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #42
  resume { ptr, i32 } %i.al

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemIiEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.d
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #42
  br i1 %i.ak, label %bb.g, label %.critedge.i, !prof !203

.critedge.i:                                      ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemIiEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.am = and i32 %i.ac, 16382
  %.not71 = icmp eq i32 %i.am, 0
  br i1 %.not71, label %.loopexit.loopexit, label %bb.d, !llvm.loop !1944

.loopexit.loopexit:                               ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !237
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.an = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.x, %bb.c ]
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %.thread68.loopexit, label %bb.f, !prof !203

bb.f:                                             ; preds = %.loopexit
  %i.ap = add i64 %.024.i83, -1                   ; 2 uses
  %i.aq = add i64 %i.d, %.026.i82
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %.thread68.loopexit, label %bb.c, !llvm.loop !1945

bb.g:                                             ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemIiEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.ar = getelementptr i8, ptr %i.af, i64 16
  br label %bb.o

.thread68.loopexit:                               ; preds = %.loopexit, %bb.f
  %.pre92 = load i64, ptr %i.a, align 8, !tbaa !234
  br label %.thread68

.thread68:                                        ; preds = %.thread68.loopexit, %bb.a
  %i.as = phi i64 [ %.pre92, %.thread68.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.at = lshr i64 %i.as, 8                       ; 2 uses
  %i.au = and i64 %i.as, 255                      ; 3 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !158   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 14
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !104
  %i.ay = and i8 %i.ax, 15
  %i.az = zext nneg i8 %i.ay to i64               ; 2 uses
  %i.ba = shl i64 %i.az, %i.au                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.at, %i.ba
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread68
  %i.bb = shl nuw i64 1, %i.au
  call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.at, i64 noundef %i.bb, i64 noundef %i.az, i64 noundef %i.ba)
  %.pre93 = load i64, ptr %i.a, align 8, !tbaa !234
  %.pre94 = load ptr, ptr %1, align 8, !tbaa !158
  %.pre95 = and i64 %.pre93, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit: ; preds = %.thread68, %bb.h
  %.pre-phi = phi i64 [ %i.au, %.thread68 ], [ %.pre95, %bb.h ]
  %i.bc = phi ptr [ %i.av, %.thread68 ], [ %.pre94, %bb.h ] ; 4 uses
  %notmask.i32 = shl nsw i64 -1, %.pre-phi
  %i.bd = xor i64 %notmask.i32, -1                ; 2 uses
  %i.be = and i64 %2, %i.bd
  %i.bf = shl nuw nsw i64 %i.be, 7                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf ; 2 uses
  %i.bh = load <16 x i8>, ptr %i.bg, align 16, !tbaa !104
  %i.bi = icmp eq <16 x i8> %i.bh, zeroinitializer
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %i.bk = and i16 %i.bj, 16383                    ; 2 uses
  %.not72 = icmp eq i16 %i.bk, 0
  br i1 %.not72, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %i.bl = shl i64 %3, 1
  %i.bm = or disjoint i64 %i.bl, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bn = phi i64 [ %i.bf, %bb.i ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bs, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 15 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !237 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bq, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add i8 %i.bq, 1
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !237
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bs = add i64 %i.bm, %.029                    ; 2 uses
  %i.bt = and i64 %i.bs, %i.bd
  %i.bu = shl nuw nsw i64 %i.bt, 7                ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bu
  %i.bw = load <16 x i8>, ptr %i.bv, align 16     ; 2 uses
  %i.bx = icmp eq <16 x i8> %i.bw, zeroinitializer
  %i.by = bitcast <16 x i1> %i.bx to i16
  %i.bz = and i16 %i.by, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.bz, 0
  br i1 %.not73, label %bb.j, label %bb.l, !llvm.loop !1946

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bu ; 2 uses
  %i.cb = extractelement <16 x i8> %i.bw, i64 14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 14
  %i.cd = add i8 %i.cb, 16
  store i8 %i.cd, ptr %i.cc, align 2, !tbaa !238
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %.sroa.037.0.in = phi i16 [ %i.bk, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bz, %bb.l ]
  %.1 = phi ptr [ %i.bg, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.ca, %bb.l ] ; 3 uses
  %i.ce = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.037.0.in, i1 true)
  %i.cf = zext nneg i16 %i.ce to i64              ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cf ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !104
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %bb.m
  %i.cj = trunc i64 %3 to i8
  store i8 %i.cj, ptr %i.cg, align 1, !tbaa !104
  %i.ck = shl nuw nsw i64 %i.cf, 3
  %i.cl = getelementptr i8, ptr %.1, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 16     ; 3 uses
  %i.cn = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJiDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.cm, i64 %i.cf, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.sink114 = phi ptr [ %i.ar, %bb.g ], [ %i.cm, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.lcssa109.sink = phi i64 [ %i.ad, %bb.g ], [ %i.cf, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  store ptr %.sink114, ptr %0, align 8, !tbaa !231
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa109.sink, ptr %.sroa.542.0..sroa_idx, align 8, !tbaa !125
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.co, align 8, !tbaa !1949
  ret void
}

declare noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJiDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #45
          to label %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJiDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmEDpOT_ENKUlvE_clEv.exit unwind label %bb.b ; 5 uses

_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJiDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmEDpOT_ENKUlvE_clEv.exit: ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !233
  %i.b = load i32, ptr %5, align 4, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 4, ptr %i.a, align 8, !tbaa !149
  %i.d = sext i32 %i.b to i64
  store i64 %i.d, ptr %i.c, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.e, align 8, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !104
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJiDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEDpOT_EUlvE_PFvPSA_SK_SL_EJSQ_RSK_RSL_EvEET2_OT_OT0_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #42 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.c, !inline_history !1950

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJiDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEDpOT_EUlvE_PFvPSA_SK_SL_EJSQ_RSK_RSL_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #46
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJiDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEDpOT_EUlvE_PFvPSA_SK_SL_EJSQ_RSK_RSL_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJiDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.m = and i64 %2, 255                          ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = lshr i64 %i.m, 1
  %i.p = ptrtoint ptr %1 to i64
  %i.q = or i64 %i.o, %i.p                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1951
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJiDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEDpOT_EUlvE_PFvPSA_SK_SL_EJSQ_RSK_RSL_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %i.q, ptr %i.r, align 8, !tbaa !125
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJiDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEDpOT_EUlvE_PFvPSA_SK_SL_EJSQ_RSK_RSL_EvEET2_OT_OT0_DpOT1_.exit, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !234  ; 2 uses
  %i.w = and i64 %i.v, -256
  %i.x = add i64 %i.w, 256
  %i.y = and i64 %i.v, 255
  %i.z = or disjoint i64 %i.x, %i.y
  store i64 %i.z, ptr %i.u, align 8, !tbaa !234
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #20

declare noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !234
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 %.055152 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !104
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !104
  %i.bo = shl i64 %.055152, 3
  %i.bp = getelementptr i8, ptr %i.v, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16     ; 2 uses
  call void @llvm.assume(i1 %i.bi)
  %i.br = shl i64 %.057151, 3
  %i.bs = getelementptr i8, ptr %i.k, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 16     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !233
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !233
  store ptr null, ptr %i.bt, align 8, !tbaa !233
  %i.bv = add nuw i64 %.055152, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.156 = phi i64 [ %i.bv, %bb.g ], [ %.055152, %bb.d ] ; 3 uses
  %i.bw = add i64 %.057151, 1
  %i.bx = icmp ult i64 %.156, %1
  br i1 %i.bx, label %bb.d, label %bb.i, !llvm.loop !1956

bb.i:                                             ; preds = %bb.h
  %i.by = add i64 %.156, -1                       ; 2 uses
  %i.bz = shl i64 %i.by, 3
  %i.ca = getelementptr i8, ptr %i.v, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 16     ; 2 uses
  %i.cc = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cd = and i64 %i.by, 255                      ; 2 uses
  %i.ce = icmp samesign ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ce)
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = or i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !125
  br label %bb.ad

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #42
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %4, i1 false)
  br label %.lr.ph150.preheader

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp slt i64 %4, 0
  br i1 %i.cj, label %bb.l, label %bb.m, !prof !100

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #44
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #45
          to label %bb.o unwind label %bb.n       ; 3 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit81

bb.o:                                             ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !239
  %.pre161 = load i64, ptr %i.b, align 8, !tbaa !125
  %.pre162 = load i64, ptr %i.a, align 8, !tbaa !125 ; 2 uses
  %.pre163 = shl i64 %.pre161, 7
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %4, i1 false)
  %.not59147 = icmp eq i64 %.pre162, 0
  br i1 %.not59147, label %._crit_edge, label %.lr.ph150.preheader

.lr.ph150.preheader:                              ; preds = %.thread, %bb.o
  %.0125176 = phi ptr [ %7, %.thread ], [ %i.ck, %bb.o ] ; 5 uses
  %i.cm = phi ptr [ %i.k, %.thread ], [ %.pre, %bb.o ]
  %i.cn = phi i64 [ %1, %.thread ], [ %.pre162, %bb.o ]
  %.pre-phi175 = phi i64 [ %i.p, %.thread ], [ %.pre163, %bb.o ]
  %i.co = getelementptr i8, ptr %i.cm, i64 %.pre-phi175
  br label %.lr.ph150

.loopexit:                                        ; preds = %bb.y, %.lr.ph150
  %.1.lcssa = phi i64 [ %.042148, %.lr.ph150 ], [ %i.de, %bb.y ] ; 2 uses
  %.not59 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph150, !llvm.loop !1957

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %.loopexit
  %.043149.pn = phi ptr [ %.043149, %.loopexit ], [ %i.co, %.lr.ph150.preheader ]
  %.042148 = phi i64 [ %.1.lcssa, %.loopexit ], [ %i.cn, %.lr.ph150.preheader ] ; 2 uses
  %.043149 = getelementptr i8, ptr %.043149.pn, i64 -128 ; 6 uses
  %i.cp = load <16 x i8>, ptr %.043149, align 16, !tbaa !104
  %i.cq = icmp eq <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 16383                    ; 2 uses
  %i.ct = xor i16 %i.cs, 16383
  %.sroa.088.0.extract.trunc = zext nneg i16 %i.ct to i32 ; 2 uses
  %cond = icmp eq i16 %i.cs, 16383
  br i1 %cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph150
  %i.cu = icmp ne ptr %.043149, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cu)
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.085.0140 = phi i32 [ %.sroa.088.0.extract.trunc, %.lr.ph ], [ %.sroa.085.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.8.0139 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.cv = and i32 %.sroa.085.0140, 1
  %.not.i74 = icmp eq i32 %i.cv, 0
  br i1 %.not.i74, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !100

bb.q:                                             ; preds = %bb.p
  %i.cw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.085.0140, i1 true) ; 2 uses
  %i.cx = add i32 %i.cw, %.sroa.8.0139
  %i.cy = add nuw nsw i32 %i.cw, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.p, %bb.q
  %.sroa.8.1.in = phi i32 [ %i.cx, %bb.q ], [ %.sroa.8.0139, %bb.p ] ; 2 uses
  %.pn129 = phi i32 [ %i.cy, %bb.q ], [ 1, %bb.p ]
  %.sroa.085.1 = lshr i32 %.sroa.085.0140, %.pn129 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.cz = zext i32 %.sroa.8.1.in to i64
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = getelementptr i8, ptr %.043149, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !233
  call void @llvm.prefetch.p0(ptr %i.dd, i32 0, i32 3, i32 1)
  %.not126 = icmp eq i32 %.sroa.085.1, 0
  br i1 %.not126, label %.lr.ph145, label %bb.p

.lr.ph145:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.y
  %.1144 = phi i64 [ %i.de, %bb.y ], [ %.042148, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.088.0143 = phi i32 [ %.sroa.088.1, %bb.y ], [ %.sroa.088.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.890.0142 = phi i32 [ %.sroa.890.1, %bb.y ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.de = add i64 %.1144, -1                      ; 2 uses
  %i.df = and i32 %.sroa.088.0143, 1
  %.not.i76 = icmp eq i32 %i.df, 0
  br i1 %.not.i76, label %bb.r, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit78, !prof !100

bb.r:                                             ; preds = %.lr.ph145
  %i.dg = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.088.0143, i1 true) ; 2 uses
  %i.dh = add i32 %i.dg, %.sroa.890.0142
  %i.di = add nuw nsw i32 %i.dg, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit78

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit78: ; preds = %.lr.ph145, %bb.r
  %.sroa.890.1.in = phi i32 [ %i.dh, %bb.r ], [ %.sroa.890.0142, %.lr.ph145 ] ; 2 uses
  %.pn128 = phi i32 [ %i.di, %bb.r ], [ 1, %.lr.ph145 ]
  %.sroa.088.1 = lshr i32 %.sroa.088.0143, %.pn128 ; 2 uses
  %.sroa.890.1 = add i32 %.sroa.890.1.in, 1
  %i.dj = zext i32 %.sroa.890.1.in to i64         ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = getelementptr i8, ptr %.043149, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 16     ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !233
  %i.do = invoke noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dn)
          to label %bb.s unwind label %bb.u       ; 2 uses

bb.s:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit78
  %i.dp = lshr i64 %i.do, 56
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dp, i64 1) ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.043149, i64 %i.dj
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !104
  %i.ds = zext i8 %i.dr to i64
  %i.dt = icmp eq i64 %.sroa.speculated.i.i, %i.ds
  br i1 %i.dt, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.13) #49
  unreachable

bb.u:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit78
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %bb.ac, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit81

bb.v:                                             ; preds = %bb.s
  %i.dv = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.dw = or disjoint i64 %i.dv, 1
  %i.dx = load i64, ptr %i.ba, align 8, !tbaa !234
  %i.dy = and i64 %i.dx, 255
  %notmask.i.i = shl nsw i64 -1, %i.dy
  %i.dz = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.ea = load ptr, ptr %0, align 8, !tbaa !158   ; 2 uses
  %i.eb = and i64 %i.do, %i.dz                    ; 4 uses
  %i.ec = shl nuw nsw i64 %i.eb, 7                ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0125176, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !104 ; 2 uses
  %i.ef = icmp ult i8 %i.ee, 14
  br i1 %i.ef, label %._crit_edge.i, label %.lr.ph.i80, !prof !1966

.lr.ph.i80:                                       ; preds = %bb.v, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i
  %i.eg = phi i64 [ %i.eo, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ], [ %i.ec, %bb.v ]
  %i.eh = phi i64 [ %i.en, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ], [ %i.eb, %bb.v ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 15 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !237 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ek, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i80
  %i.el = add i8 %i.ek, 1
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !237
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.w, %.lr.ph.i80
  %i.em = add nuw i64 %i.dw, %i.eh
  %i.en = and i64 %i.em, %i.dz                    ; 4 uses
  %i.eo = shl nuw nsw i64 %i.en, 7                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0125176, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !104 ; 2 uses
  %i.er = icmp ult i8 %i.eq, 14
  br i1 %i.er, label %._crit_edge.i, label %.lr.ph.i80, !prof !1967, !llvm.loop !1958

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i, %bb.v
  %.lcssa22.i = phi i64 [ %i.eb, %bb.v ], [ %i.en, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.v ], [ 16, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.ec, %bb.v ], [ %i.eo, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.ee, %bb.v ], [ %i.eq, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.pn.i ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0125176, i64 %.lcssa22.i
  %i.et = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.et, ptr %i.es, align 1, !tbaa !104
  %i.eu = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.eu ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !104
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #49
  unreachable

bb.y:                                             ; preds = %._crit_edge.i
  %i.ey = trunc nuw i64 %.sroa.speculated.i.i to i8
  store i8 %i.ey, ptr %i.ev, align 1, !tbaa !104
  %i.ez = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 2, !tbaa !238
  %i.fb = add i8 %i.fa, %.0.lcssa.i
  store i8 %i.fb, ptr %i.ez, align 2, !tbaa !238
  %i.fc = shl nuw nsw i64 %i.eu, 3
  %i.fd = getelementptr i8, ptr %.lcssa21.i, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 16     ; 2 uses
  %i.ff = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ff)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  %i.fg = load ptr, ptr %i.dm, align 8, !tbaa !233
  store ptr %i.fg, ptr %i.fe, align 8, !tbaa !233
  store ptr null, ptr %i.dm, align 8, !tbaa !233
  %.not127 = icmp eq i32 %.sroa.088.1, 0
  br i1 %.not127, label %.loopexit, label %.lr.ph145, !llvm.loop !1959

._crit_edge:                                      ; preds = %.loopexit, %bb.o
  %.0125177 = phi ptr [ %i.ck, %bb.o ], [ %.0125176, %.loopexit ] ; 2 uses
  %i.fh = load i64, ptr %i.ba, align 8, !tbaa !234
  %i.fi = and i64 %i.fh, 255
  %i.fj = shl nuw i64 1, %i.fi
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.z
  %.0.in = phi i64 [ %i.fj, %._crit_edge ], [ %.0, %bb.z ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0125177, i64 %.0
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !104 ; 3 uses
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.z, label %bb.aa, !llvm.loop !1960

bb.aa:                                            ; preds = %bb.z
  %i.fn = load ptr, ptr %0, align 8, !tbaa !158
  %i.fo = shl nsw i64 %.0, 7
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 %i.fo ; 2 uses
  %i.fq = zext nneg i8 %i.fl to i64
  %i.fr = add nsw i64 %i.fq, -1                   ; 2 uses
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = getelementptr i8, ptr %i.fp, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 16     ; 2 uses
  %i.fv = icmp ne ptr %i.fp, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  %i.fw = icmp ult i8 %i.fl, 17
  call void @llvm.assume(i1 %i.fw)
  %i.fx = lshr i64 %i.fr, 1
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = or i64 %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !125
  br i1 %.not, label %bb.ab, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %.0125177, i64 noundef %4) #43
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #42
  br label %bb.ad

bb.ac:                                            ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %.0125176, i64 noundef %4) #43
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit81

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit81: ; preds = %bb.ac, %bb.u, %bb.n
  %.pn64.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.n ], [ %i.du, %bb.u ], [ %i.du, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #42
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  resume { ptr, i32 } %.pn64.pn.pn.pn

bb.ad:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !191
  %i.gb = load i64, ptr %i.d, align 8, !tbaa !125
  %.not.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gc = load ptr, ptr %i.c, align 8, !tbaa !239 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gd = load i64, ptr %i.e, align 8, !tbaa !125
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gd) #42
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #42
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !94
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #42
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !94
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #44
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !242, !range !192, !noundef !193
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1969, !nonnull !193
  %i.e = load i8, ptr %i.d, align 1, !tbaa !191, !range !192, !noundef !193
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !203

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1970, !nonnull !193, !align !208
  %i.i = load i64, ptr %i.h, align 8, !tbaa !125
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1971, !nonnull !193, !align !208
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !239
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1972, !nonnull !193, !align !208
  %i.o = load i64, ptr %i.n, align 8, !tbaa !125
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1973 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1974, !nonnull !193, !align !208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !171
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1975, !nonnull !193, !align !208
  %i.w = load i64, ptr %i.v, align 8, !tbaa !125
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1971, !nonnull !193, !align !208
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !239
  store ptr %i.z, ptr %i.q, align 8, !tbaa !158
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1976, !nonnull !193, !align !208
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !125 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !234
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !234
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #42
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #20

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #29

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() local_unnamed_addr #14

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #30 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4)
  tail call void @__cxa_rethrow() #44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg.i.i ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !104
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.13) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit: ; preds = %bb.a
  store i8 0, ptr %i.c, align 1, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.f = load i8, ptr %i.e, align 2, !tbaa !238
  %.not = icmp ult i8 %i.f, 16
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit
  %i.g = shl i64 %4, 1
  %i.h = or disjoint i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !234
  %i.k = and i64 %i.j, 255
  %notmask.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i, -1                   ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !158    ; 4 uses
  %i.n = and i64 %3, %i.l
  %i.o = shl nuw nsw i64 %i.n, 7                  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.e, %bb.c
  %.010.lcssa = phi i8 [ 0, %bb.c ], [ -16, %bb.e ]
  %i.r = phi i64 [ %i.o, %bb.c ], [ %i.ad, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 14 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !238
  %i.v = add i8 %i.u, %.010.lcssa
  store i8 %i.v, ptr %i.t, align 2, !tbaa !238
  br label %bb.f

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.w = phi i64 [ %i.ad, %bb.e ], [ %i.o, %bb.c ]
  %.01126 = phi i64 [ %i.ab, %bb.e ], [ %3, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 15 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !237   ; 2 uses
  %.not.i17 = icmp eq i8 %i.z, -2
  br i1 %.not.i17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aa = add i8 %i.z, -1
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !237
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.ab = add i64 %i.h, %.01126                   ; 2 uses
  %i.ac = and i64 %i.ab, %i.l
  %i.ad = shl nuw nsw i64 %i.ac, 7                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ad
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %.thread, label %.lr.ph

bb.f:                                             ; preds = %.thread, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly6detaileqERKNS0_15BenchmarkResultES3_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load double, ptr %i.a, align 8, !tbaa !178
  %i.c = fmul double %i.b, 1.000000e+03
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load double, ptr %i.e, align 8, !tbaa !178
  %i.g = fmul double %i.f, 1.000000e+03
  %i.h = fptoui double %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !105  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !105
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread11

bb.b:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !103
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !103
  %bcmp.i = tail call i32 @bcmp(ptr %i.r, ptr %i.q, i64 %i.l)
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !105  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !105
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread11

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit10, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %1, align 8, !tbaa !103
  %i.aa = load ptr, ptr %0, align 8, !tbaa !103
  %bcmp.i9 = tail call i32 @bcmp(ptr %i.aa, ptr %i.z, i64 %i.u)
  %i.ab = icmp eq i32 %bcmp.i9, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit10: ; preds = %bb.c, %bb.d
  %i.ac = phi i1 [ true, %bb.c ], [ %i.ab, %bb.d ]
  %i.ad = icmp eq i64 %i.d, %i.h
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread11

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = tail call noundef zeroext i1 @_ZNKSt8__detail9_EqualityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5folly10UserMetricEESaISB_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EE8_M_equalERKSt10_HashtableIS6_SB_SC_SD_SF_SH_SI_SJ_SK_SM_E(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.af)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread11: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.a, %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ah = phi i1 [ %i.ag, %bb.e ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit10 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %bb.a ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ]
  ret i1 %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNKSt8__detail9_EqualityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5folly10UserMetricEESaISB_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EE8_M_equalERKSt10_HashtableIS6_SB_SC_SD_SF_SH_SI_SJ_SK_SM_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !152
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !152
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.031.036 = load ptr, ptr %i.e, align 8, !tbaa !159 ; 2 uses
  %i.f = icmp eq ptr %.sroa.031.036, null
  br i1 %i.f, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !138  ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !137
  br label %bb.c

.critedge30.loopexit:                             ; preds = %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit
  %.sroa.031.0 = load ptr, ptr %.sroa.031.037, align 8, !tbaa !159 ; 2 uses
  %i.j = icmp eq ptr %.sroa.031.0, null
  br i1 %i.j, label %.critedge, label %bb.c, !llvm.loop !1977

bb.c:                                             ; preds = %.lr.ph, %.critedge30.loopexit
  %.sroa.031.037 = phi ptr [ %.sroa.031.036, %.lr.ph ], [ %.sroa.031.0, %.critedge30.loopexit ] ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.031.037, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.031.037, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !187
  %i.n = urem i64 %i.m, %i.h                      ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !188  ; 2 uses
  %.not26.not.not = icmp ne ptr %i.p, null        ; 3 uses
  br i1 %.not26.not.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.031.037, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !105  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.031.037, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.031.037, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.031.037, i64 56
  %i.w = icmp eq i64 %i.s, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %.0 = phi ptr [ %i.q, %bb.d ], [ %i.av, %bb.i ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !105
  %i.aa = icmp eq i64 %i.z, %i.s
  br i1 %i.aa, label %bb.f, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit.thread

bb.f:                                             ; preds = %bb.e
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !103
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !103
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ac, ptr %i.ab, i64 %i.s)
  %i.ad = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 40 ; 2 uses
  %i.af = load i8, ptr %i.u, align 8, !tbaa !161
  %i.ag = icmp eq i8 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !161 ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %_ZSt3getILm0EJldEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS4_.exit.i.i.i.i.i.i.i.i.i, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit.thread

_ZSt3getILm0EJldEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !125
  %i.al = load i64, ptr %i.t, align 8, !tbaa !125
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit.thread

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.an = icmp eq i8 %i.ai, 1
  br i1 %i.an, label %_ZSteqIJldEEbRKSt7variantIJDpT_EES5_.exit.i.i, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit.thread

_ZSteqIJldEEbRKSt7variantIJDpT_EES5_.exit.i.i:    ; preds = %bb.h
  %i.ao = load double, ptr %i.ae, align 8, !tbaa !162
  %i.ap = load double, ptr %i.t, align 8, !tbaa !162
  %i.aq = fcmp oeq double %i.ao, %i.ap
  br i1 %i.aq, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit.thread

_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit: ; preds = %_ZSt3getILm0EJldEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS4_.exit.i.i.i.i.i.i.i.i.i, %_ZSteqIJldEEbRKSt7variantIJDpT_EES5_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !247
  %i.at = load i32, ptr %i.v, align 8, !tbaa !247
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %.critedge30.loopexit, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit.thread

_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit.thread: ; preds = %bb.e, %bb.g, %_ZSt3getILm0EJldEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS4_.exit.i.i.i.i.i.i.i.i.i, %_ZSteqIJldEEbRKSt7variantIJDpT_EES5_.exit.i.i, %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit
  %i.av = load ptr, ptr %.0, align 8, !tbaa !159  ; 3 uses
  %.not27 = icmp eq ptr %i.av, null
  br i1 %.not27, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !187
  %i.ay = urem i64 %i.ax, %i.h
  %.not28 = icmp eq i64 %i.ay, %i.n
  br i1 %.not28, label %bb.e, label %.critedge, !llvm.loop !1978

.critedge:                                        ; preds = %bb.c, %.critedge30.loopexit, %bb.i, %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit.thread, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.i ], [ false, %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEEbRKSt4pairIT_T0_ESE_.exit.thread ], [ %.not26.not.not, %.critedge30.loopexit ], [ %.not26.not.not, %bb.c ]
  ret i1 %.4
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
end_hunk_1
