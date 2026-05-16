inline.NumInlined: 1712
inline.NumDeleted: 796
begin_hunk_0_@_ZN6hermes2vm16DroppingAcceptorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE14acceptNullableERNS0_17PinnedHermesValueEPKc:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.d, align 8, !tbaa !64
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #32
  br label %_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor14acceptNullableERNS0_17PinnedHermesValueE.exit

_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor14acceptNullableERNS0_17PinnedHermesValueE.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm16DroppingAcceptorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE6acceptERKNS0_12RootSymbolIDEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr readnone captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !396, !nonnull !78, !align !124
  tail call fastcc void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor9acceptSymENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(168) %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef null) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm16DroppingAcceptorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE6acceptERNS0_13GCPointerBaseEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nonnull readnone align 4 captures(none) %1, ptr readnone captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !396, !nonnull !78, !align !124
  tail call void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor6acceptERNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr nonnull align 4 poison)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm16DroppingAcceptorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr readnone captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !396, !nonnull !78, !align !124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.d, ptr noundef nonnull align 1 dereferenceable(11) @.str.64, i64 11, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 11, ptr %i.e, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 27
  store i8 0, ptr %i.f, align 1, !tbaa !64
  %i.g = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call fastcc void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor8acceptHVERKNS0_11HermesValueERZNS1_20sizeDiagnosticCensusEmE14DiagnosticStatm(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 noundef 8)
  %i.h = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.d, align 8, !tbaa !64
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #32
  br label %_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE.exit

_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef null) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm16DroppingAcceptorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr readnone captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !396, !nonnull !78, !align !124
  tail call void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm28RootAndSlotAcceptorWithNames6acceptERKNS0_10GCSymbolIDE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef null) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm16DroppingAcceptorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE6acceptERKNS0_10GCSymbolIDEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr readnone captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !396, !nonnull !78, !align !124
  tail call fastcc void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor9acceptSymENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(168) %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm28RootAndSlotAcceptorWithNames15provideSnapshotERKSt8functionIFvRNS0_12HeapSnapshotEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn8_N6hermes2vm16DroppingAcceptorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorED0Ev(ptr noundef %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 24) #32
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_13GCPointerBaseE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef null) #31, !inline_history !399
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #31, !inline_history !400
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef null) #31, !inline_history !401
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N6hermes2vm28RootAndSlotAcceptorWithNames6acceptERKNS0_10GCSymbolIDE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef null) #31, !inline_history !402
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm19RootAndSlotAcceptorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvPN6hermes2vm6GCCellEEZNS1_6GCBase20sizeDiagnosticCensusEmE3$_0E9_M_invokeERKSt9_Any_dataOS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !403   ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !405, !nonnull !78, !align !124 ; 10 uses
  %.shift.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 3 ; 3 uses
  %11 = load i8, ptr %.shift.i.i.i.i, align 1
  %i.d = zext i8 %11 to i64
  %i.e = getelementptr inbounds nuw [96 x i8], ptr @_ZN6hermes2vm8Metadata13metadataTableE, i64 %i.d ; 12 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !407
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.preheader29.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.preheader29.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.a
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !413
  %i.i = zext i8 %i.h to i64
  %i.j = icmp samesign ult i64 %.0.lcssa.i.i.i.i.i.i.i.i, %i.i
  br i1 %i.j, label %.lr.ph32.i.i.i.i.i.i.i.i, label %.preheader28.i.i.i.i.i.i.i.i

.lr.ph32.i.i.i.i.i.i.i.i:                         ; preds = %.preheader29.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 27
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  br label %bb.b

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i.i
  %.030.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.a ]
  tail call void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor6acceptERNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr nonnull readnone align 4 poison)
  %i.p = add nuw nsw i64 %.030.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.q = load i8, ptr %i.e, align 8, !tbaa !407
  %i.r = zext i8 %i.q to i64
  %i.s = icmp samesign ult i64 %i.p, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i.i, label %.preheader29.i.i.i.i.i.i.i.i, !llvm.loop !414

.preheader28.i.i.i.i.i.i.i.i:                     ; preds = %_ZN6hermes2vm11SlotVisitorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE9visitSlotINS0_17GCHermesValueBaseINS0_11HermesValueEEEEEvPc.exit.i.i.i.i.i.i.i.i, %.preheader29.i.i.i.i.i.i.i.i
  %.1.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %.0.lcssa.i.i.i.i.i.i.i.i, %.preheader29.i.i.i.i.i.i.i.i ], [ %i.ah, %_ZN6hermes2vm11SlotVisitorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE9visitSlotINS0_17GCHermesValueBaseINS0_11HermesValueEEEEEvPc.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !415
  %i.v = zext i8 %i.u to i64
  %i.w = icmp samesign ult i64 %.1.lcssa.i.i.i.i.i.i.i.i, %i.v
  br i1 %i.w, label %.lr.ph35.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

.lr.ph35.i.i.i.i.i.i.i.i:                         ; preds = %.preheader28.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.c

bb.b:                                             ; preds = %_ZN6hermes2vm11SlotVisitorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE9visitSlotINS0_17GCHermesValueBaseINS0_11HermesValueEEEEEvPc.exit.i.i.i.i.i.i.i.i, %.lr.ph32.i.i.i.i.i.i.i.i
  %.131.i.i.i.i.i.i.i.i = phi i64 [ %.0.lcssa.i.i.i.i.i.i.i.i, %.lr.ph32.i.i.i.i.i.i.i.i ], [ %i.ah, %_ZN6hermes2vm11SlotVisitorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE9visitSlotINS0_17GCHermesValueBaseINS0_11HermesValueEEEEEvPc.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %.131.i.i.i.i.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !64
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.l, ptr %3, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.l, ptr noundef nonnull align 1 dereferenceable(11) @.str.64, i64 11, i1 false)
  store i64 11, ptr %i.m, align 8, !tbaa !90
  store i8 0, ptr %i.n, align 1, !tbaa !64
  %i.ac = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call fastcc void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor8acceptHVERKNS0_11HermesValueERZNS1_20sizeDiagnosticCensusEmE14DiagnosticStatm(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i64 noundef 8)
  %i.ad = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %_ZN6hermes2vm11SlotVisitorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE9visitSlotINS0_17GCHermesValueBaseINS0_11HermesValueEEEEEvPc.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.af = load i64, ptr %i.l, align 8, !tbaa !64
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #32
  br label %_ZN6hermes2vm11SlotVisitorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE9visitSlotINS0_17GCHermesValueBaseINS0_11HermesValueEEEEEvPc.exit.i.i.i.i.i.i.i.i

_ZN6hermes2vm11SlotVisitorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE9visitSlotINS0_17GCHermesValueBaseINS0_11HermesValueEEEEEvPc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ah = add nuw nsw i64 %.131.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ai = load i8, ptr %i.g, align 1, !tbaa !413
  %i.aj = zext i8 %i.ai to i64
  %i.ak = icmp samesign ult i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.b, label %.preheader28.i.i.i.i.i.i.i.i, !llvm.loop !416

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.c, %.preheader28.i.i.i.i.i.i.i.i
  %.2.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %.1.lcssa.i.i.i.i.i.i.i.i, %.preheader28.i.i.i.i.i.i.i.i ], [ %i.at, %bb.c ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !417
  %i.an = zext i8 %i.am to i64
  %i.ao = icmp samesign ult i64 %.2.lcssa.i.i.i.i.i.i.i.i, %i.an
  br i1 %i.ao, label %.lr.ph38.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm11SlotVisitorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE11visitFieldsEPcRKNS0_8Metadata11SlotOffsetsE.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.c, %.lr.ph35.i.i.i.i.i.i.i.i
  %.234.i.i.i.i.i.i.i.i = phi i64 [ %.1.lcssa.i.i.i.i.i.i.i.i, %.lr.ph35.i.i.i.i.i.i.i.i ], [ %i.at, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 %.234.i.i.i.i.i.i.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !64
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  call void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(4) %i.as)
  %i.at = add nuw nsw i64 %.234.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.au = load i8, ptr %i.t, align 2, !tbaa !415
  %i.av = zext i8 %i.au to i64
  %i.aw = icmp samesign ult i64 %i.at, %i.av
  br i1 %i.aw, label %bb.c, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !418

.lr.ph38.i.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i, %.lr.ph38.i.i.i.i.i.i.i.i
  %.337.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph38.i.i.i.i.i.i.i.i ], [ %.2.lcssa.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ]
  call fastcc void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor9acceptSymENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(168) %i.c)
  %i.ax = add nuw nsw i64 %.337.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ay = load i8, ptr %i.al, align 1, !tbaa !417
  %i.az = zext i8 %i.ay to i64
  %i.ba = icmp samesign ult i64 %i.ax, %i.az
  br i1 %i.ba, label %.lr.ph38.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm11SlotVisitorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE11visitFieldsEPcRKNS0_8Metadata11SlotOffsetsE.exit.i.i.i.i.i.i.i, !llvm.loop !419

_ZN6hermes2vm11SlotVisitorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE11visitFieldsEPcRKNS0_8Metadata11SlotOffsetsE.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph38.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !420, !range !77, !noundef !78
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.d, label %_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i

bb.d:                                             ; preds = %_ZN6hermes2vm11SlotVisitorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE11visitFieldsEPcRKNS0_8Metadata11SlotOffsetsE.exit.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !421
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !422
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bl
  %i.bn = load atomic i32, ptr %i.bm acquire, align 4 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !423 ; 2 uses
  %i.bq = load i8, ptr %i.be, align 4, !tbaa !424
  switch i8 %i.bq, label %_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i.i.i = phi i32 [ %i.br, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.e ]
  call void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor6acceptERNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr nonnull readnone align 4 poison)
  %i.br = add nuw i32 %.02.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.br, %i.bn
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !425

bb.f:                                             ; preds = %bb.d
  %i.bs = zext i8 %i.bp to i64
  %.not.i22.i.i.i.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i22.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i, label %.lr.ph.i23.i.i.i.i.i.i.i.i

.lr.ph.i23.i.i.i.i.i.i.i.i:                       ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 27
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorNS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i23.i.i.i.i.i.i.i.i
  %.02.i24.i.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i23.i.i.i.i.i.i.i.i ], [ %i.cd, %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorNS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i.i.i.i.i.i.i.i.i ]
  %.071.i25.i.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i23.i.i.i.i.i.i.i.i ], [ %i.cc, %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorNS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %i.bu, ptr %2, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bu, ptr noundef nonnull align 1 dereferenceable(11) @.str.64, i64 11, i1 false)
  store i64 11, ptr %i.bv, align 8, !tbaa !90
  store i8 0, ptr %i.bw, align 1, !tbaa !64
  %i.bx = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call fastcc void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor8acceptHVERKNS0_11HermesValueERZNS1_20sizeDiagnosticCensusEmE14DiagnosticStatm(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(8) %.071.i25.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.bx, i64 noundef 8)
  %i.by = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bu
  br i1 %i.bz, label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorNS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !64
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #32
  br label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorNS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i.i.i.i.i.i.i.i.i

_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorNS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.cc = getelementptr inbounds nuw i8, ptr %.071.i25.i.i.i.i.i.i.i.i, i64 %i.bs
  %i.cd = add nuw i32 %.02.i24.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i26.i.i.i.i.i.i.i.i = icmp eq i32 %i.cd, %i.bn
  br i1 %exitcond.not.i26.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i, label %bb.g, !llvm.loop !426

bb.h:                                             ; preds = %bb.d
  %i.ce = zext i8 %i.bp to i64
  %.not.i27.i.i.i.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i27.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i, label %.lr.ph.i28.i.i.i.i.i.i.i.i

.lr.ph.i28.i.i.i.i.i.i.i.i:                       ; preds = %bb.h, %.lr.ph.i28.i.i.i.i.i.i.i.i
  %.02.i29.i.i.i.i.i.i.i.i = phi i32 [ %i.cg, %.lr.ph.i28.i.i.i.i.i.i.i.i ], [ 0, %bb.h ]
  %.071.i30.i.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i28.i.i.i.i.i.i.i.i ], [ %i.bi, %bb.h ] ; 2 uses
  call void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(4) %.071.i30.i.i.i.i.i.i.i.i)
  %i.cf = getelementptr inbounds nuw i8, ptr %.071.i30.i.i.i.i.i.i.i.i, i64 %i.ce
  %i.cg = add nuw i32 %.02.i29.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i31.i.i.i.i.i.i.i.i = icmp eq i32 %i.cg, %i.bn
  br i1 %exitcond.not.i31.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i, label %.lr.ph.i28.i.i.i.i.i.i.i.i, !llvm.loop !427

bb.i:                                             ; preds = %bb.d
  %.not.i32.i.i.i.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i32.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i, label %.lr.ph.i33.i.i.i.i.i.i.i.i

.lr.ph.i33.i.i.i.i.i.i.i.i:                       ; preds = %bb.i, %.lr.ph.i33.i.i.i.i.i.i.i.i
  %.02.i34.i.i.i.i.i.i.i.i = phi i32 [ %i.ch, %.lr.ph.i33.i.i.i.i.i.i.i.i ], [ 0, %bb.i ]
  call fastcc void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor9acceptSymENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(168) %i.c)
  %i.ch = add nuw i32 %.02.i34.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i36.i.i.i.i.i.i.i.i = icmp eq i32 %i.ch, %i.bn
  br i1 %exitcond.not.i36.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i, label %.lr.ph.i33.i.i.i.i.i.i.i.i, !llvm.loop !428

_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i: ; preds = %.lr.ph.i33.i.i.i.i.i.i.i.i, %.lr.ph.i28.i.i.i.i.i.i.i.i, %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorNS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZN6hermes2vm11SlotVisitorIZNS0_6GCBase20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorE11visitFieldsEPcRKNS0_8Metadata11SlotOffsetsE.exit.i.i.i.i.i.i.i
  %i.ci = load ptr, ptr %0, align 8, !tbaa !405, !nonnull !78, !align !124 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 80 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !429
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !429
  %12 = load i8, ptr %.shift.i.i.i.i, align 1
  %i.cm = zext i8 %12 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !430
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !432
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %._crit_edge.i.i.i.i.i, label %._crit_edge.i.i43.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 88 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !435
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !435
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.cw, ptr %4, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cw, ptr noundef nonnull align 1 dereferenceable(12) @.str.90, i64 12, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 12, ptr %i.cx, align 8, !tbaa !90
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.cy, align 4, !tbaa !64
  %i.cz = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !314
  %i.dc = add i64 %i.db, 8
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !314
  %i.dd = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cw
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %i.df = load i64, ptr %i.cw, align 8, !tbaa !64
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.j

._crit_edge.i.i43.i.i.i:                          ; preds = %_ZN6hermes2vm6GCBase8markCellIZNS1_20sizeDiagnosticCensusEmE26HeapSizeDiagnosticAcceptorEEvPNS0_6GCCellERT_.exit.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.di, ptr %5, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.di, ptr noundef nonnull align 1 dereferenceable(12) @.str.90, i64 12, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 12, ptr %i.dj, align 8, !tbaa !90
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.dk, align 4, !tbaa !64
  %i.dl = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !314
  %i.do = add i64 %i.dn, 4
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !314
  %i.dp = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.di
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i: ; preds = %._crit_edge.i.i43.i.i.i
  %i.dr = load i64, ptr %i.di, align 8, !tbaa !64
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i: ; preds = %._crit_edge.i.i43.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %13 = load i8, ptr %.shift.i.i.i.i, align 1     ; 2 uses
  %14 = add i8 %13, -11
  %15 = icmp ult i8 %14, -8
  %16 = add i8 %13, -5
  %spec.select.i.i.i.i = icmp ult i8 %16, 2
  %or.cond.i.i.i = or i1 %spec.select.i.i.i.i, %15
  br i1 %or.cond.i.i.i, label %"_ZSt10__invoke_rIvRZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE3$_0JPNS1_6GCCellEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %17 = load i32, ptr %.val, align 4
  %i.dt = and i32 %17, 16777216
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = load ptr, ptr %0, align 8, !tbaa !405, !nonnull !78, !align !124
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 112 ; 2 uses
  br i1 %i.du, label %._crit_edge.i.i48.i.i.i, label %._crit_edge.i.i50.i.i.i

._crit_edge.i.i48.i.i.i:                          ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.dx, ptr %6, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 23, ptr %i.b, align 8, !tbaa !91
  %i.dy = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #31 ; 2 uses
  store ptr %i.dy, ptr %6, align 8, !tbaa !89
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !91  ; 3 uses
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.dy, ptr noundef nonnull align 1 dereferenceable(23) @.str.91, i64 23, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !90
  %i.eb = load ptr, ptr %6, align 8, !tbaa !89
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dz
  store i8 0, ptr %i.ec, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.ed = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.ee = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dx
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i.i.i

._crit_edge.i.i50.i.i.i:                          ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.eg, ptr %7, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 24, ptr %i.a, align 8, !tbaa !91
  %i.eh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #31 ; 2 uses
  store ptr %i.eh, ptr %7, align 8, !tbaa !89
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !91  ; 3 uses
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.eh, ptr noundef nonnull align 1 dereferenceable(24) @.str.92, i64 24, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !90
  %i.ek = load ptr, ptr %7, align 8, !tbaa !89
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  store i8 0, ptr %i.el, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.em = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %i.en = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.eg
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i: ; preds = %._crit_edge.i.i50.i.i.i
  %i.ep = load i64, ptr %i.eg, align 8, !tbaa !64
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i: ; preds = %._crit_edge.i.i50.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.critedge42.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i.i.i: ; preds = %._crit_edge.i.i48.i.i.i
  %i.er = load i64, ptr %i.dx, align 8, !tbaa !64
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.es) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i.i.i: ; preds = %._crit_edge.i.i48.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.critedge42.i.i.i

.critedge42.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i
  %i.et = phi ptr [ %i.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i.i.i ] ; 4 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !313
  %i.ev = add i64 %i.eu, 1
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !313
  %i.ew = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !436 ; 2 uses
  %i.ey = and i32 %i.ex, 2147483647               ; 2 uses
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = load i32, ptr %.val, align 4
  %i.fb = lshr i32 %i.fa, 24
  %.lobit.i.i.i = and i32 %i.fb, 1
  %i.fc = zext nneg i32 %.lobit.i.i.i to i64
  %i.fd = shl nuw nsw i64 %i.ez, %i.fc            ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !314
  %i.fg = add i64 %i.fd, %i.ff
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !314
  %i.fh = icmp samesign ult i32 %i.ey, 8
  br i1 %i.fh, label %_ZNSt7__cxx119to_stringEm.exit.i.i.i, label %"_ZSt10__invoke_rIvRZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE3$_0JPNS1_6GCCellEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

_ZNSt7__cxx119to_stringEm.exit.i.i.i:             ; preds = %.critedge42.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.fj, ptr %10, align 8, !tbaa !88, !alias.scope !439
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 1, i8 noundef signext 0) #31
  %i.fk = load ptr, ptr %10, align 8, !tbaa !89, !alias.scope !439
  %i.fl = trunc i32 %i.ex to i8
  %i.fm = or disjoint i8 %i.fl, 48
  store i8 %i.fm, ptr %i.fk, align 1, !tbaa !64
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.fn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.93, i64 noundef 22) #31, !noalias !442 ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.fo, ptr %9, align 8, !tbaa !88, !alias.scope !442
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !89 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 7 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.thread.i.i.i, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i.i.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.thread.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !90 ; 3 uses
  %i.fu = icmp ult i64 %i.ft, 16
  call void @llvm.assume(i1 %i.fu)
  %i.fv = add nuw nsw i64 %i.ft, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fo, ptr noundef nonnull align 8 dereferenceable(1) %i.fq, i64 %i.fv, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ft, ptr %i.fw, align 8, !tbaa !90, !alias.scope !442
  store ptr %i.fq, ptr %i.fn, align 8, !tbaa !89
  store i64 0, ptr %i.fs, align 8, !tbaa !90
  store i8 0, ptr %i.fq, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit.i.i.i
  store ptr %i.fp, ptr %9, align 8, !tbaa !89, !alias.scope !442
  %i.fx = load i64, ptr %i.fq, align 8, !tbaa !64
  store i64 %i.fx, ptr %i.fo, align 8, !tbaa !64, !alias.scope !442
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !90 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.pre.i.i.i.i, ptr %i.fy, align 8, !tbaa !90, !alias.scope !442
  store ptr %i.fq, ptr %i.fn, align 8, !tbaa !89
  store i64 0, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !90
  store i8 0, ptr %i.fq, align 8, !tbaa !64
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.fz = icmp eq i64 %.pre.i.i.i.i, 4611686018427387903
  br i1 %i.fz, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #33, !noalias !445
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i.i.i, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.thread.i.i.i
  %i.ga = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.94, i64 noundef 1) #31, !noalias !445 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.gb, ptr %8, align 8, !tbaa !88, !alias.scope !445
  %i.gc = load ptr, ptr %i.ga, align 8, !tbaa !89 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 5 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !90 ; 3 uses
  %i.gh = icmp ult i64 %i.gg, 16
  call void @llvm.assume(i1 %i.gh)
  %i.gi = add nuw nsw i64 %i.gg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gb, ptr noundef nonnull align 8 dereferenceable(1) %i.gd, i64 %i.gi, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i
  store ptr %i.gc, ptr %8, align 8, !tbaa !89, !alias.scope !445
  %i.gj = load i64, ptr %i.gd, align 8, !tbaa !64
  store i64 %i.gj, ptr %i.gb, align 8, !tbaa !64, !alias.scope !445
  %.phi.trans.insert.i61.i.i.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.pre.i62.i.i.i = load i64, ptr %.phi.trans.insert.i61.i.i.i, align 8, !tbaa !90
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i, %bb.m
  %i.gk = phi i64 [ %i.gg, %bb.m ], [ %.pre.i62.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.gk, ptr %i.gm, align 8, !tbaa !90, !alias.scope !445
  store ptr %i.gd, ptr %i.ga, align 8, !tbaa !89
  store i64 0, ptr %i.gl, align 8, !tbaa !90
  store i8 0, ptr %i.gd, align 8, !tbaa !64
  %i.gn = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %8) ; 2 uses
  %i.go = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gb
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i.i
  %i.gq = load i64, ptr %i.gb, align 8, !tbaa !64
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i.i
  %i.gs = load ptr, ptr %9, align 8, !tbaa !89    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.fo
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i
  %i.gu = load i64, ptr %i.fo, align 8, !tbaa !64
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i
  %i.gw = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.fj
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i
  %i.gy = load i64, ptr %i.fj, align 8, !tbaa !64
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.ha = load <2 x i64>, ptr %i.gn, align 8, !tbaa !91
  %i.hb = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.fd, i64 1
  %i.hc = add <2 x i64> %i.ha, %i.hb
  store <2 x i64> %i.hc, ptr %i.gn, align 8, !tbaa !91
  br label %"_ZSt10__invoke_rIvRZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE3$_0JPNS1_6GCCellEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

"_ZSt10__invoke_rIvRZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE3$_0JPNS1_6GCCellEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %bb.j, %.critedge42.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPN6hermes2vm6GCCellEEZNS1_6GCBase20sizeDiagnosticCensusEmE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !63
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !448
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !450
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nofree nounwind }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { builtin nounwind allocsize(0) }
attributes #37 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !4, i64 8}
!10 = !{!"_ZTSN6hermes2vm6GCBaseE", !4, i64 8, !11, i64 16, !12, i64 24, !13, i64 32, !15, i64 40, !16, i64 48, !21, i64 64, !22, i64 72, !24, i64 104, !29, i64 128, !29, i64 129, !29, i64 130, !29, i64 131, !30, i64 136, !32, i64 144, !11, i64 152, !11, i64 160, !33, i64 168, !37, i64 328, !40, i64 360, !44, i64 408, !47, i64 456, !5, i64 656, !58, i64 680, !4, i64 712, !29, i64 716}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN6hermes2vm11GCExecTraceE"}
!13 = !{!"p1 _ZTSN6hermes2vm6GCBase11GCCallbacksE", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 _ZTSN6hermes2vm11PointerBaseE", !14, i64 0}
!16 = !{!"_ZTSSt10shared_ptrIN6hermes2vm12CrashManagerEE", !17, i64 0}
!17 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0, !19, i64 8}
!18 = !{!"p1 _ZTSN6hermes2vm12CrashManagerE", !14, i64 0}
!19 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0}
!20 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!21 = !{!"_ZTSN6hermes2vm6GCBase8HeapKindE", !5, i64 0}
!22 = !{!"_ZTSSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEE", !23, i64 0, !14, i64 24}
!23 = !{!"_ZTSSt14_Function_base", !5, i64 0, !14, i64 16}
!24 = !{!"_ZTSSt6vectorIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !25, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE12_Vector_implE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSN6hermes2vm16GCAnalyticsEventE", !14, i64 0}
!29 = !{!"bool", !5, i64 0}
!30 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !31, i64 0}
!31 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !11, i64 0}
!32 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !11, i64 0}
!33 = !{!"_ZTSN6hermes2vm6GCBase19CumulativeHeapStatsE", !4, i64 0, !34, i64 8, !34, i64 48, !4, i64 88, !36, i64 96, !36, i64 128}
!34 = !{!"_ZTSN6hermes16StatsAccumulatorIddEE", !4, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!35 = !{!"double", !5, i64 0}
!36 = !{!"_ZTSN6hermes16StatsAccumulatorIjmEE", !4, i64 0, !11, i64 8, !4, i64 16, !4, i64 20, !35, i64 24}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !11, i64 8, !5, i64 16}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !39, i64 0}
!39 = !{!"p1 omnipotent char", !14, i64 0}
!40 = !{!"_ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EEE", !41, i64 0, !11, i64 8, !42, i64 16, !43, i64 32, !35, i64 40}
!41 = !{!"p1 _ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EE5ChunkE", !14, i64 0}
!42 = !{!"_ZTSN6hermes24ExponentialMovingAverageE", !35, i64 0, !35, i64 8}
!43 = !{!"p1 _ZTSN6hermes2vm11WeakRefSlotE", !14, i64 0}
!44 = !{!"_ZTSN6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EEE", !45, i64 0, !11, i64 8, !42, i64 16, !46, i64 32, !35, i64 40}
!45 = !{!"p1 _ZTSN6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE5ChunkE", !14, i64 0}
!46 = !{!"p1 _ZTSN6hermes2vm16WeakMapEntrySlotE", !14, i64 0}
!47 = !{!"_ZTSN6hermes2vm6GCBase9IDTrackerE", !48, i64 0, !4, i64 40, !50, i64 48, !50, i64 72, !52, i64 96, !54, i64 120, !50, i64 144, !56, i64 168, !29, i64 192}
!48 = !{!"_ZTSSt15recursive_mutex", !49, i64 0}
!49 = !{!"_ZTSSt22__recursive_mutex_base", !5, i64 0}
!50 = !{!"_ZTSN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEE", !51, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!51 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjjEE", !14, i64 0}
!52 = !{!"_ZTSN4llvh8DenseMapIPKvjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEE", !53, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!53 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPKvjEE", !14, i64 0}
!54 = !{!"_ZTSN4llvh8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS2_EEEE", !55, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!55 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjNS_11SmallVectorIjLj1EEEEE", !14, i64 0}
!56 = !{!"_ZTSN4llvh8DenseMapIdjN6hermes2vm6GCBase9IDTracker16DoubleComparatorENS_6detail12DenseMapPairIdjEEEE", !57, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!57 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIdjEE", !14, i64 0}
!58 = !{!"_ZTSSt8functionIFvRN6hermes2vm17GCTripwireContextEEE", !23, i64 0, !14, i64 24}
!59 = !{!10, !11, i64 16}
!60 = !{!13, !13, i64 0}
!61 = !{!15, !15, i64 0}
!62 = !{!19, !20, i64 0}
!63 = !{!14, !14, i64 0}
!64 = !{!5, !5, i64 0}
!65 = !{!10, !21, i64 64}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv: argument 0"}
!68 = distinct !{!68, !"_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv"}
!69 = !{!23, !14, i64 16}
!70 = distinct !{null, null}
!71 = !{!72, !29, i64 48}
!72 = !{!"_ZTSN6hermes2vm8GCConfigE", !4, i64 0, !4, i64 4, !4, i64 8, !35, i64 16, !4, i64 24, !73, i64 32, !29, i64 48, !74, i64 52, !37, i64 56, !75, i64 88, !29, i64 128, !29, i64 129, !29, i64 130, !29, i64 131, !22, i64 136, !76, i64 168}
!73 = !{!"_ZTSN6hermes2vm16GCSanitizeConfigE", !35, i64 0, !11, i64 8}
!74 = !{!"_ZTSN6hermes2vm13ReleaseUnusedE", !5, i64 0}
!75 = !{!"_ZTSN6hermes2vm16GCTripwireConfigE", !4, i64 0, !58, i64 8}
!76 = !{!"_ZTSSt8functionIFvN6hermes2vm11GCEventKindEPKcEE", !23, i64 0, !14, i64 24}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = !{!10, !29, i64 128}
!80 = !{!10, !29, i64 129}
!81 = !{!10, !29, i64 130}
!82 = !{!10, !29, i64 131}
!83 = !{!34, !4, i64 0}
!84 = !{!36, !4, i64 0}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev: argument 0"}
!87 = distinct !{!87, !"_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev"}
!88 = !{!38, !39, i64 0}
!89 = !{!37, !39, i64 0}
!90 = !{!37, !11, i64 8}
!91 = !{!11, !11, i64 0}
!92 = !{!72, !35, i64 16}
!93 = !{!42, !35, i64 0}
!94 = !{!40, !35, i64 40}
!95 = !{!44, !35, i64 40}
!96 = !{!97, !4, i64 16}
!97 = !{!"_ZTS17__pthread_mutex_s", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !98, i64 20, !98, i64 22, !99, i64 24}
!98 = !{!"short", !5, i64 0}
!99 = !{!"_ZTS23__pthread_internal_list", !100, i64 0, !100, i64 8}
!100 = !{!"p1 _ZTS23__pthread_internal_list", !14, i64 0}
!101 = !{!47, !4, i64 40}
!102 = !{!47, !29, i64 192}
end_hunk_0
