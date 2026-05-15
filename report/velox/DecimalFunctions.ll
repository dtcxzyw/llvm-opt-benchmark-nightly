inline.NumInlined: 45069
inline.NumDeleted: 11734
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev:bb.a

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4core19TypeAnalysisResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !507
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #36
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88   ; 8 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !98
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #33, !inline_history !598
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #33, !inline_history !598
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !80

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #33
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !99
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !99
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !7  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #37
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !99
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #33
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ak) #33
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.67", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !507  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 4 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.n = sub i64 %i.i, %i.f
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.o = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.o, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !640 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !642

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.p, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.f) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.w = sub i64 %i.f, %i.r
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.x, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %bb.d

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit
  %i.y = tail call { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %1) ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE2atERSD_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !558
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !558
  %i.ae = icmp eq i8 %i.ab, %i.ad
  %.pre = load i64, ptr %i.e, align 8, !tbaa !16  ; 4 uses
  br i1 %i.ae, label %bb.e, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !643

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = icmp eq i64 %.pre, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !643

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.pre, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ak = load ptr, ptr %1, align 8, !tbaa !7
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %.pre)
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !643

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !643

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !7
  %bcmp.i7.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %i.ap)
  %i.aw = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !643

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !644, !range !78, !noundef !79
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !644, !range !78, !noundef !79
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !643

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !645, !range !78, !noundef !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !645, !range !78, !noundef !79
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !643

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !646, !range !78, !noundef !79
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !646, !range !78, !noundef !79
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !647

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.e, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, %bb.h, %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !648
  %i.bm = load ptr, ptr %1, align 8, !tbaa !7, !noalias !648
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %2, align 16, !noalias !648
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre, ptr %.sroa_idx3.i, align 8, !noalias !648
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.35, i64 56, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !648
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.35) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread
  unreachable

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !22
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.bo

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread
  ret void
}

declare void @_ZN8facebook5velox7HUGEINTEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.48") align 8) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !507  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !640 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !641

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #33 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i21 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRS7_RSB_EEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i21, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.019.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE2atERSD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !507  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !640 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !641

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #33 ; 2 uses
  %.not.i.i.i3 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
end_hunk_0
begin_hunk_1_@llvm.abs.i64
!443 = distinct !{!443, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZN3fmt3v116formatIJNS0_6detail9named_argIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEES9_NS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!446 = distinct !{!446, !"_ZN3fmt3v116formatIJNS0_6detail9named_argIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEES9_NS0_7fstringIJDpT_EE1tEDpOSC_"}
!447 = !{!448, !450}
!448 = distinct !{!448, !449, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!449 = distinct !{!449, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!450 = distinct !{!450, !451, !"_ZN8facebook5velox15IntegerVariableILm6EE4nameB5cxx11Ev: argument 0"}
!451 = distinct !{!451, !"_ZN8facebook5velox15IntegerVariableILm6EE4nameB5cxx11Ev"}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!454 = distinct !{!454, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!455 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!458 = distinct !{!458, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!459 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!460 = !{!461}
!461 = distinct !{!461, !462, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!462 = distinct !{!462, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!463 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!464 = !{!465}
!465 = distinct !{!465, !466, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!466 = distinct !{!466, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!467 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!468 = !{!469}
!469 = distinct !{!469, !470, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!470 = distinct !{!470, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!471 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!472 = distinct !{!472, !103}
!473 = distinct !{null, null}
!474 = !{!475, !476, i64 0}
!475 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_119DecimalPlusFunctionINS1_4exec10VectorExecEEENS1_11LongDecimalINS1_15IntegerVariableILm3EEENSB_ILm7EEEEENS1_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEELN9__gnu_cxx12_Lock_policyE2EE", !476, i64 0, !89, i64 8}
!476 = !{!"p1 _ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_119DecimalPlusFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm3EEENSA_ILm7EEEEENS0_15ConstantCheckerIJNS9_INSA_ILm1EEENSA_ILm5EEEEENS9_INSA_ILm2EEENSA_ILm6EEEEEEEEJSH_SK_EEE", !11, i64 0}
!477 = !{!478}
!478 = distinct !{!478, !479, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions12_GLOBAL__N_119DecimalPlusFunctionINS2_4exec10VectorExecEEENS2_11LongDecimalINS2_15IntegerVariableILm3EEENSC_ILm7EEEEENS2_15ConstantCheckerIJNSB_INSC_ILm1EEENSC_ILm5EEEEENSB_INSC_ILm2EEENSC_ILm6EEEEEEEEJSJ_SM_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSW_: argument 0"}
!479 = distinct !{!479, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions12_GLOBAL__N_119DecimalPlusFunctionINS2_4exec10VectorExecEEENS2_11LongDecimalINS2_15IntegerVariableILm3EEENSC_ILm7EEEEENS2_15ConstantCheckerIJNSB_INSC_ILm1EEENSC_ILm5EEEEENSB_INSC_ILm2EEENSC_ILm6EEEEEEEEJSJ_SM_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSW_"}
!480 = !{!481, !54, i64 8}
!481 = !{!"_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_119DecimalPlusFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm3EEENSA_ILm7EEEEENS0_15ConstantCheckerIJNS9_INSA_ILm1EEENSA_ILm5EEEEENS9_INSA_ILm2EEENSA_ILm6EEEEEEEEJSH_SK_EEE", !482, i64 0, !54, i64 8, !483, i64 16, !4, i64 32, !486, i64 40, !489, i64 56}
!482 = !{!"_ZTSN8facebook5velox4core23ISimpleFunctionMetadataE"}
!483 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !484, i64 0}
!484 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EE", !485, i64 0, !89, i64 8}
!485 = !{!"p1 _ZTSN8facebook5velox4exec17FunctionSignatureE", !11, i64 0}
!486 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !487, i64 0}
!487 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !488, i64 0, !89, i64 8}
!488 = !{!"p1 _ZTSN8facebook5velox4TypeE", !11, i64 0}
!489 = !{!"_ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !490, i64 0}
!490 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !491, i64 0}
!491 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_Vector_implE", !492, i64 0}
!492 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_Vector_impl_dataE", !493, i64 0, !493, i64 8, !493, i64 16}
!493 = !{!"p1 _ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !11, i64 0}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_119DecimalPlusFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm3EEENSA_ILm7EEEEENS0_15ConstantCheckerIJNS9_INSA_ILm1EEENSA_ILm5EEEEENS9_INSA_ILm2EEENSA_ILm6EEEEEEEEJSH_SK_EE21analyzeSignatureTypesERKSt6vectorINS6_17SignatureVariableESaISO_EE: argument 0"}
!496 = distinct !{!496, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_119DecimalPlusFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm3EEENSA_ILm7EEEEENS0_15ConstantCheckerIJNS9_INSA_ILm1EEENSA_ILm5EEEEENS9_INSA_ILm2EEENSA_ILm6EEEEEEEEJSH_SK_EE21analyzeSignatureTypesERKSt6vectorINS6_17SignatureVariableESaISO_EE"}
!497 = !{!498, !54, i64 0}
!498 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResults5StatsE", !54, i64 0, !54, i64 1, !54, i64 2, !12, i64 8}
!499 = !{!498, !54, i64 1}
!500 = !{!498, !54, i64 2}
!501 = !{!498, !12, i64 8}
!502 = !{!503, !505, i64 0}
!503 = !{!"_ZTSSt15_Rb_tree_header", !504, i64 0, !12, i64 32}
!504 = !{!"_ZTSSt18_Rb_tree_node_base", !505, i64 0, !506, i64 8, !506, i64 16, !506, i64 24}
!505 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!506 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!507 = !{!503, !506, i64 8}
!508 = !{!503, !506, i64 16}
!509 = !{!503, !506, i64 24}
!510 = !{!503, !12, i64 32}
!511 = !{!512}
!512 = distinct !{!512, !513, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!513 = distinct !{!513, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!514 = !{!515}
!515 = distinct !{!515, !516, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!516 = distinct !{!516, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!517 = !{!518}
!518 = distinct !{!518, !519, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!519 = distinct !{!519, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!520 = !{!518, !515, !512}
!521 = !{!522, !10, i64 40}
!522 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !523, i64 56}
!523 = !{!"_ZTSSt6locale", !524, i64 0}
!524 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!525 = !{!518, !515, !512, !495}
!526 = !{!522, !10, i64 32}
!527 = !{!528}
!528 = distinct !{!528, !529, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!529 = distinct !{!529, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!530 = !{!531}
!531 = distinct !{!531, !532, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!532 = distinct !{!532, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!533 = !{!534}
!534 = distinct !{!534, !535, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!535 = distinct !{!535, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!536 = !{!534, !531, !528}
!537 = !{!534, !531, !528, !495}
!538 = !{!492, !493, i64 8}
!539 = !{!492, !493, i64 16}
!540 = !{!541}
!541 = distinct !{!541, !542, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!542 = distinct !{!542, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!543 = !{!544}
!544 = distinct !{!544, !545, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!545 = distinct !{!545, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!546 = !{!547}
!547 = distinct !{!547, !548, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!548 = distinct !{!548, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!549 = !{!547, !544, !541}
!550 = !{!547, !544, !541, !495}
!551 = !{!75, !75, i64 0}
!552 = !{!504, !506, i64 8}
!553 = !{i64 0, i64 1, !554, i64 1, i64 1, !554, i64 2, i64 1, !554, i64 8, i64 8, !555}
!554 = !{!54, !54, i64 0}
!555 = !{!12, !12, i64 0}
!556 = !{!492, !493, i64 0}
!557 = distinct !{!557, !103}
!558 = !{!559, !560, i64 64}
!559 = !{!"_ZTSN8facebook5velox4exec17SignatureVariableE", !8, i64 0, !8, i64 32, !560, i64 64, !54, i64 65, !54, i64 66, !54, i64 67}
!560 = !{!"_ZTSN8facebook5velox4exec13ParameterTypeE", !5, i64 0}
!561 = !{!562, !495}
!562 = distinct !{!562, !563, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!563 = distinct !{!563, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!564 = !{!562}
!565 = distinct !{!565, !103}
!566 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!567 = distinct !{!567, !103}
!568 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!569 = !{!570, !571, i64 0}
!570 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !571, i64 0, !12, i64 8, !573, i64 16, !12, i64 24, !575, i64 32, !574, i64 48}
!571 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !572, i64 0}
!572 = !{!"any p2 pointer", !11, i64 0}
!573 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !574, i64 0}
!574 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!575 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !576, i64 0, !12, i64 8}
!576 = !{!"float", !5, i64 0}
!577 = !{!570, !12, i64 8}
!578 = !{!575, !576, i64 0}
!579 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!580 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!581 = !{!481, !4, i64 32}
!582 = !{!487, !488, i64 0}
!583 = distinct !{null, null, null, null, null, null, null, null, null, null}
!584 = !{!476, !476, i64 0}
!585 = distinct !{null, null}
!586 = !{!587, !10, i64 8}
!587 = !{!"_ZTSSt9type_info", !10, i64 8}
!588 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!589 = distinct !{null, null, null, null, null, null, null, null, null}
!590 = distinct !{!590, !103}
!591 = !{!493, !493, i64 0}
!592 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!593 = distinct !{!593, !103}
!594 = distinct !{null, null, null, null, null, null, null, null, null}
!595 = distinct !{!595, !103}
!596 = distinct !{!596, !103}
!597 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!598 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!599 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!600 = !{!484, !485, i64 0}
!601 = !{!602}
!602 = distinct !{!602, !603, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_119DecimalPlusFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm3EEENSA_ILm7EEEEENS0_15ConstantCheckerIJNS9_INSA_ILm1EEENSA_ILm5EEEEENS9_INSA_ILm2EEENSA_ILm6EEEEEEEEJSH_SK_EE10CreateTypeISD_E6createERKSt10shared_ptrINS6_17FunctionSignatureEE: argument 0"}
!603 = distinct !{!603, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_119DecimalPlusFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm3EEENSA_ILm7EEEEENS0_15ConstantCheckerIJNS9_INSA_ILm1EEENSA_ILm5EEEEENS9_INSA_ILm2EEENSA_ILm6EEEEEEEEJSH_SK_EE10CreateTypeISD_E6createERKSt10shared_ptrINS6_17FunctionSignatureEE"}
!604 = !{!605, !571, i64 0}
!605 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE", !571, i64 0, !12, i64 8, !573, i64 16, !12, i64 24, !575, i64 32, !574, i64 48}
!606 = !{!605, !12, i64 8}
!607 = !{!570, !574, i64 16}
!608 = !{!573, !574, i64 0}
!609 = distinct !{!609, !103}
!610 = distinct !{!610, !103}
!611 = !{!612}
!612 = distinct !{!612, !613, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!613 = distinct !{!613, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!614 = !{!615, !12, i64 8}
!615 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResultsE", !498, i64 0, !616, i64 16, !486, i64 392, !620, i64 408}
!616 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !617, i64 0, !618, i64 8}
!617 = !{!"_ZTSSo"}
!618 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !522, i64 0, !619, i64 64, !8, i64 72}
!619 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!620 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE", !621, i64 0}
!621 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !622, i64 0}
!622 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !623, i64 0, !503, i64 8}
!623 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !624, i64 0}
!624 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!625 = !{!626, !628}
!626 = distinct !{!626, !627, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!627 = distinct !{!627, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!628 = distinct !{!628, !629, !"_ZN8facebook5velox15IntegerVariableILm3EE4nameB5cxx11Ev: argument 0"}
!629 = distinct !{!629, !"_ZN8facebook5velox15IntegerVariableILm3EE4nameB5cxx11Ev"}
!630 = !{!631, !633}
!631 = distinct !{!631, !632, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!632 = distinct !{!632, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!633 = distinct !{!633, !634, !"_ZN8facebook5velox15IntegerVariableILm7EE4nameB5cxx11Ev: argument 0"}
!634 = distinct !{!634, !"_ZN8facebook5velox15IntegerVariableILm7EE4nameB5cxx11Ev"}
!635 = !{!636}
!636 = distinct !{!636, !637, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!637 = distinct !{!637, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!638 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!639 = distinct !{null, null, null}
!640 = !{!506, !506, i64 0}
!641 = distinct !{!641, !103}
!642 = distinct !{!642, !103}
!643 = !{!"branch_weights", i32 2146410443, i32 1073205}
!644 = !{!559, !54, i64 65}
!645 = !{!559, !54, i64 66}
!646 = !{!559, !54, i64 67}
!647 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!648 = !{!649}
!649 = distinct !{!649, !650, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!650 = distinct !{!650, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!651 = !{!652, !652, i64 0}
!652 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !11, i64 0}
!653 = !{!654, !655, i64 8}
!654 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeE", !652, i64 0, !655, i64 8}
!655 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEEE", !11, i64 0}
!656 = !{!504, !506, i64 24}
!657 = distinct !{!657, !103}
!658 = distinct !{null}
!659 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!660 = !{!661, !663}
!661 = distinct !{!661, !662, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!662 = distinct !{!662, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!663 = distinct !{!663, !664, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev: argument 0"}
!664 = distinct !{!664, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev"}
!665 = !{!666, !668}
!666 = distinct !{!666, !667, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!667 = distinct !{!667, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!668 = distinct !{!668, !669, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev: argument 0"}
!669 = distinct !{!669, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev"}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!672 = distinct !{!672, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!673 = !{!674}
!674 = distinct !{!674, !675, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!675 = distinct !{!675, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!676 = !{!677}
!677 = distinct !{!677, !675, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!678 = !{!674, !677}
!679 = distinct !{!679, !103}
!680 = !{!681}
!681 = distinct !{!681, !682, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!682 = distinct !{!682, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!683 = !{!684}
!684 = distinct !{!684, !682, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!685 = !{!681, !684}
!686 = !{!687}
!687 = distinct !{!687, !688, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!688 = distinct !{!688, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!689 = !{!690}
!690 = distinct !{!690, !688, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!691 = distinct !{!691, !103, !692, !693}
!692 = !{!"llvm.loop.isvectorized", i32 1}
!693 = !{!"llvm.loop.unroll.runtime.disable"}
!694 = distinct !{!694, !103, !692}
!695 = !{!696}
!696 = distinct !{!696, !697, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!697 = distinct !{!697, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!698 = !{!699}
!699 = distinct !{!699, !697, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!700 = distinct !{!700, !103, !692, !693}
!701 = distinct !{!701, !103, !692}
!702 = !{!703, !705}
!703 = distinct !{!703, !704, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!704 = distinct !{!704, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!705 = distinct !{!705, !706, !"_ZN8facebook5velox15IntegerVariableILm2EE4nameB5cxx11Ev: argument 0"}
!706 = distinct !{!706, !"_ZN8facebook5velox15IntegerVariableILm2EE4nameB5cxx11Ev"}
!707 = !{!708, !710}
!708 = distinct !{!708, !709, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!709 = distinct !{!709, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!710 = distinct !{!710, !711, !"_ZN8facebook5velox15IntegerVariableILm6EE4nameB5cxx11Ev: argument 0"}
!711 = distinct !{!711, !"_ZN8facebook5velox15IntegerVariableILm6EE4nameB5cxx11Ev"}
!712 = !{!713}
!713 = distinct !{!713, !714, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!714 = distinct !{!714, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!715 = !{!504, !506, i64 16}
!716 = distinct !{!716, !103}
!717 = distinct !{!717, !103}
!718 = distinct !{!718, !103}
!719 = !{!720, !54, i64 104}
!720 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !5, i64 0, !54, i64 104}
!721 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!722 = !{!723, !724, i64 0}
!723 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !724, i64 0, !724, i64 8, !724, i64 16}
!724 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !11, i64 0}
!725 = !{!723, !724, i64 8}
!726 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!727 = distinct !{!727, !103}
!728 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!729 = !{!723, !724, i64 16}
!730 = !{!731}
!731 = distinct !{!731, !732, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!732 = distinct !{!732, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!733 = !{!734, !735, i64 0}
!734 = !{!"_ZTSSt18_Bit_iterator_base", !735, i64 0, !4, i64 8}
!735 = !{!"p1 long", !11, i64 0}
!736 = !{!737, !735, i64 32}
!737 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !738, i64 0, !738, i64 16, !735, i64 32}
!738 = !{!"_ZTSSt13_Bit_iterator", !734, i64 0}
!739 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!740 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!741 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!742 = !{!743, !54, i64 96}
!743 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !8, i64 0, !744, i64 32, !747, i64 56, !54, i64 96}
!744 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !745, i64 0}
!745 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !746, i64 0}
!746 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !723, i64 0}
!747 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !748, i64 0}
!748 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !749, i64 0}
!749 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !750, i64 0}
!750 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !53, i64 0}
!751 = !{!724, !724, i64 0}
!752 = distinct !{null, null, null, null}
!753 = distinct !{!753, !103}
!754 = distinct !{null, null, null}
!755 = distinct !{null, null, null, null}
!756 = distinct !{null}
!757 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!758 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!759 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!760 = !{!761, !54, i64 232}
!761 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !762, i64 0, !763, i64 56, !744, i64 168, !767, i64 192, !54, i64 232}
!762 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !570, i64 0}
!763 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !764, i64 0}
!764 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !765, i64 0}
!765 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !766, i64 0}
!766 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !720, i64 0}
!767 = !{!"_ZTSSt6vectorIbSaIbEE", !768, i64 0}
!768 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !769, i64 0}
!769 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !737, i64 0}
!770 = !{!734, !4, i64 8}
!771 = distinct !{null}
!772 = distinct !{!772, !103}
!773 = distinct !{null, null}
!774 = distinct !{!774, !103}
!775 = distinct !{!775, !103}
!776 = distinct !{!776, !103}
!777 = !{!570, !12, i64 24}
!778 = distinct !{!778, !103}
!779 = !{!574, !574, i64 0}
!780 = !{!781, !12, i64 0}
!781 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !12, i64 0}
!782 = distinct !{!782, !103}
!783 = !{!784, !785, i64 0}
!784 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !785, i64 0, !786, i64 8}
!785 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEEE", !11, i64 0}
!786 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEE", !11, i64 0}
!787 = !{!784, !786, i64 8}
!788 = distinct !{!788, !103}
!789 = !{!575, !12, i64 8}
!790 = !{!570, !574, i64 48}
!791 = distinct !{!791, !103}
!792 = !{!793, !571, i64 0}
!793 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !571, i64 0, !12, i64 8, !573, i64 16, !12, i64 24, !575, i64 32, !574, i64 48}
!794 = !{!793, !12, i64 8}
!795 = !{!796, !571, i64 0}
!796 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox17LongEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !571, i64 0, !12, i64 8, !573, i64 16, !12, i64 24, !575, i64 32, !574, i64 48}
!797 = !{!796, !12, i64 8}
!798 = !{!799, !571, i64 0}
!799 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox20VarcharEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !571, i64 0, !12, i64 8, !573, i64 16, !12, i64 24, !575, i64 32, !574, i64 48}
!800 = !{!799, !12, i64 8}
!801 = !{!796, !574, i64 16}
!802 = distinct !{!802, !103}
!803 = !{!793, !574, i64 16}
!804 = distinct !{!804, !103}
!805 = !{!799, !574, i64 16}
!806 = distinct !{!806, !103}
!807 = !{!808, !574, i64 16}
!808 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !571, i64 0, !12, i64 8, !573, i64 16, !12, i64 24, !575, i64 32, !574, i64 48}
!809 = distinct !{!809, !103}
!810 = !{!808, !571, i64 0}
!811 = !{!808, !12, i64 8}
!812 = !{!813, !574, i64 16}
!813 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !571, i64 0, !12, i64 8, !573, i64 16, !12, i64 24, !575, i64 32, !574, i64 48}
!814 = distinct !{!814, !103}
!815 = !{!813, !571, i64 0}
!816 = !{!813, !12, i64 8}
!817 = !{!605, !574, i64 16}
!818 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!819 = distinct !{!819, !103}
!820 = distinct !{!820, !821}
!821 = !{!"llvm.loop.peeled.count", i32 1}
!822 = !{!823}
!823 = distinct !{!823, !824, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!824 = distinct !{!824, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!825 = !{!826}
!826 = distinct !{!826, !827, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!827 = distinct !{!827, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!828 = !{!826, !823}
!829 = !{!830, !12, i64 8}
!830 = !{!"_ZTSSi", !12, i64 8}
!831 = !{!832}
!832 = distinct !{!832, !833, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_119DecimalPlusFunctionINS3_10VectorExecEEESG_NS2_11LongDecimalINS2_15IntegerVariableILm3EEENSJ_ILm7EEEEENS2_15ConstantCheckerIJNSI_INSJ_ILm1EEENSJ_ILm5EEEEENSI_INSJ_ILm2EEENSJ_ILm6EEEEEEEEJSQ_ST_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS13_EERKSX_INS3_17SignatureVariableESaIS18_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1G_E4typeEOS1H_DpOS1I_: argument 0"}
!833 = distinct !{!833, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_119DecimalPlusFunctionINS3_10VectorExecEEESG_NS2_11LongDecimalINS2_15IntegerVariableILm3EEENSJ_ILm7EEEEENS2_15ConstantCheckerIJNSI_INSJ_ILm1EEENSJ_ILm5EEEEENSI_INSJ_ILm2EEENSJ_ILm6EEEEEEEEJSQ_ST_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS13_EERKSX_INS3_17SignatureVariableESaIS18_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1G_E4typeEOS1H_DpOS1I_"}
!834 = !{!835, !837, !839, !832}
!835 = distinct !{!835, !836, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_119DecimalPlusFunctionINS2_10VectorExecEEES9_NS1_11LongDecimalINS1_15IntegerVariableILm3EEENSC_ILm7EEEEENS1_15ConstantCheckerIJNSB_INSC_ILm1EEENSC_ILm5EEEEENSB_INSC_ILm2EEENSC_ILm6EEEEEEEEJSJ_SM_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!836 = distinct !{!836, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_119DecimalPlusFunctionINS2_10VectorExecEEES9_NS1_11LongDecimalINS1_15IntegerVariableILm3EEENSC_ILm7EEEEENS1_15ConstantCheckerIJNSB_INSC_ILm1EEENSC_ILm5EEEEENSB_INSC_ILm2EEENSC_ILm6EEEEEEEEJSJ_SM_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!837 = distinct !{!837, !838, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_119DecimalPlusFunctionINS1_10VectorExecEEESA_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSD_ILm7EEEEENS0_15ConstantCheckerIJNSC_INSD_ILm1EEENSD_ILm5EEEEENSC_INSD_ILm2EEENSD_ILm6EEEEEEEEJSK_SN_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS1_17SignatureVariableESaIS12_EEbENKUlvE_clEv: argument 0"}
!838 = distinct !{!838, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_119DecimalPlusFunctionINS1_10VectorExecEEESA_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSD_ILm7EEEEENS0_15ConstantCheckerIJNSC_INSD_ILm1EEENSD_ILm5EEEEENSC_INSD_ILm2EEENSD_ILm6EEEEEEEEJSK_SN_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS1_17SignatureVariableESaIS12_EEbENKUlvE_clEv"}
!839 = distinct !{!839, !840, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_119DecimalPlusFunctionINS3_10VectorExecEEESA_NS2_11LongDecimalINS2_15IntegerVariableILm3EEENSD_ILm7EEEEENS2_15ConstantCheckerIJNSC_INSD_ILm1EEENSD_ILm5EEEEENSC_INSD_ILm2EEENSD_ILm6EEEEEEEEJSK_SN_EEEEESt14default_deleteISQ_EERZNS3_22SimpleFunctionRegistry16registerFunctionISQ_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS12_EERKSW_INS3_17SignatureVariableESaIS17_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!840 = distinct !{!840, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_119DecimalPlusFunctionINS3_10VectorExecEEESA_NS2_11LongDecimalINS2_15IntegerVariableILm3EEENSD_ILm7EEEEENS2_15ConstantCheckerIJNSC_INSD_ILm1EEENSD_ILm5EEEEENSC_INSD_ILm2EEENSD_ILm6EEEEEEEEJSK_SN_EEEEESt14default_deleteISQ_EERZNS3_22SimpleFunctionRegistry16registerFunctionISQ_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS12_EERKSW_INS3_17SignatureVariableESaIS17_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!841 = !{!842, !843, i64 0}
!842 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec28SimpleFunctionAdapterFactoryELb0EE", !843, i64 0}
!843 = !{!"p1 _ZTSN8facebook5velox4exec28SimpleFunctionAdapterFactoryE", !11, i64 0}
!844 = !{!845}
!845 = distinct !{!845, !846, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_119DecimalPlusFunctionINS2_10VectorExecEEES9_NS1_11LongDecimalINS1_15IntegerVariableILm3EEENSC_ILm7EEEEENS1_15ConstantCheckerIJNSB_INSC_ILm1EEENSC_ILm5EEEEENSB_INSC_ILm2EEENSC_ILm6EEEEEEEEJSJ_SM_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISU_EERKNS4_11QueryConfigERKSQ_ISR_INS1_10BaseVectorEESaIS13_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!846 = distinct !{!846, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_119DecimalPlusFunctionINS2_10VectorExecEEES9_NS1_11LongDecimalINS1_15IntegerVariableILm3EEENSC_ILm7EEEEENS1_15ConstantCheckerIJNSB_INSC_ILm1EEENSC_ILm5EEEEENSB_INSC_ILm2EEENSC_ILm6EEEEEEEEJSJ_SM_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISU_EERKNS4_11QueryConfigERKSQ_ISR_INS1_10BaseVectorEESaIS13_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!847 = !{!848}
!848 = distinct !{!848, !849, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions12_GLOBAL__N_119DecimalPlusFunctionINS1_4exec10VectorExecEEES8_NS1_11LongDecimalINS1_15IntegerVariableILm3EEENSB_ILm7EEEEENS1_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!849 = distinct !{!849, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions12_GLOBAL__N_119DecimalPlusFunctionINS1_4exec10VectorExecEEES8_NS1_11LongDecimalINS1_15IntegerVariableILm3EEENSB_ILm7EEEEENS1_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!850 = !{!848, !845}
end_hunk_1
