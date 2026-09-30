Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumberutil?download=true
inline.NumInlined: 4537
inline.NumDeleted: 1449
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4i18n12phonenumbers15PhoneNumberUtil24GetSupportedCallingCodesEPSt3setIiSt4lessIiESaIiEE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i, %bb.c ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !127  ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.n, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !10

._crit_edge.i.i.i:                                ; preds = %bb.c
  br i1 %i.n, label %._crit_edge.thread.i.i.i, label %bb.e

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.b
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !102
  %i.p = icmp eq ptr %.019.lcssa29.i.i.i, %i.o
  br i1 %i.p, label %select.unfold.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #36
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !127
  %.pre18.i.i = load i32, ptr %.sroa.03.08, align 4, !tbaa !127
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %i.r = phi i32 [ %.pre18.i.i, %bb.d ], [ %i.k, %._crit_edge.i.i.i ]
  %i.s = phi i32 [ %.pre.i.i, %bb.d ], [ %i.m, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.d ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %select.unfold.i.i, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

select.unfold.i.i:                                ; preds = %bb.e, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.e ] ; 3 uses
  %i.u = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.g
  br i1 %i.u, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.w = load i32, ptr %.sroa.03.08, align 4, !tbaa !127
  %i.x = load i32, ptr %i.v, align 4, !tbaa !127
  %i.y = icmp slt i32 %i.w, %i.x
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.f, %select.unfold.i.i
  %i.z = phi i1 [ %i.y, %bb.f ], [ true, %select.unfold.i.i ]
  %i.aa = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %.sroa.03.08, align 4, !tbaa !127
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !127
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.aa, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #32
  %i.ad = load i64, ptr %i.i, align 8, !tbaa !104
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.i, align 8, !tbaa !104
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !59
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit:      ; preds = %bb.e, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.af = phi ptr [ %i.j, %bb.e ], [ %.pre, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !111
  %.not = icmp eq ptr %i.ag, %i.ai
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !289
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4i18n12phonenumbers15PhoneNumberUtil26GetSupportedTypesForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setINS1_15PhoneNumberTypeESt4lessISB_ESaISB_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.i18n::phonenumbers::LoggerHandler", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = tail call { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK4i18n12phonenumbers15PhoneNumberUtil17IsValidRegionCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.d, align 1, !tbaa !157
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.i, label %.critedge.i.i.i.i, !prof !169

.critedge.i.i.i.i:                                ; preds = %bb.b
  tail call void @llvm.trap() #33
  unreachable

_ZNK4i18n12phonenumbers15PhoneNumberUtil17IsValidRegionCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.h = load ptr, ptr @_ZN4i18n12phonenumbers6Logger5impl_E, align 8, !tbaa !48, !noalias !292 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50, !noalias !292
  %i.k = icmp slt i32 %i.j, 3
  br i1 %i.k, label %_ZN4i18n12phonenumbers3LOGEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4i18n12phonenumbers15PhoneNumberUtil17IsValidRegionCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !47, !noalias !292
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !292
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(12) %i.h), !noalias !292, !inline_history !0
  br label %_ZN4i18n12phonenumbers3LOGEi.exit

_ZN4i18n12phonenumbers3LOGEi.exit:                ; preds = %_ZNK4i18n12phonenumbers15PhoneNumberUtil17IsValidRegionCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.c
  %storemerge.i = phi ptr [ %i.h, %bb.c ], [ null, %_ZNK4i18n12phonenumbers15PhoneNumberUtil17IsValidRegionCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  store ptr %storemerge.i, ptr %4, align 8, !tbaa !89, !alias.scope !292
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA42_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(42) @.str.1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN4i18n12phonenumbers3LOGEi.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %4, align 8, !tbaa !89     ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !91
  store i8 10, ptr %i.r, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.s, align 8, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.t, align 1, !tbaa !92
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load ptr, ptr %3, align 8, !tbaa !95     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.r
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.r, align 8, !tbaa !92
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #33
  unreachable

_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit:   ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.j

bb.h:                                             ; preds = %bb.d, %_ZN4i18n12phonenumbers3LOGEi.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4i18n12phonenumbers13LoggerHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.af = tail call { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !157
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i, label %.critedge.i.i.i.i.i, !prof !169

.critedge.i.i.i.i.i:                              ; preds = %bb.i
  tail call void @llvm.trap() #33
  unreachable

_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i: ; preds = %bb.i
  %i.aj = extractvalue { ptr, ptr } %i.af, 1
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !126
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  tail call fastcc void @_ZN4i18n12phonenumbers12_GLOBAL__N_128GetSupportedTypesForMetadataERKNS0_13PhoneMetadataEPSt3setINS0_15PhoneNumberUtil15PhoneNumberTypeESt4lessIS7_ESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.al, ptr noundef %2)
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i, %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4i18n12phonenumbers15PhoneNumberUtil17IsValidRegionCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = tail call { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 3 uses
  %2 = icmp eq ptr %i.d, null
  br i1 %2, label %_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iteratorESN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !157
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iteratorESN_.exit, label %.critedge.i.i.i, !prof !169

.critedge.i.i.i:                                  ; preds = %bb.b
  tail call void @llvm.trap() #33
  unreachable

_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iteratorESN_.exit: ; preds = %bb.a, %bb.b
  %3 = icmp ne ptr %i.d, null
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA42_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(42) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !91, !alias.scope !295
  %i.d = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(42) %1) #32, !noalias !295 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !295
  store i64 %i.d, ptr %i.a, align 8, !tbaa !123, !noalias !295
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !95, !alias.scope !295
  %i.g = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !295
  store i64 %i.g, ptr %i.c, align 8, !tbaa !92, !alias.scope !295
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4i18n12phonenumbers15ConvertToStringIA42_cE6DoWorkB5cxx11ERA42_Kc.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !92, !noalias !295
  store i8 %i.i, ptr %i.h, align 1, !tbaa !92
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA42_cE6DoWorkB5cxx11ERA42_Kc.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 dereferenceable(42) %1, i64 %i.d, i1 false)
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA42_cE6DoWorkB5cxx11ERA42_Kc.exit

_ZN4i18n12phonenumbers15ConvertToStringIA42_cE6DoWorkB5cxx11ERA42_Kc.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !295 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !94, !alias.scope !295
  %i.l = load ptr, ptr %2, align 8, !tbaa !95, !alias.scope !295
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !295
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA42_cE6DoWorkB5cxx11ERA42_Kc.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !tbaa !92
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.f:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA42_cE6DoWorkB5cxx11ERA42_Kc.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.x = load i64, ptr %i.c, align 8, !tbaa !92
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !91, !alias.scope !298
  %i.d = load ptr, ptr %1, align 8, !tbaa !95, !noalias !298 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !94, !noalias !298 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !298
  store i64 %i.f, ptr %i.a, align 8, !tbaa !123, !noalias !298
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !95, !alias.scope !298
  %i.i = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !298
  store i64 %i.i, ptr %i.c, align 8, !tbaa !92, !alias.scope !298
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4i18n12phonenumbers15ConvertToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DoWorkERKS7_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !92
  store i8 %i.k, ptr %i.j, align 1, !tbaa !92
  br label %_ZN4i18n12phonenumbers15ConvertToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DoWorkERKS7_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN4i18n12phonenumbers15ConvertToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DoWorkERKS7_.exit

_ZN4i18n12phonenumbers15ConvertToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DoWorkERKS7_.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !298 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !94, !alias.scope !298
  %i.n = load ptr, ptr %2, align 8, !tbaa !95, !alias.scope !298
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !298
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DoWorkERKS7_.exit
  %i.s = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.u = load i64, ptr %i.c, align 8, !tbaa !92
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.f:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DoWorkERKS7_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.z = load i64, ptr %i.c, align 8, !tbaa !92
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.w

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK4i18n12phonenumbers15PhoneNumberUtil20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = tail call { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorESN_.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_ZNK4i18n12phonenumbers15PhoneNumberUtil31FormatOutOfCountryCallingNumberERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSA_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.i
  %.pn65.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.ae, %bb.i ]
  resume { ptr, i32 } %.pn65.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA45_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(45) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !91, !alias.scope !334
  %i.d = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(45) %1) #32, !noalias !334 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !334
  store i64 %i.d, ptr %i.a, align 8, !tbaa !123, !noalias !334
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !95, !alias.scope !334
  %i.g = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !334
  store i64 %i.g, ptr %i.c, align 8, !tbaa !92, !alias.scope !334
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4i18n12phonenumbers15ConvertToStringIA45_cE6DoWorkB5cxx11ERA45_Kc.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !92, !noalias !334
  store i8 %i.i, ptr %i.h, align 1, !tbaa !92
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA45_cE6DoWorkB5cxx11ERA45_Kc.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 dereferenceable(45) %1, i64 %i.d, i1 false)
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA45_cE6DoWorkB5cxx11ERA45_Kc.exit

_ZN4i18n12phonenumbers15ConvertToStringIA45_cE6DoWorkB5cxx11ERA45_Kc.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !334 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !94, !alias.scope !334
  %i.l = load ptr, ptr %2, align 8, !tbaa !95, !alias.scope !334
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !334
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA45_cE6DoWorkB5cxx11ERA45_Kc.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !tbaa !92
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.f:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA45_cE6DoWorkB5cxx11ERA45_Kc.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.x = load i64, ptr %i.c, align 8, !tbaa !92
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA36_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(36) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !91, !alias.scope !337
  %i.d = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %1) #32, !noalias !337 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !337
  store i64 %i.d, ptr %i.a, align 8, !tbaa !123, !noalias !337
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !95, !alias.scope !337
  %i.g = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !337
  store i64 %i.g, ptr %i.c, align 8, !tbaa !92, !alias.scope !337
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4i18n12phonenumbers15ConvertToStringIA36_cE6DoWorkB5cxx11ERA36_Kc.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !92, !noalias !337
  store i8 %i.i, ptr %i.h, align 1, !tbaa !92
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA36_cE6DoWorkB5cxx11ERA36_Kc.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 dereferenceable(36) %1, i64 %i.d, i1 false)
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA36_cE6DoWorkB5cxx11ERA36_Kc.exit

_ZN4i18n12phonenumbers15ConvertToStringIA36_cE6DoWorkB5cxx11ERA36_Kc.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !337 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !94, !alias.scope !337
  %i.l = load ptr, ptr %2, align 8, !tbaa !95, !alias.scope !337
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !337
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA36_cE6DoWorkB5cxx11ERA36_Kc.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !tbaa !92
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.f:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA36_cE6DoWorkB5cxx11ERA36_Kc.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.x = load i64, ptr %i.c, align 8, !tbaa !92
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4i18n12phonenumbers15PhoneNumberUtil14IsNANPACountryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = tail call { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 3 uses
  %2 = icmp eq ptr %i.d, null
  br i1 %2, label %_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8iteratorESH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !157
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8iteratorESH_.exit, label %.critedge.i.i.i, !prof !169

.critedge.i.i.i:                                  ; preds = %bb.b
  tail call void @llvm.trap() #33
  unreachable

_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8iteratorESH_.exit: ; preds = %bb.a, %bb.b
  %3 = icmp ne ptr %i.d, null
  ret i1 %3
}

declare void @_ZN4i18n12phonenumbers6StrCatB5cxx11ERKNS0_12StringHolderES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

declare void @_ZN4i18n12phonenumbers12StringHolderC1Em(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK4i18n12phonenumbers15PhoneNumberUtil28GetCountryCodeForValidRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = tail call { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = load i8, ptr %i.d, align 1, !tbaa !157
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i, label %.critedge.i.i.i.i.i, !prof !169

.critedge.i.i.i.i.i:                              ; preds = %bb.a
  tail call void @llvm.trap() #33
  unreachable

_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i: ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.c, 1
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.j = load i32, ptr %i.i, align 8, !tbaa !92
  ret i32 %i.j
}

declare void @_ZN4i18n12phonenumbers6StrCatB5cxx11ERKNS0_12StringHolderES3_S3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

declare void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4i18n12phonenumbers15PhoneNumberUtil22FormatInOriginalFormatERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.i18n::phonenumbers::LoggerHandler", align 8 ; 7 uses
  %9 = alloca %"class.google::protobuf::RepeatedPtrField.56", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %i.e = and i32 %i.d, 2
  %.not131 = icmp eq i32 %i.e, 0
  br i1 %.not131, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK4i18n12phonenumbers15PhoneNumberUtil29HasFormattingPatternForNumberERKNS0_11PhoneNumberE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br i1 %i.f, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.c, align 8, !tbaa !127
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -4
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  br label %bb.bq

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.l = phi i32 [ %.pre, %._crit_edge ], [ %i.d, %bb.a ]
  %i.m = and i32 %i.l, 64
  %.not132 = icmp eq i32 %i.m, 0
  br i1 %.not132, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNK4i18n12phonenumbers15PhoneNumberUtil6FormatERKNS0_11PhoneNumberENS1_17PhoneNumberFormatEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2, ptr noundef %3)
  br label %bb.bq

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !92
  switch i32 %i.o, label %bb.j [
    i32 1, label %bb.g
    i32 5, label %bb.h
    i32 10, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK4i18n12phonenumbers15PhoneNumberUtil6FormatERKNS0_11PhoneNumberENS1_17PhoneNumberFormatEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, ptr noundef %3)
  br label %bb.bc

bb.h:                                             ; preds = %bb.f
  tail call void @_ZNK4i18n12phonenumbers15PhoneNumberUtil31FormatOutOfCountryCallingNumberERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSA_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
  br label %bb.bc

bb.i:                                             ; preds = %bb.f
  tail call void @_ZNK4i18n12phonenumbers15PhoneNumberUtil6FormatERKNS0_11PhoneNumberENS1_17PhoneNumberFormatEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, ptr noundef %3)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 1)
  br label %bb.bc

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !91
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !94
  store i8 0, ptr %i.p, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !92
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil27GetRegionCodeForCountryCodeEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.s, ptr noundef nonnull %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.t, ptr %5, align 8, !tbaa !91
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !94
  store i8 0, ptr %i.t, align 8, !tbaa !92
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil21GetNddPrefixForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext true, ptr noundef nonnull %5)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.v = load i64, ptr %i.u, align 8, !tbaa !94
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.invoke, label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.n:                                             ; preds = %.invoke, %bb.o, %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.o:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !114
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, -4
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = invoke noundef zeroext i1 @_ZNK4i18n12phonenumbers15PhoneNumberUtil30RawInputContainsNationalPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  br i1 %i.ae, label %.invoke, label %bb.q

.invoke:                                          ; preds = %bb.l, %bb.p
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil6FormatERKNS0_11PhoneNumberENS1_17PhoneNumberFormatEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2, ptr noundef %3)
          to label %bb.az unwind label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.ah = invoke { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.v     ; 2 uses

.noexc:                                           ; preds = %bb.q
  %i.ai = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ah, 1
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %_ZNK4i18n12phonenumbers15PhoneNumberUtil20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.r

bb.r:                                             ; preds = %.noexc
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !157
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i, label %.critedge.i.i.i.i.i, !prof !169

.critedge.i.i.i.i.i:                              ; preds = %bb.r
  call void @llvm.trap() #33
  unreachable

_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i: ; preds = %bb.r
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !126
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  br label %_ZNK4i18n12phonenumbers15PhoneNumberUtil20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK4i18n12phonenumbers15PhoneNumberUtil20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i, %.noexc
  %.0.i = phi ptr [ %i.ao, %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i ], [ null, %.noexc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !91
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !94
  store i8 0, ptr %i.ap, align 8, !tbaa !92
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil28GetNationalSignificantNumberERKNS0_11PhoneNumberEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %6)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK4i18n12phonenumbers15PhoneNumberUtil20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.as = invoke noundef ptr @_ZNK4i18n12phonenumbers15PhoneNumberUtil32ChooseFormattingPatternForNumberERKN6google8protobuf16RepeatedPtrFieldINS0_12NumberFormatEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.t unwind label %bb.x       ; 3 uses

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.u, label %bb.y
end_hunk_1
