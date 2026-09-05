Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/linked_hash_map_test?download=true
inline.NumInlined: 57403
inline.NumDeleted: 11627
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 207
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiZNS1_12_GLOBAL__N_144LinkedHashMapTest_CustomHashAndEquality_Test8TestBodyEvE13CustomIntHashZNSC_8TestBodyEvE11CustomIntEqSaIS7_EE7WrappedISD_EENSH_ISE_EESF_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSQ_PFvSQ_hmmE:bb.a
  %.val53.val = load i32, ptr %i.ac, align 4, !tbaa !264
  %i.ad = sext i32 %.val53.val to i64             ; 2 uses
  %i.ae = xor i64 %i.ab, %i.ad                    ; 5 uses
  %i.af = lshr i64 %i.ad, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8           ; 2 uses
  %i.ah = sub i64 %i.x, %i.ae                     ; 2 uses
  %i.ai = and i64 %i.i, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e, !prof !273

bb.d:                                             ; preds = %.lr.ph
  %i.ak = and i64 %i.ah, 15
  %i.al = add nsw i64 %i.ak, %i.ae
  %i.am = and i64 %i.al, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ae, %i.d
  %.not.i = icmp ult i64 %i.an, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !273

bb.f:                                             ; preds = %bb.e
  %i.ao = and i64 %i.ae, %i.c                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ao
  %i.aq = load <16 x i8>, ptr %i.ap, align 1, !tbaa !157
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = zext i16 %i.as to i32
  %i.au = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.at) #27, !srcloc !272 ; 2 uses
  %.not26.i = icmp eq i32 %i.au, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !269

bb.g:                                             ; preds = %bb.f
  %i.av = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.au, i1 true)
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add nuw i64 %i.ao, %i.aw
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ag, i64 noundef %i.x, i64 noundef %i.ae)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.ax, %bb.g ], [ %i.am, %bb.d ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ag, ptr %i.ay, align 1, !tbaa !275
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sink27.i
  %.val1.val.val.i = load i64, ptr %i.y, align 8
  store i64 %.val1.val.val.i, ptr %i.az, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = add i32 %.sroa.054.063, -1
  %i.bb = and i32 %i.ba, %.sroa.054.063           ; 2 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_15linked_hash_mapIiiZNS3_12_GLOBAL__N_144LinkedHashMapTest_CustomHashAndEquality_Test8TestBodyEvE13CustomIntHashZNS7_8TestBodyEvE11CustomIntEqSaISt4pairIKiiEEE7WrappedIS8_EEiLb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, i64 noundef %1) #26 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2225
  %.val.val = load i32, ptr %.val, align 4, !tbaa !264
  %i.b = sext i32 %.val.val to i64
  %i.c = xor i64 %1, %i.b
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_133LinkedHashMapTest_EqualRange_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_133LinkedHashMapTest_EqualRange_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_133LinkedHashMapTest_EqualRange_TestE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_133LinkedHashMapTest_EqualRange_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_133LinkedHashMapTest_EqualRange_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %1 = alloca %class.anon.167, align 8            ; 10 uses
  %2 = alloca %"class.absl::lts_20260526::linked_hash_map", align 8 ; 24 uses
  %3 = alloca [2 x %"struct.std::pair.114"], align 16 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.431", align 8 ; 6 uses
  %6 = alloca %"struct.std::pair.433", align 8    ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.435", align 8 ; 6 uses
  %11 = alloca %"struct.std::pair.437", align 8   ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.431", align 8 ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %16 = alloca %"struct.std::pair.433", align 8   ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.435", align 8 ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %21 = alloca %"struct.std::pair.437", align 8   ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store <4 x i32> <i32 3, i32 11, i32 1, i32 13>, ptr %3, align 16, !tbaa !264
  store i64 1, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 22 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.j, ptr %i.k, align 8, !tbaa !187
  store ptr %i.j, ptr %i.j, align 8, !tbaa !188
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.l, align 8, !tbaa !190
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %i.a, ptr %1, align 8, !tbaa !196
  store ptr %2, ptr %i.m, align 8, !tbaa !288
  store ptr %3, ptr %i.n, align 8, !tbaa !201
  %i.o = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaIS7_EE7WrappedISD_EENSI_ISF_EESG_EE12lazy_emplaceIiZNSH_14InsertInternalIRKS7_EES5_IS8_bEOT_EUlRKSR_E_EENSL_8iteratorESU_OT0_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc.i.i unwind label %.body ; 0 uses

.noexc.i.i:                                       ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %i.a, ptr %1, align 8, !tbaa !196
  store ptr %2, ptr %i.m, align 8, !tbaa !288
  store ptr %i.p, ptr %i.n, align 8, !tbaa !201
  %i.q = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaIS7_EE7WrappedISD_EENSI_ISF_EESG_EE12lazy_emplaceIiZNSH_14InsertInternalIRKS7_EES5_IS8_bEOT_EUlRKSR_E_EENSL_8iteratorESU_OT0_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc.i.i.1 unwind label %.body ; 0 uses

.noexc.i.i.1:                                     ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store ptr %i.j, ptr %5, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.j, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 2, ptr %i.b, align 4, !tbaa !264
  %i.s = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaIS7_EE7WrappedISD_EENSI_ISF_EESG_EE4findIiEENSL_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc unwind label %bb.d     ; 2 uses

.body:                                            ; preds = %.noexc.i.i, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.ca

.noexc:                                           ; preds = %.noexc.i.i.1
  %i.u = extractvalue { ptr, ptr } %i.s, 0
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %.noexc
  %i.w = extractvalue { ptr, ptr } %i.s, 1
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !271 ; 2 uses
  %i.x = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !188
  br label %bb.b

bb.b:                                             ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %.noexc
  %.sroa.08.0.i = phi ptr [ %.sroa.0.0.copyload.i, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.j, %.noexc ]
  %.sroa.3.0.i = phi ptr [ %i.x, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.j, %.noexc ]
  store ptr %.sroa.08.0.i, ptr %6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.3.0.i, ptr %i.y, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_11PairMatcherISt14_List_iteratorISt4pairIKiiEES7_EEEclIS4_IS7_S7_EEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.362, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.z = load i8, ptr %4, align 8, !tbaa !209, !range !148, !noundef !149
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.n, label %bb.e

bb.d:                                             ; preds = %.noexc.i.i.1, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !210 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.g, %bb.f
  %i.af = phi ptr [ %i.ae, %bb.g ], [ @.str.261, %bb.f ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.124, i32 noundef 568, ptr noundef %i.af)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.ag = load ptr, ptr %7, align 8, !tbaa !212   ; 3 uses
  %.not.i.i74 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i74, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit77

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn44 = phi { ptr, i32 } [ %i.am, %bb.l ], [ %i.al, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.an = load ptr, ptr %7, align 8, !tbaa !212   ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.an, null
  br i1 %.not.i.i75, label %_ZN7testing7MessageD2Ev.exit77, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76: ; preds = %bb.m
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !169
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(128) %i.an) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit77

_ZN7testing7MessageD2Ev.exit77:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76, %bb.m, %bb.j
  %.pn44.pn = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %.pn44, %bb.m ], [ %.pn44, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  br label %bb.s

bb.n:                                             ; preds = %bb.c, %_ZN7testing7MessageD2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !210 ; 4 uses
  %.not.i.i78 = icmp eq ptr %i.as, null
  br i1 %.not.i.i78, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !154 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !157
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 32) #40
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.j, ptr %10, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.j, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 2, ptr %i.c, align 4, !tbaa !264
  %i.az = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaIS7_EE7WrappedISD_EENSI_ISF_EESG_EE4findIiEENSL_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc89 unwind label %bb.t   ; 2 uses

.noexc89:                                         ; preds = %bb.p
  %i.ba = extractvalue { ptr, ptr } %i.az, 0
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i

_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i: ; preds = %.noexc89
  %i.bc = extractvalue { ptr, ptr } %i.az, 1
  %.sroa.0.0.copyload.i83 = load ptr, ptr %i.bc, align 8, !tbaa !271 ; 2 uses
  %i.bd = load ptr, ptr %.sroa.0.0.copyload.i83, align 8, !tbaa !188
  br label %bb.q

bb.q:                                             ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, %.noexc89
  %.sroa.08.0.i85 = phi ptr [ %.sroa.0.0.copyload.i83, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i ], [ %i.j, %.noexc89 ]
  %.sroa.3.0.i86 = phi ptr [ %i.bd, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i ], [ %i.j, %.noexc89 ]
  store ptr %.sroa.08.0.i85, ptr %11, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.sroa.3.0.i86, ptr %i.be, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_11PairMatcherISt20_List_const_iteratorISt4pairIKiiEES7_EEEclIS4_IS7_S7_EEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.363, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.bf = load i8, ptr %9, align 8, !tbaa !209, !range !148, !noundef !149
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.ad, label %bb.u

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit77, %bb.d
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZN7testing7MessageD2Ev.exit77 ], [ %i.ab, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.bz

bb.t:                                             ; preds = %bb.p, %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.ak

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !210 ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i90, label %_ZNK7testing15AssertionResult15failure_messageEv.exit91, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit91

_ZNK7testing15AssertionResult15failure_messageEv.exit91: ; preds = %bb.w, %bb.v
  %i.bl = phi ptr [ %i.bk, %bb.w ], [ @.str.261, %bb.v ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.124, i32 noundef 570, ptr noundef %i.bl)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit91
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.bm = load ptr, ptr %12, align 8, !tbaa !212  ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i92, label %_ZN7testing7MessageD2Ev.exit94, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.y
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !169
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(128) %i.bm) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit94

_ZN7testing7MessageD2Ev.exit94:                   ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.ad

bb.z:                                             ; preds = %bb.u
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit97

bb.aa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit91
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn50 = phi { ptr, i32 } [ %i.bs, %bb.ab ], [ %i.br, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.bt = load ptr, ptr %12, align 8, !tbaa !212  ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i95, label %_ZN7testing7MessageD2Ev.exit97, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96: ; preds = %bb.ac
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !169
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(128) %i.bt) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit97

_ZN7testing7MessageD2Ev.exit97:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96, %bb.ac, %bb.z
  %.pn50.pn = phi { ptr, i32 } [ %i.bq, %bb.z ], [ %.pn50, %bb.ac ], [ %.pn50, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.ak

bb.ad:                                            ; preds = %bb.r, %_ZN7testing7MessageD2Ev.exit94
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !210 ; 4 uses
  %.not.i.i98 = icmp eq ptr %i.by, null
  br i1 %.not.i.i98, label %_ZN7testing15AssertionResultD2Ev.exit102, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !154 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99: ; preds = %bb.ae
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !157
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit102

_ZN7testing15AssertionResultD2Ev.exit102:         ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i32 1, ptr %i.d, align 4, !tbaa !264
  %i.ce = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaIS7_EE7WrappedISD_EENSI_ISF_EESG_EE4findIiEENSL_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc104 unwind label %bb.al ; 2 uses

.noexc104:                                        ; preds = %_ZN7testing15AssertionResultD2Ev.exit102
  %i.cf = extractvalue { ptr, ptr } %i.ce, 0
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiiEEE4findIiEESt14_List_iteratorIS9_ERS8_.exit, label %bb.af

bb.af:                                            ; preds = %.noexc104
  %i.ch = extractvalue { ptr, ptr } %i.ce, 1
  %.sroa.0.0.copyload.i103 = load ptr, ptr %i.ch, align 8, !tbaa !271
  br label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiiEEE4findIiEESt14_List_iteratorIS9_ERS8_.exit

_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiiEEE4findIiEESt14_List_iteratorIS9_ERS8_.exit: ; preds = %bb.af, %.noexc104
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i103, %bb.af ], [ %i.j, %.noexc104 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store i32 1, ptr %i.e, align 4, !tbaa !264
  %i.ci = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaIS7_EE7WrappedISD_EENSI_ISF_EESG_EE4findIiEENSL_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc107 unwind label %bb.am ; 2 uses

.noexc107:                                        ; preds = %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiiEEE4findIiEESt14_List_iteratorIS9_ERS8_.exit
  %i.cj = extractvalue { ptr, ptr } %i.ci, 0
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.noexc107
  %i.cl = extractvalue { ptr, ptr } %i.ci, 1
  %.sroa.0.0.copyload.i105 = load ptr, ptr %i.cl, align 8, !tbaa !271
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.noexc107
  %.sroa.0.0.i106 = phi ptr [ %.sroa.0.0.copyload.i105, %bb.ag ], [ %i.j, %.noexc107 ]
  %i.cm = load ptr, ptr %.sroa.0.0.i106, align 8, !tbaa !188
  store ptr %.sroa.0.0.i, ptr %15, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.cm, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store i32 1, ptr %i.f, align 4, !tbaa !264
  %i.co = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaIS7_EE7WrappedISD_EENSI_ISF_EESG_EE4findIiEENSL_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.noexc119 unwind label %bb.an ; 2 uses

.noexc119:                                        ; preds = %bb.ah
  %i.cp = extractvalue { ptr, ptr } %i.co, 0
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.ai, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i113

_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i113: ; preds = %.noexc119
  %i.cr = extractvalue { ptr, ptr } %i.co, 1
  %.sroa.0.0.copyload.i114 = load ptr, ptr %i.cr, align 8, !tbaa !271 ; 2 uses
  %i.cs = load ptr, ptr %.sroa.0.0.copyload.i114, align 8, !tbaa !188
  br label %bb.ai

bb.ai:                                            ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i113, %.noexc119
  %.sroa.08.0.i115 = phi ptr [ %.sroa.0.0.copyload.i114, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i113 ], [ %i.j, %.noexc119 ]
  %.sroa.3.0.i116 = phi ptr [ %i.cs, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i113 ], [ %i.j, %.noexc119 ]
  store ptr %.sroa.08.0.i115, ptr %16, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.sroa.3.0.i116, ptr %i.ct, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_11PairMatcherISt14_List_iteratorISt4pairIKiiEES7_EEEclIS4_IS7_S7_EEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @.str.364, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.cu = load i8, ptr %14, align 8, !tbaa !209, !range !148, !noundef !149
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.az, label %bb.aq

bb.ak:                                            ; preds = %_ZN7testing7MessageD2Ev.exit97, %bb.t
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %_ZN7testing7MessageD2Ev.exit97 ], [ %i.bh, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.bz

bb.al:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit102
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.am:                                            ; preds = %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiiEEE4findIiEESt14_List_iteratorIS9_ERS8_.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ah, %bb.ai
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn54 = phi { ptr, i32 } [ %i.cy, %bb.an ], [ %i.cx, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.ao ], [ %i.cw, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.bg

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !210 ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.da, null
  br i1 %.not.i.i121, label %_ZNK7testing15AssertionResult15failure_messageEv.exit122, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit122

_ZNK7testing15AssertionResult15failure_messageEv.exit122: ; preds = %bb.as, %bb.ar
  %i.dc = phi ptr [ %i.db, %bb.as ], [ @.str.261, %bb.ar ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.124, i32 noundef 572, ptr noundef %i.dc)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit122
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.dd = load ptr, ptr %17, align 8, !tbaa !212  ; 3 uses
  %.not.i.i123 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i123, label %_ZN7testing7MessageD2Ev.exit125, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124: ; preds = %bb.au
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !169
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(128) %i.dd) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit125

_ZN7testing7MessageD2Ev.exit125:                  ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.az

bb.av:                                            ; preds = %bb.aq
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit128

bb.aw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit122
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn57 = phi { ptr, i32 } [ %i.dj, %bb.ax ], [ %i.di, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.dk = load ptr, ptr %17, align 8, !tbaa !212  ; 3 uses
  %.not.i.i126 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i126, label %_ZN7testing7MessageD2Ev.exit128, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127: ; preds = %bb.ay
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !169
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(128) %i.dk) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit128

_ZN7testing7MessageD2Ev.exit128:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127, %bb.ay, %bb.av
  %.pn57.pn = phi { ptr, i32 } [ %i.dh, %bb.av ], [ %.pn57, %bb.ay ], [ %.pn57, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #37
  br label %bb.bg

bb.az:                                            ; preds = %bb.aj, %_ZN7testing7MessageD2Ev.exit125
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !210 ; 4 uses
  %.not.i.i129 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i129, label %_ZN7testing15AssertionResultD2Ev.exit133, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !154 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i130: ; preds = %bb.ba
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !157
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i130
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit133

_ZN7testing15AssertionResultD2Ev.exit133:         ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store i32 1, ptr %i.g, align 4, !tbaa !264
  %i.dv = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaIS7_EE7WrappedISD_EENSI_ISF_EESG_EE4findIiEENSL_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %.noexc134 unwind label %bb.bh ; 2 uses

.noexc134:                                        ; preds = %_ZN7testing15AssertionResultD2Ev.exit133
  %i.dw = extractvalue { ptr, ptr } %i.dv, 0
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZNK4absl12lts_2026052615linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiiEEE4findIiEESt20_List_const_iteratorIS9_ERS8_.exit, label %bb.bb

bb.bb:                                            ; preds = %.noexc134
  %i.dy = extractvalue { ptr, ptr } %i.dv, 1
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !359
  br label %_ZNK4absl12lts_2026052615linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiiEEE4findIiEESt20_List_const_iteratorIS9_ERS8_.exit

_ZNK4absl12lts_2026052615linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiiEEE4findIiEESt20_List_const_iteratorIS9_ERS8_.exit: ; preds = %bb.bb, %.noexc134
  %.sroa.04.0.i = phi ptr [ %i.dz, %bb.bb ], [ %i.j, %.noexc134 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  store i32 1, ptr %i.h, align 4, !tbaa !264
  %i.ea = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaIS7_EE7WrappedISD_EENSI_ISF_EESG_EE4findIiEENSL_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %.noexc136 unwind label %bb.bi ; 2 uses

.noexc136:                                        ; preds = %_ZNK4absl12lts_2026052615linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiiEEE4findIiEESt20_List_const_iteratorIS9_ERS8_.exit
  %i.eb = extractvalue { ptr, ptr } %i.ea, 0
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.noexc136
  %i.ed = extractvalue { ptr, ptr } %i.ea, 1
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !359
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.noexc136
  %.sroa.04.0.i135 = phi ptr [ %i.ee, %bb.bc ], [ %i.j, %.noexc136 ]
  %i.ef = load ptr, ptr %.sroa.04.0.i135, align 8, !tbaa !188
  store ptr %.sroa.04.0.i, ptr %20, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.ef, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #37
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_141LinkedHashMapTest_HeterogeneousTests_Test8TestBodyEv:bb.a
  br label %bb.it

bb.io:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i654, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #37
  %.pr = load ptr, ptr %i.vd, align 8, !tbaa !210 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.wg = load ptr, ptr %.pr, align 8, !tbaa !154 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.wi = icmp eq ptr %i.wg, %i.wh
  br i1 %i.wi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ip
  %i.wj = load i64, ptr %i.wh, align 8, !tbaa !157
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wk) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %bb.ib, %bb.io, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #37
  store i32 1, ptr %i.ai, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #37
  store i32 2, ptr %71, align 4, !tbaa !457
  %i.wl = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_13ExpensiveTypeEiEEEEJNS0_15linked_hash_mapIS6_iNS1_17HeterogeneousHashENS1_18HeterogeneousEqualESaIS8_EE7WrappedISC_EENSG_ISD_EESE_EE4findINS1_9CheapTypeEEENSJ_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 4 dereferenceable(4) %71)
          to label %bb.iq unwind label %bb.iu

bb.iq:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  %i.wm = extractvalue { ptr, ptr } %i.wl, 0
  %i.wn = icmp ne ptr %i.wm, null
  %i.wo = zext i1 %i.wn to i64                    ; 2 uses
  store i64 %i.wo, ptr %i.aj, align 8, !tbaa !156
  %i.wp = load i32, ptr %i.ai, align 4, !tbaa !264, !noalias !2761
  %i.wq = sext i32 %i.wp to i64
  %i.wr = icmp eq i64 %i.wo, %i.wq
  br i1 %i.wr, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %70)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.iu

bb.is:                                            ; preds = %bb.iq
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %70, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.385, ptr noundef nonnull align 4 dereferenceable(4) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.iu

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ir, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #37
  %i.ws = load i8, ptr %70, align 8, !tbaa !209, !range !148, !noundef !149
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %bb.je, label %bb.iv

bb.it:                                            ; preds = %_ZN7testing7MessageD2Ev.exit661, %bb.id
  %.pn272.pn.pn.pn = phi { ptr, i32 } [ %.pn272.pn.pn, %_ZN7testing7MessageD2Ev.exit661 ], [ %i.vf, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #37
  br label %bb.zt

bb.iu:                                            ; preds = %bb.is, %bb.ir, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  %i.wu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #37
  br label %bb.jj

bb.iv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %72)
          to label %bb.iw unwind label %bb.ja

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #37
  %i.wv = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !210 ; 2 uses
  %.not.i.i665 = icmp eq ptr %i.ww, null
  br i1 %.not.i.i665, label %_ZNK7testing15AssertionResult15failure_messageEv.exit666, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit666

_ZNK7testing15AssertionResult15failure_messageEv.exit666: ; preds = %bb.ix, %bb.iw
  %i.wy = phi ptr [ %i.wx, %bb.ix ], [ @.str.261, %bb.iw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %73, i32 noundef 1, ptr noundef nonnull @.str.124, i32 noundef 665, ptr noundef %i.wy)
          to label %bb.iy unwind label %bb.jb

bb.iy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit666
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef nonnull align 8 dereferenceable(8) %72)
          to label %bb.iz unwind label %bb.jc

bb.iz:                                            ; preds = %bb.iy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #37
  %i.wz = load ptr, ptr %72, align 8, !tbaa !212  ; 3 uses
  %.not.i.i667 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i667, label %_ZN7testing7MessageD2Ev.exit669, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i668

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i668: ; preds = %bb.iz
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !169
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8
  call void %i.xc(ptr noundef nonnull align 8 dereferenceable(128) %i.wz) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit669

_ZN7testing7MessageD2Ev.exit669:                  ; preds = %bb.iz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i668
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #37
  br label %bb.je

bb.ja:                                            ; preds = %bb.iv
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit672

bb.jb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit666
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %bb.jd

bb.jc:                                            ; preds = %bb.iy
  %i.xf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #37
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %.pn277 = phi { ptr, i32 } [ %i.xf, %bb.jc ], [ %i.xe, %bb.jb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #37
  %i.xg = load ptr, ptr %72, align 8, !tbaa !212  ; 3 uses
  %.not.i.i670 = icmp eq ptr %i.xg, null
  br i1 %.not.i.i670, label %_ZN7testing7MessageD2Ev.exit672, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i671

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i671: ; preds = %bb.jd
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !169
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xj = load ptr, ptr %i.xi, align 8
  call void %i.xj(ptr noundef nonnull align 8 dereferenceable(128) %i.xg) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit672

_ZN7testing7MessageD2Ev.exit672:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i671, %bb.jd, %bb.ja
  %.pn277.pn = phi { ptr, i32 } [ %i.xd, %bb.ja ], [ %.pn277, %bb.jd ], [ %.pn277, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i671 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %70) #37
  br label %bb.jj

bb.je:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit669
  %i.xk = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !210 ; 4 uses
  %.not.i.i673 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i673, label %_ZN7testing15AssertionResultD2Ev.exit677, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !154 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 16 ; 2 uses
  %i.xo = icmp eq ptr %i.xm, %i.xn
  br i1 %i.xo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i675, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i674

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i674: ; preds = %bb.jf
  %i.xp = load i64, ptr %i.xn, align 8, !tbaa !157
  %i.xq = add i64 %i.xp, 1
  call void @_ZdlPvm(ptr noundef %i.xm, i64 noundef %i.xq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i675

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i675: ; preds = %bb.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i674
  call void @_ZdlPvm(ptr noundef nonnull %i.xl, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit677

_ZN7testing15AssertionResultD2Ev.exit677:         ; preds = %bb.je, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i675
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #37
  store i32 2, ptr %75, align 4, !tbaa !457
  %i.xr = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_13ExpensiveTypeEiEEEEJNS0_15linked_hash_mapIS6_iNS1_17HeterogeneousHashENS1_18HeterogeneousEqualESaIS8_EE7WrappedISC_EENSG_ISD_EESE_EE4findINS1_9CheapTypeEEENSJ_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 4 dereferenceable(4) %75)
          to label %.noexc681 unwind label %bb.jk ; 2 uses

.noexc681:                                        ; preds = %_ZN7testing15AssertionResultD2Ev.exit677
  %i.xs = extractvalue { ptr, ptr } %i.xr, 0
  %i.xt = icmp eq ptr %i.xs, null
  br i1 %i.xt, label %.thread1229, label %bb.jg

.thread1229:                                      ; preds = %.noexc681
  store ptr %i.co, ptr %74, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %74, i64 8
  store ptr %i.co, ptr %i.xu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #37
  store ptr %i.co, ptr %77, align 8
  br label %bb.ji

bb.jg:                                            ; preds = %.noexc681
  %i.xv = extractvalue { ptr, ptr } %i.xr, 1
  %.sroa.0.0.copyload.i678 = load ptr, ptr %i.xv, align 8, !tbaa !271 ; 3 uses
  %i.xw = load ptr, ptr %.sroa.0.0.copyload.i678, align 8, !tbaa !188
  store ptr %.sroa.0.0.copyload.i678, ptr %74, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %74, i64 8
  store ptr %i.xw, ptr %i.xx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #37
  store ptr %i.co, ptr %77, align 8
  %.not.i682 = icmp eq ptr %.sroa.0.0.copyload.i678, %i.co
  br i1 %.not.i682, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %76)
          to label %_ZN7testing8internal11CmpHelperNEISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal13ExpensiveTypeEiEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_.exit685 unwind label %bb.jl

bb.ji:                                            ; preds = %.thread1229, %bb.jg
  invoke void @_ZN7testing8internal18CmpHelperOpFailureISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal13ExpensiveTypeEiEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_SD_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %76, ptr noundef nonnull @.str.386, ptr noundef nonnull @.str.382, ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef nonnull @.str.392)
          to label %_ZN7testing8internal11CmpHelperNEISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal13ExpensiveTypeEiEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_.exit685 unwind label %bb.jl

_ZN7testing8internal11CmpHelperNEISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal13ExpensiveTypeEiEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_.exit685: ; preds = %bb.jh, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #37
  %i.xy = load i8, ptr %76, align 8, !tbaa !209, !range !148, !noundef !149
  %i.xz = trunc nuw i8 %i.xy to i1
  br i1 %i.xz, label %.critedge414, label %bb.jm

bb.jj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit672, %bb.iu
  %.pn277.pn.pn = phi { ptr, i32 } [ %.pn277.pn, %_ZN7testing7MessageD2Ev.exit672 ], [ %i.wu, %bb.iu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #37
  br label %bb.zt

bb.jk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit677
  %i.ya = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #37
  br label %bb.zs

bb.jl:                                            ; preds = %bb.ji, %bb.jh
  %i.yb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #37
  br label %bb.ka

bb.jm:                                            ; preds = %_ZN7testing8internal11CmpHelperNEISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal13ExpensiveTypeEiEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_.exit685
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %78)
          to label %bb.jn unwind label %bb.js

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #37
  %i.yc = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !210 ; 2 uses
  %.not.i.i686 = icmp eq ptr %i.yd, null
  br i1 %.not.i.i686, label %_ZNK7testing15AssertionResult15failure_messageEv.exit687, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit687

_ZNK7testing15AssertionResult15failure_messageEv.exit687: ; preds = %bb.jo, %bb.jn
  %i.yf = phi ptr [ %i.ye, %bb.jo ], [ @.str.261, %bb.jn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %79, i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 668, ptr noundef %i.yf)
          to label %bb.jp unwind label %bb.jt

bb.jp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit687
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull align 8 dereferenceable(8) %78)
          to label %bb.jq unwind label %bb.ju

bb.jq:                                            ; preds = %bb.jp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %79) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #37
  %i.yg = load ptr, ptr %78, align 8, !tbaa !212  ; 3 uses
  %.not.i.i688 = icmp eq ptr %i.yg, null
  br i1 %.not.i.i688, label %_ZN7testing7MessageD2Ev.exit690, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i689

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i689: ; preds = %bb.jq
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !169
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %i.yj = load ptr, ptr %i.yi, align 8
  call void %i.yj(ptr noundef nonnull align 8 dereferenceable(128) %i.yg) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit690

_ZN7testing7MessageD2Ev.exit690:                  ; preds = %bb.jq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i689
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #37
  %i.yk = load ptr, ptr %i.yc, align 8, !tbaa !210 ; 4 uses
  %.not.i.i691 = icmp eq ptr %i.yk, null
  br i1 %.not.i.i691, label %_ZN7testing15AssertionResultD2Ev.exit695, label %bb.jr

bb.jr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit690
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !154 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 16 ; 2 uses
  %i.yn = icmp eq ptr %i.yl, %i.ym
  br i1 %i.yn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i693, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i692

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i692: ; preds = %bb.jr
  %i.yo = load i64, ptr %i.ym, align 8, !tbaa !157
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.yl, i64 noundef %i.yp) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i693

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i693: ; preds = %bb.jr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i692
  call void @_ZdlPvm(ptr noundef nonnull %i.yk, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit695

_ZN7testing15AssertionResultD2Ev.exit695:         ; preds = %_ZN7testing7MessageD2Ev.exit690, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i693
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #37
  br label %bb.zd

bb.js:                                            ; preds = %bb.jm
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit698

bb.jt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit687
  %i.yr = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.ju:                                            ; preds = %bb.jp
  %i.ys = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %79) #37
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %.pn281 = phi { ptr, i32 } [ %i.ys, %bb.ju ], [ %i.yr, %bb.jt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #37
  %i.yt = load ptr, ptr %78, align 8, !tbaa !212  ; 3 uses
  %.not.i.i696 = icmp eq ptr %i.yt, null
  br i1 %.not.i.i696, label %_ZN7testing7MessageD2Ev.exit698, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i697

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i697: ; preds = %bb.jv
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !169
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.yw = load ptr, ptr %i.yv, align 8
  call void %i.yw(ptr noundef nonnull align 8 dereferenceable(128) %i.yt) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit698

_ZN7testing7MessageD2Ev.exit698:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i697, %bb.jv, %bb.js
  %.pn281.pn = phi { ptr, i32 } [ %i.yq, %bb.js ], [ %.pn281, %bb.jv ], [ %.pn281, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i697 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #37
  br label %bb.ka

.critedge414:                                     ; preds = %_ZN7testing8internal11CmpHelperNEISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal13ExpensiveTypeEiEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_.exit685
  %i.yx = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !210 ; 4 uses
  %.not.i.i699 = icmp eq ptr %i.yy, null
  br i1 %.not.i.i699, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %.critedge414
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !154 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 16 ; 2 uses
  %i.zb = icmp eq ptr %i.yz, %i.za
  br i1 %i.zb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i701, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i700

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i700: ; preds = %bb.jw
  %i.zc = load i64, ptr %i.za, align 8, !tbaa !157
  %i.zd = add i64 %i.zc, 1
  call void @_ZdlPvm(ptr noundef %i.yz, i64 noundef %i.zd) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i701

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i701: ; preds = %bb.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i700
  call void @_ZdlPvm(ptr noundef nonnull %i.yy, i64 noundef 32) #40
  br label %bb.jx

bb.jx:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i701, %.critedge414
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #37
  store i32 20, ptr %i.ak, align 4, !tbaa !264
  %i.ze = load ptr, ptr %74, align 8, !tbaa !2759
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 24 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !264, !noalias !2762
  %i.zh = icmp eq i32 %i.zg, 20
  br i1 %i.zh, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %80)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit706 unwind label %bb.kb

bb.jz:                                            ; preds = %bb.jx
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %80, ptr noundef nonnull @.str.387, ptr noundef nonnull @.str.388, ptr noundef nonnull align 4 dereferenceable(4) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.zf)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit706 unwind label %bb.kb

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit706: ; preds = %bb.jy, %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #37
  %i.zi = load i8, ptr %80, align 8, !tbaa !209, !range !148, !noundef !149
  %i.zj = trunc nuw i8 %i.zi to i1
  br i1 %i.zj, label %bb.kl, label %bb.kc

bb.ka:                                            ; preds = %_ZN7testing7MessageD2Ev.exit698, %bb.jl
  %.pn281.pn.pn = phi { ptr, i32 } [ %.pn281.pn, %_ZN7testing7MessageD2Ev.exit698 ], [ %i.yb, %bb.jl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #37
  br label %bb.zs

bb.kb:                                            ; preds = %bb.jz, %bb.jy
  %i.zk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #37
  br label %bb.kp
end_hunk_1
begin_hunk_2_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal10LookupTestENS0_11TemplateSelINS4_23gtest_suite_LookupTest_10EqualRangeEEENS0_5TypesINS3_15linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSH_iEEEEEJNSB_INS4_4EnumESH_SI_SJ_NSK_ISL_IKSQ_SH_EEEEENSB_INS4_9EnumClassEiSI_SJ_NSK_ISL_IKSV_iEEEEENSB_IiNS4_17NonStandardLayoutESI_SJ_NSK_ISL_IKiS10_EEEEENSB_IS10_iSI_SJ_NSK_ISL_IKS10_iEEEEEEEEE8RegisterEPKcNS0_12CodeLocationES1C_S1C_iRKSt6vectorISH_SaISH_EE:bb.a
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

_ZN7testing8internal12CodeLocationD2Ev.exit115:   ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113 ], [ %i.if, %bb.ap ]
  resume { ptr, i32 } %.pn31
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.1190, align 8           ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.anon.1637, align 8           ; 6 uses
  %3 = alloca %"struct.absl::lts_20260526::container_internal::Generator", align 1 ; 3 uses
  %4 = alloca %"class.absl::lts_20260526::linked_hash_map.1173", align 8 ; 20 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i, %bb.a
  %.sroa.0167.1 = phi ptr [ null, %bb.a ], [ %.sroa.0167.2, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i ] ; 8 uses
  %.sroa.11.0 = phi ptr [ null, %bb.a ], [ %.sroa.11.1, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i ] ; 8 uses
  %.sroa.18.1 = phi ptr [ null, %bb.a ], [ %.sroa.18.2, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i ] ; 3 uses
  %.05.i = phi i32 [ 10, %bb.a ], [ %i.w, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i ] ; 2 uses
  %i.f = invoke i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %.loopexit187 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %.sroa.11.0, %.sroa.18.1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  store i64 %i.f, ptr %.sroa.11.0, align 4
  br label %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i

bb.d:                                             ; preds = %.noexc
  %i.g = ptrtoint ptr %.sroa.11.0 to i64
  %i.h = ptrtoint ptr %.sroa.0167.1 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775800
  br i1 %i.j, label %bb.e, label %_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #39
          to label %.noexc81 unwind label %.loopexit.split-lp

.noexc81:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %i.k = ashr exact i64 %i.i, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = call i64 @llvm.umin.i64(i64 %i.l, i64 1152921504606846975)
  %i.o = select i1 %i.m, i64 1152921504606846975, i64 %i.n ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.o, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #42
          to label %.noexc82 unwind label %.loopexit187 ; 5 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  store i64 %i.f, ptr %i.r, align 4
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0167.1, %.sroa.11.0
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc82, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.q, %.noexc82 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0167.1, %.noexc82 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12704)
  call void @llvm.experimental.noalias.scope.decl(metadata !12705)
  %i.s = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 4, !alias.scope !12705, !noalias !12704
  store i64 %i.s, ptr %.012.i.i.i.i.i.i.i.i, align 4, !alias.scope !12704, !noalias !12705
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %.sroa.11.0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !74

_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc82
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %.noexc82 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i.i = icmp eq ptr %.sroa.0167.1, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0167.1, i64 noundef %i.i) #40
  br label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  br label %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i

_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i: ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.c
  %.sroa.0167.2 = phi ptr [ %i.q, %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0167.1, %bb.c ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %.sroa.11.0, %bb.c ] ; 4 uses
  %.sroa.18.2 = phi ptr [ %i.v, %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %.sroa.18.1, %bb.c ] ; 3 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.w = add nsw i32 %.05.i, -1
  %i.x = icmp samesign ugt i32 %.05.i, 1
  br i1 %i.x, label %bb.b, label %bb.g, !llvm.loop !121

bb.g:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.y = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156 ; 2 uses
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156
  %i.aa = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156 ; 2 uses
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156
  store i64 1, ptr %4, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.y, ptr %i.ac, align 8, !tbaa !641
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.aa, ptr %i.ad, align 8, !tbaa !643
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !187
  store ptr %i.af, ptr %i.af, align 8, !tbaa !188
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 0, ptr %i.ah, align 8, !tbaa !190
  %.not199 = icmp eq ptr %.sroa.0167.2, %.sroa.11.1
  br i1 %.not199, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.h

.loopexit187:                                     ; preds = %bb.b, %_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.1, %bb.b ], [ %.sroa.11.0, %_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.h:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.0164.0200 = phi ptr [ %.sroa.0167.2, %.lr.ph ], [ %i.bu, %bb.v ] ; 3 uses
  %i.aj = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE4findIiEENSJ_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0164.0200)
          to label %.noexc83 unwind label %bb.i   ; 2 uses

.noexc83:                                         ; preds = %bb.h
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.preheader.i.i, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %.noexc83
  %i.am = extractvalue { ptr, ptr } %i.aj, 1
  %.sroa.0.0.copyload.i = load ptr, ptr %i.am, align 8, !tbaa !271 ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !188
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %.noexc83
  %.sroa.08.0.i = phi ptr [ %.sroa.0.0.copyload.i, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.af, %.noexc83 ] ; 2 uses
  %.sroa.3.0.i = phi ptr [ %i.an, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.af, %.noexc83 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 0, ptr %i.b, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %.not13.i.i = icmp eq ptr %.sroa.08.0.i, %.sroa.3.0.i
  br i1 %.not13.i.i, label %_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit80.thread, label %.lr.ph.i.i

_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit80.thread: ; preds = %.preheader.i.i
  store i64 0, ptr %i.c, align 8, !tbaa !156
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.j

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.ap, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.sroa.010.014.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.sroa.08.0.i, %.preheader.i.i ]
  %i.ao = load ptr, ptr %.sroa.010.014.i.i, align 8, !tbaa !188 ; 2 uses
  %i.ap = add nuw nsw i64 %.015.i.i, 1            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %.sroa.3.0.i
  br i1 %.not.i.i, label %_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit80.thread183, label %.lr.ph.i.i, !llvm.loop !12699

_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit80.thread183: ; preds = %.lr.ph.i.i
  store i64 %i.ap, ptr %i.c, align 8, !tbaa !156
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.303, ptr noundef nonnull @.str.468, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.j

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit80.thread, %_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit80.thread183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.aq = load i8, ptr %5, align 8, !tbaa !209, !range !148, !noundef !149
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.critedge, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.j:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit80.thread183, %_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit80.thread
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.w

bb.k:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !210 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.au, null
  br i1 %.not.i.i86, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.m, %bb.l
  %i.aw = phi ptr [ %i.av, %bb.m ], [ @.str.261, %bb.l ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.aw)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ax = load ptr, ptr %6, align 8, !tbaa !212   ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i87, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !169
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.o, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !210 ; 4 uses
  %.not.i.i88 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i88, label %bb.x, label %bb.p

bb.p:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !154 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !157
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 32) #40
  br label %bb.x

bb.q:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit91

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #37
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.s ], [ %i.bi, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.bk = load ptr, ptr %6, align 8, !tbaa !212   ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit91, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.t
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !169
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(128) %i.bk) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit91

_ZN7testing7MessageD2Ev.exit91:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.q ], [ %.pn, %bb.t ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #37
  br label %bb.w

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.bo = load ptr, ptr %i.ai, align 8, !tbaa !210 ; 4 uses
  %.not.i.i92 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i92, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !154 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93: ; preds = %bb.u
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !157
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 32) #40
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0164.0200, i64 8
  %.not = icmp eq ptr %.sroa.0164.0200, %.0.lcssa.i.i.i.i.i.i.i.i.pn
  br i1 %.not, label %.lr.ph.i, label %bb.h

bb.w:                                             ; preds = %_ZN7testing7MessageD2Ev.exit91, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit91 ], [ %i.at, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.bp

bb.x:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.loopexit

.lr.ph.i:                                         ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.y

bb.y:                                             ; preds = %.noexc97, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %.sroa.0167.2, %.lr.ph.i ], [ %i.by, %.noexc97 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %i.a, ptr %2, align 8, !tbaa !196
  store ptr %4, ptr %i.bv, align 8, !tbaa !806
  store ptr %.sroa.01.05.i, ptr %i.bw, align 8, !tbaa !201
  %i.bx = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE12lazy_emplaceIiZNSF_14InsertInternalIRKS7_EES5_IS8_bEOT_EUlRKSP_E_EENSJ_8iteratorESS_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.01.05.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc97 unwind label %bb.z   ; 0 uses

.noexc97:                                         ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8
  %.not.i = icmp eq ptr %.sroa.01.05.i, %.0.lcssa.i.i.i.i.i.i.i.i.pn
  br i1 %.not.i, label %.lr.ph203, label %bb.y, !llvm.loop !76

.lr.ph203:                                        ; preds = %.noexc97
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.aa:                                            ; preds = %.lr.ph203, %bb.bk
  %.sroa.0160.0202 = phi ptr [ %.sroa.0167.2, %.lr.ph203 ], [ %i.fh, %bb.bk ] ; 5 uses
  %i.ce = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE4findIiEENSJ_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0160.0202)
          to label %.noexc104 unwind label %bb.ad ; 2 uses

.noexc104:                                        ; preds = %bb.aa
  %i.cf = extractvalue { ptr, ptr } %i.ce, 0
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.preheader.i.i107, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i98

_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i98: ; preds = %.noexc104
  %i.ch = extractvalue { ptr, ptr } %i.ce, 1
  %.sroa.0.0.copyload.i99 = load ptr, ptr %i.ch, align 8, !tbaa !271 ; 2 uses
  %i.ci = load ptr, ptr %.sroa.0.0.copyload.i99, align 8, !tbaa !188
  br label %.preheader.i.i107

.preheader.i.i107:                                ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i98, %.noexc104
  %.sroa.08.0.i100 = phi ptr [ %.sroa.0.0.copyload.i99, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i98 ], [ %i.af, %.noexc104 ] ; 3 uses
  %.sroa.3.0.i101 = phi ptr [ %i.ci, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i98 ], [ %i.af, %.noexc104 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i32 1, ptr %i.d, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %.not13.i.i108 = icmp eq ptr %.sroa.08.0.i100, %.sroa.3.0.i101
  br i1 %.not13.i.i108, label %_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit.thread, label %.lr.ph.i.i109

_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit.thread: ; preds = %.preheader.i.i107
  store i64 0, ptr %i.e, align 8, !tbaa !156
  br label %bb.ac

.lr.ph.i.i109:                                    ; preds = %.preheader.i.i107, %.lr.ph.i.i109
  %.015.i.i110 = phi i64 [ %i.ck, %.lr.ph.i.i109 ], [ 0, %.preheader.i.i107 ] ; 2 uses
  %.sroa.010.014.i.i111 = phi ptr [ %i.cj, %.lr.ph.i.i109 ], [ %.sroa.08.0.i100, %.preheader.i.i107 ]
  %i.cj = load ptr, ptr %.sroa.010.014.i.i111, align 8, !tbaa !188 ; 2 uses
  %i.ck = add nuw nsw i64 %.015.i.i110, 1         ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.cj, %.sroa.3.0.i101
  br i1 %.not.i.i112, label %_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit, label %.lr.ph.i.i109, !llvm.loop !12699

_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit: ; preds = %.lr.ph.i.i109
  store i64 %i.ck, ptr %i.e, align 8, !tbaa !156
  %i.cl = icmp eq i64 %.015.i.i110, 0
  br i1 %i.cl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit117 unwind label %bb.ae

bb.ac:                                            ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit.thread, %_ZSt8distanceISt14_List_iteratorISt4pairIKiiEEENSt15iterator_traitsIT_E15difference_typeES6_S6_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.468, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit117 unwind label %bb.ae

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit117: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.cm = load i8, ptr %8, align 8, !tbaa !209, !range !148, !noundef !149
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.critedge77, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.at

bb.af:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit117
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.cq = load ptr, ptr %i.bz, align 8, !tbaa !210 ; 2 uses
  %.not.i.i118 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i118, label %_ZNK7testing15AssertionResult15failure_messageEv.exit119, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit119

_ZNK7testing15AssertionResult15failure_messageEv.exit119: ; preds = %bb.ah, %bb.ag
  %i.cs = phi ptr [ %i.cr, %bb.ah ], [ @.str.261, %bb.ag ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.cs)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.ct = load ptr, ptr %9, align 8, !tbaa !212   ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i120, label %_ZN7testing7MessageD2Ev.exit122, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.aj
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !169
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(128) %i.ct) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit122

_ZN7testing7MessageD2Ev.exit122:                  ; preds = %bb.aj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.cx = load ptr, ptr %i.bz, align 8, !tbaa !210 ; 4 uses
  %.not.i.i123 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i123, label %.critedge79, label %bb.ak

bb.ak:                                            ; preds = %_ZN7testing7MessageD2Ev.exit122
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !154 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124: ; preds = %bb.ak
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !157
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 32) #40
  br label %.critedge79

bb.al:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit130

bb.am:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #37
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn60 = phi { ptr, i32 } [ %i.df, %bb.an ], [ %i.de, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.dg = load ptr, ptr %9, align 8, !tbaa !212   ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.ao
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !169
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.dg) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, %bb.ao, %bb.al
  %.pn60.pn = phi { ptr, i32 } [ %i.dd, %bb.al ], [ %.pn60, %bb.ao ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #37
  br label %bb.at

.critedge77:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit117
  %i.dk = load ptr, ptr %i.bz, align 8, !tbaa !210 ; 4 uses
  %.not.i.i131 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i131, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.critedge77
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !154 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132: ; preds = %bb.ap
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !157
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef 32) #40
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, %.critedge77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0160.0202, i64 4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i100, i64 20 ; 2 uses
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !264, !noalias !12706
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !264, !noalias !12706
  %i.du = icmp eq i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.au

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.469, ptr noundef nonnull align 4 dereferenceable(4) %i.dq, ptr noundef nonnull align 4 dereferenceable(4) %i.dr)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.au

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ar, %bb.as
  %i.dv = load i8, ptr %11, align 8, !tbaa !209, !range !148, !noundef !149
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.bi, label %bb.av

bb.at:                                            ; preds = %_ZN7testing7MessageD2Ev.exit130, %bb.ae
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %_ZN7testing7MessageD2Ev.exit130 ], [ %i.cp, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
end_hunk_2
begin_hunk_3_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal10LookupTestENS0_11TemplateSelINS4_23gtest_suite_LookupTest_10EqualRangeEEENS0_5TypesINS3_15linked_hash_mapINS4_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSC_SI_EEEEEJNSB_INS4_9EnumClassEiSJ_SK_NSL_ISM_IKSR_iEEEEENSB_IiNS4_17NonStandardLayoutESJ_SK_NSL_ISM_IKiSW_EEEEENSB_ISW_iSJ_SK_NSL_ISM_IKSW_iEEEEEEEEE8RegisterEPKcNS0_12CodeLocationES18_S18_iRKSt6vectorISI_SaISI_EE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !157
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ak
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.go, %bb.ak ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.hl = load ptr, ptr %6, align 8, !tbaa !154   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.by
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.hn = load i64, ptr %i.by, align 8, !tbaa !157
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.aj
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.aj ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.hp = load ptr, ptr %7, align 8, !tbaa !154   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.bc
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.hr = load i64, ptr %i.bc, align 8, !tbaa !157
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ai
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ai ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.ht = load ptr, ptr %8, align 8, !tbaa !154   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.an
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.hv = load i64, ptr %i.an, align 8, !tbaa !157
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ah
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.ah ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ] ; 2 uses
  %i.hx = load ptr, ptr %9, align 8, !tbaa !154   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.w
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.hz = load i64, ptr %i.w, align 8, !tbaa !157
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.ag
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.ag ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ] ; 2 uses
  %i.ib = load ptr, ptr %10, align 8, !tbaa !154  ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.c
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.id = load i64, ptr %i.c, align 8, !tbaa !157
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.af ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

bb.ap:                                            ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.fr
  br i1 %i.ih, label %_ZN7testing8internal12CodeLocationD2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113: ; preds = %bb.ap
  %i.ii = load i64, ptr %i.fr, align 8, !tbaa !157
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

_ZN7testing8internal12CodeLocationD2Ev.exit115:   ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113 ], [ %i.if, %bb.ap ]
  resume { ptr, i32 } %.pn31
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_iEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_iEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_iEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_iEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_iEEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %class.anon.1703, align 8           ; 6 uses
  %2 = alloca %"class.std::vector.1687", align 8  ; 13 uses
  %3 = alloca %"class.absl::lts_20260526::linked_hash_map.1230", align 8 ; 16 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = invoke ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaISA_EEEiN4absl12lts_2026052618container_internal9GeneratorISA_vEEET_SJ_T0_T1_(ptr nonnull %2, i32 noundef 10)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.g = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156
  %i.i = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156 ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156
  store i64 1, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.g, ptr %i.k, align 8, !tbaa !641
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.i, ptr %i.l, align 8, !tbaa !643
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !187
  store ptr %i.n, ptr %i.n, align 8, !tbaa !188
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 0, ptr %i.p, align 8, !tbaa !190
  %i.q = load ptr, ptr %2, align 8, !tbaa !861    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !861  ; 2 uses
  %.not171 = icmp eq ptr %i.q, %i.s
  br i1 %.not171, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.d:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.0157.0172 = phi ptr [ %i.q, %.lr.ph ], [ %i.bg, %bb.r ] ; 2 uses
  %i.v = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEEJNS0_15linked_hash_mapISB_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISD_EEE7WrappedISH_EENSM_ISI_EESK_EE4findISB_EENSP_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0157.0172)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.preheader.i.i, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %.noexc
  %i.y = extractvalue { ptr, ptr } %i.v, 1
  %.sroa.0.0.copyload.i = load ptr, ptr %i.y, align 8, !tbaa !271 ; 2 uses
  %i.z = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !188
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %.noexc
  %.sroa.08.0.i = phi ptr [ %.sroa.0.0.copyload.i, %_ZSt9__advanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.n, %.noexc ] ; 2 uses
  %.sroa.3.0.i = phi ptr [ %i.z, %_ZSt9__advanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.n, %.noexc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 0, ptr %i.b, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %.not13.i.i = icmp eq ptr %.sroa.08.0.i, %.sroa.3.0.i
  br i1 %.not13.i.i, label %_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit80.thread, label %.lr.ph.i.i

_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit80.thread: ; preds = %.preheader.i.i
  store i64 0, ptr %i.c, align 8, !tbaa !156
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.f

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.sroa.010.014.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.08.0.i, %.preheader.i.i ]
  %i.aa = load ptr, ptr %.sroa.010.014.i.i, align 8, !tbaa !188 ; 2 uses
  %i.ab = add nuw nsw i64 %.015.i.i, 1            ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %.sroa.3.0.i
  br i1 %.not.i.i, label %_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit80.thread163, label %.lr.ph.i.i, !llvm.loop !12729

_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit80.thread163: ; preds = %.lr.ph.i.i
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !156
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.303, ptr noundef nonnull @.str.468, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit80.thread, %_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit80.thread163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.ac = load i8, ptr %4, align 8, !tbaa !209, !range !148, !noundef !149
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.critedge, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.f:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit80.thread163, %_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit80.thread
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.s

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !210 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i83, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.i ], [ @.str.261, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.ai)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.aj = load ptr, ptr %5, align 8, !tbaa !212   ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i84, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !169
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !210 ; 4 uses
  %.not.i.i85 = icmp eq ptr %i.an, null
  br i1 %.not.i.i85, label %bb.t, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 32) #40
  br label %bb.t

bb.m:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit88

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #37
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.av, %bb.o ], [ %i.au, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.aw = load ptr, ptr %5, align 8, !tbaa !212   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit88, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.p
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit88

_ZN7testing7MessageD2Ev.exit88:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  br label %bb.s

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.ba = load ptr, ptr %i.t, align 8, !tbaa !210 ; 4 uses
  %.not.i.i89 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i89, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !154 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !157
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #40
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0157.0172, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.s
  br i1 %.not, label %.critedge75, label %bb.d

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit88, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit88 ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.bj

bb.t:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.loopexit

.critedge75:                                      ; preds = %bb.r
  %.pre = load ptr, ptr %2, align 8, !tbaa !861   ; 3 uses
  %.pre177 = load ptr, ptr %i.r, align 8, !tbaa !861 ; 3 uses
  %.not4.i = icmp eq ptr %.pre, %.pre177
  br i1 %.not4.i, label %_ZN4absl12lts_2026052615linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEvT_SP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge75
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.u

bb.u:                                             ; preds = %.noexc94, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %.pre, %.lr.ph.i ], [ %i.bk, %.noexc94 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %i.a, ptr %1, align 8, !tbaa !196
  store ptr %3, ptr %i.bh, align 8, !tbaa !864
  store ptr %.sroa.01.05.i, ptr %i.bi, align 8, !tbaa !861
  %i.bj = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEEJNS0_15linked_hash_mapISB_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISD_EEE7WrappedISH_EENSM_ISI_EESK_EE12lazy_emplaceISB_ZNSL_14InsertInternalIRKSD_EES5_ISE_bEOT_EUlRKSV_E_EENSP_8iteratorESY_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.01.05.i, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc94 unwind label %bb.v   ; 0 uses

.noexc94:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, %.pre177
  br i1 %.not.i, label %_ZN4absl12lts_2026052615linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEvT_SP_.exit.loopexit, label %bb.u, !llvm.loop !83

_ZN4absl12lts_2026052615linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEvT_SP_.exit.loopexit: ; preds = %.noexc94
  %.pre178 = load ptr, ptr %2, align 8, !tbaa !861
  %.pre179 = load ptr, ptr %i.r, align 8, !tbaa !861
  br label %_ZN4absl12lts_2026052615linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEvT_SP_.exit

_ZN4absl12lts_2026052615linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEvT_SP_.exit: ; preds = %_ZN4absl12lts_2026052615linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEvT_SP_.exit.loopexit, %.critedge75
  %i.bl = phi ptr [ %.pre179, %_ZN4absl12lts_2026052615linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEvT_SP_.exit.loopexit ], [ %.pre177, %.critedge75 ] ; 2 uses
  %i.bm = phi ptr [ %.pre178, %_ZN4absl12lts_2026052615linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEvT_SP_.exit.loopexit ], [ %.pre, %.critedge75 ] ; 2 uses
  %.not166173 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not166173, label %.loopexit, label %.lr.ph175

.lr.ph175:                                        ; preds = %_ZN4absl12lts_2026052615linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEvT_SP_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.w:                                             ; preds = %.lr.ph175, %bb.bg
  %.sroa.0153.0174 = phi ptr [ %i.bm, %.lr.ph175 ], [ %i.ev, %bb.bg ] ; 4 uses
  %i.bs = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEEJNS0_15linked_hash_mapISB_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISD_EEE7WrappedISH_EENSM_ISI_EESK_EE4findISB_EENSP_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0153.0174)
          to label %.noexc101 unwind label %bb.z  ; 2 uses

.noexc101:                                        ; preds = %bb.w
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.preheader.i.i104, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95

_ZSt9__advanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95: ; preds = %.noexc101
  %i.bv = extractvalue { ptr, ptr } %i.bs, 1
  %.sroa.0.0.copyload.i96 = load ptr, ptr %i.bv, align 8, !tbaa !271 ; 2 uses
  %i.bw = load ptr, ptr %.sroa.0.0.copyload.i96, align 8, !tbaa !188
  br label %.preheader.i.i104

.preheader.i.i104:                                ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95, %.noexc101
  %.sroa.08.0.i97 = phi ptr [ %.sroa.0.0.copyload.i96, %_ZSt9__advanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95 ], [ %i.n, %.noexc101 ] ; 3 uses
  %.sroa.3.0.i98 = phi ptr [ %i.bw, %_ZSt9__advanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95 ], [ %i.n, %.noexc101 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i32 1, ptr %i.d, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %.not13.i.i105 = icmp eq ptr %.sroa.08.0.i97, %.sroa.3.0.i98
  br i1 %.not13.i.i105, label %_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit.thread, label %.lr.ph.i.i106

_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit.thread: ; preds = %.preheader.i.i104
  store i64 0, ptr %i.e, align 8, !tbaa !156
  br label %bb.y

.lr.ph.i.i106:                                    ; preds = %.preheader.i.i104, %.lr.ph.i.i106
  %.015.i.i107 = phi i64 [ %i.by, %.lr.ph.i.i106 ], [ 0, %.preheader.i.i104 ] ; 2 uses
  %.sroa.010.014.i.i108 = phi ptr [ %i.bx, %.lr.ph.i.i106 ], [ %.sroa.08.0.i97, %.preheader.i.i104 ]
  %i.bx = load ptr, ptr %.sroa.010.014.i.i108, align 8, !tbaa !188 ; 2 uses
  %i.by = add nuw nsw i64 %.015.i.i107, 1         ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.bx, %.sroa.3.0.i98
  br i1 %.not.i.i109, label %_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit, label %.lr.ph.i.i106, !llvm.loop !12729

_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit: ; preds = %.lr.ph.i.i106
  store i64 %i.by, ptr %i.e, align 8, !tbaa !156
  %i.bz = icmp eq i64 %.015.i.i107, 0
  br i1 %i.bz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114 unwind label %bb.aa

bb.y:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit.thread, %_ZSt8distanceISt14_List_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENSt15iterator_traitsIT_E15difference_typeESC_SC_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.468, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114 unwind label %bb.aa

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.ca = load i8, ptr %7, align 8, !tbaa !209, !range !148, !noundef !149
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.critedge77, label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.ap

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.ce = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i115, label %_ZNK7testing15AssertionResult15failure_messageEv.exit116, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit116

_ZNK7testing15AssertionResult15failure_messageEv.exit116: ; preds = %bb.ad, %bb.ac
  %i.cg = phi ptr [ %i.cf, %bb.ad ], [ @.str.261, %bb.ac ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.cg)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.ch = load ptr, ptr %8, align 8, !tbaa !212   ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.af
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !169
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %bb.af, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 4 uses
  %.not.i.i120 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i120, label %.critedge79, label %bb.ag

bb.ag:                                            ; preds = %_ZN7testing7MessageD2Ev.exit119
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !154 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121: ; preds = %bb.ag
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !157
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef 32) #40
  br label %.critedge79

bb.ah:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit127

bb.ai:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn60 = phi { ptr, i32 } [ %i.ct, %bb.aj ], [ %i.cs, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.cu = load ptr, ptr %8, align 8, !tbaa !212   ; 3 uses
  %.not.i.i125 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i125, label %_ZN7testing7MessageD2Ev.exit127, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126: ; preds = %bb.ak
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !169
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit127

_ZN7testing7MessageD2Ev.exit127:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126, %bb.ak, %bb.ah
  %.pn60.pn = phi { ptr, i32 } [ %i.cr, %bb.ah ], [ %.pn60, %bb.ak ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  br label %bb.ap

.critedge77:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114
  %i.cy = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 4 uses
  %.not.i.i128 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i128, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge77
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !154 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129: ; preds = %bb.al
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !157
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 32) #40
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130, %.critedge77
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0153.0174, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i97, i64 48 ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !264, !noalias !12734
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !264, !noalias !12734
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.aq

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.469, ptr noundef nonnull align 4 dereferenceable(4) %i.de, ptr noundef nonnull align 4 dereferenceable(4) %i.df)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.aq

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.an, %bb.ao
  %i.dj = load i8, ptr %10, align 8, !tbaa !209, !range !148, !noundef !149
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.be, label %bb.ar

bb.ap:                                            ; preds = %_ZN7testing7MessageD2Ev.exit127, %bb.aa
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %_ZN7testing7MessageD2Ev.exit127 ], [ %i.cd, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
end_hunk_3
begin_hunk_4_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal10LookupTestENS0_11TemplateSelINS4_23gtest_suite_LookupTest_10EqualRangeEEENS0_5TypesINS3_15linked_hash_mapINS4_9EnumClassEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSC_iEEEEEJNSB_IiNS4_17NonStandardLayoutESD_SE_NSF_ISG_IKiSL_EEEEENSB_ISL_iSD_SE_NSF_ISG_IKSL_iEEEEEEEEE8RegisterEPKcNS0_12CodeLocationESX_SX_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS15_EE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !157
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ak
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.go, %bb.ak ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.hl = load ptr, ptr %6, align 8, !tbaa !154   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.by
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.hn = load i64, ptr %i.by, align 8, !tbaa !157
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.aj
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.aj ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.hp = load ptr, ptr %7, align 8, !tbaa !154   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.bc
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.hr = load i64, ptr %i.bc, align 8, !tbaa !157
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ai
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ai ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.ht = load ptr, ptr %8, align 8, !tbaa !154   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.an
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.hv = load i64, ptr %i.an, align 8, !tbaa !157
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ah
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.ah ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ] ; 2 uses
  %i.hx = load ptr, ptr %9, align 8, !tbaa !154   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.w
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.hz = load i64, ptr %i.w, align 8, !tbaa !157
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.ag
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.ag ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ] ; 2 uses
  %i.ib = load ptr, ptr %10, align 8, !tbaa !154  ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.c
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.id = load i64, ptr %i.c, align 8, !tbaa !157
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.af ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

bb.ap:                                            ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.fr
  br i1 %i.ih, label %_ZN7testing8internal12CodeLocationD2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113: ; preds = %bb.ap
  %i.ii = load i64, ptr %i.fr, align 8, !tbaa !157
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

_ZN7testing8internal12CodeLocationD2Ev.exit115:   ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113 ], [ %i.if, %bb.ap ]
  resume { ptr, i32 } %.pn31
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapINS4_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_SE_EEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapINS4_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_SE_EEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_SB_EEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_SB_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_SB_EEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %class.anon.1779, align 8           ; 6 uses
  %2 = alloca %"class.std::vector.1759", align 8  ; 13 uses
  %3 = alloca %"class.absl::lts_20260526::linked_hash_map.1281", align 8 ; 16 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = invoke ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISE_EEEiNS5_9GeneratorISE_vEEET_SK_T0_T1_(ptr nonnull %2, i32 noundef 10)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.g = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156
  %i.i = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156 ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156
  store i64 1, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.g, ptr %i.k, align 8, !tbaa !641
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.i, ptr %i.l, align 8, !tbaa !643
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !187
  store ptr %i.n, ptr %i.n, align 8, !tbaa !188
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 0, ptr %i.p, align 8, !tbaa !190
  %i.q = load ptr, ptr %2, align 8, !tbaa !915    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !915  ; 2 uses
  %.not171 = icmp eq ptr %i.q, %i.s
  br i1 %.not171, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.d:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.0157.0172 = phi ptr [ %i.q, %.lr.ph ], [ %i.bg, %bb.r ] ; 2 uses
  %i.v = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEJNS0_15linked_hash_mapIS6_SD_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISE_EEE7WrappedISI_EENSN_ISJ_EESL_EE4findIS6_EENSQ_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0157.0172)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.preheader.i.i, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %.noexc
  %i.y = extractvalue { ptr, ptr } %i.v, 1
  %.sroa.0.0.copyload.i = load ptr, ptr %i.y, align 8, !tbaa !271 ; 2 uses
  %i.z = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !188
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %.noexc
  %.sroa.08.0.i = phi ptr [ %.sroa.0.0.copyload.i, %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.n, %.noexc ] ; 2 uses
  %.sroa.3.0.i = phi ptr [ %i.z, %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.n, %.noexc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 0, ptr %i.b, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %.not13.i.i = icmp eq ptr %.sroa.08.0.i, %.sroa.3.0.i
  br i1 %.not13.i.i, label %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit80.thread, label %.lr.ph.i.i

_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit80.thread: ; preds = %.preheader.i.i
  store i64 0, ptr %i.c, align 8, !tbaa !156
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.f

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.sroa.010.014.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.08.0.i, %.preheader.i.i ]
  %i.aa = load ptr, ptr %.sroa.010.014.i.i, align 8, !tbaa !188 ; 2 uses
  %i.ab = add nuw nsw i64 %.015.i.i, 1            ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %.sroa.3.0.i
  br i1 %.not.i.i, label %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit80.thread163, label %.lr.ph.i.i, !llvm.loop !12750

_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit80.thread163: ; preds = %.lr.ph.i.i
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !156
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.303, ptr noundef nonnull @.str.468, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit80.thread, %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit80.thread163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.ac = load i8, ptr %4, align 8, !tbaa !209, !range !148, !noundef !149
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.critedge, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.f:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit80.thread163, %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit80.thread
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.s

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !210 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i83, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.i ], [ @.str.261, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.ai)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.aj = load ptr, ptr %5, align 8, !tbaa !212   ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i84, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !169
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !210 ; 4 uses
  %.not.i.i85 = icmp eq ptr %i.an, null
  br i1 %.not.i.i85, label %bb.t, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 32) #40
  br label %bb.t

bb.m:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit88

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #37
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.av, %bb.o ], [ %i.au, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.aw = load ptr, ptr %5, align 8, !tbaa !212   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit88, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.p
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit88

_ZN7testing7MessageD2Ev.exit88:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  br label %bb.s

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.ba = load ptr, ptr %i.t, align 8, !tbaa !210 ; 4 uses
  %.not.i.i89 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i89, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !154 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !157
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #40
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0157.0172, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.s
  br i1 %.not, label %.critedge75, label %bb.d

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit88, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit88 ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.bi

bb.t:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.loopexit

.critedge75:                                      ; preds = %bb.r
  %.pre = load ptr, ptr %2, align 8, !tbaa !915   ; 3 uses
  %.pre177 = load ptr, ptr %i.r, align 8, !tbaa !915 ; 3 uses
  %.not4.i = icmp eq ptr %.pre, %.pre177
  br i1 %.not4.i, label %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_S9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEvT_SQ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge75
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.u

bb.u:                                             ; preds = %.noexc94, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %.pre, %.lr.ph.i ], [ %i.bk, %.noexc94 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %i.a, ptr %1, align 8, !tbaa !196
  store ptr %3, ptr %i.bh, align 8, !tbaa !918
  store ptr %.sroa.01.05.i, ptr %i.bi, align 8, !tbaa !915
  %i.bj = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEJNS0_15linked_hash_mapIS6_SD_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISE_EEE7WrappedISI_EENSN_ISJ_EESL_EE12lazy_emplaceIS6_ZNSM_14InsertInternalIRKSE_EES5_ISF_bEOT_EUlRKSW_E_EENSQ_8iteratorESZ_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.05.i, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc94 unwind label %bb.v   ; 0 uses

.noexc94:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, %.pre177
  br i1 %.not.i, label %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_S9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEvT_SQ_.exit.loopexit, label %bb.u, !llvm.loop !91

_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_S9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEvT_SQ_.exit.loopexit: ; preds = %.noexc94
  %.pre178 = load ptr, ptr %2, align 8, !tbaa !915
  %.pre179 = load ptr, ptr %i.r, align 8, !tbaa !915
  br label %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_S9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEvT_SQ_.exit

_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_S9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEvT_SQ_.exit: ; preds = %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_S9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEvT_SQ_.exit.loopexit, %.critedge75
  %i.bl = phi ptr [ %.pre179, %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_S9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEvT_SQ_.exit.loopexit ], [ %.pre177, %.critedge75 ] ; 2 uses
  %i.bm = phi ptr [ %.pre178, %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_S9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEvT_SQ_.exit.loopexit ], [ %.pre, %.critedge75 ] ; 2 uses
  %.not166173 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not166173, label %.loopexit, label %.lr.ph175

.lr.ph175:                                        ; preds = %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_S9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEvT_SQ_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.w:                                             ; preds = %.lr.ph175, %bb.bf
  %.sroa.0153.0174 = phi ptr [ %i.bm, %.lr.ph175 ], [ %i.fb, %bb.bf ] ; 5 uses
  %i.bs = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEJNS0_15linked_hash_mapIS6_SD_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISE_EEE7WrappedISI_EENSN_ISJ_EESL_EE4findIS6_EENSQ_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0153.0174)
          to label %.noexc101 unwind label %bb.z  ; 2 uses

.noexc101:                                        ; preds = %bb.w
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.preheader.i.i104, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95

_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95: ; preds = %.noexc101
  %i.bv = extractvalue { ptr, ptr } %i.bs, 1
  %.sroa.0.0.copyload.i96 = load ptr, ptr %i.bv, align 8, !tbaa !271 ; 2 uses
  %i.bw = load ptr, ptr %.sroa.0.0.copyload.i96, align 8, !tbaa !188
  br label %.preheader.i.i104

.preheader.i.i104:                                ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95, %.noexc101
  %.sroa.08.0.i97 = phi ptr [ %.sroa.0.0.copyload.i96, %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95 ], [ %i.n, %.noexc101 ] ; 4 uses
  %.sroa.3.0.i98 = phi ptr [ %i.bw, %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95 ], [ %i.n, %.noexc101 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i32 1, ptr %i.d, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %.not13.i.i105 = icmp eq ptr %.sroa.08.0.i97, %.sroa.3.0.i98
  br i1 %.not13.i.i105, label %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit.thread, label %.lr.ph.i.i106

_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit.thread: ; preds = %.preheader.i.i104
  store i64 0, ptr %i.e, align 8, !tbaa !156
  br label %bb.y

.lr.ph.i.i106:                                    ; preds = %.preheader.i.i104, %.lr.ph.i.i106
  %.015.i.i107 = phi i64 [ %i.by, %.lr.ph.i.i106 ], [ 0, %.preheader.i.i104 ] ; 2 uses
  %.sroa.010.014.i.i108 = phi ptr [ %i.bx, %.lr.ph.i.i106 ], [ %.sroa.08.0.i97, %.preheader.i.i104 ]
  %i.bx = load ptr, ptr %.sroa.010.014.i.i108, align 8, !tbaa !188 ; 2 uses
  %i.by = add nuw nsw i64 %.015.i.i107, 1         ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.bx, %.sroa.3.0.i98
  br i1 %.not.i.i109, label %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit, label %.lr.ph.i.i106, !llvm.loop !12750

_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit: ; preds = %.lr.ph.i.i106
  store i64 %i.by, ptr %i.e, align 8, !tbaa !156
  %i.bz = icmp eq i64 %.015.i.i107, 0
  br i1 %i.bz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114 unwind label %bb.aa

bb.y:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit.thread, %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.468, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114 unwind label %bb.aa

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.ca = load i8, ptr %7, align 8, !tbaa !209, !range !148, !noundef !149
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.critedge77, label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.ao

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.ce = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i115, label %_ZNK7testing15AssertionResult15failure_messageEv.exit116, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit116

_ZNK7testing15AssertionResult15failure_messageEv.exit116: ; preds = %bb.ad, %bb.ac
  %i.cg = phi ptr [ %i.cf, %bb.ad ], [ @.str.261, %bb.ac ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.cg)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.ch = load ptr, ptr %8, align 8, !tbaa !212   ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.af
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !169
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %bb.af, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 4 uses
  %.not.i.i120 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i120, label %.critedge79, label %bb.ag

bb.ag:                                            ; preds = %_ZN7testing7MessageD2Ev.exit119
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !154 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121: ; preds = %bb.ag
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !157
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef 32) #40
  br label %.critedge79

bb.ah:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit127

bb.ai:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn60 = phi { ptr, i32 } [ %i.ct, %bb.aj ], [ %i.cs, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.cu = load ptr, ptr %8, align 8, !tbaa !212   ; 3 uses
  %.not.i.i125 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i125, label %_ZN7testing7MessageD2Ev.exit127, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126: ; preds = %bb.ak
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !169
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit127

_ZN7testing7MessageD2Ev.exit127:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126, %bb.ak, %bb.ah
  %.pn60.pn = phi { ptr, i32 } [ %i.cr, %bb.ah ], [ %.pn60, %bb.ak ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  br label %bb.ao

.critedge77:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114
  %i.cy = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 4 uses
  %.not.i.i128 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i128, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge77
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !154 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129: ; preds = %bb.al
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !157
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 32) #40
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130, %.critedge77
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0153.0174, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i97, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0153.0174, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !158, !noalias !12755 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i97, i64 32
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !158, !noalias !12755
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i

bb.an:                                            ; preds = %bb.am
  %i.dl = icmp eq i64 %i.dh, 0
  br i1 %i.dl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.an
  %i.dm = load ptr, ptr %i.df, align 8, !tbaa !154, !noalias !12755
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !154, !noalias !12755
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.dn, ptr %i.dm, i64 %i.dh), !noalias !12755
  %i.do = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.do, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %bb.an
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit unwind label %bb.ap
end_hunk_4
begin_hunk_5_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal10LookupTestENS0_11TemplateSelINS4_23gtest_suite_LookupTest_10EqualRangeEEENS0_5TypesINS3_15linked_hash_mapIiNS4_17NonStandardLayoutENS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiSC_EEEEEJNSB_ISC_iSD_SE_NSF_ISG_IKSC_iEEEEEEEEE8RegisterEPKcNS0_12CodeLocationESS_SS_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS10_EE:bb.a
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !157
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ak
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.go, %bb.ak ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.hl = load ptr, ptr %6, align 8, !tbaa !154   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.by
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.hn = load i64, ptr %i.by, align 8, !tbaa !157
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.aj
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.aj ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.hp = load ptr, ptr %7, align 8, !tbaa !154   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.bc
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.hr = load i64, ptr %i.bc, align 8, !tbaa !157
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ai
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ai ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.ht = load ptr, ptr %8, align 8, !tbaa !154   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.an
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.hv = load i64, ptr %i.an, align 8, !tbaa !157
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ah
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.ah ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ] ; 2 uses
  %i.hx = load ptr, ptr %9, align 8, !tbaa !154   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.w
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.hz = load i64, ptr %i.w, align 8, !tbaa !157
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.ag
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.ag ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ] ; 2 uses
  %i.ib = load ptr, ptr %10, align 8, !tbaa !154  ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.c
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.id = load i64, ptr %i.c, align 8, !tbaa !157
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.af ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

bb.ap:                                            ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.fr
  br i1 %i.ih, label %_ZN7testing8internal12CodeLocationD2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113: ; preds = %bb.ap
  %i.ii = load i64, ptr %i.fr, align 8, !tbaa !157
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

_ZN7testing8internal12CodeLocationD2Ev.exit115:   ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113 ], [ %i.if, %bb.ap ]
  resume { ptr, i32 } %.pn31
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapINS4_9EnumClassEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_iEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapINS4_9EnumClassEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_iEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapINS1_9EnumClassEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_iEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapINS1_9EnumClassEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_iEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapINS1_9EnumClassEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_iEEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.1366, align 8           ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.anon.1853, align 8           ; 6 uses
  %3 = alloca %"class.std::vector.1834", align 8  ; 13 uses
  %4 = alloca %"class.absl::lts_20260526::linked_hash_map.1344", align 8 ; 20 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.f = invoke ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS8_EEEiNS5_9GeneratorIS8_vEEET_SE_T0_T1_(ptr nonnull %3, i32 noundef 10)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.g = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156
  %i.i = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156 ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156
  store i64 1, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.g, ptr %i.k, align 8, !tbaa !641
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.i, ptr %i.l, align 8, !tbaa !643
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !187
  store ptr %i.n, ptr %i.n, align 8, !tbaa !188
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 0, ptr %i.p, align 8, !tbaa !190
  %i.q = load ptr, ptr %3, align 8, !tbaa !972    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !972  ; 2 uses
  %.not174 = icmp eq ptr %i.q, %i.s
  br i1 %.not174, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.d:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.0160.0175 = phi ptr [ %i.q, %.lr.ph ], [ %i.bg, %bb.r ] ; 2 uses
  %i.v = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_9EnumClassEiEEEEJNS0_15linked_hash_mapIS6_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE4findIS6_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0160.0175)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.preheader.i.i, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %.noexc
  %i.y = extractvalue { ptr, ptr } %i.v, 1
  %.sroa.0.0.copyload.i = load ptr, ptr %i.y, align 8, !tbaa !271 ; 2 uses
  %i.z = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !188
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %.noexc
  %.sroa.08.0.i = phi ptr [ %.sroa.0.0.copyload.i, %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.n, %.noexc ] ; 2 uses
  %.sroa.3.0.i = phi ptr [ %i.z, %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.n, %.noexc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 0, ptr %i.b, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %.not13.i.i = icmp eq ptr %.sroa.08.0.i, %.sroa.3.0.i
  br i1 %.not13.i.i, label %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread, label %.lr.ph.i.i

_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread: ; preds = %.preheader.i.i
  store i64 0, ptr %i.c, align 8, !tbaa !156
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.f

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.sroa.010.014.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.08.0.i, %.preheader.i.i ]
  %i.aa = load ptr, ptr %.sroa.010.014.i.i, align 8, !tbaa !188 ; 2 uses
  %i.ab = add nuw nsw i64 %.015.i.i, 1            ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %.sroa.3.0.i
  br i1 %.not.i.i, label %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread166, label %.lr.ph.i.i, !llvm.loop !12771

_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread166: ; preds = %.lr.ph.i.i
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !156
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.303, ptr noundef nonnull @.str.468, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread, %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.ac = load i8, ptr %5, align 8, !tbaa !209, !range !148, !noundef !149
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.critedge, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.f:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread166, %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.s

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !210 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i83, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.i ], [ @.str.261, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.ai)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.aj = load ptr, ptr %6, align 8, !tbaa !212   ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i84, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !169
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !210 ; 4 uses
  %.not.i.i85 = icmp eq ptr %i.an, null
  br i1 %.not.i.i85, label %bb.t, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 32) #40
  br label %bb.t

bb.m:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit88

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #37
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.av, %bb.o ], [ %i.au, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.aw = load ptr, ptr %6, align 8, !tbaa !212   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit88, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.p
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit88

_ZN7testing7MessageD2Ev.exit88:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #37
  br label %bb.s

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.ba = load ptr, ptr %i.t, align 8, !tbaa !210 ; 4 uses
  %.not.i.i89 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i89, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !154 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !157
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #40
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0160.0175, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.s
  br i1 %.not, label %.critedge75, label %bb.d

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit88, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit88 ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.bl

bb.t:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.loopexit

.critedge75:                                      ; preds = %bb.r
  %.pre = load ptr, ptr %3, align 8, !tbaa !972   ; 3 uses
  %.pre180 = load ptr, ptr %i.r, align 8, !tbaa !972 ; 3 uses
  %.not4.i = icmp eq ptr %.pre, %.pre180
  br i1 %.not4.i, label %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal9EnumClassEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge75
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.u

bb.u:                                             ; preds = %.noexc94, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %.pre, %.lr.ph.i ], [ %i.bk, %.noexc94 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %i.a, ptr %2, align 8, !tbaa !196
  store ptr %4, ptr %i.bh, align 8, !tbaa !971
  store ptr %.sroa.01.05.i, ptr %i.bi, align 8, !tbaa !972
  %i.bj = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_9EnumClassEiEEEEJNS0_15linked_hash_mapIS6_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE12lazy_emplaceIS6_ZNSG_14InsertInternalIRKS8_EES5_IS9_bEOT_EUlRKSQ_E_EENSK_8iteratorEST_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.01.05.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc94 unwind label %bb.v   ; 0 uses

.noexc94:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, %.pre180
  br i1 %.not.i, label %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal9EnumClassEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit, label %bb.u, !llvm.loop !101

_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal9EnumClassEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit: ; preds = %.noexc94
  %.pre181 = load ptr, ptr %3, align 8, !tbaa !972
  %.pre182 = load ptr, ptr %i.r, align 8, !tbaa !972
  br label %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal9EnumClassEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit

_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal9EnumClassEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit: ; preds = %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal9EnumClassEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit, %.critedge75
  %i.bl = phi ptr [ %.pre182, %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal9EnumClassEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit ], [ %.pre180, %.critedge75 ] ; 2 uses
  %i.bm = phi ptr [ %.pre181, %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal9EnumClassEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit ], [ %.pre, %.critedge75 ] ; 2 uses
  %.not169176 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not169176, label %.loopexit, label %.lr.ph178

.lr.ph178:                                        ; preds = %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal9EnumClassEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.w:                                             ; preds = %.lr.ph178, %bb.bg
  %.sroa.0156.0177 = phi ptr [ %i.bm, %.lr.ph178 ], [ %i.ev, %bb.bg ] ; 4 uses
  %i.bs = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_9EnumClassEiEEEEJNS0_15linked_hash_mapIS6_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE4findIS6_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0156.0177)
          to label %.noexc101 unwind label %bb.z  ; 2 uses

.noexc101:                                        ; preds = %bb.w
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.preheader.i.i104, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95

_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95: ; preds = %.noexc101
  %i.bv = extractvalue { ptr, ptr } %i.bs, 1
  %.sroa.0.0.copyload.i96 = load ptr, ptr %i.bv, align 8, !tbaa !271 ; 2 uses
  %i.bw = load ptr, ptr %.sroa.0.0.copyload.i96, align 8, !tbaa !188
  br label %.preheader.i.i104

.preheader.i.i104:                                ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95, %.noexc101
  %.sroa.08.0.i97 = phi ptr [ %.sroa.0.0.copyload.i96, %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95 ], [ %i.n, %.noexc101 ] ; 3 uses
  %.sroa.3.0.i98 = phi ptr [ %i.bw, %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95 ], [ %i.n, %.noexc101 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i32 1, ptr %i.d, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %.not13.i.i105 = icmp eq ptr %.sroa.08.0.i97, %.sroa.3.0.i98
  br i1 %.not13.i.i105, label %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit.thread, label %.lr.ph.i.i106

_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit.thread: ; preds = %.preheader.i.i104
  store i64 0, ptr %i.e, align 8, !tbaa !156
  br label %bb.y

.lr.ph.i.i106:                                    ; preds = %.preheader.i.i104, %.lr.ph.i.i106
  %.015.i.i107 = phi i64 [ %i.by, %.lr.ph.i.i106 ], [ 0, %.preheader.i.i104 ] ; 2 uses
  %.sroa.010.014.i.i108 = phi ptr [ %i.bx, %.lr.ph.i.i106 ], [ %.sroa.08.0.i97, %.preheader.i.i104 ]
  %i.bx = load ptr, ptr %.sroa.010.014.i.i108, align 8, !tbaa !188 ; 2 uses
  %i.by = add nuw nsw i64 %.015.i.i107, 1         ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.bx, %.sroa.3.0.i98
  br i1 %.not.i.i109, label %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit, label %.lr.ph.i.i106, !llvm.loop !12771

_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit: ; preds = %.lr.ph.i.i106
  store i64 %i.by, ptr %i.e, align 8, !tbaa !156
  %i.bz = icmp eq i64 %.015.i.i107, 0
  br i1 %i.bz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114 unwind label %bb.aa

bb.y:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit.thread, %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.468, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114 unwind label %bb.aa

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.ca = load i8, ptr %8, align 8, !tbaa !209, !range !148, !noundef !149
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.critedge77, label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.ap

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.ce = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i115, label %_ZNK7testing15AssertionResult15failure_messageEv.exit116, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit116

_ZNK7testing15AssertionResult15failure_messageEv.exit116: ; preds = %bb.ad, %bb.ac
  %i.cg = phi ptr [ %i.cf, %bb.ad ], [ @.str.261, %bb.ac ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.cg)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.ch = load ptr, ptr %9, align 8, !tbaa !212   ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.af
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !169
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %bb.af, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 4 uses
  %.not.i.i120 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i120, label %.critedge79, label %bb.ag

bb.ag:                                            ; preds = %_ZN7testing7MessageD2Ev.exit119
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !154 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121: ; preds = %bb.ag
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !157
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef 32) #40
  br label %.critedge79

bb.ah:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit127

bb.ai:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn60 = phi { ptr, i32 } [ %i.ct, %bb.aj ], [ %i.cs, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.cu = load ptr, ptr %9, align 8, !tbaa !212   ; 3 uses
  %.not.i.i125 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i125, label %_ZN7testing7MessageD2Ev.exit127, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126: ; preds = %bb.ak
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !169
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit127

_ZN7testing7MessageD2Ev.exit127:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126, %bb.ak, %bb.ah
  %.pn60.pn = phi { ptr, i32 } [ %i.cr, %bb.ah ], [ %.pn60, %bb.ak ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #37
  br label %bb.ap

.critedge77:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114
  %i.cy = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 4 uses
  %.not.i.i128 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i128, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge77
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !154 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129: ; preds = %bb.al
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !157
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 32) #40
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130, %.critedge77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0156.0177, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i97, i64 24 ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !264, !noalias !12776
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !264, !noalias !12776
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.aq

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.469, ptr noundef nonnull align 4 dereferenceable(4) %i.de, ptr noundef nonnull align 4 dereferenceable(4) %i.df)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.aq

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.an, %bb.ao
  %i.dj = load i8, ptr %11, align 8, !tbaa !209, !range !148, !noundef !149
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.be, label %bb.ar

bb.ap:                                            ; preds = %_ZN7testing7MessageD2Ev.exit127, %bb.aa
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %_ZN7testing7MessageD2Ev.exit127 ], [ %i.cd, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
end_hunk_5
begin_hunk_6_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal10LookupTestENS0_11TemplateSelINS4_23gtest_suite_LookupTest_10EqualRangeEEENS0_5TypesINS3_15linked_hash_mapINS4_17NonStandardLayoutEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSC_iEEEEEJEEEE8RegisterEPKcNS0_12CodeLocationESO_SO_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.ha = load ptr, ptr %11, align 8, !tbaa !154  ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.cy
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.hc = load i64, ptr %i.cy, align 8, !tbaa !157
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ] ; 2 uses
  %i.he = load ptr, ptr %12, align 8, !tbaa !154  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !157
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.ah
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ah ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.hj = load ptr, ptr %6, align 8, !tbaa !154   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.by
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hl = load i64, ptr %i.by, align 8, !tbaa !157
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ag
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.ag ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  %i.hn = load ptr, ptr %7, align 8, !tbaa !154   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.bc
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.hp = load i64, ptr %i.bc, align 8, !tbaa !157
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.af
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.af ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.hr = load ptr, ptr %8, align 8, !tbaa !154   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.an
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.ht = load i64, ptr %i.an, align 8, !tbaa !157
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ae
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.ae ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.hv = load ptr, ptr %9, align 8, !tbaa !154   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.w
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.hx = load i64, ptr %i.w, align 8, !tbaa !157
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ad
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.ad ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ]
  %i.hz = load ptr, ptr %10, align 8, !tbaa !154  ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.c
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.ib = load i64, ptr %i.c, align 8, !tbaa !157
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapIiNS4_17NonStandardLayoutENS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiS8_EEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapIiNS4_17NonStandardLayoutENS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiS8_EEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapIiNS1_17NonStandardLayoutENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS5_EEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapIiNS1_17NonStandardLayoutENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS5_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapIiNS1_17NonStandardLayoutENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS5_EEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %class.anon.1928, align 8           ; 6 uses
  %2 = alloca %"class.std::vector.1909", align 8  ; 13 uses
  %3 = alloca %"class.absl::lts_20260526::linked_hash_map.1408", align 8 ; 16 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = invoke ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS8_EEEiNS6_9GeneratorIS8_vEEET_SE_T0_T1_(ptr nonnull %2, i32 noundef 10)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.g = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156
  %i.i = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156 ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156
  store i64 1, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.g, ptr %i.k, align 8, !tbaa !641
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.i, ptr %i.l, align 8, !tbaa !643
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !187
  store ptr %i.n, ptr %i.n, align 8, !tbaa !188
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 0, ptr %i.p, align 8, !tbaa !190
  %i.q = load ptr, ptr %2, align 8, !tbaa !1027   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1027 ; 2 uses
  %.not171 = icmp eq ptr %i.q, %i.s
  br i1 %.not171, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.d:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.0157.0172 = phi ptr [ %i.q, %.lr.ph ], [ %i.bg, %bb.r ] ; 2 uses
  %i.v = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiNS1_17NonStandardLayoutEEEEEJNS0_15linked_hash_mapIiS7_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE4findIiEENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0157.0172)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.preheader.i.i, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %.noexc
  %i.y = extractvalue { ptr, ptr } %i.v, 1
  %.sroa.0.0.copyload.i = load ptr, ptr %i.y, align 8, !tbaa !271 ; 2 uses
  %i.z = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !188
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %.noexc
  %.sroa.08.0.i = phi ptr [ %.sroa.0.0.copyload.i, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.n, %.noexc ] ; 2 uses
  %.sroa.3.0.i = phi ptr [ %i.z, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.n, %.noexc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 0, ptr %i.b, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %.not13.i.i = icmp eq ptr %.sroa.08.0.i, %.sroa.3.0.i
  br i1 %.not13.i.i, label %_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread, label %.lr.ph.i.i

_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread: ; preds = %.preheader.i.i
  store i64 0, ptr %i.c, align 8, !tbaa !156
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.f

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.sroa.010.014.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.08.0.i, %.preheader.i.i ]
  %i.aa = load ptr, ptr %.sroa.010.014.i.i, align 8, !tbaa !188 ; 2 uses
  %i.ab = add nuw nsw i64 %.015.i.i, 1            ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %.sroa.3.0.i
  br i1 %.not.i.i, label %_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread163, label %.lr.ph.i.i, !llvm.loop !12792

_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread163: ; preds = %.lr.ph.i.i
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !156
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.303, ptr noundef nonnull @.str.468, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread, %_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.ac = load i8, ptr %4, align 8, !tbaa !209, !range !148, !noundef !149
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.critedge, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.f:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread163, %_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.s

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !210 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i83, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.i ], [ @.str.261, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.ai)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.aj = load ptr, ptr %5, align 8, !tbaa !212   ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i84, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !169
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !210 ; 4 uses
  %.not.i.i85 = icmp eq ptr %i.an, null
  br i1 %.not.i.i85, label %bb.t, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 32) #40
  br label %bb.t

bb.m:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit88

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #37
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.av, %bb.o ], [ %i.au, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.aw = load ptr, ptr %5, align 8, !tbaa !212   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit88, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.p
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit88

_ZN7testing7MessageD2Ev.exit88:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  br label %bb.s

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.ba = load ptr, ptr %i.t, align 8, !tbaa !210 ; 4 uses
  %.not.i.i89 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i89, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !154 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !157
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #40
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0157.0172, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.s
  br i1 %.not, label %.critedge75, label %bb.d

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit88, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit88 ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.bi

bb.t:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.loopexit

.critedge75:                                      ; preds = %bb.r
  %.pre = load ptr, ptr %2, align 8, !tbaa !1027  ; 3 uses
  %.pre177 = load ptr, ptr %i.r, align 8, !tbaa !1027 ; 3 uses
  %.not4.i = icmp eq ptr %.pre, %.pre177
  br i1 %.not4.i, label %_ZN4absl12lts_2026052615linked_hash_mapIiNS0_18container_internal17NonStandardLayoutENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS3_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge75
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.u

bb.u:                                             ; preds = %.noexc94, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %.pre, %.lr.ph.i ], [ %i.bk, %.noexc94 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %i.a, ptr %1, align 8, !tbaa !196
  store ptr %3, ptr %i.bh, align 8, !tbaa !1030
  store ptr %.sroa.01.05.i, ptr %i.bi, align 8, !tbaa !1027
  %i.bj = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiNS1_17NonStandardLayoutEEEEEJNS0_15linked_hash_mapIiS7_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE12lazy_emplaceIiZNSG_14InsertInternalIRKS8_EES5_IS9_bEOT_EUlRKSQ_E_EENSK_8iteratorEST_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.05.i, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc94 unwind label %bb.v   ; 0 uses

.noexc94:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, %.pre177
  br i1 %.not.i, label %_ZN4absl12lts_2026052615linked_hash_mapIiNS0_18container_internal17NonStandardLayoutENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS3_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit, label %bb.u, !llvm.loop !108

_ZN4absl12lts_2026052615linked_hash_mapIiNS0_18container_internal17NonStandardLayoutENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS3_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit: ; preds = %.noexc94
  %.pre178 = load ptr, ptr %2, align 8, !tbaa !1027
  %.pre179 = load ptr, ptr %i.r, align 8, !tbaa !1027
  br label %_ZN4absl12lts_2026052615linked_hash_mapIiNS0_18container_internal17NonStandardLayoutENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS3_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit

_ZN4absl12lts_2026052615linked_hash_mapIiNS0_18container_internal17NonStandardLayoutENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS3_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit: ; preds = %_ZN4absl12lts_2026052615linked_hash_mapIiNS0_18container_internal17NonStandardLayoutENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS3_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit, %.critedge75
  %i.bl = phi ptr [ %.pre179, %_ZN4absl12lts_2026052615linked_hash_mapIiNS0_18container_internal17NonStandardLayoutENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS3_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit ], [ %.pre177, %.critedge75 ] ; 2 uses
  %i.bm = phi ptr [ %.pre178, %_ZN4absl12lts_2026052615linked_hash_mapIiNS0_18container_internal17NonStandardLayoutENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS3_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit ], [ %.pre, %.critedge75 ] ; 2 uses
  %.not166173 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not166173, label %.loopexit, label %.lr.ph175

.lr.ph175:                                        ; preds = %_ZN4absl12lts_2026052615linked_hash_mapIiNS0_18container_internal17NonStandardLayoutENS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS3_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.w:                                             ; preds = %.lr.ph175, %bb.bf
  %.sroa.0153.0174 = phi ptr [ %i.bm, %.lr.ph175 ], [ %i.fd, %bb.bf ] ; 6 uses
  %i.bs = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiNS1_17NonStandardLayoutEEEEEJNS0_15linked_hash_mapIiS7_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE4findIiEENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0153.0174)
          to label %.noexc101 unwind label %bb.z  ; 2 uses

.noexc101:                                        ; preds = %bb.w
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.preheader.i.i104, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95

_ZSt9__advanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95: ; preds = %.noexc101
  %i.bv = extractvalue { ptr, ptr } %i.bs, 1
  %.sroa.0.0.copyload.i96 = load ptr, ptr %i.bv, align 8, !tbaa !271 ; 2 uses
  %i.bw = load ptr, ptr %.sroa.0.0.copyload.i96, align 8, !tbaa !188
  br label %.preheader.i.i104

.preheader.i.i104:                                ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95, %.noexc101
  %.sroa.08.0.i97 = phi ptr [ %.sroa.0.0.copyload.i96, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95 ], [ %i.n, %.noexc101 ] ; 5 uses
  %.sroa.3.0.i98 = phi ptr [ %i.bw, %_ZSt9__advanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95 ], [ %i.n, %.noexc101 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i32 1, ptr %i.d, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %.not13.i.i105 = icmp eq ptr %.sroa.08.0.i97, %.sroa.3.0.i98
  br i1 %.not13.i.i105, label %_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit.thread, label %.lr.ph.i.i106

_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit.thread: ; preds = %.preheader.i.i104
  store i64 0, ptr %i.e, align 8, !tbaa !156
  br label %bb.y

.lr.ph.i.i106:                                    ; preds = %.preheader.i.i104, %.lr.ph.i.i106
  %.015.i.i107 = phi i64 [ %i.by, %.lr.ph.i.i106 ], [ 0, %.preheader.i.i104 ] ; 2 uses
  %.sroa.010.014.i.i108 = phi ptr [ %i.bx, %.lr.ph.i.i106 ], [ %.sroa.08.0.i97, %.preheader.i.i104 ]
  %i.bx = load ptr, ptr %.sroa.010.014.i.i108, align 8, !tbaa !188 ; 2 uses
  %i.by = add nuw nsw i64 %.015.i.i107, 1         ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.bx, %.sroa.3.0.i98
  br i1 %.not.i.i109, label %_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit, label %.lr.ph.i.i106, !llvm.loop !12792

_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit: ; preds = %.lr.ph.i.i106
  store i64 %i.by, ptr %i.e, align 8, !tbaa !156
  %i.bz = icmp eq i64 %.015.i.i107, 0
  br i1 %i.bz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114 unwind label %bb.aa

bb.y:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit.thread, %_ZSt8distanceISt14_List_iteratorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.468, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114 unwind label %bb.aa

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.ca = load i8, ptr %7, align 8, !tbaa !209, !range !148, !noundef !149
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.critedge77, label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.ao

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.ce = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i115, label %_ZNK7testing15AssertionResult15failure_messageEv.exit116, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit116

_ZNK7testing15AssertionResult15failure_messageEv.exit116: ; preds = %bb.ad, %bb.ac
  %i.cg = phi ptr [ %i.cf, %bb.ad ], [ @.str.261, %bb.ac ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.cg)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.ch = load ptr, ptr %8, align 8, !tbaa !212   ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.af
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !169
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %bb.af, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 4 uses
  %.not.i.i120 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i120, label %.critedge79, label %bb.ag

bb.ag:                                            ; preds = %_ZN7testing7MessageD2Ev.exit119
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !154 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121: ; preds = %bb.ag
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !157
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef 32) #40
  br label %.critedge79

bb.ah:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit127

bb.ai:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn60 = phi { ptr, i32 } [ %i.ct, %bb.aj ], [ %i.cs, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.cu = load ptr, ptr %8, align 8, !tbaa !212   ; 3 uses
  %.not.i.i125 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i125, label %_ZN7testing7MessageD2Ev.exit127, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126: ; preds = %bb.ak
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !169
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit127

_ZN7testing7MessageD2Ev.exit127:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126, %bb.ak, %bb.ah
  %.pn60.pn = phi { ptr, i32 } [ %i.cr, %bb.ah ], [ %.pn60, %bb.ak ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  br label %bb.ao

.critedge77:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114
  %i.cy = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 4 uses
  %.not.i.i128 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i128, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge77
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !154 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129: ; preds = %bb.al
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !157
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 32) #40
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130, %.critedge77
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0153.0174, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i97, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0153.0174, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i97, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0153.0174, i64 24
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !158, !noalias !12797 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i97, i64 40
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !158, !noalias !12797
  %i.dm = icmp eq i64 %i.dj, %i.dl
  br i1 %i.dm, label %bb.an, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.thread6.i.i

bb.an:                                            ; preds = %bb.am
  %i.dn = icmp eq i64 %i.dj, 0
  br i1 %i.dn, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.thread.i.i, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i

_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i: ; preds = %bb.an
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !154, !noalias !12797
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !154, !noalias !12797
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.dp, ptr %i.do, i64 %i.dj), !noalias !12797
  %i.dq = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.dq, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.thread.i.i, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.thread6.i.i

_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.thread.i.i: ; preds = %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i, %bb.an
end_hunk_6
begin_hunk_7_@_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapINS4_17NonStandardLayoutEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_iEEEEEEEE19GetSetUpCaseOrSuiteEPKci:bb.a
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.444, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapINS4_17NonStandardLayoutEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_iEEEEEEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.439, i32 noundef 533)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.442, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.445, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !169
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !178
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.444, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapINS4_17NonStandardLayoutEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_iEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_15linked_hash_mapINS4_17NonStandardLayoutEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_iEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapINS1_17NonStandardLayoutEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_iEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapINS1_17NonStandardLayoutEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_iEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_15linked_hash_mapINS1_17NonStandardLayoutEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_iEEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %class.anon.2001, align 8           ; 6 uses
  %2 = alloca %"class.std::vector.1983", align 8  ; 13 uses
  %3 = alloca %"class.absl::lts_20260526::linked_hash_map.1471", align 8 ; 16 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = invoke ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS8_EEEiNS5_9GeneratorIS8_vEEET_SE_T0_T1_(ptr nonnull %2, i32 noundef 10)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.g = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156
  %i.i = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156 ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !156
  store i64 1, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.g, ptr %i.k, align 8, !tbaa !641
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.i, ptr %i.l, align 8, !tbaa !643
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !187
  store ptr %i.n, ptr %i.n, align 8, !tbaa !188
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 0, ptr %i.p, align 8, !tbaa !190
  %i.q = load ptr, ptr %2, align 8, !tbaa !1083   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1083 ; 2 uses
  %.not171 = icmp eq ptr %i.q, %i.s
  br i1 %.not171, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.d:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.0157.0172 = phi ptr [ %i.q, %.lr.ph ], [ %i.bg, %bb.r ] ; 2 uses
  %i.v = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_17NonStandardLayoutEiEEEEJNS0_15linked_hash_mapIS6_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE4findIS6_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0157.0172)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.preheader.i.i, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %.noexc
  %i.y = extractvalue { ptr, ptr } %i.v, 1
  %.sroa.0.0.copyload.i = load ptr, ptr %i.y, align 8, !tbaa !271 ; 2 uses
  %i.z = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !188
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %.noexc
  %.sroa.08.0.i = phi ptr [ %.sroa.0.0.copyload.i, %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.n, %.noexc ] ; 2 uses
  %.sroa.3.0.i = phi ptr [ %i.z, %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.n, %.noexc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 0, ptr %i.b, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %.not13.i.i = icmp eq ptr %.sroa.08.0.i, %.sroa.3.0.i
  br i1 %.not13.i.i, label %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread, label %.lr.ph.i.i

_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread: ; preds = %.preheader.i.i
  store i64 0, ptr %i.c, align 8, !tbaa !156
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.f

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.sroa.010.014.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.08.0.i, %.preheader.i.i ]
  %i.aa = load ptr, ptr %.sroa.010.014.i.i, align 8, !tbaa !188 ; 2 uses
  %i.ab = add nuw nsw i64 %.015.i.i, 1            ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %.sroa.3.0.i
  br i1 %.not.i.i, label %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread163, label %.lr.ph.i.i, !llvm.loop !12798

_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread163: ; preds = %.lr.ph.i.i
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !156
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.303, ptr noundef nonnull @.str.468, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread, %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.ac = load i8, ptr %4, align 8, !tbaa !209, !range !148, !noundef !149
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.critedge, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.f:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread163, %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit80.thread
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.s

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !210 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i83, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.i ], [ @.str.261, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.ai)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.aj = load ptr, ptr %5, align 8, !tbaa !212   ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i84, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !169
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !210 ; 4 uses
  %.not.i.i85 = icmp eq ptr %i.an, null
  br i1 %.not.i.i85, label %bb.t, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 32) #40
  br label %bb.t

bb.m:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit88

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #37
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.av, %bb.o ], [ %i.au, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.aw = load ptr, ptr %5, align 8, !tbaa !212   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit88, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.p
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit88

_ZN7testing7MessageD2Ev.exit88:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  br label %bb.s

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.ba = load ptr, ptr %i.t, align 8, !tbaa !210 ; 4 uses
  %.not.i.i89 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i89, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !154 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !157
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #40
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0157.0172, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.s
  br i1 %.not, label %.critedge75, label %bb.d

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit88, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit88 ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.bj

bb.t:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.loopexit

.critedge75:                                      ; preds = %bb.r
  %.pre = load ptr, ptr %2, align 8, !tbaa !1083  ; 3 uses
  %.pre177 = load ptr, ptr %i.r, align 8, !tbaa !1083 ; 3 uses
  %.not4.i = icmp eq ptr %.pre, %.pre177
  br i1 %.not4.i, label %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal17NonStandardLayoutEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge75
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.u

bb.u:                                             ; preds = %.noexc94, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %.pre, %.lr.ph.i ], [ %i.bk, %.noexc94 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %i.a, ptr %1, align 8, !tbaa !196
  store ptr %3, ptr %i.bh, align 8, !tbaa !1086
  store ptr %.sroa.01.05.i, ptr %i.bi, align 8, !tbaa !1083
  %i.bj = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_17NonStandardLayoutEiEEEEJNS0_15linked_hash_mapIS6_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE12lazy_emplaceIS6_ZNSG_14InsertInternalIRKS8_EES5_IS9_bEOT_EUlRKSQ_E_EENSK_8iteratorEST_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.01.05.i, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc94 unwind label %bb.v   ; 0 uses

.noexc94:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, %.pre177
  br i1 %.not.i, label %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal17NonStandardLayoutEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit, label %bb.u, !llvm.loop !115

_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal17NonStandardLayoutEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit: ; preds = %.noexc94
  %.pre178 = load ptr, ptr %2, align 8, !tbaa !1083
  %.pre179 = load ptr, ptr %i.r, align 8, !tbaa !1083
  br label %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal17NonStandardLayoutEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit

_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal17NonStandardLayoutEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit: ; preds = %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal17NonStandardLayoutEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit, %.critedge75
  %i.bl = phi ptr [ %.pre179, %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal17NonStandardLayoutEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit ], [ %.pre177, %.critedge75 ] ; 2 uses
  %i.bm = phi ptr [ %.pre178, %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal17NonStandardLayoutEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit.loopexit ], [ %.pre, %.critedge75 ] ; 2 uses
  %.not166173 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not166173, label %.loopexit, label %.lr.ph175

.lr.ph175:                                        ; preds = %_ZN4absl12lts_2026052615linked_hash_mapINS0_18container_internal17NonStandardLayoutEiNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS3_iEEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SK_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.w:                                             ; preds = %.lr.ph175, %bb.bg
  %.sroa.0153.0174 = phi ptr [ %i.bm, %.lr.ph175 ], [ %i.ev, %bb.bg ] ; 4 uses
  %i.bs = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_17NonStandardLayoutEiEEEEJNS0_15linked_hash_mapIS6_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE4findIS6_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0153.0174)
          to label %.noexc101 unwind label %bb.z  ; 2 uses

.noexc101:                                        ; preds = %bb.w
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.preheader.i.i104, label %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95

_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95: ; preds = %.noexc101
  %i.bv = extractvalue { ptr, ptr } %i.bs, 1
  %.sroa.0.0.copyload.i96 = load ptr, ptr %i.bv, align 8, !tbaa !271 ; 2 uses
  %i.bw = load ptr, ptr %.sroa.0.0.copyload.i96, align 8, !tbaa !188
  br label %.preheader.i.i104

.preheader.i.i104:                                ; preds = %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95, %.noexc101
  %.sroa.08.0.i97 = phi ptr [ %.sroa.0.0.copyload.i96, %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95 ], [ %i.n, %.noexc101 ] ; 3 uses
  %.sroa.3.0.i98 = phi ptr [ %i.bw, %_ZSt9__advanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEElEvRT_T0_St26bidirectional_iterator_tag.exit.i95 ], [ %i.n, %.noexc101 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i32 1, ptr %i.d, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %.not13.i.i105 = icmp eq ptr %.sroa.08.0.i97, %.sroa.3.0.i98
  br i1 %.not13.i.i105, label %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit.thread, label %.lr.ph.i.i106

_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit.thread: ; preds = %.preheader.i.i104
  store i64 0, ptr %i.e, align 8, !tbaa !156
  br label %bb.y

.lr.ph.i.i106:                                    ; preds = %.preheader.i.i104, %.lr.ph.i.i106
  %.015.i.i107 = phi i64 [ %i.by, %.lr.ph.i.i106 ], [ 0, %.preheader.i.i104 ] ; 2 uses
  %.sroa.010.014.i.i108 = phi ptr [ %i.bx, %.lr.ph.i.i106 ], [ %.sroa.08.0.i97, %.preheader.i.i104 ]
  %i.bx = load ptr, ptr %.sroa.010.014.i.i108, align 8, !tbaa !188 ; 2 uses
  %i.by = add nuw nsw i64 %.015.i.i107, 1         ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.bx, %.sroa.3.0.i98
  br i1 %.not.i.i109, label %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit, label %.lr.ph.i.i106, !llvm.loop !12798

_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit: ; preds = %.lr.ph.i.i106
  store i64 %i.by, ptr %i.e, align 8, !tbaa !156
  %i.bz = icmp eq i64 %.015.i.i107, 0
  br i1 %i.bz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114 unwind label %bb.aa

bb.y:                                             ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit.thread, %_ZSt8distanceISt14_List_iteratorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEENSt15iterator_traitsIT_E15difference_typeESA_SA_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.468, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114 unwind label %bb.aa

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.ca = load i8, ptr %7, align 8, !tbaa !209, !range !148, !noundef !149
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.critedge77, label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.ap

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.ce = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i115, label %_ZNK7testing15AssertionResult15failure_messageEv.exit116, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !154
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit116

_ZNK7testing15AssertionResult15failure_messageEv.exit116: ; preds = %bb.ad, %bb.ac
  %i.cg = phi ptr [ %i.cf, %bb.ad ], [ @.str.261, %bb.ac ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.cg)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.ch = load ptr, ptr %8, align 8, !tbaa !212   ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.af
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !169
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %bb.af, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 4 uses
  %.not.i.i120 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i120, label %.critedge79, label %bb.ag

bb.ag:                                            ; preds = %_ZN7testing7MessageD2Ev.exit119
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !154 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121: ; preds = %bb.ag
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !157
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef 32) #40
  br label %.critedge79

bb.ah:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit127

bb.ai:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn60 = phi { ptr, i32 } [ %i.ct, %bb.aj ], [ %i.cs, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.cu = load ptr, ptr %8, align 8, !tbaa !212   ; 3 uses
  %.not.i.i125 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i125, label %_ZN7testing7MessageD2Ev.exit127, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126: ; preds = %bb.ak
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !169
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit127

_ZN7testing7MessageD2Ev.exit127:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126, %bb.ak, %bb.ah
  %.pn60.pn = phi { ptr, i32 } [ %i.cr, %bb.ah ], [ %.pn60, %bb.ak ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  br label %bb.ap

.critedge77:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114
  %i.cy = load ptr, ptr %i.bn, align 8, !tbaa !210 ; 4 uses
  %.not.i.i128 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i128, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge77
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !154 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129: ; preds = %bb.al
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !157
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 32) #40
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130, %.critedge77
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0153.0174, i64 40 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i97, i64 56 ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !264, !noalias !12803
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !264, !noalias !12803
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.aq

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.469, ptr noundef nonnull align 4 dereferenceable(4) %i.de, ptr noundef nonnull align 4 dereferenceable(4) %i.df)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.aq

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.an, %bb.ao
  %i.dj = load i8, ptr %10, align 8, !tbaa !209, !range !148, !noundef !149
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.be, label %bb.ar

bb.ap:                                            ; preds = %_ZN7testing7MessageD2Ev.exit127, %bb.aa
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %_ZN7testing7MessageD2Ev.exit127 ], [ %i.cd, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
end_hunk_7
