inline.NumInlined: 558
inline.NumDeleted: 303
begin_hunk_0_@_ZN6google8protobuf4util21SimpleFieldComparator22CompareWithDifferencerEPNS1_18MessageDifferencerERKNS0_7MessageES7_PKNS1_12FieldContextE:bb.a

declare noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer7CompareERKNS0_7MessageES5_iPSt6vectorINS2_13SpecificFieldESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf4util21SimpleFieldComparator27SetDefaultFractionAndMarginEdd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((13, 14), (16, 32)) %0, double noundef %1, double noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %1, ptr %i.a, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 1, ptr %i.b, align 1, !tbaa !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util21SimpleFieldComparator20SetFractionAndMarginEPKNS0_15FieldDescriptorEdd(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.58", align 8     ; 6 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !30
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %.off = add i32 %i.f, -5
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.critedge, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str, i32 noundef 163, ptr noundef nonnull @.str.3) #30
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 53, ptr nonnull @.str.4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.k = xor i64 %i.j, -1
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.j, ptr nonnull %i.l)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.58") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !71, !range !74, !alias.scope !75, !noundef !76
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

bb.f:                                             ; preds = %.critedge
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !75 ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !62, !noalias !75
  store ptr %i.s, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit: ; preds = %.critedge, %bb.f
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  store double %2, ptr %i.u, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16
  store double %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !61
  ret void
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6google8protobuf4util21SimpleFieldComparator20CompareDoubleOrFloatIdEEbRKNS0_15FieldDescriptorET_S7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, double noundef %2, double noundef %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fcmp oeq double %2, %3
  br i1 %i.a, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIdEEbT_S4_S4_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !25, !range !74, !noundef !76
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = fcmp uno double %2, 0.000000e+00
  %or.cond33 = and i1 %i.h, %i.g
  %i.i = fcmp uno double %3, 0.000000e+00
  %or.cond34 = and i1 %i.i, %or.cond33            ; 2 uses
  %brmerge = select i1 %i.d, i1 true, i1 %or.cond34
  %not. = xor i1 %i.d, true
  %or.cond34.mux = select i1 %not., i1 true, i1 %or.cond34
  br i1 %brmerge, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIdEEbT_S4_S4_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26, !range !74, !noundef !76
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 3 uses
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29
  %.not.i.i.i = icmp ult i64 %i.r, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !28 ; 2 uses
  %i.t = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !62
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28, !nonnull !76, !noundef !76
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.w, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 1, i32 1)
  %i.z = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !29, !noalias !79
  %i.ai = and i64 %i.ah, 65535
  %i.aj = lshr i64 %i.af, 7
  %i.ak = xor i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.af to i8
  %i.am = and i8 %i.al, 127
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !28 ; 2 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i6.i = phi i64 [ %i.ak, %bb.g ], [ %i.bi, %bb.j ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.g ], [ %i.bh, %bb.j ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.o        ; 4 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.6.0.i.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !tbaa !28 ; 2 uses
  %i.at = icmp eq <16 x i8> %i.ap, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not45.i.i = icmp eq i16 %i.au, 0
  br i1 %.not45.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.sroa.017.046.i.i = phi i16 [ %i.be, %bb.i ], [ %i.au, %bb.h ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.6.0.i.i, %i.aw
  %i.ay = and i64 %i.ax, %i.o                     ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62
  %i.bb = icmp eq ptr %i.ba, %1
  br i1 %i.bb, label %.thread32.i.i, label %bb.i, !prof !82

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ay
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bd = add i16 %.sroa.017.046.i.i, -1
  %i.be = and i16 %i.bd, %.sroa.017.046.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.h
  %i.bf = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %.not43.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not43.i.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i, !prof !83

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bh = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.bi = add i64 %i.bh, %.sroa.6.0.i.i
  br label %bb.h, !llvm.loop !84

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread32.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.bc, %.thread32.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.az, %.thread32.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i ], [ %.fca.1.insert.i.i.i, %bb.f ], [ { ptr null, ptr undef }, %bb.e ], [ { ptr null, ptr undef }, %bb.d ] ; 2 uses
  %i.bj = extractvalue { ptr, ptr } %.pn.i, 0
  %.not39 = icmp eq ptr %i.bj, null
  br i1 %.not39, label %bb.k, label %.thread

.thread:                                          ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit
  %i.bk = extractvalue { ptr, ptr } %.pn.i, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit
  br i1 %i.l, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.thread, %bb.k
  %.132 = phi ptr [ %i.bl, %.thread ], [ %i.m, %bb.k ] ; 2 uses
  %i.bm = load double, ptr %.132, align 8, !tbaa !86
  %i.bn = getelementptr inbounds nuw i8, ptr %.132, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !87 ; 2 uses
  %i.bp = tail call double @llvm.fabs.f64(double %2) ; 3 uses
  %i.bq = fcmp ueq double %i.bp, +inf
  br i1 %i.bq, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIdEEbT_S4_S4_S4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = tail call double @llvm.fabs.f64(double %3) ; 3 uses
  %i.bs = fcmp ueq double %i.br, +inf
  br i1 %i.bs, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIdEEbT_S4_S4_S4_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = fcmp olt double %i.bp, %i.br
  %.sroa.speculated.i = select i1 %i.bt, double %i.br, double %i.bp
  %i.bu = fmul double %.sroa.speculated.i, %i.bm  ; 2 uses
  %i.bv = fsub double %2, %3
  %i.bw = tail call double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp olt double %i.bo, %i.bu
  %.sroa.speculated10.i = select i1 %i.bx, double %i.bu, double %i.bo
  %i.by = fcmp ole double %i.bw, %.sroa.speculated10.i
  br label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIdEEbT_S4_S4_S4_.exit

bb.o:                                             ; preds = %bb.k
  %i.bz = tail call double @llvm.fabs.f64(double %2) ; 4 uses
  %i.ca = fcmp ugt double %i.bz, f0x3D00000000000000
  %i.cb = tail call double @llvm.fabs.f64(double %3) ; 4 uses
  %i.cc = fcmp ugt double %i.cb, f0x3D00000000000000
  %or.cond = or i1 %i.ca, %i.cc
  br i1 %or.cond, label %bb.p, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIdEEbT_S4_S4_S4_.exit

bb.p:                                             ; preds = %bb.o
  %i.cd = fcmp ueq double %i.bz, +inf
  %i.ce = fcmp ueq double %i.cb, +inf
  %or.cond37 = or i1 %i.cd, %i.ce
  br i1 %or.cond37, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIdEEbT_S4_S4_S4_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = fcmp olt double %i.bz, %i.cb
  %.sroa.speculated.i23 = select i1 %i.cf, double %i.cb, double %i.bz
  %i.cg = fmul nnan double %.sroa.speculated.i23, f0x3D00000000000000 ; 2 uses
  %i.ch = fsub double %2, %3
  %i.ci = tail call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp ogt double %i.cg, f0x3D00000000000000
  %.sroa.speculated10.i24 = select i1 %i.cj, double %i.cg, double f0x3D00000000000000
  %i.ck = fcmp ole double %i.ci, %.sroa.speculated10.i24
  br label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIdEEbT_S4_S4_S4_.exit

_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIdEEbT_S4_S4_S4_.exit: ; preds = %bb.b, %bb.o, %bb.l, %bb.m, %bb.n, %bb.p, %bb.q, %bb.a
  %.119 = phi i1 [ %or.cond34.mux, %bb.b ], [ true, %bb.a ], [ false, %bb.p ], [ %i.ck, %bb.q ], [ true, %bb.o ], [ false, %bb.l ], [ %i.by, %bb.n ], [ false, %bb.m ]
  ret i1 %.119
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6google8protobuf4util21SimpleFieldComparator20CompareDoubleOrFloatIfEEbRKNS0_15FieldDescriptorET_S7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, float noundef %2, float noundef %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fcmp oeq float %2, %3
  br i1 %i.a, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIfEEbT_S4_S4_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !25, !range !74, !noundef !76
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = fcmp uno float %2, 0.000000e+00
  %or.cond = and i1 %i.h, %i.g
  %i.i = fcmp uno float %3, 0.000000e+00
  %or.cond32 = and i1 %i.i, %or.cond              ; 2 uses
  %brmerge = select i1 %i.d, i1 true, i1 %or.cond32
  %not. = xor i1 %i.d, true
  %or.cond32.mux = select i1 %not., i1 true, i1 %or.cond32
  br i1 %brmerge, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIfEEbT_S4_S4_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26, !range !74, !noundef !76
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 3 uses
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29
  %.not.i.i.i = icmp ult i64 %i.r, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !28 ; 2 uses
  %i.t = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !62
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28, !nonnull !76, !noundef !76
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.w, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 1, i32 1)
  %i.z = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !29, !noalias !88
  %i.ai = and i64 %i.ah, 65535
  %i.aj = lshr i64 %i.af, 7
  %i.ak = xor i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.af to i8
  %i.am = and i8 %i.al, 127
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !28 ; 2 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i6.i = phi i64 [ %i.ak, %bb.g ], [ %i.bi, %bb.j ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.g ], [ %i.bh, %bb.j ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.o        ; 4 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.6.0.i.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !tbaa !28 ; 2 uses
  %i.at = icmp eq <16 x i8> %i.ap, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not45.i.i = icmp eq i16 %i.au, 0
  br i1 %.not45.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.sroa.017.046.i.i = phi i16 [ %i.be, %bb.i ], [ %i.au, %bb.h ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.6.0.i.i, %i.aw
  %i.ay = and i64 %i.ax, %i.o                     ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62
  %i.bb = icmp eq ptr %i.ba, %1
  br i1 %i.bb, label %.thread32.i.i, label %bb.i, !prof !82

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ay
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bd = add i16 %.sroa.017.046.i.i, -1
  %i.be = and i16 %i.bd, %.sroa.017.046.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.h
  %i.bf = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %.not43.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not43.i.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i, !prof !83

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bh = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.bi = add i64 %i.bh, %.sroa.6.0.i.i
  br label %bb.h, !llvm.loop !84

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread32.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.bc, %.thread32.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.az, %.thread32.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i ], [ %.fca.1.insert.i.i.i, %bb.f ], [ { ptr null, ptr undef }, %bb.e ], [ { ptr null, ptr undef }, %bb.d ] ; 2 uses
  %i.bj = extractvalue { ptr, ptr } %.pn.i, 0
  %.not38 = icmp eq ptr %i.bj, null
  br i1 %.not38, label %bb.k, label %.thread

.thread:                                          ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit
  %i.bk = extractvalue { ptr, ptr } %.pn.i, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit
  br i1 %i.l, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.thread, %bb.k
  %.131 = phi ptr [ %i.bl, %.thread ], [ %i.m, %bb.k ] ; 2 uses
  %i.bm = load double, ptr %.131, align 8, !tbaa !86
  %i.bn = fptrunc double %i.bm to float
  %i.bo = getelementptr inbounds nuw i8, ptr %.131, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !87
  %i.bq = fptrunc double %i.bp to float           ; 2 uses
  %i.br = tail call float @llvm.fabs.f32(float %2) ; 3 uses
  %i.bs = fcmp ueq float %i.br, +inf
  br i1 %i.bs, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIfEEbT_S4_S4_S4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = tail call float @llvm.fabs.f32(float %3) ; 3 uses
  %i.bu = fcmp ueq float %i.bt, +inf
  br i1 %i.bu, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIfEEbT_S4_S4_S4_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = fcmp olt float %i.br, %i.bt
  %.sroa.speculated.i = select i1 %i.bv, float %i.bt, float %i.br
  %i.bw = fmul float %.sroa.speculated.i, %i.bn   ; 2 uses
  %i.bx = fsub float %2, %3
  %i.by = tail call noundef float @llvm.fabs.f32(float %i.bx)
  %i.bz = fcmp ogt float %i.bw, %i.bq
  %.sroa.speculated10.i = select i1 %i.bz, float %i.bw, float %i.bq
  %i.ca = fcmp ole float %i.by, %.sroa.speculated10.i
  br label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIfEEbT_S4_S4_S4_.exit

bb.o:                                             ; preds = %bb.k
  %i.cb = tail call float @llvm.fabs.f32(float %2) ; 4 uses
  %i.cc = fcmp ugt float %i.cb, f0x36800000
  %i.cd = tail call float @llvm.fabs.f32(float %3) ; 4 uses
  %i.ce = fcmp ugt float %i.cd, f0x36800000
  %or.cond36 = or i1 %i.cc, %i.ce
  br i1 %or.cond36, label %bb.p, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIfEEbT_S4_S4_S4_.exit

bb.p:                                             ; preds = %bb.o
  %i.cf = fcmp ueq float %i.cb, +inf
  %i.cg = fcmp ueq float %i.cd, +inf
  %or.cond56 = or i1 %i.cf, %i.cg
  br i1 %or.cond56, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIfEEbT_S4_S4_S4_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = fcmp olt float %i.cb, %i.cd
  %.sroa.speculated.i22 = select i1 %i.ch, float %i.cd, float %i.cb
  %i.ci = fmul nnan float %.sroa.speculated.i22, f0x36800000 ; 2 uses
  %i.cj = fsub float %2, %3
  %i.ck = tail call noundef float @llvm.fabs.f32(float %i.cj)
  %i.cl = fcmp ogt float %i.ci, f0x36800000
  %.sroa.speculated10.i23 = select i1 %i.cl, float %i.ci, float f0x36800000
  %i.cm = fcmp ole float %i.ck, %.sroa.speculated10.i23
  br label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIfEEbT_S4_S4_S4_.exit

_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIfEEbT_S4_S4_S4_.exit: ; preds = %bb.b, %bb.o, %bb.l, %bb.m, %bb.n, %bb.p, %bb.q, %bb.a
  %.119 = phi i1 [ %or.cond32.mux, %bb.b ], [ true, %bb.a ], [ false, %bb.p ], [ %i.cm, %bb.q ], [ true, %bb.o ], [ false, %bb.l ], [ %i.ca, %bb.n ], [ false, %bb.m ]
  ret i1 %.119
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #29
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

declare { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #7

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 1) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.58") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !62     ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.f = mul i64 %i.e, -2543921745674291987
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  %i.h = xor i64 %i.g, %i.d
  %i.i = mul i64 %i.h, -2543921745674291987
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29, !noalias !91
  %i.m = and i64 %i.l, 65535
  %i.n = load i64, ptr %1, align 8, !tbaa !27, !noalias !91 ; 3 uses
  %i.o = lshr i64 %i.j, 7
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i64 %i.j to i8
  %i.r = and i8 %i.q, 127
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !28 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.au, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.n                 ; 5 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !28 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.z, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ai, %.critedge ], [ %i.z, %bb.b ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.7.0, %i.ab
  %i.ad = and i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %.critedge20, label %.critedge, !prof !82

.critedge:                                        ; preds = %.lr.ph
  %i.ah = add i16 %.sroa.033.059, -1
  %i.ai = and i16 %i.ah, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ak, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !83

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !28, !nonnull !76, !noundef !76
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !71
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #18

declare noundef ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_6HashEqIPKN6google8protobuf15FieldDescriptorEvE4HashES8_EEmPKvPv(ptr noundef %0, ptr noundef %1) #5 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !62
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = xor i64 %i.e, %i.b
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  ret i64 %i.h
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm24EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #19 comdat {
bb.a:
  %i.a = mul i64 %3, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef %0, i64 noundef %1) #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !83

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #32
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSR_PFvSR_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !27     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !94

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bc, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = xor i64 %i.ag, %i.j                     ; 5 uses
  %i.ai = trunc i64 %i.af to i8
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %i.ak = sub i64 %i.w, %i.ah                     ; 2 uses
  %i.al = and i64 %i.k, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !prof !82

bb.d:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ak, 15
  %i.ao = add nuw nsw i64 %i.an, %i.ah
  %i.ap = and i64 %i.ao, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = and i64 %i.ah, %i.b
  %.not.i = icmp ult i64 %i.aq, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !82

bb.f:                                             ; preds = %bb.e
  %i.ar = and i64 %i.ah, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !28
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.av, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !83

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ar, %i.ax
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.aj, i64 noundef %i.w, i64 noundef %i.ah)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.ay, %bb.g ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.aj, ptr %i.az, align 1, !tbaa !95
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ba, ptr noundef nonnull align 1 dereferenceable(24) %i.x, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.bb = add i16 %.sroa.054.061, -1
  %i.bc = and i16 %i.bb, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #20

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #23

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
