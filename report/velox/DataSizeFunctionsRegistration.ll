inline.NumInlined: 8788
inline.NumDeleted: 3051
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev:bb.a

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4core19TypeAnalysisResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51   ; 8 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !61
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #21, !inline_history !145
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #21, !inline_history !145
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
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
  br i1 %i.v, label %bb.h, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #21
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !62
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !12
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #34
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ak) #21
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.63", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 4 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !219 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !221

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.p, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.f) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #21 ; 2 uses
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
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !136
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !136
  %i.ae = icmp eq i8 %i.ab, %i.ad
  %.pre = load i64, ptr %i.e, align 8, !tbaa !17, !noalias !222 ; 4 uses
  br i1 %i.ae, label %bb.e, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !225

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17
  %i.ah = icmp eq i64 %.pre, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !225

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.pre, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ak = load ptr, ptr %1, align 8, !tbaa !33
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %.pre)
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !225

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !17 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !17
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !225

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !33
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !33
  %bcmp.i7.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %i.ap)
  %i.aw = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !225

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !226, !range !34, !noundef !35
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !226, !range !34, !noundef !35
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !225

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !227, !range !34, !noundef !35
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !227, !range !34, !noundef !35
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !225

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !228, !range !34, !noundef !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !228, !range !34, !noundef !35
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !229

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.e, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, %bb.h, %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !222
  %i.bm = load ptr, ptr %1, align 8, !tbaa !33, !noalias !222
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %2, align 16, !noalias !222
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre, ptr %.sroa_idx3.i, align 8, !noalias !222
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.14, i64 56, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !222
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.14) #32
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread
  unreachable

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !12
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.bo

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread
  ret void
}

declare void @_ZN8facebook5velox7HUGEINTEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.46") align 8) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !219 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !220

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #21 ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !219 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !220

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #21 ; 2 uses
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
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!22 = !{!"bool", !5, i64 0}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!25 = distinct !{!25, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!26 = distinct !{!26, !27, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev: argument 0"}
!27 = distinct !{!27, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev"}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec17SignatureVariableESaIS3_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p1 _ZTSN8facebook5velox4exec17SignatureVariableE", !16, i64 0}
!31 = !{!29, !30, i64 16}
!32 = !{!29, !30, i64 8}
!33 = !{!18, !15, i64 0}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!38 = distinct !{!38, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!42 = !{!40, !41, i64 16}
!43 = !{!40, !41, i64 8}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !45}
!47 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!48 = !{!22, !22, i64 0}
!49 = !{!"branch_weights", i32 1, i32 1048575}
!50 = !{!41, !41, i64 0}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0}
!53 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!54 = !{!16, !16, i64 0}
!55 = !{!56, !16, i64 24}
!56 = !{!"_ZTSSt8functionIFSt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EEvEE", !57, i64 0, !16, i64 24}
!57 = !{!"_ZTSSt14_Function_base", !5, i64 0, !16, i64 16}
!58 = !{!57, !16, i64 16}
!59 = !{!60, !4, i64 8}
!60 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!61 = !{!60, !4, i64 12}
!62 = !{!63, !63, i64 0}
!63 = !{!"vtable pointer", !6, i64 0}
!64 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!65 = distinct !{null, null}
!66 = !{!67, !68, i64 0}
!67 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions27ParsePrestoDataSizeFunctionINS1_4exec10VectorExecEEENS1_11LongDecimalINS1_15IntegerVariableILm1EEENSA_ILm5EEEEENS1_15ConstantCheckerIJNS1_7VarcharEEEEJSF_EEELN9__gnu_cxx12_Lock_policyE2EE", !68, i64 0, !52, i64 8}
!68 = !{!"p1 _ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENS9_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEE", !16, i64 0}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions27ParsePrestoDataSizeFunctionINS2_4exec10VectorExecEEENS2_11LongDecimalINS2_15IntegerVariableILm1EEENSB_ILm5EEEEENS2_15ConstantCheckerIJNS2_7VarcharEEEEJSG_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSQ_: argument 0"}
!71 = distinct !{!71, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions27ParsePrestoDataSizeFunctionINS2_4exec10VectorExecEEENS2_11LongDecimalINS2_15IntegerVariableILm1EEENSB_ILm5EEEEENS2_15ConstantCheckerIJNS2_7VarcharEEEEJSG_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSQ_"}
!72 = !{!68, !68, i64 0}
!73 = distinct !{null, null}
!74 = !{!75, !15, i64 8}
!75 = !{!"_ZTSSt9type_info", !15, i64 8}
!76 = !{!77, !22, i64 8}
!77 = !{!"_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENS9_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEE", !78, i64 0, !22, i64 8, !79, i64 16, !4, i64 32, !82, i64 40, !85, i64 56}
!78 = !{!"_ZTSN8facebook5velox4core23ISimpleFunctionMetadataE"}
!79 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !80, i64 0}
!80 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EE", !81, i64 0, !52, i64 8}
!81 = !{!"p1 _ZTSN8facebook5velox4exec17FunctionSignatureE", !16, i64 0}
!82 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !83, i64 0}
!83 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !84, i64 0, !52, i64 8}
!84 = !{!"p1 _ZTSN8facebook5velox4TypeE", !16, i64 0}
!85 = !{!"_ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !86, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_Vector_implE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!89 = !{!"p1 _ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !16, i64 0}
!90 = !{!91, !22, i64 1}
!91 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResults5StatsE", !22, i64 0, !22, i64 1, !22, i64 2, !19, i64 8}
!92 = !{!91, !19, i64 8}
!93 = !{!77, !4, i64 32}
!94 = !{!83, !84, i64 0}
!95 = distinct !{null, null, null, null}
!96 = !{!91, !22, i64 0}
!97 = !{!91, !22, i64 2}
!98 = !{!99, !101, i64 0}
!99 = !{!"_ZTSSt15_Rb_tree_header", !100, i64 0, !19, i64 32}
!100 = !{!"_ZTSSt18_Rb_tree_node_base", !101, i64 0, !102, i64 8, !102, i64 16, !102, i64 24}
!101 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!102 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!103 = !{!99, !102, i64 8}
!104 = !{!99, !102, i64 16}
!105 = !{!99, !102, i64 24}
!106 = !{!99, !19, i64 32}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!109 = distinct !{!109, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!112 = distinct !{!112, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!115 = distinct !{!115, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!116 = !{!114, !111, !108}
!117 = !{!118, !15, i64 40}
!118 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !119, i64 56}
!119 = !{!"_ZTSSt6locale", !120, i64 0}
!120 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!121 = !{!118, !15, i64 32}
!122 = !{!123, !123, i64 0}
!123 = !{!"p1 _ZTSN8facebook5velox4core19TypeAnalysisResultsE", !16, i64 0}
!124 = !{!125, !125, i64 0}
!125 = !{!"p1 _ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !16, i64 0}
!126 = !{!127, !127, i64 0}
!127 = !{!"p1 _ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !16, i64 0}
!128 = !{!30, !30, i64 0}
!129 = !{!100, !102, i64 8}
!130 = !{i64 0, i64 1, !48, i64 1, i64 1, !48, i64 2, i64 1, !48, i64 8, i64 8, !131}
!131 = !{!19, !19, i64 0}
!132 = !{!88, !89, i64 8}
!133 = !{!88, !89, i64 0}
!134 = !{!88, !89, i64 16}
!135 = distinct !{!135, !45}
!136 = !{!137, !138, i64 64}
!137 = !{!"_ZTSN8facebook5velox4exec17SignatureVariableE", !18, i64 0, !18, i64 32, !138, i64 64, !22, i64 65, !22, i64 66, !22, i64 67}
!138 = !{!"_ZTSN8facebook5velox4exec13ParameterTypeE", !5, i64 0}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!141 = distinct !{!141, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!142 = distinct !{!142, !45}
!143 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!144 = distinct !{!144, !45}
!145 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!146 = !{!147, !148, i64 0}
!147 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !148, i64 0, !19, i64 8, !150, i64 16, !19, i64 24, !152, i64 32, !151, i64 48}
!148 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !149, i64 0}
!149 = !{!"any p2 pointer", !16, i64 0}
!150 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !151, i64 0}
!151 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!152 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !153, i64 0, !19, i64 8}
!153 = !{!"float", !5, i64 0}
!154 = !{!147, !19, i64 8}
!155 = !{!152, !153, i64 0}
!156 = !{!157, !158, i64 0}
!157 = !{!"_ZTSSt18_Bit_iterator_base", !158, i64 0, !4, i64 8}
!158 = !{!"p1 long", !16, i64 0}
!159 = !{!160, !158, i64 32}
!160 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !161, i64 0, !161, i64 16, !158, i64 32}
!161 = !{!"_ZTSSt13_Bit_iterator", !157, i64 0}
!162 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!163 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!164 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!165 = distinct !{null, null, null, null, null, null, null, null, null}
!166 = distinct !{!166, !45}
!167 = !{!89, !89, i64 0}
!168 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!169 = distinct !{!169, !45}
!170 = distinct !{null, null, null, null, null, null, null, null, null}
!171 = distinct !{!171, !45}
!172 = distinct !{!172, !45}
!173 = distinct !{!173, !45}
!174 = !{!80, !81, i64 0}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!177 = distinct !{!177, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!178 = !{!179, !19, i64 8}
!179 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResultsE", !91, i64 0, !180, i64 16, !82, i64 392, !184, i64 408}
!180 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !181, i64 0, !182, i64 8}
!181 = !{!"_ZTSSo"}
!182 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !118, i64 0, !183, i64 64, !18, i64 72}
!183 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!184 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE", !185, i64 0}
!185 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !186, i64 0}
!186 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !187, i64 0, !99, i64 8}
!187 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !188, i64 0}
!188 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!189 = !{!190, !192}
!190 = distinct !{!190, !191, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!191 = distinct !{!191, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!192 = distinct !{!192, !193, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev: argument 0"}
!193 = distinct !{!193, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev"}
!194 = !{!195, !197}
!195 = distinct !{!195, !196, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!196 = distinct !{!196, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!197 = distinct !{!197, !198, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev: argument 0"}
!198 = distinct !{!198, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!201 = distinct !{!201, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!202 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!203 = distinct !{null, null, null}
!204 = !{!205, !123, i64 0}
!205 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENS9_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISI_EEEUlvE_", !123, i64 0, !125, i64 8, !127, i64 16}
!206 = !{i64 8}
!207 = !{!205, !125, i64 8}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!210 = distinct !{!210, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!213 = distinct !{!213, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!216 = distinct !{!216, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!217 = !{!215, !212, !209}
!218 = !{!205, !127, i64 16}
!219 = !{!102, !102, i64 0}
!220 = distinct !{!220, !45}
!221 = distinct !{!221, !45}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!224 = distinct !{!224, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!225 = !{!"branch_weights", i32 2146410443, i32 1073205}
!226 = !{!137, !22, i64 65}
!227 = !{!137, !22, i64 66}
!228 = !{!137, !22, i64 67}
!229 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!230 = !{!231, !231, i64 0}
!231 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !16, i64 0}
!232 = !{!233, !234, i64 8}
!233 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeE", !231, i64 0, !234, i64 8}
!234 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEEE", !16, i64 0}
!235 = !{!100, !102, i64 24}
!236 = distinct !{!236, !45}
!237 = distinct !{null}
!238 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!239 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!242 = distinct !{!242, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!243 = !{!244}
!244 = distinct !{!244, !242, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!245 = !{!241, !244}
!246 = distinct !{!246, !45}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!249 = distinct !{!249, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!250 = !{!251}
!251 = distinct !{!251, !249, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!252 = !{!248, !251}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!255 = distinct !{!255, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!256 = !{!257}
!257 = distinct !{!257, !255, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!258 = distinct !{!258, !45, !259, !260}
!259 = !{!"llvm.loop.isvectorized", i32 1}
!260 = !{!"llvm.loop.unroll.runtime.disable"}
!261 = distinct !{!261, !45, !259}
!262 = !{!263}
!263 = distinct !{!263, !264, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!264 = distinct !{!264, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!265 = !{!266}
!266 = distinct !{!266, !264, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!267 = distinct !{!267, !45, !259, !260}
!268 = distinct !{!268, !45, !259}
!269 = !{!100, !102, i64 16}
!270 = distinct !{!270, !45}
!271 = distinct !{!271, !45}
!272 = distinct !{!272, !45}
!273 = !{!274, !22, i64 104}
!274 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !5, i64 0, !22, i64 104}
!275 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!276 = !{!277, !278, i64 0}
!277 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !278, i64 0, !278, i64 8, !278, i64 16}
!278 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !16, i64 0}
!279 = !{!277, !278, i64 8}
!280 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!281 = distinct !{!281, !45}
!282 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!283 = !{!277, !278, i64 16}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!286 = distinct !{!286, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!287 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!288 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!289 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!290 = !{!291, !22, i64 96}
!291 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !18, i64 0, !292, i64 32, !295, i64 56, !22, i64 96}
!292 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !293, i64 0}
!293 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !294, i64 0}
!294 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !277, i64 0}
!295 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !296, i64 0}
!296 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !297, i64 0}
!297 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !298, i64 0}
!298 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !21, i64 0}
!299 = !{!278, !278, i64 0}
!300 = distinct !{null, null, null, null}
!301 = distinct !{!301, !45}
!302 = distinct !{null, null, null}
!303 = distinct !{null, null, null, null}
!304 = distinct !{null}
!305 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!306 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!307 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!308 = !{!309, !22, i64 232}
!309 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !310, i64 0, !311, i64 56, !292, i64 168, !315, i64 192, !22, i64 232}
!310 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !147, i64 0}
!311 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !312, i64 0}
!312 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !313, i64 0}
!313 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !314, i64 0}
!314 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !274, i64 0}
!315 = !{!"_ZTSSt6vectorIbSaIbEE", !316, i64 0}
!316 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !317, i64 0}
!317 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !160, i64 0}
!318 = !{!157, !4, i64 8}
!319 = distinct !{null}
!320 = distinct !{!320, !45}
!321 = distinct !{null, null}
!322 = distinct !{!322, !45}
!323 = distinct !{!323, !45}
!324 = distinct !{!324, !45}
!325 = !{!147, !19, i64 24}
!326 = !{!150, !151, i64 0}
!327 = distinct !{!327, !45}
!328 = !{!151, !151, i64 0}
!329 = !{!330, !19, i64 0}
!330 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !19, i64 0}
!331 = distinct !{!331, !45}
!332 = !{!333, !334, i64 0}
!333 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !334, i64 0, !335, i64 8}
!334 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEEE", !16, i64 0}
!335 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEE", !16, i64 0}
!336 = !{!333, !335, i64 8}
!337 = distinct !{!337, !45}
!338 = !{!152, !19, i64 8}
!339 = !{!147, !151, i64 16}
!340 = !{!147, !151, i64 48}
!341 = distinct !{!341, !45}
!342 = distinct !{!342, !45}
!343 = !{!344, !148, i64 0}
!344 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE", !148, i64 0, !19, i64 8, !150, i64 16, !19, i64 24, !152, i64 32, !151, i64 48}
!345 = !{!344, !19, i64 8}
!346 = !{!347, !148, i64 0}
!347 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !148, i64 0, !19, i64 8, !150, i64 16, !19, i64 24, !152, i64 32, !151, i64 48}
!348 = !{!347, !19, i64 8}
!349 = !{!350, !148, i64 0}
!350 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox17LongEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !148, i64 0, !19, i64 8, !150, i64 16, !19, i64 24, !152, i64 32, !151, i64 48}
!351 = !{!350, !19, i64 8}
!352 = !{!353, !148, i64 0}
!353 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox20VarcharEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !148, i64 0, !19, i64 8, !150, i64 16, !19, i64 24, !152, i64 32, !151, i64 48}
!354 = !{!353, !19, i64 8}
!355 = !{!350, !151, i64 16}
!356 = distinct !{!356, !45}
!357 = !{!347, !151, i64 16}
!358 = distinct !{!358, !45}
!359 = !{!353, !151, i64 16}
!360 = distinct !{!360, !45}
!361 = !{!362, !151, i64 16}
!362 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !148, i64 0, !19, i64 8, !150, i64 16, !19, i64 24, !152, i64 32, !151, i64 48}
!363 = distinct !{!363, !45}
!364 = !{!362, !148, i64 0}
!365 = !{!362, !19, i64 8}
!366 = !{!367, !151, i64 16}
!367 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !148, i64 0, !19, i64 8, !150, i64 16, !19, i64 24, !152, i64 32, !151, i64 48}
!368 = distinct !{!368, !45}
!369 = !{!367, !148, i64 0}
!370 = !{!367, !19, i64 8}
!371 = !{!344, !151, i64 16}
!372 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!373 = distinct !{!373, !45}
!374 = distinct !{!374, !375}
!375 = !{!"llvm.loop.peeled.count", i32 1}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!378 = distinct !{!378, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!381 = distinct !{!381, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!382 = !{!380, !377}
!383 = !{!384, !19, i64 8}
!384 = !{!"_ZTSSi", !19, i64 8}
!385 = !{!386}
!386 = distinct !{!386, !387, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESF_NS2_11LongDecimalINS2_15IntegerVariableILm1EEENSI_ILm5EEEEENS2_15ConstantCheckerIJNS2_7VarcharEEEEJSN_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS3_17SignatureVariableESaIS12_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1A_E4typeEOS1B_DpOS1C_: argument 0"}
!387 = distinct !{!387, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESF_NS2_11LongDecimalINS2_15IntegerVariableILm1EEENSI_ILm5EEEEENS2_15ConstantCheckerIJNS2_7VarcharEEEEJSN_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS3_17SignatureVariableESaIS12_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1A_E4typeEOS1B_DpOS1C_"}
!388 = !{!389, !391, !393, !386}
!389 = distinct !{!389, !390, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions27ParsePrestoDataSizeFunctionINS2_10VectorExecEEES8_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSB_ILm5EEEEENS1_15ConstantCheckerIJNS1_7VarcharEEEEJSG_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!390 = distinct !{!390, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions27ParsePrestoDataSizeFunctionINS2_10VectorExecEEES8_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSB_ILm5EEEEENS1_15ConstantCheckerIJNS1_7VarcharEEEEJSG_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!391 = distinct !{!391, !392, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EERKSL_INS1_17SignatureVariableESaISW_EEbENKUlvE_clEv: argument 0"}
!392 = distinct !{!392, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EERKSL_INS1_17SignatureVariableESaISW_EEbENKUlvE_clEv"}
!393 = distinct !{!393, !394, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEES9_NS2_11LongDecimalINS2_15IntegerVariableILm1EEENSC_ILm5EEEEENS2_15ConstantCheckerIJNS2_7VarcharEEEEJSH_EEEEESt14default_deleteISK_EERZNS3_22SimpleFunctionRegistry16registerFunctionISK_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EERKSQ_INS3_17SignatureVariableESaIS11_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!394 = distinct !{!394, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEES9_NS2_11LongDecimalINS2_15IntegerVariableILm1EEENSC_ILm5EEEEENS2_15ConstantCheckerIJNS2_7VarcharEEEEJSH_EEEEESt14default_deleteISK_EERZNS3_22SimpleFunctionRegistry16registerFunctionISK_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EERKSQ_INS3_17SignatureVariableESaIS11_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!395 = !{!396, !397, i64 0}
!396 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec28SimpleFunctionAdapterFactoryELb0EE", !397, i64 0}
!397 = !{!"p1 _ZTSN8facebook5velox4exec28SimpleFunctionAdapterFactoryE", !16, i64 0}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions27ParsePrestoDataSizeFunctionINS2_10VectorExecEEES8_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSB_ILm5EEEEENS1_15ConstantCheckerIJNS1_7VarcharEEEEJSG_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISO_EERKNS4_11QueryConfigERKSK_ISL_INS1_10BaseVectorEESaISX_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!400 = distinct !{!400, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions27ParsePrestoDataSizeFunctionINS2_10VectorExecEEES8_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSB_ILm5EEEEENS1_15ConstantCheckerIJNS1_7VarcharEEEEJSG_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISO_EERKNS4_11QueryConfigERKSK_ISL_INS1_10BaseVectorEESaISX_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!401 = !{!402, !402, i64 0}
!402 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEEES6_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENS9_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEE", !16, i64 0}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions27ParsePrestoDataSizeFunctionINS1_4exec10VectorExecEEES7_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSA_ILm5EEEEENS1_15ConstantCheckerIJNS1_7VarcharEEEEJSF_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!405 = distinct !{!405, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions27ParsePrestoDataSizeFunctionINS1_4exec10VectorExecEEES7_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSA_ILm5EEEEENS1_15ConstantCheckerIJNS1_7VarcharEEEEJSF_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!406 = !{!407, !16, i64 0}
!407 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !16, i64 0}
!408 = !{!409, !410, i64 0}
!409 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec14VectorFunctionELb0EE", !410, i64 0}
!410 = !{!"p1 _ZTSN8facebook5velox4exec14VectorFunctionE", !16, i64 0}
!411 = !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES7_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSF_EEEED2Ev}
!412 = !{!413, !414, i64 0}
!413 = !{!"_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES7_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSF_EEEE12ApplyContextE", !414, i64 0, !415, i64 8, !416, i64 16, !419, i64 48, !22, i64 56, !22, i64 57}
!414 = !{!"p1 _ZTSN8facebook5velox17SelectivityVectorE", !16, i64 0}
!415 = !{!"p1 _ZTSN8facebook5velox10FlatVectorInEE", !16, i64 0}
!416 = !{!"_ZTSN8facebook5velox4exec12VectorWriterINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEvEE", !417, i64 0, !415, i64 16, !418, i64 24}
!417 = !{!"_ZTSN8facebook5velox4exec16VectorWriterBaseE", !4, i64 8}
!418 = !{!"p1 __int128", !16, i64 0}
!419 = !{!"p1 _ZTSN8facebook5velox4exec7EvalCtxE", !16, i64 0}
!420 = !{!417, !4, i64 8}
!421 = !{!419, !419, i64 0}
!422 = !{!413, !22, i64 57}
!423 = !{!424, !425, i64 0}
!424 = !{!"_ZTSN8facebook5velox4exec7EvalCtxE", !425, i64 0, !426, i64 8, !427, i64 16, !22, i64 24, !22, i64 25, !428, i64 32, !433, i64 56, !22, i64 72, !22, i64 73, !22, i64 74, !22, i64 75, !414, i64 80, !436, i64 88}
!425 = !{!"p1 _ZTSN8facebook5velox4core7ExecCtxE", !16, i64 0}
!426 = !{!"p1 _ZTSN8facebook5velox4exec7ExprSetE", !16, i64 0}
!427 = !{!"p1 _ZTSN8facebook5velox9RowVectorE", !16, i64 0}
!428 = !{!"_ZTSSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !429, i64 0}
!429 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !430, i64 0}
end_hunk_1
