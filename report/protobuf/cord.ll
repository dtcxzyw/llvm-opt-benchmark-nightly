inline.NumInlined: 1703
inline.NumDeleted: 496
begin_hunk_0_@_ZN4absl12lts_202505124Cord6AppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueEiE4typeELi0EEEvOSA_:bb.a
  br label %_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.i = tail call fastcc noundef ptr @_ZN4absl12lts_20250512L7NewTreeEPKcmm(ptr noundef %i.d, i64 noundef %i.b)
  br label %_ZN4absl12lts_20250512L17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.j = icmp ne ptr %i.d, %i.e
  tail call void @llvm.assume(i1 %i.j)
  store ptr %i.e, ptr %1, align 8, !tbaa !13
  store i64 0, ptr %i.a, align 8, !tbaa !7
  store i8 0, ptr %i.e, align 8, !tbaa !14
  %i.k = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21
          to label %.noexc.i unwind label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i ; 9 uses

.noexc.i:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 2, ptr %i.l, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.d, ptr %i.m, align 8, !tbaa !13
  store i64 %i.f, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %i.b, ptr %i.o, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_ZN4absl12lts_2025051213cord_internal19CordRepExternalImplIZNS0_L17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14StringReleaserE7ReleaseEPNS1_15CordRepExternalE, ptr %i.p, align 8, !tbaa !17
  store i64 %i.b, ptr %i.k, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 5, ptr %i.q, align 4, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.d, ptr %i.r, align 8, !tbaa !24
  br label %_ZN4absl12lts_20250512L17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.t) #22
  resume { ptr, i32 } %i.s

_ZN4absl12lts_20250512L17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %.noexc.i
  %.0.i = phi ptr [ %i.i, %bb.c ], [ %i.k, %.noexc.i ] ; 2 uses
  %i.u = load i8, ptr %0, align 8, !tbaa !14
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_20250512L17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep16AppendTreeToTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i, i32 noundef 4)
  br label %_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.e:                                             ; preds = %_ZN4absl12lts_20250512L17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep19AppendTreeToInlinedEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i, i32 noundef 4)
  br label %_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !14
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep16AppendTreeToTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep19AppendTreeToInlinedEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN4absl12lts_202505124Cord7PrependINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueEiE4typeELi0EEEvOSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = icmp ult i64 %i.b, 512
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 6 uses
  br i1 %i.c, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_202505124Cord12PrependArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.b, ptr %i.d, i32 noundef 20)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.i = tail call fastcc noundef ptr @_ZN4absl12lts_20250512L7NewTreeEPKcmm(ptr noundef %i.d, i64 noundef %i.b)
  br label %_ZN4absl12lts_20250512L17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.j = icmp ne ptr %i.d, %i.e
  tail call void @llvm.assume(i1 %i.j)
  store ptr %i.e, ptr %1, align 8, !tbaa !13
  store i64 0, ptr %i.a, align 8, !tbaa !7
  store i8 0, ptr %i.e, align 8, !tbaa !14
  %i.k = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21
          to label %.noexc.i unwind label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i ; 9 uses

.noexc.i:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 2, ptr %i.l, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.d, ptr %i.m, align 8, !tbaa !13
  store i64 %i.f, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %i.b, ptr %i.o, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_ZN4absl12lts_2025051213cord_internal19CordRepExternalImplIZNS0_L17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14StringReleaserE7ReleaseEPNS1_15CordRepExternalE, ptr %i.p, align 8, !tbaa !17
  store i64 %i.b, ptr %i.k, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 5, ptr %i.q, align 4, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.d, ptr %i.r, align 8, !tbaa !24
  br label %_ZN4absl12lts_20250512L17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.t) #22
  resume { ptr, i32 } %i.s

_ZN4absl12lts_20250512L17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %.noexc.i
  %.0.i = phi ptr [ %i.i, %bb.c ], [ %i.k, %.noexc.i ] ; 2 uses
  %i.u = load i8, ptr %0, align 8, !tbaa !14
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_20250512L17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep17PrependTreeToTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i, i32 noundef 20)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.e:                                             ; preds = %_ZN4absl12lts_20250512L17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep20PrependTreeToInlinedEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i, i32 noundef 20)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !14
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep17PrependTreeToTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep20PrependTreeToInlinedEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4absl12lts_2025051213cord_internal25InitializeCordRepExternalESt17basic_string_viewIcSt11char_traitsIcEEPNS1_15CordRepExternalE(i64 %0, ptr %1, ptr noundef writeonly captures(none) initializes((0, 8), (12, 13), (16, 24)) %2) local_unnamed_addr #3 {
bb.a:
  store i64 %0, ptr %2, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 5, ptr %i.a, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord9InlineRep19AppendTreeToInlinedEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !14      ; 3 uses
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i8 %i.a to i64
  %i.d = lshr i64 %i.c, 1                         ; 3 uses
  %3 = icmp ult i8 %i.a, 40
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 4083)
  %4 = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %3, i64 32, i64 %4        ; 2 uses
  %i.e = icmp samesign ult i64 %.0.i.i.i, 513     ; 2 uses
  %.neg.i.i.i = select i1 %i.e, i64 -8, i64 -64
  %i.f = select i1 %i.e, i64 8, i64 64
  %i.g = add nsw i64 %.0.i.i.i, -1
  %i.h = add nuw nsw i64 %i.g, %i.f
  %i.i = and i64 %i.h, %.neg.i.i.i                ; 3 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #23 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 2, ptr %i.k, align 4, !tbaa !15
  %i.l = icmp samesign ult i64 %i.i, 513          ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.l, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.l, i64 2, i64 58
  %i.m = lshr i64 %i.i, %.sink6.i.i.i.i.i
  %i.n = add nuw nsw i64 %i.m, %.sink5.i.i.i.i.i  ; 2 uses
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i8 %i.o, ptr %i.p, align 4, !tbaa !23
  store i64 %i.d, ptr %i.j, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.q, ptr noundef nonnull align 1 dereferenceable(15) %i.r, i64 15, i1 false)
  %or.cond.i.i = icmp samesign ugt i64 %i.n, 4
  br i1 %or.cond.i.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i

_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i: ; preds = %bb.b
  %i.s = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 2, ptr %i.t, align 4, !tbaa !15
  store i64 %i.d, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store <4 x i8> <i8 3, i8 0, i8 0, i8 1>, ptr %i.u, align 4, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.j, ptr %i.v, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i: ; preds = %bb.b
  %i.w = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree10CreateSlowEPNS1_7CordRepE(ptr noundef nonnull %i.j)
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i
  %.0.i = phi ptr [ %i.s, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i ], [ %i.w, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i8, ptr %i.x, align 4, !tbaa !23    ; 2 uses
  %or.cond.i.i4 = icmp ugt i8 %i.y, 4
  br i1 %or.cond.i.i4, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i6, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, !prof !31

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i6: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  %.phi.trans.insert.i.i7 = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.pre.i.i8 = load i8, ptr %.phi.trans.insert.i.i7, align 4, !tbaa !23
  %i.ac = icmp ugt i8 %.pre.i.i8, 4
  br i1 %i.ac, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, !prof !34

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i6, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit
  %i.ad = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef %.0.i, ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i6, %bb.c
  %i.ae = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepE(ptr noundef %.0.i, ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.ad, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i ], [ %i.ae, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0, ptr %i.af, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !14
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2025051213cord_internal17cordz_next_sampleE) ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i, !prof !27

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit
  %i.aj = add nsw i64 %i.ah, -1
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit
  %i.ak = tail call noundef i64 @_ZN4absl12lts_2025051213cord_internal25cordz_should_profile_slowERNS1_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !28

bb.d:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %2, i64 noundef %i.ak)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord9InlineRep16AppendTreeToTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::cord_internal::CordzUpdateScope", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = load i64, ptr %0, align 8, !tbaa !14
  %i.b = add nsw i64 %i.a, -1                     ; 3 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !35
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo4LockENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.c, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = invoke fastcc noundef ptr @_ZN4absl12lts_20250512L10ForceBtreeEPNS0_13cord_internal7CordRepE(ptr noundef %i.e)
          to label %bb.d unwind label %bb.h       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i8, ptr %i.g, align 4, !tbaa !23    ; 2 uses
  %or.cond.i.i = icmp ugt i8 %i.h, 4
  br i1 %or.cond.i.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, !prof !31

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !23
  %i.l = icmp ugt i8 %.pre.i.i, 4
  br i1 %i.l, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, !prof !34

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i, %bb.d
  %i.m = invoke noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef %i.f, ptr noundef nonnull %1)
          to label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit unwind label %bb.h

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i, %bb.e
  %i.n = invoke noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepE(ptr noundef %i.f, ptr noundef nonnull %1)
          to label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit unwind label %bb.h

_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i
  %.0.i = phi ptr [ %i.m, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i ], [ %i.n, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i ] ; 2 uses
  store ptr %.0.i, ptr %i.d, align 8, !tbaa !14
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.f, !prof !27

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %.0.i, ptr %i.o, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.c)
          to label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.h:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_20250512L10ForceBtreeEPNS0_13cord_internal7CordRepE(ptr noundef %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !23
  switch i8 %i.b, label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit [
    i8 3, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit
    i8 2, label %bb.b
  ], !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load atomic i32, ptr %i.e acquire, align 8
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  br label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = atomicrmw add ptr %i.i, i32 2 monotonic, align 4 ; 0 uses
  %i.k = atomicrmw sub ptr %i.e, i32 2 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.k, 2
  br i1 %.not.i.i, label %bb.e, label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !59

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %0, %bb.a ], [ %i.d, %bb.d ], [ %i.d, %bb.e ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.m = load i8, ptr %i.l, align 4, !tbaa !23    ; 2 uses
  %or.cond.i.i = icmp ugt i8 %i.m, 4
  br i1 %or.cond.i.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i: ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !23
  %i.q = icmp ugt i8 %.pre.i.i, 4
  br i1 %i.q, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i

_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i, %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.r = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 2, ptr %i.s, align 4, !tbaa !15
  %i.t = load i64, ptr %.0.i, align 8, !tbaa !22
  store i64 %i.t, ptr %i.r, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store <4 x i8> <i8 3, i8 0, i8 0, i8 1>, ptr %i.u, align 4, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.0.i, ptr %i.v, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i, %bb.f
  %i.w = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree10CreateSlowEPNS1_7CordRepE(ptr noundef nonnull %.0.i)
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit: ; preds = %bb.a, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i
  %i.x = phi ptr [ %0, %bb.a ], [ %i.r, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i ], [ %i.w, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i ]
  ret ptr %i.x
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord9InlineRep20PrependTreeToInlinedEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !14      ; 3 uses
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7PrependEPS2_PNS1_7CordRepE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i8 %i.a to i64
  %i.d = lshr i64 %i.c, 1                         ; 3 uses
  %3 = icmp ult i8 %i.a, 40
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 4083)
  %4 = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %3, i64 32, i64 %4        ; 2 uses
  %i.e = icmp samesign ult i64 %.0.i.i.i, 513     ; 2 uses
  %.neg.i.i.i = select i1 %i.e, i64 -8, i64 -64
  %i.f = select i1 %i.e, i64 8, i64 64
  %i.g = add nsw i64 %.0.i.i.i, -1
  %i.h = add nuw nsw i64 %i.g, %i.f
  %i.i = and i64 %i.h, %.neg.i.i.i                ; 3 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #23 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 2, ptr %i.k, align 4, !tbaa !15
  %i.l = icmp samesign ult i64 %i.i, 513          ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.l, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.l, i64 2, i64 58
  %i.m = lshr i64 %i.i, %.sink6.i.i.i.i.i
  %i.n = add nuw nsw i64 %i.m, %.sink5.i.i.i.i.i  ; 2 uses
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i8 %i.o, ptr %i.p, align 4, !tbaa !23
  store i64 %i.d, ptr %i.j, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.q, ptr noundef nonnull align 1 dereferenceable(15) %i.r, i64 15, i1 false)
  %or.cond.i.i = icmp samesign ugt i64 %i.n, 4
  br i1 %or.cond.i.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i

_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i: ; preds = %bb.b
  %i.s = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 2, ptr %i.t, align 4, !tbaa !15
  store i64 %i.d, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store <4 x i8> <i8 3, i8 0, i8 0, i8 1>, ptr %i.u, align 4, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.j, ptr %i.v, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i: ; preds = %bb.b
  %i.w = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree10CreateSlowEPNS1_7CordRepE(ptr noundef nonnull %i.j)
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i
  %.0.i = phi ptr [ %i.s, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i ], [ %i.w, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i8, ptr %i.x, align 4, !tbaa !23    ; 2 uses
  %or.cond.i.i4 = icmp ugt i8 %i.y, 4
  br i1 %or.cond.i.i4, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i6, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, !prof !31

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i6: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  %.phi.trans.insert.i.i7 = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.pre.i.i8 = load i8, ptr %.phi.trans.insert.i.i7, align 4, !tbaa !23
  %i.ac = icmp ugt i8 %.pre.i.i8, 4
  br i1 %i.ac, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, !prof !34

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i6, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit
  %i.ad = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE0EEEPS2_S5_PNS1_7CordRepE(ptr noundef %.0.i, ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7PrependEPS2_PNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i6, %bb.c
  %i.ae = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree11PrependSlowEPS2_PNS1_7CordRepE(ptr noundef %.0.i, ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7PrependEPS2_PNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal12CordRepBtree7PrependEPS2_PNS1_7CordRepE.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.ad, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i ], [ %i.ae, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0, ptr %i.af, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !14
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2025051213cord_internal17cordz_next_sampleE) ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i, !prof !27

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7PrependEPS2_PNS1_7CordRepE.exit
  %i.aj = add nsw i64 %i.ah, -1
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7PrependEPS2_PNS1_7CordRepE.exit
  %i.ak = tail call noundef i64 @_ZN4absl12lts_2025051213cord_internal25cordz_should_profile_slowERNS1_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !28

bb.d:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %2, i64 noundef %i.ak)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord9InlineRep17PrependTreeToTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::cord_internal::CordzUpdateScope", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = load i64, ptr %0, align 8, !tbaa !14
  %i.b = add nsw i64 %i.a, -1                     ; 3 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !35
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo4LockENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.c, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = invoke fastcc noundef ptr @_ZN4absl12lts_20250512L10ForceBtreeEPNS0_13cord_internal7CordRepE(ptr noundef %i.e)
          to label %bb.d unwind label %bb.h       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i8, ptr %i.g, align 4, !tbaa !23    ; 2 uses
  %or.cond.i.i = icmp ugt i8 %i.h, 4
  br i1 %or.cond.i.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, !prof !31

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !23
  %i.l = icmp ugt i8 %.pre.i.i, 4
  br i1 %i.l, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, !prof !34

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i, %bb.d
  %i.m = invoke noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE0EEEPS2_S5_PNS1_7CordRepE(ptr noundef %i.f, ptr noundef nonnull %1)
          to label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7PrependEPS2_PNS1_7CordRepE.exit unwind label %bb.h

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i, %bb.e
  %i.n = invoke noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree11PrependSlowEPS2_PNS1_7CordRepE(ptr noundef %i.f, ptr noundef nonnull %1)
          to label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7PrependEPS2_PNS1_7CordRepE.exit unwind label %bb.h

_ZN4absl12lts_2025051213cord_internal12CordRepBtree7PrependEPS2_PNS1_7CordRepE.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i
  %.0.i = phi ptr [ %i.m, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i ], [ %i.n, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i ] ; 2 uses
  store ptr %.0.i, ptr %i.d, align 8, !tbaa !14
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.f, !prof !27

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7PrependEPS2_PNS1_7CordRepE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %.0.i, ptr %i.o, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.c)
          to label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7PrependEPS2_PNS1_7CordRepE.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.h:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord9InlineRep10AssignSlowERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !14
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.d, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14, !nonnull !60, !noundef !60 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 2 monotonic, align 4 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !14
  %i.h = load i64, ptr %1, align 8, !tbaa !14
  %.not.i9 = icmp ult i64 %i.h, 2
  br i1 %.not.i9, label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepERKNS3_10InlineDataENS3_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 5)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepERKNS3_10InlineDataENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %i.k = load i8, ptr %1, align 8, !tbaa !14
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202505124CordaSESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::cord_internal::CordzUpdateScope", align 8 ; 10 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !14      ; 3 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 12 uses
  %i.f = icmp ne ptr %i.e, null
  %.not6.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %.not6.i, label %bb.c, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !22
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.d, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit, !prof !59

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %0, align 8, !tbaa !14
  %i.i = add nsw i64 %i.h, -1                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.j = inttoptr i64 %i.i to ptr
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.j)
  br label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i: ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = atomicrmw sub ptr %i.k, i32 2 acq_rel, align 4
  %.not.i4.i = icmp eq i32 %i.l, 2
  br i1 %.not.i4.i, label %bb.f, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread, !prof !59

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.e)
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread: ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  br label %bb.v

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit: ; preds = %bb.b, %bb.c
  %i.m = trunc i8 %i.b to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %.not107 = icmp ne ptr %i.e, null
  %.not.not = select i1 %i.m, i1 %.not107, i1 false
  br i1 %.not.not, label %bb.g, label %bb.v

bb.g:                                             ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  %i.n = load i64, ptr %0, align 8, !tbaa !14
  %i.o = add nsw i64 %i.n, -1                     ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !35
  %.not.i42 = icmp eq i64 %i.o, 0
  br i1 %.not.i42, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.h, !prof !27

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo4LockENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.p, i32 noundef %3)
  br label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.g, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.r = load i8, ptr %i.q, align 4, !tbaa !23
  %i.s = icmp eq i8 %i.r, 2
  br i1 %i.s, label %bb.i, label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !59

bb.i:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.w = load atomic i32, ptr %i.v acquire, align 8
  %i.x = icmp eq i32 %i.w, 2
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  tail call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #22
  br label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = atomicrmw add ptr %i.z, i32 2 monotonic, align 4 ; 0 uses
  %i.ab = atomicrmw sub ptr %i.v, i32 2 acq_rel, align 4
  %.not.i.i45 = icmp eq i32 %i.ab, 2
  br i1 %.not.i.i45, label %bb.l, label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !59

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.e)
          to label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit unwind label %bb.t

_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit: ; preds = %bb.k, %bb.j, %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit, %bb.l
  %.0.i44 = phi ptr [ %i.u, %bb.j ], [ %i.e, %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit ], [ %i.u, %bb.k ], [ %i.u, %bb.l ] ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i44, i64 12 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !23  ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 3
  br i1 %i.ae, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i44, i64 8
  %i.ag = load atomic i32, ptr %i.af acquire, align 4
  %i.ah = icmp eq i32 %i.ag, 2
  br i1 %i.ah, label %bb.n, label %thread-pre-split.i

bb.n:                                             ; preds = %bb.m
  %i.ai = invoke { ptr, i64 } @_ZN4absl12lts_2025051213cord_internal12CordRepBtree15GetAppendBufferEm(ptr noundef nonnull align 8 dereferenceable(64) %.0.i44, i64 noundef %1)
          to label %.noexc47 unwind label %bb.u   ; 2 uses

.noexc47:                                         ; preds = %bb.n
  %i.aj = extractvalue { ptr, i64 } %i.ai, 1      ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %thread-pre-split.i, label %bb.o

bb.o:                                             ; preds = %.noexc47
  %i.al = extractvalue { ptr, i64 } %i.ai, 0
  br label %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit

thread-pre-split.i:                               ; preds = %.noexc47, %bb.m
  %.pr.i = load i8, ptr %i.ac, align 4, !tbaa !23
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split.i, %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.am = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ad, %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit ]
  %i.an = icmp ugt i8 %i.am, 5
  br i1 %i.an, label %bb.q, label %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i44, i64 8
  %i.ap = load atomic i32, ptr %i.ao acquire, align 4
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %bb.r, label %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ar = load i64, ptr %.0.i44, align 8, !tbaa !22 ; 4 uses
  %i.as = load i8, ptr %i.ac, align 4, !tbaa !23  ; 3 uses
  %i.at = zext i8 %i.as to i32
  %i.au = icmp ult i8 %i.as, 67                   ; 2 uses
  %i.av = icmp ult i8 %i.as, -69                  ; 2 uses
  %..i.i.i.i = select i1 %i.av, i32 6, i32 12
  %.sink6.i.i.i.i = select i1 %i.au, i32 3, i32 %..i.i.i.i
  %i.aw = shl nuw nsw i32 %i.at, %.sink6.i.i.i.i
  %i.ax = select i1 %i.av, i32 -3725, i32 -753677
  %i.ay = select i1 %i.au, i32 -29, i32 %i.ax
  %narrow.i.i.i = add nsw i32 %i.aw, %i.ay
  %i.az = sext i32 %narrow.i.i.i to i64           ; 2 uses
  %.not.i46 = icmp eq i64 %i.ar, %i.az
  br i1 %.not.i46, label %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = sub i64 %i.az, %i.ar
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.ba) ; 2 uses
  %i.bb = add i64 %.sroa.speculated.i, %i.ar
  store i64 %i.bb, ptr %.0.i44, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i44, i64 13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ar
  br label %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit

_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit: ; preds = %bb.o, %bb.s
  %storemerge37.i = phi ptr [ %i.al, %bb.o ], [ %i.bd, %bb.s ]
  %storemerge.i = phi i64 [ %i.aj, %bb.o ], [ %.sroa.speculated.i, %bb.s ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %storemerge37.i, ptr align 1 %2, i64 %storemerge.i, i1 false)
  br label %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit.thread

bb.t:                                             ; preds = %bb.aa, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i.i, %bb.l, %bb.ab
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.u:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.v:                                             ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread, %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  %i.bg = phi i8 [ 0, %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread ], [ %i.b, %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit ]
  store ptr null, ptr %4, align 8, !tbaa !35
  %i.bh = sext i8 %i.bg to i64
  %i.bi = lshr i64 %i.bh, 1                       ; 7 uses
  %i.bj = sub nsw i64 15, %i.bi
  %.not38 = icmp ugt i64 %1, %i.bj
  %i.bk = add i64 %i.bi, %1                       ; 3 uses
  br i1 %.not38, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.x:                                             ; preds = %bb.v
  %5 = icmp ult i64 %i.bk, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 4083)
  %i.bm = add nuw nsw i64 %spec.store.select.i.i, 13
  %.0.i.i = select i1 %5, i64 32, i64 %i.bm       ; 2 uses
  %i.bn = icmp samesign ult i64 %.0.i.i, 513      ; 2 uses
  %.neg.i.i = select i1 %i.bn, i64 -8, i64 -64
  %i.bo = select i1 %i.bn, i64 8, i64 64
  %i.bp = add nsw i64 %.0.i.i, -1
  %i.bq = add nuw nsw i64 %i.bp, %i.bo
  %i.br = and i64 %i.bq, %.neg.i.i                ; 3 uses
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #23
          to label %.thread96 unwind label %bb.w  ; 7 uses

bb.y:                                             ; preds = %bb.v
  %.tr.i.i.i = trunc i64 %i.bk to i8
  %i.bt = shl i8 %.tr.i.i.i, 1
  store i8 %i.bt, ptr %0, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr align 1 %2, i64 %1, i1 false)
  br label %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit.thread: ; preds = %bb.r, %bb.q, %bb.p, %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit
  %.189 = phi i64 [ %storemerge.i, %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ] ; 2 uses
  %i.bw = sub i64 %1, %.189                       ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.z, label %bb.ab

.thread96:                                        ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 0, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 2, ptr %i.bz, align 8, !tbaa !15
  %i.ca = icmp samesign ult i64 %i.br, 513        ; 2 uses
  %.sink6.i.i.i.i48 = select i1 %i.ca, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.ca, i64 2, i64 58
  %i.cb = lshr i64 %i.br, %.sink6.i.i.i.i48
  %i.cc = add nuw nsw i64 %i.cb, %.sink5.i.i.i.i  ; 3 uses
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i8 %i.cd, ptr %i.ce, align 4, !tbaa !23
  %i.cf = trunc nuw nsw i64 %i.cc to i32
  %i.cg = icmp samesign ult i64 %i.cc, 67         ; 2 uses
  %.sink6.i.i.i = select i1 %i.cg, i32 3, i32 6
  %i.ch = shl nuw nsw i32 %i.cf, %.sink6.i.i.i
  %i.ci = select i1 %i.cg, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.ch, %i.ci
  %i.cj = sext i32 %narrow.i.i to i64
  %i.ck = sub i64 %i.cj, %i.bi
  %.sroa.speculated65 = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 %1) ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bs, i64 13 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull align 1 %i.cm, i64 %i.bi, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr align 1 %2, i64 %.sroa.speculated65, i1 false)
  %i.co = add i64 %.sroa.speculated65, %i.bi
  store i64 %i.co, ptr %i.bs, align 8, !tbaa !22
  %i.cp = sub i64 %1, %.sroa.speculated65         ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.thread101, label %bb.ab

.thread101:                                       ; preds = %.thread96
  store ptr %i.bs, ptr %i.d, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !14
  %i.cr = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2025051213cord_internal17cordz_next_sampleE) ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !25 ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 1
  br i1 %i.ct, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i.i, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i.i, !prof !27

bb.z:                                             ; preds = %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit.thread
  store ptr %.0.i44, ptr %i.d, align 8, !tbaa !14
  %i.cu = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, label %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit.thread105.sink.split, !prof !27

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i.i: ; preds = %.thread101
  %i.cv = add nsw i64 %i.cs, -1
  store i64 %i.cv, ptr %i.cr, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i.i: ; preds = %.thread101
  %i.cw = invoke noundef i64 @_ZN4absl12lts_2025051213cord_internal25cordz_should_profile_slowERNS1_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %.noexc51 unwind label %bb.t   ; 2 uses

.noexc51:                                         ; preds = %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i.i
  %i.cx = icmp sgt i64 %i.cw, 0
  br i1 %i.cx, label %bb.aa, label %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !28

bb.aa:                                            ; preds = %.noexc51
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %3, i64 noundef %i.cw)
          to label %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit unwind label %bb.t

bb.ab:                                            ; preds = %.thread96, %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit.thread
  %.not.not125 = phi i1 [ false, %.thread96 ], [ true, %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit.thread ]
  %i.cy = phi i64 [ %i.cp, %.thread96 ], [ %i.bw, %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit.thread ] ; 2 uses
  %.sroa.speculated65.pn = phi i64 [ %.sroa.speculated65, %.thread96 ], [ %.189, %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit.thread ]
  %.199 = phi ptr [ %i.bs, %.thread96 ], [ %.0.i44, %_ZN4absl12lts_20250512L19PrepareAppendRegionEPNS0_13cord_internal7CordRepEPPcPmm.exit.thread ]
  %i.cz = invoke fastcc noundef ptr @_ZN4absl12lts_20250512L10ForceBtreeEPNS0_13cord_internal7CordRepE(ptr noundef nonnull %.199)
          to label %bb.ac unwind label %bb.t      ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated65.pn
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !22
  %i.dc = udiv i64 %i.db, 10
  %i.dd = tail call i64 @llvm.usub.sat.i64(i64 %i.dc, i64 %i.cy)
  %i.de = invoke noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull %i.cz, i64 %i.cy, ptr %i.da, i64 noundef %i.dd)
          to label %bb.ad unwind label %bb.aj     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.de, ptr %i.d, align 8, !tbaa !14
  br i1 %.not.not125, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.df = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i55, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, label %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit.thread105.sink.split, !prof !27

bb.af:                                            ; preds = %bb.ad
  store i64 1, ptr %0, align 8, !tbaa !14
  %i.dg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2025051213cord_internal17cordz_next_sampleE) ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !25 ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 1
  br i1 %i.di, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i.i57, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i.i56, !prof !27

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i.i57: ; preds = %bb.af
  %i.dj = add nsw i64 %i.dh, -1
  store i64 %i.dj, ptr %i.dg, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i.i56: ; preds = %bb.af
  %i.dk = invoke noundef i64 @_ZN4absl12lts_2025051213cord_internal25cordz_should_profile_slowERNS1_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.dg)
          to label %.noexc58 unwind label %bb.aj  ; 2 uses

.noexc58:                                         ; preds = %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i.i56
  %i.dl = icmp sgt i64 %i.dk, 0
  br i1 %i.dl, label %bb.ag, label %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !28

bb.ag:                                            ; preds = %.noexc58
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %3, i64 noundef %i.dk)
          to label %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit unwind label %bb.aj

_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %.noexc58, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i.i57, %bb.ag, %.noexc51, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i.i, %bb.aa, %bb.y
  %.pr = load ptr, ptr %4, align 8, !tbaa !35     ; 2 uses
  %.not.i61 = icmp eq ptr %.pr, null
  br i1 %.not.i61, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, label %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit.thread105, !prof !62

_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit.thread105.sink.split: ; preds = %bb.ae, %bb.z
  %.sink127 = phi ptr [ %i.cu, %bb.z ], [ %i.df, %bb.ae ] ; 2 uses
  %.0.i44.sink = phi ptr [ %.0.i44, %bb.z ], [ %i.de, %bb.ae ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sink127, i64 64
  store ptr %.0.i44.sink, ptr %i.dm, align 8, !tbaa !38
  br label %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit.thread105

_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit.thread105: ; preds = %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit.thread105.sink.split, %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.dn = phi ptr [ %.pr, %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit ], [ %.sink127, %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit.thread105.sink.split ]
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.dn)
          to label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit unwind label %bb.ah

bb.ah:                                            ; preds = %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit.thread105
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  tail call void @__clang_call_terminate(ptr %i.dp) #25
  unreachable

_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %bb.z, %bb.ae, %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit, %_ZN4absl12lts_202505124Cord9InlineRep10CommitTreeEPKNS0_13cord_internal7CordRepEPS4_RKNS3_16CordzUpdateScopeENS3_18CordzUpdateTracker16MethodIdentifierE.exit.thread105
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit
  ret void

bb.aj:                                            ; preds = %bb.ag, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i.i56, %bb.ac
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %bb.w, %bb.aj, %bb.u, %bb.t
  %.pn40 = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.dq, %bb.aj ], [ %i.bf, %bb.u ], [ %i.bl, %bb.w ]
  call void @_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn40
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree6AppendEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef, i64, ptr, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord23GetAppendBufferSlowPathEmmm(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::CordBuffer") align 8 captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::cord_internal::CordzUpdateScope", align 8 ; 8 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !14      ; 5 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  %.not30 = icmp ne ptr %i.d, null
  %.not.not = select i1 %i.b, i1 %.not30, i1 false
  br i1 %.not.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.e = load i64, ptr %1, align 8, !tbaa !14
  %i.f = add nsw i64 %i.e, -1                     ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !35
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo4LockENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.g, i32 noundef 12)
  br label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !23    ; 2 uses
  %cond.i = icmp eq i8 %i.i, 3
  br i1 %cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.j = invoke { ptr, ptr } @_ZN4absl12lts_2025051213cord_internal12CordRepBtree19ExtractAppendBufferEPS2_m(ptr noundef nonnull %i.d, i64 noundef %4)
          to label %_ZN4absl12lts_20250512L19ExtractAppendBufferEPNS0_13cord_internal7CordRepEm.exit unwind label %bb.k

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.k = icmp ugt i8 %i.i, 5
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load atomic i32, ptr %i.l acquire, align 4
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = load i8, ptr %i.h, align 4, !tbaa !23    ; 3 uses
  %i.p = zext i8 %i.o to i32
  %i.q = icmp ult i8 %i.o, 67                     ; 2 uses
  %i.r = icmp ult i8 %i.o, -69                    ; 2 uses
  %..i.i.i.i = select i1 %i.r, i32 6, i32 12
  %.sink6.i.i.i.i = select i1 %i.q, i32 3, i32 %..i.i.i.i
  %i.s = shl nuw nsw i32 %i.p, %.sink6.i.i.i.i
  %i.t = select i1 %i.r, i32 -3725, i32 -753677
  %i.u = select i1 %i.q, i32 -29, i32 %i.t
  %narrow.i.i.i = add nsw i32 %i.s, %i.u
  %i.v = sext i32 %narrow.i.i.i to i64
  %i.w = load i64, ptr %i.d, align 8, !tbaa !22
  %i.x = sub i64 %i.v, %i.w
  %.not.i16 = icmp ult i64 %i.x, %4
  br i1 %.not.i16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = insertvalue { ptr, ptr } { ptr null, ptr poison }, ptr %i.d, 1
  br label %_ZN4absl12lts_20250512L19ExtractAppendBufferEPNS0_13cord_internal7CordRepEm.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.z = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.aa = insertvalue { ptr, ptr } %i.z, ptr null, 1
  br label %_ZN4absl12lts_20250512L19ExtractAppendBufferEPNS0_13cord_internal7CordRepEm.exit

_ZN4absl12lts_20250512L19ExtractAppendBufferEPNS0_13cord_internal7CordRepEm.exit: ; preds = %bb.i, %bb.h, %bb.d
  %.fca.1.insert.merged.i = phi { ptr, ptr } [ %i.aa, %bb.i ], [ %i.y, %bb.h ], [ %i.j, %bb.d ] ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %.fca.1.insert.merged.i, 1 ; 2 uses
  %.not14 = icmp eq ptr %i.ab, null
  br i1 %.not14, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_20250512L19ExtractAppendBufferEPNS0_13cord_internal7CordRepEm.exit
  %i.ac = extractvalue { ptr, ptr } %.fca.1.insert.merged.i, 0 ; 3 uses
  %.not.i17 = icmp eq ptr %i.ac, null
  br i1 %.not.i17, label %.split6.i, label %.split.i

.split.i:                                         ; preds = %bb.j
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !14
  %i.ad = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN4absl12lts_202505124Cord9InlineRep14SetTreeOrEmptyEPNS0_13cord_internal7CordRepERKNS3_16CordzUpdateScopeE.exit, label %_ZNK4absl12lts_2025051213cord_internal16CordzUpdateScope10SetCordRepEPNS1_7CordRepE.exit.sink.split.i, !prof !27

.split6.i:                                        ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %.not.i7.i = icmp eq ptr %i.ae, null
  br i1 %.not.i7.i, label %_ZN4absl12lts_202505124Cord9InlineRep14SetTreeOrEmptyEPNS0_13cord_internal7CordRepERKNS3_16CordzUpdateScopeE.exit, label %_ZNK4absl12lts_2025051213cord_internal16CordzUpdateScope10SetCordRepEPNS1_7CordRepE.exit.sink.split.i, !prof !27

_ZNK4absl12lts_2025051213cord_internal16CordzUpdateScope10SetCordRepEPNS1_7CordRepE.exit.sink.split.i: ; preds = %.split6.i, %.split.i
  %.sink12.i = phi ptr [ %i.ad, %.split.i ], [ %i.ae, %.split6.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 64
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !38
  br label %_ZN4absl12lts_202505124Cord9InlineRep14SetTreeOrEmptyEPNS0_13cord_internal7CordRepERKNS3_16CordzUpdateScopeE.exit

_ZN4absl12lts_202505124Cord9InlineRep14SetTreeOrEmptyEPNS0_13cord_internal7CordRepERKNS3_16CordzUpdateScopeE.exit: ; preds = %_ZNK4absl12lts_2025051213cord_internal16CordzUpdateScope10SetCordRepEPNS1_7CordRepE.exit.sink.split.i, %.split6.i, %.split.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !63
  br label %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit

bb.k:                                             ; preds = %bb.r, %_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_.exit.i, %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %_ZN4absl12lts_20250512L19ExtractAppendBufferEPNS0_13cord_internal7CordRepEm.exit
  %.not15 = icmp eq i64 %2, 0
  br i1 %.not15, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %3, i64 65536) ; 5 uses
  %.sroa.speculated21.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 65536) ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.speculated.i.i, 13 ; 2 uses
  %.not.i.i18 = icmp samesign ult i64 %i.ah, %.sroa.speculated21.i.i
  br i1 %.not.i.i18, label %bb.n, label %_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ai = icmp ult i64 %3, 4084
  br i1 %i.ai, label %_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_.exit.i, label %_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i

_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i: ; preds = %bb.n
  %i.aj = tail call range(i64 1, 18) i64 @llvm.ctpop.i64(i64 %.sroa.speculated.i.i)
  %i.ak = icmp samesign ult i64 %i.aj, 2
  br i1 %i.ak, label %_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i
  %i.al = add nsw i64 %.sroa.speculated.i.i, -1
  %i.am = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 false)
  %i.an = sub nuw nsw i64 64, %i.am
  %i.ao = shl nuw nsw i64 1, %i.an                ; 2 uses
  %reass.sub31 = sub nsw i64 %i.ao, %.sroa.speculated.i.i
  %i.ap = add nsw i64 %reass.sub31, -13
  %or.cond.i.i = icmp ult i64 %i.ap, 129
  br i1 %or.cond.i.i, label %_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.speculated.i.i, i1 true)
  %i.ar = lshr exact i64 -9223372036854775808, %i.aq
  br label %_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_.exit.i

_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_.exit.i: ; preds = %bb.p, %bb.o, %_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i, %bb.n, %bb.m
  %.0.i.i = phi i64 [ %.sroa.speculated21.i.i, %bb.m ], [ %3, %_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i ], [ %i.ah, %bb.n ], [ %i.ar, %bb.p ], [ %i.ao, %bb.o ]
  %i.as = add i64 %.0.i.i, -13                    ; 2 uses
  %6 = icmp ult i64 %i.as, 20
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.as, i64 262131)
  %7 = add nuw nsw i64 %spec.store.select.i.i.i.i, 13
  %.0.i.i.i.i = select i1 %6, i64 32, i64 %7      ; 3 uses
  %i.at = icmp samesign ult i64 %.0.i.i.i.i, 513
  %i.au = icmp samesign ult i64 %.0.i.i.i.i, 8193
  %i.av = select i1 %i.au, i64 64, i64 4096
  %i.aw = select i1 %i.at, i64 8, i64 %i.av       ; 2 uses
  %i.ax = add nsw i64 %.0.i.i.i.i, -1
  %i.ay = add nuw nsw i64 %i.ax, %i.aw
  %i.az = sub nsw i64 0, %i.aw
  %i.ba = and i64 %i.ay, %i.az                    ; 4 uses
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #23
          to label %_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit unwind label %bb.k ; 4 uses

_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit: ; preds = %_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 2, ptr %i.bc, align 8, !noalias !72
  %i.bd = icmp samesign ult i64 %i.ba, 513        ; 2 uses
  %i.be = icmp samesign ult i64 %i.ba, 8193       ; 2 uses
  %..i.i.i.i.i.i = select i1 %i.be, i64 6, i64 12
  %.7.i.i.i.i.i.i = select i1 %i.be, i64 58, i64 184
  %.sink6.i.i.i.i.i.i = select i1 %i.bd, i64 3, i64 %..i.i.i.i.i.i
  %.sink5.i.i.i.i.i.i = select i1 %i.bd, i64 2, i64 %.7.i.i.i.i.i.i
  %i.bf = lshr i64 %i.ba, %.sink6.i.i.i.i.i.i
  %i.bg = add nuw nsw i64 %i.bf, %.sink5.i.i.i.i.i.i
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i8 %i.bh, ptr %i.bi, align 4, !tbaa !23, !noalias !72
  store i64 0, ptr %i.bb, align 8, !tbaa !22, !noalias !72
  store ptr %i.bb, ptr %0, align 8, !tbaa !63, !alias.scope !72
  br label %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit

bb.q:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.bj = icmp ugt i64 %3, 15
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %8 = icmp ult i64 %3, 20
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %3, i64 4083)
  %i.bk = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %8, i64 32, i64 %i.bk     ; 2 uses
  %i.bl = icmp samesign ult i64 %.0.i.i.i, 513    ; 2 uses
  %.neg.i.i.i = select i1 %i.bl, i64 -8, i64 -64
  %i.bm = select i1 %i.bl, i64 8, i64 64
  %i.bn = add nsw i64 %.0.i.i.i, -1
  %i.bo = add nuw nsw i64 %i.bn, %i.bm
  %i.bp = and i64 %i.bo, %.neg.i.i.i              ; 3 uses
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #23
          to label %.noexc20 unwind label %bb.k   ; 4 uses

.noexc20:                                         ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 2, ptr %i.br, align 8, !noalias !73
  %i.bs = icmp samesign ult i64 %i.bp, 513        ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.bs, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.bs, i64 2, i64 58
  %i.bt = lshr i64 %i.bp, %.sink6.i.i.i.i.i
  %i.bu = add nuw nsw i64 %i.bt, %.sink5.i.i.i.i.i
  %i.bv = trunc nuw nsw i64 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i8 %i.bv, ptr %i.bw, align 4, !tbaa !23, !noalias !73
  store i64 0, ptr %i.bq, align 8, !tbaa !22, !noalias !73
  store ptr %i.bq, ptr %0, align 8, !tbaa !63, !alias.scope !73
  br label %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit

bb.s:                                             ; preds = %bb.q
  store i8 1, ptr %0, align 8, !tbaa !76, !alias.scope !73
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.bx, i8 0, i64 15, i1 false), !alias.scope !73
  br label %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit

_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit: ; preds = %bb.s, %.noexc20, %_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit, %_ZN4absl12lts_202505124Cord9InlineRep14SetTreeOrEmptyEPNS0_13cord_internal7CordRepERKNS3_16CordzUpdateScopeE.exit
  %i.by = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %.not.i21 = icmp eq ptr %i.by, null
  br i1 %.not.i21, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.t, !prof !27

bb.t:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.by)
          to label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #25
  unreachable

_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ak

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.cb = sext i8 %i.a to i64                     ; 2 uses
  %i.cc = lshr i64 %i.cb, 1                       ; 9 uses
  %i.cd = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 %i.cc) ; 6 uses
  %.not.i22 = icmp eq i64 %2, 0
  br i1 %.not.i22, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 65536) ; 5 uses
  %.sroa.speculated21.i.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 65536) ; 2 uses
  %i.ce = add nuw nsw i64 %.sroa.speculated.i.i.i, 13 ; 2 uses
  %.not.i.i.i = icmp samesign ult i64 %i.ce, %.sroa.speculated21.i.i.i
  br i1 %.not.i.i.i, label %bb.x, label %_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit.i

bb.x:                                             ; preds = %bb.w
  %i.cf = icmp ult i64 %i.cd, 4084
  br i1 %i.cf, label %_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit.i, label %_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i.i

_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i.i: ; preds = %bb.x
  %i.cg = tail call range(i64 1, 18) i64 @llvm.ctpop.i64(i64 %.sroa.speculated.i.i.i)
  %i.ch = icmp samesign ult i64 %i.cg, 2
  br i1 %i.ch, label %_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i.i
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i, -1
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ci, i1 false)
  %i.ck = sub nuw nsw i64 64, %i.cj
  %i.cl = shl nuw nsw i64 1, %i.ck                ; 2 uses
  %reass.sub = sub nsw i64 %i.cl, %.sroa.speculated.i.i.i
  %i.cm = add nsw i64 %reass.sub, -13
  %or.cond.i.i.i = icmp ult i64 %i.cm, 129
  br i1 %or.cond.i.i.i, label %_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.speculated.i.i.i, i1 true)
  %i.co = lshr exact i64 -9223372036854775808, %i.cn
  br label %_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit.i

_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit.i: ; preds = %bb.z, %bb.y, %_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i.i, %bb.x, %bb.w
  %.0.i.i.i23 = phi i64 [ %.sroa.speculated21.i.i.i, %bb.w ], [ %i.cd, %_ZN4absl12lts_2025051210CordBuffer6IsPow2Em.exit.i.i.i ], [ %i.ce, %bb.x ], [ %i.co, %bb.z ], [ %i.cl, %bb.y ]
  %i.cp = add i64 %.0.i.i.i23, -13                ; 2 uses
  %9 = icmp ult i64 %i.cp, 20
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 262131)
  %10 = add nuw nsw i64 %spec.store.select.i.i.i.i.i, 13
  %.0.i.i.i.i.i = select i1 %9, i64 32, i64 %10   ; 3 uses
  %i.cq = icmp samesign ult i64 %.0.i.i.i.i.i, 513
  %i.cr = icmp samesign ult i64 %.0.i.i.i.i.i, 8193
  %i.cs = select i1 %i.cr, i64 64, i64 4096
  %i.ct = select i1 %i.cq, i64 8, i64 %i.cs       ; 2 uses
  %i.cu = add nsw i64 %.0.i.i.i.i.i, -1
  %i.cv = add nuw nsw i64 %i.cu, %i.ct
  %i.cw = sub nsw i64 0, %i.ct
  %i.cx = and i64 %i.cv, %i.cw                    ; 4 uses
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #23, !noalias !87 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 2, ptr %i.cz, align 8, !noalias !87
  %i.da = icmp samesign ult i64 %i.cx, 513        ; 2 uses
  %i.db = icmp samesign ult i64 %i.cx, 8193       ; 2 uses
  %..i.i.i.i.i.i.i = select i1 %i.db, i64 6, i64 12
  %.7.i.i.i.i.i.i.i = select i1 %i.db, i64 58, i64 184
  %.sink6.i.i.i.i.i.i.i = select i1 %i.da, i64 3, i64 %..i.i.i.i.i.i.i
  %.sink5.i.i.i.i.i.i.i = select i1 %i.da, i64 2, i64 %.7.i.i.i.i.i.i.i
  %i.dc = lshr i64 %i.cx, %.sink6.i.i.i.i.i.i.i
  %i.dd = add nuw nsw i64 %i.dc, %.sink5.i.i.i.i.i.i.i
  %i.de = trunc i64 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i8 %i.de, ptr %i.df, align 4, !tbaa !23, !noalias !87
  store i64 0, ptr %i.cy, align 8, !tbaa !22, !noalias !87
  store ptr %i.cy, ptr %0, align 8, !tbaa !63, !alias.scope !87
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 13
  br label %bb.ac

bb.aa:                                            ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.dh = icmp ugt i64 %i.cd, 15
  br i1 %i.dh, label %bb.ab, label %.thread.i

.thread.i:                                        ; preds = %bb.aa
  store i8 1, ptr %0, align 8, !tbaa !76, !alias.scope !91
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.di, i8 0, i64 15, i1 false), !alias.scope !91
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %11 = icmp ult i64 %i.cd, 20
  %spec.store.select.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 4083)
  %i.dk = add nuw nsw i64 %spec.store.select.i.i.i.i26, 13
  %.0.i.i.i.i27 = select i1 %11, i64 32, i64 %i.dk ; 2 uses
  %i.dl = icmp samesign ult i64 %.0.i.i.i.i27, 513 ; 2 uses
  %.neg.i.i.i.i = select i1 %i.dl, i64 -8, i64 -64
  %i.dm = select i1 %i.dl, i64 8, i64 64
  %i.dn = add nsw i64 %.0.i.i.i.i27, -1
  %i.do = add nuw nsw i64 %i.dn, %i.dm
  %i.dp = and i64 %i.do, %.neg.i.i.i.i            ; 3 uses
  %i.dq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #23, !noalias !91 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i64 2, ptr %i.dr, align 8, !noalias !91
  %i.ds = icmp samesign ult i64 %i.dp, 513        ; 2 uses
  %.sink6.i.i.i.i.i.i28 = select i1 %i.ds, i64 3, i64 6
  %.sink5.i.i.i.i.i.i29 = select i1 %i.ds, i64 2, i64 58
  %i.dt = lshr i64 %i.dp, %.sink6.i.i.i.i.i.i28
  %i.du = add nuw nsw i64 %i.dt, %.sink5.i.i.i.i.i.i29
  %i.dv = trunc nuw nsw i64 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i8 %i.dv, ptr %i.dw, align 4, !tbaa !23, !noalias !91
  store i64 0, ptr %i.dq, align 8, !tbaa !22, !noalias !91
  store ptr %i.dq, ptr %0, align 8, !tbaa !63, !alias.scope !91
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit.i, %.thread.i
  %i.dy = phi ptr [ %i.dj, %.thread.i ], [ %i.dx, %bb.ab ], [ %i.dg, %_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm.exit.i ] ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 6 uses
  %i.ea = icmp ugt i8 %i.a, 15
  br i1 %i.ea, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.0.copyload6.i.i = load i64, ptr %i.dz, align 1, !noalias !78
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.cc
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -8
  %.0.copyload4.i.i = load i64, ptr %i.ec, align 1, !noalias !78
  store i64 %.0.copyload6.i.i, ptr %i.dy, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.cc
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8
  store i64 %.0.copyload4.i.i, ptr %i.ee, align 1
  br label %_ZN4absl12lts_2025051213cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.ef = icmp samesign ugt i8 %i.a, 7
  br i1 %i.ef, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.0.copyload2.i.i = load i32, ptr %i.dz, align 1, !noalias !78
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.cc
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4
  %.0.copyload.i.i = load i32, ptr %i.eh, align 1, !noalias !78
  store i32 %.0.copyload2.i.i, ptr %i.dy, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.cc
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -4
  store i32 %.0.copyload.i.i, ptr %i.ej, align 1
  br label %_ZN4absl12lts_2025051213cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i24 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i24, label %_ZN4absl12lts_2025051213cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ek = load i8, ptr %i.dz, align 1, !tbaa !14, !noalias !78
  store i8 %i.ek, ptr %i.dy, align 1, !tbaa !14
  %i.el = lshr i64 %i.cb, 2                       ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !14, !noalias !78
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.el
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !14
  %i.ep = getelementptr i8, ptr %1, i64 %i.cc
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !14, !noalias !78
  %i.er = getelementptr i8, ptr %i.dy, i64 %i.cc
  %i.es = getelementptr i8, ptr %i.er, i64 -1
  store i8 %i.eq, ptr %i.es, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i

_ZN4absl12lts_2025051213cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  %i.et = load i8, ptr %0, align 8, !tbaa !14, !alias.scope !78
  %i.eu = trunc i8 %i.et to i1
  br i1 %i.eu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i
  %i.ev = or i8 %i.a, 1
  store i8 %i.ev, ptr %0, align 8, !tbaa !14, !alias.scope !78
  br label %_ZN4absl12lts_20250512L18CreateAppendBufferERNS0_13cord_internal10InlineDataEmm.exit

bb.aj:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i
  %i.ew = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !78
  store i64 %i.cc, ptr %i.ew, align 8, !tbaa !22, !noalias !78
  br label %_ZN4absl12lts_20250512L18CreateAppendBufferERNS0_13cord_internal10InlineDataEmm.exit

_ZN4absl12lts_20250512L18CreateAppendBufferERNS0_13cord_internal10InlineDataEmm.exit: ; preds = %bb.ai, %bb.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !noalias !78
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4absl12lts_20250512L18CreateAppendBufferERNS0_13cord_internal10InlineDataEmm.exit, %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord6AppendERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4absl12lts_202505124Cord10AppendImplIRKS1_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_202505124Cord10AppendImplIRKS1_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::Cord", align 8 ; 7 uses
  %3 = alloca %"class.absl::lts_20250512::Cord::ChunkIterator", align 8 ; 10 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !14      ; 3 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = icmp ne ptr %i.d, null
  %.not6.i = select i1 %i.b, i1 %i.e, i1 false
  br i1 %.not6.i, label %bb.b, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !22
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8, !tbaa !14
  %i.h = add nsw i64 %i.g, -1                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.i)
  br label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = atomicrmw sub ptr %i.j, i32 2 acq_rel, align 4
  %.not.i4.i = icmp eq i32 %i.k, 2
  br i1 %.not.i4.i, label %bb.e, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i, !prof !59

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.d)
  br label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i: ; preds = %bb.e, %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit: ; preds = %bb.a, %bb.b, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.l = phi ptr [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ null, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i ]
  %i.m = phi i8 [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ 0, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i ] ; 2 uses
  %i.n = load i8, ptr %1, align 8, !tbaa !14      ; 3 uses
  %i.o = trunc i8 %i.n to i1                      ; 6 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.r = load i64, ptr %i.q, align 8, !tbaa !22
  br label %_ZNK4absl12lts_202505124Cord5emptyEv.exit

bb.g:                                             ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  %i.s = sext i8 %i.n to i64
  %i.t = lshr exact i64 %i.s, 1
  br label %_ZNK4absl12lts_202505124Cord5emptyEv.exit

_ZNK4absl12lts_202505124Cord5emptyEv.exit:        ; preds = %bb.f, %bb.g
  %i.u = phi i64 [ %i.r, %bb.f ], [ %i.t, %bb.g ]
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit
  %i.w = trunc i8 %i.m to i1
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr %i.l, align 8, !tbaa !22
  br label %_ZNK4absl12lts_202505124Cord5emptyEv.exit28

bb.j:                                             ; preds = %bb.h
  %i.y = sext i8 %i.m to i64
  %i.z = lshr exact i64 %i.y, 1
  br label %_ZNK4absl12lts_202505124Cord5emptyEv.exit28

_ZNK4absl12lts_202505124Cord5emptyEv.exit28:      ; preds = %bb.i, %bb.j
  %i.aa = phi i64 [ %i.x, %bb.i ], [ %i.z, %bb.j ]
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.s

bb.k:                                             ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit28
  br i1 %i.o, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !60, !noundef !60 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.af = atomicrmw add ptr %i.ae, i32 2 monotonic, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !23
  %i.ai = icmp eq i8 %i.ah, 2
  br i1 %i.ai, label %bb.m, label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !59

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_202505124Cord7PrependERKS1_:bb.a
  %i.q = sext i8 %i.l to i64
  %i.r = lshr exact i64 %i.q, 1
  br label %_ZNK4absl12lts_202505124Cord5emptyEv.exit

_ZNK4absl12lts_202505124Cord5emptyEv.exit:        ; preds = %bb.f, %bb.g
  %i.s = phi i64 [ %i.p, %bb.f ], [ %i.r, %bb.g ]
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 9 uses
  %.not11 = icmp ne ptr %i.v, null
  %.not.not = select i1 %i.m, i1 %.not11, i1 false
  br i1 %.not.not, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = atomicrmw add ptr %i.w, i32 2 monotonic, align 4 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.z = load i8, ptr %i.y, align 4, !tbaa !23
  %i.aa = icmp eq i8 %i.z, 2
  br i1 %i.aa, label %bb.j, label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !59

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 5 uses
  %i.ad = load atomic i32, ptr %i.w acquire, align 8
  %i.ae = icmp eq i32 %i.ad, 2
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  tail call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 32) #22
  br label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = atomicrmw add ptr %i.ag, i32 2 monotonic, align 4 ; 0 uses
  %i.ai = atomicrmw sub ptr %i.w, i32 2 acq_rel, align 4
  %.not.i.i10 = icmp eq i32 %i.ai, 2
  br i1 %.not.i.i10, label %bb.m, label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !59

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.v)
  br label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  %.0.i9 = phi ptr [ %i.ac, %bb.k ], [ %i.v, %bb.i ], [ %i.ac, %bb.l ], [ %i.ac, %bb.m ] ; 2 uses
  %i.aj = load i8, ptr %0, align 8, !tbaa !14
  %i.ak = trunc i8 %i.aj to i1
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep17PrependTreeToTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i9, i32 noundef 18)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.o:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep20PrependTreeToInlinedEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i9, i32 noundef 18)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.p:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i = select i1 %i.m, ptr null, ptr %i.al
  br i1 %i.m, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = load i64, ptr %i.v, align 8, !tbaa !22
  br label %_ZNK4absl12lts_202505124Cord9InlineRep4sizeEv.exit

bb.r:                                             ; preds = %bb.p
  %i.an = sext i8 %i.l to i64
  %i.ao = lshr exact i64 %i.an, 1
  br label %_ZNK4absl12lts_202505124Cord9InlineRep4sizeEv.exit

_ZNK4absl12lts_202505124Cord9InlineRep4sizeEv.exit: ; preds = %bb.q, %bb.r
  %i.ap = phi i64 [ %i.am, %bb.q ], [ %i.ao, %bb.r ]
  tail call void @_ZN4absl12lts_202505124Cord12PrependArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.ap, ptr %spec.select.i, i32 noundef 20)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.o, %bb.n, %_ZNK4absl12lts_202505124Cord9InlineRep4sizeEv.exit, %_ZNK4absl12lts_202505124Cord5emptyEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord12PrependArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::cord_internal::InlineData", align 8 ; 6 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !14      ; 3 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp ne ptr %i.d, null
  %.not6.i = select i1 %i.b, i1 %i.e, i1 false
  br i1 %.not6.i, label %bb.b, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !22
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8, !tbaa !14
  %i.h = add nsw i64 %i.g, -1                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.i)
  br label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = atomicrmw sub ptr %i.j, i32 2 acq_rel, align 4
  %.not.i4.i = icmp eq i32 %i.k, 2
  br i1 %.not.i4.i, label %bb.e, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i, !prof !59

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.d)
  br label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i: ; preds = %bb.e, %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit: ; preds = %bb.a, %bb.b, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.l = phi i8 [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ 0, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i ] ; 2 uses
  %i.m = icmp eq i64 %1, 0
  br i1 %i.m, label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  %i.n = trunc i8 %i.l to i1
  br i1 %i.n, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = sext i8 %i.l to i64
  %i.p = lshr exact i64 %i.o, 1                   ; 2 uses
  %i.q = add i64 %i.p, %1                         ; 2 uses
  %i.r = icmp ult i64 %i.q, 16
  br i1 %i.r, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.tr.i.i = trunc nuw nsw i64 %i.q to i8
  %i.s = shl nuw nsw i8 %.tr.i.i, 1
  store i8 %i.s, ptr %4, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %2, i64 %1, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.v, i64 %i.p, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

.thread:                                          ; preds = %bb.g, %bb.f
  %i.w = tail call fastcc noundef ptr @_ZN4absl12lts_20250512L7NewTreeEPKcmm(ptr noundef %2, i64 noundef %1) ; 2 uses
  %i.x = load i8, ptr %0, align 8, !tbaa !14
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep17PrependTreeToTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.w, i32 noundef %3)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.j:                                             ; preds = %.thread
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep20PrependTreeToInlinedEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.w, i32 noundef %3)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.j, %bb.i, %bb.h, %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord13AppendPreciseESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !14      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = sext i8 %i.a to i64
  %i.d = lshr i64 %i.c, 1                         ; 3 uses
  %i.e = sub nsw i64 15, %i.d
  %i.f = select i1 %i.b, i64 0, i64 %i.e
  %.not = icmp ult i64 %i.f, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.d, %1
  %.tr.i.i.i = trunc i64 %i.g to i8
  %i.h = shl i8 %.tr.i.i.i, 1
  store i8 %i.h, ptr %0, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %2, i64 %1, i1 false)
  br label %_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.c:                                             ; preds = %bb.a
  %4 = icmp ult i64 %1, 20
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 4083)
  %i.k = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %4, i64 32, i64 %i.k      ; 2 uses
  %i.l = icmp samesign ult i64 %.0.i.i.i, 513     ; 2 uses
  %.neg.i.i.i = select i1 %i.l, i64 -8, i64 -64
  %i.m = select i1 %i.l, i64 8, i64 64
  %i.n = add nsw i64 %.0.i.i.i, -1
  %i.o = add nuw nsw i64 %i.n, %i.m
  %i.p = and i64 %i.o, %.neg.i.i.i                ; 3 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 2, ptr %i.r, align 8
  %i.s = icmp samesign ult i64 %i.p, 513          ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.s, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.s, i64 2, i64 58
  %i.t = lshr i64 %i.p, %.sink6.i.i.i.i.i
  %i.u = add nuw nsw i64 %i.t, %.sink5.i.i.i.i.i
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i8 %i.v, ptr %i.w, align 4, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %2, i64 %1, i1 false)
  store i64 %1, ptr %i.q, align 8, !tbaa !22
  %i.y = load i8, ptr %0, align 8, !tbaa !14
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep16AppendTreeToTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i32 noundef %3)
  br label %_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep19AppendTreeToInlinedEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i32 noundef %3)
  br label %_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord14PrependPreciseESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::cord_internal::InlineData", align 8 ; 6 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !14      ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = sext i8 %i.a to i64
  %i.d = lshr i64 %i.c, 1                         ; 3 uses
  %i.e = sub nsw i64 15, %i.d
  %i.f = select i1 %i.b, i64 0, i64 %i.e
  %.not = icmp ult i64 %i.f, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.g = add i64 %i.d, %1
  %.tr.i.i = trunc i64 %i.g to i8
  %i.h = shl i8 %.tr.i.i, 1
  store i8 %i.h, ptr %4, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %2, i64 %1, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i = select i1 %i.b, ptr null, ptr %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %spec.select.i, i64 %i.d, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.c:                                             ; preds = %bb.a
  %5 = icmp ult i64 %1, 20
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 4083)
  %i.l = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %5, i64 32, i64 %i.l      ; 2 uses
  %i.m = icmp samesign ult i64 %.0.i.i.i, 513     ; 2 uses
  %.neg.i.i.i = select i1 %i.m, i64 -8, i64 -64
  %i.n = select i1 %i.m, i64 8, i64 64
  %i.o = add nsw i64 %.0.i.i.i, -1
  %i.p = add nuw nsw i64 %i.o, %i.n
  %i.q = and i64 %i.p, %.neg.i.i.i                ; 3 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #23 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 2, ptr %i.s, align 8
  %i.t = icmp samesign ult i64 %i.q, 513          ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.t, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.t, i64 2, i64 58
  %i.u = lshr i64 %i.q, %.sink6.i.i.i.i.i
  %i.v = add nuw nsw i64 %i.u, %.sink5.i.i.i.i.i
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i8 %i.w, ptr %i.x, align 4, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %2, i64 %1, i1 false)
  store i64 %1, ptr %i.r, align 8, !tbaa !22
  %i.z = load i8, ptr %0, align 8, !tbaa !14
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep17PrependTreeToTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.r, i32 noundef %3)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_202505124Cord9InlineRep20PrependTreeToInlinedEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.r, i32 noundef %3)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_202505124Cord9InlineRep11PrependTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord12RemovePrefixEm(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %9 = alloca %"class.absl::lts_20250512::cord_internal::CordzUpdateScope", align 8 ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !14      ; 4 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit

_ZNK4absl12lts_202505124Cord4sizeEv.exit:         ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %.not = icmp ugt i64 %1, %i.h
  br i1 %.not, label %bb.d, label %bb.s, !prof !59

bb.d:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i64 22, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.1, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.k = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %1, ptr noundef nonnull %i.j)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m
  store i64 %i.n, ptr %6, align 8, !tbaa !121
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.o, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i64 21, ptr %7, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.2, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.q = load i8, ptr %0, align 8, !tbaa !14      ; 2 uses
  %i.r = trunc i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit52

bb.h:                                             ; preds = %bb.f
  %i.v = sext i8 %i.q to i64
  %i.w = lshr exact i64 %i.v, 1
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit52

_ZNK4absl12lts_202505124Cord4sizeEv.exit52:       ; preds = %bb.h, %bb.g
  %i.x = phi i64 [ %i.u, %bb.g ], [ %i.w, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.z = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %i.x, ptr noundef nonnull %i.y)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit52
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %8, align 8, !tbaa !121
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !122
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ak = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.ak(i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef 672, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit unwind label %bb.q, !inline_history !123

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.l:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.m:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit52, %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.o:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.o
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !14
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.n
  %.pn43 = phi { ptr, i32 } [ %i.an, %bb.n ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.ao, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.m
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.am, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.r

end_hunk_2
begin_hunk_3_@_ZNK4absl12lts_202505124Cord7SubcordEmm:bb.a
bb.az:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit
  %i.jk = invoke noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SubTreeEmm(ptr noundef nonnull align 8 dereferenceable(64) %.0.i72, i64 noundef %spec.select, i64 noundef %.043)
          to label %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit unwind label %bb.j

bb.ba:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit
  %i.jl = load i64, ptr %.0.i72, align 8, !tbaa !22
  %i.jm = icmp eq i64 %.043, %i.jl
  br i1 %i.jm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i72, i64 8
  %i.jo = atomicrmw add ptr %i.jn, i32 2 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit

bb.bc:                                            ; preds = %bb.ba
  %i.jp = icmp eq i8 %i.ji, 1
  br i1 %i.jp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.i72, i64 16
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !111
  %i.js = add i64 %i.jr, %spec.select
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i72, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !32
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.018.i = phi i64 [ %i.js, %bb.bd ], [ %spec.select, %bb.bc ]
  %.017.i = phi ptr [ %i.ju, %bb.bd ], [ %.0.i72, %bb.bc ] ; 3 uses
  %i.jv = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %.noexc74 unwind label %bb.j   ; 7 uses

.noexc74:                                         ; preds = %bb.be
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.jv, i8 0, i64 16, i1 false)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i32 2, ptr %i.jw, align 4, !tbaa !15
  store i64 %.043, ptr %i.jv, align 8, !tbaa !22
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  store i8 1, ptr %i.jx, align 4, !tbaa !23
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i64 %.018.i, ptr %i.jy, align 8, !tbaa !111
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.017.i) ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.ka = atomicrmw add ptr %i.jz, i32 2 monotonic, align 4 ; 0 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  store ptr %.017.i, ptr %i.kb, align 8, !tbaa !32
  br label %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit

_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit: ; preds = %.noexc74, %bb.bb, %bb.az
  %.035 = phi ptr [ %i.jk, %bb.az ], [ %.0.i72, %bb.bb ], [ %i.jv, %.noexc74 ]
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.035, ptr %i.kc, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !14
  %i.kd = load i64, ptr %1, align 8, !tbaa !14
  %.not.i75 = icmp ult i64 %i.kd, 2
  br i1 %.not.i75, label %_ZN4absl12lts_202505124Cord9InlineRep8set_dataEPKcm.exit, label %bb.bf, !prof !27

bb.bf:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 24)
          to label %_ZN4absl12lts_202505124Cord9InlineRep8set_dataEPKcm.exit unwind label %bb.j

bb.bg:                                            ; preds = %bb.j, %bb.ar
  %.pn50.pn = phi { ptr, i32 } [ %i.ii, %bb.ar ], [ %i.ap, %bb.j ]
  call void @_ZN4absl12lts_202505124CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn50.pn

_ZN4absl12lts_202505124Cord9InlineRep8set_dataEPKcm.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit, %bb.bf, %bb.i, %bb.h, %bb.f, %_ZNK4absl12lts_202505124Cord4sizeEv.exit, %_ZN4absl12lts_2025051213cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_202505124CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !14
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_202505124Cord15DestroyCordSlowEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !14
  %i.d = add nsw i64 %i.c, -1                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.e = inttoptr i64 %i.d to ptr
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.e)
          to label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i unwind label %bb.e

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i: ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw sub ptr %i.h, i32 2 acq_rel, align 4
  %.not.i1.i = icmp eq i32 %i.i, 2
  br i1 %.not.i1.i, label %bb.d, label %_ZN4absl12lts_202505124Cord15DestroyCordSlowEv.exit, !prof !59

bb.d:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.g)
          to label %_ZN4absl12lts_202505124Cord15DestroyCordSlowEv.exit unwind label %bb.e

_ZN4absl12lts_202505124Cord15DestroyCordSlowEv.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i, %bb.d, %bb.a
  ret void

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord15SetCrcCordStateENS0_12crc_internal12CrcCordStateE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::crc_internal::CrcCordState", align 8 ; 4 uses
  %3 = alloca %"class.absl::lts_20250512::crc_internal::CrcCordState", align 8 ; 4 uses
  %4 = alloca %"class.absl::lts_20250512::cord_internal::CordzUpdateScope", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::crc_internal::CrcCordState", align 8 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !14      ; 4 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl12lts_202505124Cord5emptyEv.exit, label %_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread

_ZNK4absl12lts_202505124Cord5emptyEv.exit:        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread: ; preds = %bb.a
  %i.g = icmp eq i8 %i.a, 0
  br i1 %i.g, label %.thread17, label %.thread

.thread17:                                        ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

bb.b:                                             ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit
  %i.i = load i64, ptr %0, align 8, !tbaa !14
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.k)
  br label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i: ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = atomicrmw sub ptr %i.l, i32 2 acq_rel, align 4
  %.not.i4.i = icmp eq i32 %i.m, 2
  br i1 %.not.i4.i, label %bb.d, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i, !prof !59

bb.d:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.d)
  br label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i: ; preds = %bb.d, %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit: ; preds = %.thread17, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.n = phi ptr [ %i.h, %.thread17 ], [ %i.c, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i ]
  call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateC1EOS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.o = invoke noundef ptr @_ZN4absl12lts_2025051213cord_internal10CordRepCrc3NewEPNS1_7CordRepENS0_12crc_internal12CrcCordStateE(ptr noundef null, ptr noundef nonnull %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #24
  store ptr %i.o, ptr %i.n, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !14
  %i.p = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2025051213cord_internal17cordz_next_sampleE) ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i, !prof !27

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i: ; preds = %bb.e
  %i.s = add nsw i64 %i.q, -1
  store i64 %i.s, ptr %i.p, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i: ; preds = %bb.e
  %i.t = call noundef i64 @_ZN4absl12lts_2025051213cord_internal25cordz_should_profile_slowERNS1_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !28

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i
  call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 23, i64 noundef %i.t)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.g:                                             ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #24
  br label %bb.u

.thread:                                          ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread
  %i.w = sext i8 %i.a to i64
  %i.x = lshr exact i64 %i.w, 1                   ; 2 uses
  %6 = icmp ult i8 %i.a, 40
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 4083)
  %7 = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %6, i64 32, i64 %7        ; 2 uses
  %i.y = icmp samesign ult i64 %.0.i.i.i, 513     ; 2 uses
  %.neg.i.i.i = select i1 %i.y, i64 -8, i64 -64
  %i.z = select i1 %i.y, i64 8, i64 64
  %i.aa = add nsw i64 %.0.i.i.i, -1
  %i.ab = add nuw nsw i64 %i.aa, %i.z
  %i.ac = and i64 %i.ab, %.neg.i.i.i              ; 3 uses
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #23 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 2, ptr %i.ae, align 4, !tbaa !15
  %i.af = icmp samesign ult i64 %i.ac, 513        ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.af, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.af, i64 2, i64 58
  %i.ag = lshr i64 %i.ac, %.sink6.i.i.i.i.i
  %i.ah = add nuw nsw i64 %i.ag, %.sink5.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i8 %i.ai, ptr %i.aj, align 4, !tbaa !23
  store i64 %i.x, ptr %i.ad, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 13
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ak, ptr noundef nonnull align 1 dereferenceable(15) %i.al, i64 15, i1 false)
  call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateC1EOS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.am = invoke noundef ptr @_ZN4absl12lts_2025051213cord_internal10CordRepCrc3NewEPNS1_7CordRepENS0_12crc_internal12CrcCordStateE(ptr noundef nonnull %i.ad, ptr noundef nonnull %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.thread
  call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !14
  %i.ao = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2025051213cord_internal17cordz_next_sampleE) ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i12, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i11, !prof !27

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i12: ; preds = %bb.h
  %i.ar = add nsw i64 %i.ap, -1
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i11: ; preds = %bb.h
  %i.as = call noundef i64 @_ZN4absl12lts_2025051213cord_internal25cordz_should_profile_slowERNS1_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %bb.i, label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !28

bb.i:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i11
  call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 23, i64 noundef %i.as)
  br label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.j:                                             ; preds = %.thread
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  br label %bb.u

bb.k:                                             ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.av = load i64, ptr %0, align 8, !tbaa !14
  %i.aw = add nsw i64 %i.av, -1                   ; 3 uses
  %i.ax = inttoptr i64 %i.aw to ptr               ; 4 uses
  store ptr %i.ax, ptr %4, align 8, !tbaa !35
  %.not.i14 = icmp eq i64 %i.aw, 0
  br i1 %.not.i14, label %bb.m, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo4LockENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.ax, i32 noundef 23)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = phi ptr [ %.pre, %bb.l ], [ %i.d, %bb.k ]
  invoke void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateC1EOS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.az = invoke noundef ptr @_ZN4absl12lts_2025051213cord_internal10CordRepCrc3NewEPNS1_7CordRepENS0_12crc_internal12CrcCordStateE(ptr noundef %i.ay, ptr noundef nonnull %5)
          to label %bb.o unwind label %bb.s       ; 2 uses

bb.o:                                             ; preds = %bb.n
  call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  store ptr %i.az, ptr %i.c, align 8, !tbaa !14
  %.not.i.i15 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i15, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.p, !prof !27

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.ax)
          to label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #25
  unreachable

_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.r:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.r ], [ %i.be, %bb.s ]
  call void @_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.u

_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.i, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i11, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i12, %bb.f, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i, %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit
  ret void

bb.u:                                             ; preds = %bb.t, %bb.j, %bb.g
  %.pn9 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %.pn, %bb.t ], [ %i.au, %bb.j ]
  resume { ptr, i32 } %.pn9
}

declare noundef ptr @_ZN4absl12lts_2025051213cord_internal10CordRepCrc3NewEPNS1_7CordRepENS0_12crc_internal12CrcCordStateE(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateC1EOS2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord19SetExpectedChecksumEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::crc_internal::CrcCordState", align 8 ; 8 uses
  %3 = alloca %"struct.absl::lts_20250512::crc_internal::CrcCordState::PrefixCrc", align 8 ; 7 uses
  %4 = alloca %"class.absl::lts_20250512::crc_internal::CrcCordState", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = invoke noundef ptr @_ZN4absl12lts_2025051212crc_internal12CrcCordState11mutable_repEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.i       ; 3 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = load i8, ptr %0, align 8, !tbaa !14      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.g = sext i8 %i.b to i64
  %i.h = lshr exact i64 %i.g, 1
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit

_ZNK4absl12lts_202505124Cord4sizeEv.exit:         ; preds = %bb.d, %bb.c
  %i.i = phi i64 [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  store i64 %i.i, ptr %3, align 8, !tbaa !131
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %1, ptr %i.j, align 8, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -16
  %.not.i.i = icmp eq ptr %i.l, %i.o
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !141
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.k, align 8, !tbaa !134
  br label %_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE9push_backEOS4_.exit

bb.f:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE9push_backEOS4_.exit unwind label %bb.j

_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  invoke void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateC1EOS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE9push_backEOS4_.exit
  invoke void @_ZN4absl12lts_202505124Cord15SetCrcCordStateENS0_12crc_internal12CrcCordStateE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
end_hunk_3
