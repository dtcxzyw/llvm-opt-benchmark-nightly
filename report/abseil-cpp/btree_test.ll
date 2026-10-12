Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 695
loop-unroll.NumUnrolled: 833
begin_hunk_0_@_ZN7testing7MatcherIRKN4absl12lts_202605269btree_mapINS2_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS6_ESaISt4pairIKS6_iEEEEED0Ev:bb.a
bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !2663
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2669
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !813
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit unwind label %bb.d, !inline_history !703

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39, !inline_history !2670
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2663
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !2663
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2668
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEE, i64 16), ptr %0, align 8, !tbaa !816
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !2663 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2669
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !813
  %i.f = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !2663
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2669
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !813
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit unwind label %bb.d, !inline_history !703

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39, !inline_history !2670
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE19MatchAndExplainImplINSH_11ValuePolicyIPKNS_16MatcherInterfaceISG_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSH_SG_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !813
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2665 ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8, !tbaa !816
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val.val, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE12DescribeImplINSH_11ValuePolicyIPKNS_16MatcherInterfaceISG_EELb1EEEEEvRKSH_PSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.a, align 8, !tbaa !813
  %i.b = getelementptr i8, ptr %.val4, i64 8
  %.val4.val = load ptr, ptr %i.b, align 8, !tbaa !2665 ; 2 uses
  %i.c = load ptr, ptr %.val4.val, align 8, !tbaa !816
  %. = select i1 %2, i64 24, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val4.val, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE16GetDescriberImplINSH_11ValuePolicyIPKNS_16MatcherInterfaceISG_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSH_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !813
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2665
  ret ptr %.val.val
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !2665 ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEEEclEPSI_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEEEclEPSI_.exit.i.i: ; preds = %bb.b
  %i.c = load ptr, ptr %.val, align 8, !tbaa !816
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val) #37, !inline_history !20282
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEEEclEPSI_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 10         ; 4 uses
  %.val22.i = load i8, ptr %i.a, align 1, !tbaa !813 ; 2 uses
  %.val26.i = load ptr, ptr %1, align 8, !tbaa !2655
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val24.i = load i8, ptr %i.b, align 8, !tbaa !813
  %i.c = zext i8 %.val24.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr %.val26.i, i64 12
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = zext i8 %.val22.i to i64                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f ; 6 uses
  %i.i = load <2 x i32>, ptr %i.e, align 4, !tbaa !802
  store <2 x i32> %i.i, ptr %i.h, align 4, !tbaa !802
  %i.j = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val30.i = load i8, ptr %i.j, align 1, !tbaa !813 ; 2 uses
  %i.k = zext i8 %.val30.i to i64
  %i.l = getelementptr i8, ptr %2, i64 12         ; 7 uses
  %.idx.i.i = shl nuw nsw i64 %i.k, 3             ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %.idx.i.i ; 2 uses
  %.not1.i.i = icmp eq i8 %.val30.i, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.n = add nsw i64 %.idx.i.i, -8                ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 248
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.q = shl nuw nsw i64 %i.f, 3                  ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 20
  %i.t = add nuw nsw i64 %i.q, %.idx.i.i          ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = getelementptr i8, ptr %2, i64 %.idx.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = getelementptr i8, ptr %1, i64 %i.q
  %i.z = getelementptr i8, ptr %i.y, i64 24
  %i.aa = getelementptr i8, ptr %1, i64 %i.t
  %i.ab = getelementptr i8, ptr %i.aa, i64 20
  %i.ac = getelementptr i8, ptr %2, i64 16
  %bound0 = icmp ult ptr %i.s, %i.x
  %bound1 = icmp ult ptr %i.l, %i.v
  %found.conflict = and i1 %bound0, %bound1
  %bound013 = icmp ult ptr %i.z, %i.m
  %bound114 = icmp ult ptr %i.ac, %i.ab
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.h, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 3 uses
  %i.ah = or disjoint i64 %i.ag, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.ag
  %next.gep16 = getelementptr i8, ptr %i.h, i64 %i.ah
  %next.gep17 = getelementptr i8, ptr %i.l, i64 %i.ag
  %next.gep18 = getelementptr i8, ptr %i.l, i64 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep16, i64 8
  %wide.vec = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !802
  %wide.vec20 = load <4 x i32>, ptr %next.gep18, align 4, !tbaa !802
  store <4 x i32> %wide.vec, ptr %i.ai, align 4, !tbaa !802
  store <4 x i32> %wide.vec20, ptr %i.aj, align 4, !tbaa !802
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !20283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i.preheader68

.lr.ph.i.i.preheader68:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader68, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader68 ]
  %.0122.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader68 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8 ; 2 uses
  %i.al = load <2 x i32>, ptr %.0122.i.i, align 4, !tbaa !802
  store <2 x i32> %i.al, ptr %.03.i.i, align 4, !tbaa !802
  %i.am = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.m
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !20284

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val29.pre4.pre.i = load i8, ptr %i.a, align 2, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, %bb.a
  %.val29.pre4.i = phi i8 [ %.val29.pre4.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i ], [ %.val22.i, %bb.a ] ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 11
  %.val27.i = load i8, ptr %i.an, align 1, !tbaa !813
  %.not.i33.i = icmp eq i8 %.val27.i, 0
  br i1 %.not.i33.i, label %bb.b, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit..loopexit_crit_edge.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit..loopexit_crit_edge.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i
  %.val28.pre.i = load i8, ptr %i.j, align 1, !tbaa !813
  br label %.loopexit.i

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in3.i = phi i8 [ %.val29.pre4.i, %bb.b ], [ %.0.i, %bb.c ]
  %.0192.i = phi i8 [ 0, %bb.b ], [ %i.aw, %bb.c ] ; 2 uses
  %.0.i = add i8 %.0.in3.i, 1                     ; 3 uses
  %i.aq = zext i8 %.0192.i to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2655 ; 3 uses
  %i.at = zext i8 %.0.i to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.at
  store ptr %i.as, ptr %i.au, align 8, !tbaa !2655
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i8 %.0.i, ptr %i.av, align 1, !tbaa !813
  store ptr %1, ptr %i.as, align 8, !tbaa !2655
  %i.aw = add i8 %.0192.i, 1                      ; 2 uses
  %.val.i = load i8, ptr %i.j, align 1, !tbaa !813 ; 2 uses
  %.not.i = icmp ugt i8 %i.aw, %.val.i
  br i1 %.not.i, label %.loopexit.loopexit.i, label %bb.c, !llvm.loop !20285

.loopexit.loopexit.i:                             ; preds = %bb.c
  %.val29.pre.i = load i8, ptr %i.a, align 2, !tbaa !813
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit..loopexit_crit_edge.i
  %.val28.i = phi i8 [ %.val.i, %.loopexit.loopexit.i ], [ %.val28.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit..loopexit_crit_edge.i ]
  %.val29.i = phi i8 [ %.val29.pre.i, %.loopexit.loopexit.i ], [ %.val29.pre4.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit..loopexit_crit_edge.i ]
  %i.ax = add i8 %.val28.i, 1
  %i.ay = add i8 %i.ax, %.val29.i
  store i8 %i.ay, ptr %i.a, align 2, !tbaa !813
  store i8 0, ptr %i.j, align 1, !tbaa !813
  %.val25.i = load ptr, ptr %1, align 8, !tbaa !2655 ; 9 uses
  %.val23.i = load i8, ptr %i.b, align 8, !tbaa !813 ; 3 uses
  %i.az = getelementptr i8, ptr %.val25.i, i64 10 ; 2 uses
  %.val.i.i = load i8, ptr %i.az, align 1, !tbaa !813 ; 5 uses
  %i.ba = zext i8 %.val.i.i to i64                ; 3 uses
  %i.bb = add i8 %.val23.i, 1                     ; 2 uses
  %i.bc = zext i8 %i.bb to i64                    ; 5 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %i.be = getelementptr i8, ptr %.val25.i, i64 12 ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bc ; 7 uses
  %.idx.i.i.i = shl nsw i64 %i.bd, 3
  %i.bg = getelementptr i8, ptr %i.bf, i64 %.idx.i.i.i ; 2 uses
  %.not1.i.i.i = icmp eq i8 %.val.i.i, %i.bb
  br i1 %.not1.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit.i
  %i.bh = zext i8 %.val23.i to i64                ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.be, i64 %i.bh ; 6 uses
  %i.bj = shl nuw nsw i64 %i.ba, 3
  %i.bk = shl nuw nsw i64 %i.bc, 3
  %i.bl = add nsw i64 %i.bj, -8
  %i.bm = sub nsw i64 %i.bl, %i.bk                ; 2 uses
  %i.bn = lshr exact i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.bm, 312
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.preheader, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.preheader.i.i.i
  %i.bp = shl nuw nsw i64 %i.ba, 3                ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bh, 3                ; 2 uses
  %i.br = shl nuw nsw i64 %i.bc, 3                ; 3 uses
  %i.bs = add nuw nsw i64 %i.bp, %i.bq            ; 2 uses
  %i.bt = add nuw nsw i64 %i.bs, 8
  %i.bu = sub nsw i64 %i.bt, %i.br
  %i.bv = getelementptr i8, ptr %.val25.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %.val25.i, i64 %i.bp
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = getelementptr i8, ptr %.val25.i, i64 %i.bq
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = add nuw nsw i64 %i.bs, 12
  %i.cb = sub nsw i64 %i.ca, %i.br
  %i.cc = getelementptr i8, ptr %.val25.i, i64 %i.cb
  %i.cd = getelementptr i8, ptr %.val25.i, i64 %i.br
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %bound040 = icmp ult ptr %i.bi, %i.bx
  %bound141 = icmp ult ptr %i.bf, %i.bv
  %found.conflict42 = and i1 %bound040, %bound141
  %bound043 = icmp ult ptr %i.bz, %i.bg
  %bound144 = icmp ult ptr %i.ce, %i.cc
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx46 = or i1 %found.conflict42, %found.conflict45
  br i1 %conflict.rdx46, label %.lr.ph.i.i.i.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.bo, 4611686018427387900   ; 3 uses
  %i.cf = shl i64 %n.vec48, 3                     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bi, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.bf, i64 %i.cf
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next63, %vector.body49 ] ; 2 uses
  %i.ci = shl i64 %index50, 3                     ; 3 uses
  %i.cj = or disjoint i64 %i.ci, 16               ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.bi, i64 %i.ci
  %next.gep52 = getelementptr i8, ptr %i.bi, i64 %i.cj
  %next.gep53 = getelementptr i8, ptr %i.bf, i64 %i.ci
  %next.gep54 = getelementptr i8, ptr %i.bf, i64 %i.cj
  %wide.vec55 = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !802
  %wide.vec58 = load <4 x i32>, ptr %next.gep54, align 4, !tbaa !802
  store <4 x i32> %wide.vec55, ptr %next.gep51, align 4, !tbaa !802
  store <4 x i32> %wide.vec58, ptr %next.gep52, align 4, !tbaa !802
  %index.next63 = add nuw i64 %index50, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next63, %n.vec48
  br i1 %i.ck, label %middle.block64, label %vector.body49, !llvm.loop !20286

middle.block64:                                   ; preds = %vector.body49
  %cmp.n65 = icmp eq i64 %i.bo, %n.vec48
  br i1 %cmp.n65, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck39, %.lr.ph.preheader.i.i.i, %middle.block64
  %.03.i.i.i.ph = phi ptr [ %i.bi, %vector.memcheck39 ], [ %i.bi, %.lr.ph.preheader.i.i.i ], [ %i.cg, %middle.block64 ]
  %.0122.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck39 ], [ %i.bf, %.lr.ph.preheader.i.i.i ], [ %i.ch, %middle.block64 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %.03.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0122.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i ], [ %.0122.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cl = load <2 x i32>, ptr %.0122.i.i.i, align 4, !tbaa !802
end_hunk_0
begin_hunk_1_@_ZN7testing7MatcherIRKN4absl12lts_2026052614btree_multimapINS2_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS6_ESaISt4pairIKS6_iEEEEED0Ev:bb.a
bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !2681
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2687
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !813
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit unwind label %bb.d, !inline_history !705

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39, !inline_history !2688
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2681
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !2681
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2686
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEE, i64 16), ptr %0, align 8, !tbaa !816
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !2681 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2687
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !813
  %i.f = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !2681
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2687
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !813
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit unwind label %bb.d, !inline_history !705

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39, !inline_history !2688
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE19MatchAndExplainImplINSH_11ValuePolicyIPKNS_16MatcherInterfaceISG_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSH_SG_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !813
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2683 ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8, !tbaa !816
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val.val, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE12DescribeImplINSH_11ValuePolicyIPKNS_16MatcherInterfaceISG_EELb1EEEEEvRKSH_PSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.a, align 8, !tbaa !813
  %i.b = getelementptr i8, ptr %.val4, i64 8
  %.val4.val = load ptr, ptr %i.b, align 8, !tbaa !2683 ; 2 uses
  %i.c = load ptr, ptr %.val4.val, align 8, !tbaa !816
  %. = select i1 %2, i64 24, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val4.val, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE16GetDescriberImplINSH_11ValuePolicyIPKNS_16MatcherInterfaceISG_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSH_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !813
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2683
  ret ptr %.val.val
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !2683 ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEEEclEPSI_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEEEclEPSI_.exit.i.i: ; preds = %bb.b
  %i.c = load ptr, ptr %.val, align 8, !tbaa !816
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val) #37, !inline_history !20468
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEEEclEPSI_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 10         ; 4 uses
  %.val22.i = load i8, ptr %i.a, align 1, !tbaa !813 ; 2 uses
  %.val26.i = load ptr, ptr %1, align 8, !tbaa !2678
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val24.i = load i8, ptr %i.b, align 8, !tbaa !813
  %i.c = zext i8 %.val24.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr %.val26.i, i64 12
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = zext i8 %.val22.i to i64                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f ; 6 uses
  %i.i = load <2 x i32>, ptr %i.e, align 4, !tbaa !802
  store <2 x i32> %i.i, ptr %i.h, align 4, !tbaa !802
  %i.j = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val30.i = load i8, ptr %i.j, align 1, !tbaa !813 ; 2 uses
  %i.k = zext i8 %.val30.i to i64
  %i.l = getelementptr i8, ptr %2, i64 12         ; 7 uses
  %.idx.i.i = shl nuw nsw i64 %i.k, 3             ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %.idx.i.i ; 2 uses
  %.not1.i.i = icmp eq i8 %.val30.i, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.n = add nsw i64 %.idx.i.i, -8                ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 248
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.q = shl nuw nsw i64 %i.f, 3                  ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 20
  %i.t = add nuw nsw i64 %i.q, %.idx.i.i          ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = getelementptr i8, ptr %2, i64 %.idx.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = getelementptr i8, ptr %1, i64 %i.q
  %i.z = getelementptr i8, ptr %i.y, i64 24
  %i.aa = getelementptr i8, ptr %1, i64 %i.t
  %i.ab = getelementptr i8, ptr %i.aa, i64 20
  %i.ac = getelementptr i8, ptr %2, i64 16
  %bound0 = icmp ult ptr %i.s, %i.x
  %bound1 = icmp ult ptr %i.l, %i.v
  %found.conflict = and i1 %bound0, %bound1
  %bound013 = icmp ult ptr %i.z, %i.m
  %bound114 = icmp ult ptr %i.ac, %i.ab
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.h, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 3 uses
  %i.ah = or disjoint i64 %i.ag, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.ag
  %next.gep16 = getelementptr i8, ptr %i.h, i64 %i.ah
  %next.gep17 = getelementptr i8, ptr %i.l, i64 %i.ag
  %next.gep18 = getelementptr i8, ptr %i.l, i64 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep16, i64 8
  %wide.vec = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !802
  %wide.vec20 = load <4 x i32>, ptr %next.gep18, align 4, !tbaa !802
  store <4 x i32> %wide.vec, ptr %i.ai, align 4, !tbaa !802
  store <4 x i32> %wide.vec20, ptr %i.aj, align 4, !tbaa !802
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !20469

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i, label %.lr.ph.i.i.preheader68

.lr.ph.i.i.preheader68:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader68, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader68 ]
  %.0122.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader68 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8 ; 2 uses
  %i.al = load <2 x i32>, ptr %.0122.i.i, align 4, !tbaa !802
  store <2 x i32> %i.al, ptr %.03.i.i, align 4, !tbaa !802
  %i.am = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.m
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !20470

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val29.pre4.pre.i = load i8, ptr %i.a, align 2, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i, %bb.a
  %.val29.pre4.i = phi i8 [ %.val29.pre4.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i ], [ %.val22.i, %bb.a ] ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 11
  %.val27.i = load i8, ptr %i.an, align 1, !tbaa !813
  %.not.i33.i = icmp eq i8 %.val27.i, 0
  br i1 %.not.i33.i, label %bb.b, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit..loopexit_crit_edge.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit..loopexit_crit_edge.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i
  %.val28.pre.i = load i8, ptr %i.j, align 1, !tbaa !813
  br label %.loopexit.i

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in3.i = phi i8 [ %.val29.pre4.i, %bb.b ], [ %.0.i, %bb.c ]
  %.0192.i = phi i8 [ 0, %bb.b ], [ %i.aw, %bb.c ] ; 2 uses
  %.0.i = add i8 %.0.in3.i, 1                     ; 3 uses
  %i.aq = zext i8 %.0192.i to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2678 ; 3 uses
  %i.at = zext i8 %.0.i to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.at
  store ptr %i.as, ptr %i.au, align 8, !tbaa !2678
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i8 %.0.i, ptr %i.av, align 1, !tbaa !813
  store ptr %1, ptr %i.as, align 8, !tbaa !2678
  %i.aw = add i8 %.0192.i, 1                      ; 2 uses
  %.val.i = load i8, ptr %i.j, align 1, !tbaa !813 ; 2 uses
  %.not.i = icmp ugt i8 %i.aw, %.val.i
  br i1 %.not.i, label %.loopexit.loopexit.i, label %bb.c, !llvm.loop !20471

.loopexit.loopexit.i:                             ; preds = %bb.c
  %.val29.pre.i = load i8, ptr %i.a, align 2, !tbaa !813
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit..loopexit_crit_edge.i
  %.val28.i = phi i8 [ %.val.i, %.loopexit.loopexit.i ], [ %.val28.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit..loopexit_crit_edge.i ]
  %.val29.i = phi i8 [ %.val29.pre.i, %.loopexit.loopexit.i ], [ %.val29.pre4.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit..loopexit_crit_edge.i ]
  %i.ax = add i8 %.val28.i, 1
  %i.ay = add i8 %i.ax, %.val29.i
  store i8 %i.ay, ptr %i.a, align 2, !tbaa !813
  store i8 0, ptr %i.j, align 1, !tbaa !813
  %.val25.i = load ptr, ptr %1, align 8, !tbaa !2678 ; 9 uses
  %.val23.i = load i8, ptr %i.b, align 8, !tbaa !813 ; 3 uses
  %i.az = getelementptr i8, ptr %.val25.i, i64 10 ; 2 uses
  %.val.i.i = load i8, ptr %i.az, align 1, !tbaa !813 ; 5 uses
  %i.ba = zext i8 %.val.i.i to i64                ; 3 uses
  %i.bb = add i8 %.val23.i, 1                     ; 2 uses
  %i.bc = zext i8 %i.bb to i64                    ; 5 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %i.be = getelementptr i8, ptr %.val25.i, i64 12 ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bc ; 7 uses
  %.idx.i.i.i = shl nsw i64 %i.bd, 3
  %i.bg = getelementptr i8, ptr %i.bf, i64 %.idx.i.i.i ; 2 uses
  %.not1.i.i.i = icmp eq i8 %.val.i.i, %i.bb
  br i1 %.not1.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit.i
  %i.bh = zext i8 %.val23.i to i64                ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.be, i64 %i.bh ; 6 uses
  %i.bj = shl nuw nsw i64 %i.ba, 3
  %i.bk = shl nuw nsw i64 %i.bc, 3
  %i.bl = add nsw i64 %i.bj, -8
  %i.bm = sub nsw i64 %i.bl, %i.bk                ; 2 uses
  %i.bn = lshr exact i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.bm, 312
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.preheader, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.preheader.i.i.i
  %i.bp = shl nuw nsw i64 %i.ba, 3                ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bh, 3                ; 2 uses
  %i.br = shl nuw nsw i64 %i.bc, 3                ; 3 uses
  %i.bs = add nuw nsw i64 %i.bp, %i.bq            ; 2 uses
  %i.bt = add nuw nsw i64 %i.bs, 8
  %i.bu = sub nsw i64 %i.bt, %i.br
  %i.bv = getelementptr i8, ptr %.val25.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %.val25.i, i64 %i.bp
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = getelementptr i8, ptr %.val25.i, i64 %i.bq
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = add nuw nsw i64 %i.bs, 12
  %i.cb = sub nsw i64 %i.ca, %i.br
  %i.cc = getelementptr i8, ptr %.val25.i, i64 %i.cb
  %i.cd = getelementptr i8, ptr %.val25.i, i64 %i.br
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %bound040 = icmp ult ptr %i.bi, %i.bx
  %bound141 = icmp ult ptr %i.bf, %i.bv
  %found.conflict42 = and i1 %bound040, %bound141
  %bound043 = icmp ult ptr %i.bz, %i.bg
  %bound144 = icmp ult ptr %i.ce, %i.cc
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx46 = or i1 %found.conflict42, %found.conflict45
  br i1 %conflict.rdx46, label %.lr.ph.i.i.i.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.bo, 4611686018427387900   ; 3 uses
  %i.cf = shl i64 %n.vec48, 3                     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bi, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.bf, i64 %i.cf
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next63, %vector.body49 ] ; 2 uses
  %i.ci = shl i64 %index50, 3                     ; 3 uses
  %i.cj = or disjoint i64 %i.ci, 16               ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.bi, i64 %i.ci
  %next.gep52 = getelementptr i8, ptr %i.bi, i64 %i.cj
  %next.gep53 = getelementptr i8, ptr %i.bf, i64 %i.ci
  %next.gep54 = getelementptr i8, ptr %i.bf, i64 %i.cj
  %wide.vec55 = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !802
  %wide.vec58 = load <4 x i32>, ptr %next.gep54, align 4, !tbaa !802
  store <4 x i32> %wide.vec55, ptr %next.gep51, align 4, !tbaa !802
  store <4 x i32> %wide.vec58, ptr %next.gep52, align 4, !tbaa !802
  %index.next63 = add nuw i64 %index50, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next63, %n.vec48
  br i1 %i.ck, label %middle.block64, label %vector.body49, !llvm.loop !20472

middle.block64:                                   ; preds = %vector.body49
  %cmp.n65 = icmp eq i64 %i.bo, %n.vec48
  br i1 %cmp.n65, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck39, %.lr.ph.preheader.i.i.i, %middle.block64
  %.03.i.i.i.ph = phi ptr [ %i.bi, %vector.memcheck39 ], [ %i.bi, %.lr.ph.preheader.i.i.i ], [ %i.cg, %middle.block64 ]
  %.0122.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck39 ], [ %i.bf, %.lr.ph.preheader.i.i.i ], [ %i.ch, %middle.block64 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %.03.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0122.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i ], [ %.0122.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cl = load <2 x i32>, ptr %.0122.i.i.i, align 4, !tbaa !802
end_hunk_1
