inline.NumInlined: 2875
inline.NumDeleted: 1096
begin_hunk_0_@_ZN6duckdb27BlockAllocatorMemorySetting10GetSettingERKNS_13ClientContextE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.d) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26CheckpointThresholdSetting9SetGlobalEPNS_16DatabaseInstanceERNS_8DBConfigERKNS_5ValueE(ptr noundef readnone captures(none) %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(1360) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.a = invoke noundef i64 @_ZN6duckdb8DBConfig16ParseMemoryLimitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.b) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %i.a, ptr %i.e, align 8, !tbaa !284
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.g) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26CheckpointThresholdSetting10GetSettingERKNS_13ClientContextE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERKNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !284
  call void @_ZN6duckdb10StringUtil26BytesToHumanReadableStringB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 noundef %i.c, i64 noundef 1024)
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.d) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE(i8 noundef zeroext %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6duckdb12MetricsUtils24GetOptimizerTypeByMetricENS_10MetricTypeE(i8 noundef zeroext %0) ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZNKSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EE4findERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !285
  %i.g = icmp ult i32 %i.f, %i.a                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !270 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !287

_ZNKSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.h, label %_ZNKSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EE4findERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !285
  %i.k = icmp ult i32 %i.a, %i.j
  br label %_ZNKSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EE4findERKS1_.exit

_ZNKSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EE4findERKS1_.exit: ; preds = %bb.c, %_ZNKSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i, %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %_ZNKSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.k, %bb.c ]
  ret i1 %i.l
}

declare noundef i32 @_ZN6duckdb12MetricsUtils24GetOptimizerTypeByMetricENS_10MetricTypeE(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19AddOptimizerMetricsERSt13unordered_setINS_10MetricTypeENS_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EERKSt3setINS_13OptimizerTypeESt4lessIS9_ESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"class.std::unordered_set.355", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !288
  %.not.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !248 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.e = load i8, ptr %i.d, align 1, !tbaa !290
  %i.f = icmp eq i8 %i.e, 18
  br i1 %i.f, label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %bb.c, !llvm.loop !292

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !293  ; 2 uses
  %i.i = urem i64 18, %i.h                        ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !294
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !295  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !248  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !296
  %i.q = icmp eq i64 %i.p, 18
  %i.r = load i8, ptr %i.n, align 8
  %i.s = icmp eq i8 %i.r, 18
  %i.t = select i1 %i.q, i1 %i.s, i1 false
  br i1 %i.t, label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.v = icmp eq i64 %i.ab, 18
  %i.w = load i8, ptr %i.u, align 1
  %i.x = icmp eq i8 %i.w, 18
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !298

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.z, %bb.g ], [ %i.m, %bb.f ]
  %i.z = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !248 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !296 ; 2 uses
  %i.ac = urem i64 %i.ab, %i.h
  %.not19.i.i.i.i = icmp eq i64 %i.ac, %i.i
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !298

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, !llvm.loop !298

_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit: ; preds = %bb.g, %bb.d, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN6duckdb12MetricsUtils19GetOptimizerMetricsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_set.355") align 8 %3)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !299 ; 2 uses
  %.not24 = icmp eq ptr %i.ae, null
  br i1 %.not24, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread21
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !299 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i9

.lr.ph.i.i.i.i9:                                  ; preds = %._crit_edge, %.lr.ph.i.i.i.i9
  %.06.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i9 ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.ah = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !248 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i10 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i10, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i9, !llvm.loop !300

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i9, %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, %._crit_edge
  %i.ai = load ptr, ptr %3, align 8, !tbaa !294
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !293
  %i.al = shl i64 %i.ak, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.al, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %3, align 8, !tbaa !294   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.am) #27
  br label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread

bb.j:                                             ; preds = %.lr.ph, %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread21
  %.sroa.014.025 = phi ptr [ %i.ae, %.lr.ph ], [ %i.bc, %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread21 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.014.025, i64 8 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !290
  %i.ar = invoke noundef i32 @_ZN6duckdb12MetricsUtils24GetOptimizerTypeByMetricENS_10MetricTypeE(i8 noundef zeroext %i.aq)
          to label %.noexc unwind label %bb.l     ; 3 uses

.noexc:                                           ; preds = %bb.j
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread21, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !232 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not10.i.i.i.i, label %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i11
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i11 ], [ %i.as, %bb.k ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i11 ], [ %i.ag, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.au = load i32, ptr %i.at, align 4, !tbaa !285
  %i.av = icmp ult i32 %i.au, %i.ar               ; 2 uses
  %.19.i.i.i.i = select i1 %i.av, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.av, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !270 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i12, label %_ZNKSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i, label %.lr.ph.i.i.i.i11, !llvm.loop !287

_ZNKSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i11
  %i.aw = icmp eq ptr %.19.i.i.i.i, %i.ag
  br i1 %i.aw, label %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread, label %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit

_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit: ; preds = %_ZNKSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !285
  %i.az = icmp ult i32 %i.ar, %i.ay
  br i1 %i.az, label %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread, label %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread21

_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i, %bb.k, %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %0, ptr %2, align 8, !tbaa !301
  %i.ba = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE6insertERKS1_.exit unwind label %bb.l ; 0 uses

_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE6insertERKS1_.exit: ; preds = %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread21

bb.l:                                             ; preds = %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread, %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.bb

_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit.thread21: ; preds = %.noexc, %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE6insertERKS1_.exit, %_ZN6duckdb18IsEnabledOptimizerENS_10MetricTypeERKSt3setINS_13OptimizerTypeESt4lessIS2_ESaIS2_EE.exit
  %i.bc = load ptr, ptr %.sroa.014.025, align 8, !tbaa !248 ; 2 uses
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %._crit_edge, label %bb.j

_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.e, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit
  ret void
}

declare void @_ZN6duckdb12MetricsUtils19GetOptimizerMetricsEv(ptr dead_on_unwind writable sret(%"class.std::unordered_set.355") align 8) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !299  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !248 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #27
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !300

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !294
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !293
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !294    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #27
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ExtractFromListERNS_12ClientConfigERSt13unordered_setINS_10MetricTypeENS_22MetricTypeHashFunctionESt8equal_toIS3_ESaIS3_EERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISG_EEERKNS_5ValueERKSt3setINS_13OptimizerTypeESt4lessISO_ESaISO_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(336) initializes((96, 97)) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %class.anon.862, align 8            ; 6 uses
  %7 = alloca %"class.std::function.863", align 8 ; 12 uses
  %8 = alloca %"class.std::unordered_set.355", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 101, ptr %i.a, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 6 uses
  store ptr %i.b, ptr %8, align 8, !tbaa !294, !alias.scope !312
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 1, ptr %i.c, align 8, !tbaa !293, !alias.scope !312
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !alias.scope !312
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !238, !alias.scope !312
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !alias.scope !312
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !312
  store ptr %4, ptr %6, align 8, !tbaa !315, !noalias !312
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %8, ptr %i.g, align 8, !tbaa !317, !noalias !312
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !312
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %6, ptr %7, align 8, !tbaa !319, !noalias !312
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !320, !noalias !312
  store ptr @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN6duckdbL15ExtractSettingsIZNS9_15ExtractFromListERNS9_12ClientConfigERSt13unordered_setINS9_10MetricTypeENS9_22MetricTypeHashFunctionESt8equal_toISE_ESaISE_EERNS9_6vectorIS5_Lb1ESaIS5_EEERKNS9_5ValueERKSt3setINS9_13OptimizerTypeESt4lessIST_ESaIST_EEE3$_0EESJ_T_SZ_SO_EUlS7_E_E9_M_invokeERKSt9_Any_dataS7_", ptr %i.i, align 8, !tbaa !322, !noalias !312
  store ptr @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN6duckdbL15ExtractSettingsIZNS9_15ExtractFromListERNS9_12ClientConfigERSt13unordered_setINS9_10MetricTypeENS9_22MetricTypeHashFunctionESt8equal_toISE_ESaISE_EERNS9_6vectorIS5_Lb1ESaIS5_EEERKNS9_5ValueERKSt3setINS9_13OptimizerTypeESt4lessIST_ESaIST_EEE3$_0EESJ_T_SZ_SO_EUlS7_E_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation", ptr %i.h, align 8, !tbaa !324, !noalias !312
end_hunk_0
begin_hunk_1_@_ZN6duckdb25DisabledOptimizersSetting9SetGlobalEPNS_16DatabaseInstanceERNS_8DBConfigERKNS_5ValueE:._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !233
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.l, align 8, !tbaa !234
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 5 uses
  store i64 0, ptr %i.m, align 8, !tbaa !235
  %i.n = load ptr, ptr %3, align 8, !tbaa !351    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !351  ; 2 uses
  %.not41 = icmp eq ptr %i.n, %i.p
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !232
  invoke void @_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef %i.u)
          to label %_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i.i: ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  store ptr null, ptr %i.t, align 8, !tbaa !232
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !233
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.x, ptr %i.z, align 8, !tbaa !234
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !235
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !270 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EEaSEOS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i.i
  %i.ac = load i32, ptr %i.i, align 8, !tbaa !231
  store i32 %i.ac, ptr %i.x, align 8, !tbaa !231
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !232
  %i.ad = load <2 x ptr>, ptr %i.k, align 8, !tbaa !270
  store <2 x ptr> %i.ad, ptr %i.y, align 8, !tbaa !270
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !271
  %i.af = load i64, ptr %i.m, align 8, !tbaa !235
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !235
  store ptr null, ptr %i.j, align 8, !tbaa !232
  store ptr %i.i, ptr %i.k, align 8, !tbaa !233
  store ptr %i.i, ptr %i.l, align 8, !tbaa !234
  store i64 0, ptr %i.m, align 8, !tbaa !235
  br label %_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EEaSEOS5_.exit

_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EEaSEOS5_.exit: ; preds = %_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i.i, %bb.c
  invoke void @_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef null)
          to label %_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EEaSEOS5_.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #28
  unreachable

_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EEaSEOS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ai = load ptr, ptr %3, align 8, !tbaa !254   ; 3 uses
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !255 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ai, %_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EED2Ev.exit ] ; 3 uses
  %i.ak = load ptr, ptr %.05.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.ak) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.an, %i.aj
  br i1 %.not.i.i.i20, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !256

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !254
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EED2Ev.exit
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ai, %_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.aq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.as = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  call void @_ZdlPv(ptr noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.t

bb.g:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %.sroa.036.042 = phi ptr [ %i.n, %.lr.ph ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.036.042)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb10StringUtil4TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = load i64, ptr %i.q, align 8, !tbaa !221
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.q, label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.k:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  %i.az = invoke noundef i32 @_ZN6duckdb23OptimizerTypeFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.r       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %.02022.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !270 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %bb.m, %.lr.ph.i.i.i27
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i27 ], [ %.02022.i.i.i, %bb.m ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !285 ; 2 uses
  %i.bc = icmp ult i32 %i.az, %i.bb               ; 2 uses
  %.in.v.i.i.i = select i1 %i.bc, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !270 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i28, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i27, !llvm.loop !418

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i27
  br i1 %i.bc, label %._crit_edge.thread.i.i.i, label %bb.o

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.m
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.i, %bb.m ] ; 4 uses
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !233
  %i.be = icmp eq ptr %.019.lcssa29.i.i.i, %i.bd
  br i1 %i.be, label %select.unfold.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.bf = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #29
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !285
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %i.bg = phi i32 [ %.pre.i.i, %bb.n ], [ %i.bb, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.n ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.bh = icmp ult i32 %i.bg, %i.az
  br i1 %i.bh, label %select.unfold.i.i, label %bb.q

select.unfold.i.i:                                ; preds = %bb.o, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.o ] ; 3 uses
  %i.bi = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.i
  br i1 %i.bi, label %_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %select.unfold.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !285
  %i.bl = icmp ult i32 %i.az, %i.bk
  br label %_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.p, %select.unfold.i.i
  %i.bm = phi i1 [ %i.bl, %bb.p ], [ true, %select.unfold.i.i ]
  %i.bn = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc29 unwind label %bb.r   ; 2 uses

.noexc29:                                         ; preds = %_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store i32 %i.az, ptr %i.bo, align 4, !tbaa !285
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bm, ptr noundef nonnull %i.bn, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #25
  %i.bp = load i64, ptr %i.m, align 8, !tbaa !235
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.m, align 8, !tbaa !235
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.noexc29, %bb.i
  %i.br = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.r
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.036.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.p
  br i1 %.not, label %._crit_edge, label %bb.g

bb.r:                                             ; preds = %_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.k
  %.pn13 = phi { ptr, i32 } [ %i.bu, %bb.r ], [ %i.ay, %bb.k ] ; 2 uses
  %i.bv = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.r
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.bv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.j
  %.pn13.pn = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %.pn13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %.pn13, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn13.pn.pn
}

declare noundef i32 @_ZN6duckdb23OptimizerTypeFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232
  invoke void @_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25DisabledOptimizersSetting11ResetGlobalEPNS_16DatabaseInstanceERNS_8DBConfigE(ptr noundef readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1360) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::DBConfigOptions", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %2, i8 0, i64 872, i1 false)
  call void @_ZN6duckdb15DBConfigOptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(872) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232
  invoke void @_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !232
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !233
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.f, ptr %i.h, align 8, !tbaa !234
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !235
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !270  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EEaSEOS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !231
  store i32 %i.m, ptr %i.f, align 8, !tbaa !231
  store ptr %i.k, ptr %i.b, align 8, !tbaa !232
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !270
  store <2 x ptr> %i.p, ptr %i.g, align 8, !tbaa !270
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.f, ptr %i.q, align 8, !tbaa !271
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !235
  store i64 %i.s, ptr %i.i, align 8, !tbaa !235
  store ptr null, ptr %i.j, align 8, !tbaa !232
  store ptr %i.l, ptr %i.n, align 8, !tbaa !233
  store ptr %i.l, ptr %i.o, align 8, !tbaa !234
  store i64 0, ptr %i.r, align 8, !tbaa !235
  br label %_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EEaSEOS5_.exit

_ZNSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EEaSEOS5_.exit: ; preds = %_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i.i, %bb.c
  call void @_ZN6duckdb15DBConfigOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(872) dereferenceable(872) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25DisabledOptimizersSetting10GetSettingERKNS_13ClientContextE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERKNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !220
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.d, align 8, !tbaa !221
  store i8 0, ptr %i.c, align 8, !tbaa !222
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !233  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 280 ; 2 uses
  %.not40 = icmp eq ptr %i.f, %i.g
  br i1 %.not40, label %._crit_edge.i.i.thread, label %.lr.ph

._crit_edge.i.i.thread:                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !267
  br label %bb.j

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %.pre42 = load i64, ptr %i.d, align 8, !tbaa !221 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %.pre42, ptr %i.a, align 8, !tbaa !267
  %i.l = icmp ugt i64 %.pre42, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %._crit_edge
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %4, align 8, !tbaa !7
end_hunk_1
begin_hunk_2_@_ZN6duckdb24EnableHTTPLoggingSetting10ResetLocalERNS_13ClientContextE:bb.a
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.e) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.d ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb12ClientConfigC2Ev.exit:                ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 25, ptr %i.g, align 8, !tbaa !303
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 97
  store i8 1, ptr %i.h, align 1, !tbaa !360
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr null, ptr %i.i, align 8, !tbaa !361
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 0, ptr %i.j, align 8, !tbaa !362
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 113
  store i8 1, ptr %i.k, align 1, !tbaa !363
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 2000, ptr %i.l, align 4, !tbaa !364
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 0, ptr %i.m, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.n, align 4, !tbaa !228
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 0, ptr %i.o, align 8, !tbaa !365
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 129
  store i8 1, ptr %i.p, align 1, !tbaa !366
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 1000000, ptr %i.q, align 8, !tbaa !367
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.r, i8 0, i64 33, i1 false)
  store ptr %i.u, ptr %i.t, align 8, !tbaa !236
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 1, ptr %i.v, align 8, !tbaa !237
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !238
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.z, align 8, !tbaa !368
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !220
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 0, ptr %i.ac, align 8, !tbaa !221
  store i8 0, ptr %i.ab, align 8, !tbaa !222
  %i.ad = invoke noundef nonnull align 8 dereferenceable(336) ptr @_ZN6duckdb12ClientConfig9GetConfigERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6duckdb12ClientConfigC2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 296
  store i8 1, ptr %i.ae, align 8, !tbaa !368
  call void @_ZN6duckdb12ClientConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.d:                                             ; preds = %_ZN6duckdb12ClientConfigC2Ev.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12ClientConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24EnableHTTPLoggingSetting10GetSettingERKNS_13ClientContextE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6duckdb12ClientConfig9GetConfigERKNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.c = load i8, ptr %i.b, align 8, !tbaa !368, !range !269, !noundef !369
  %i.d = trunc nuw i8 %i.c to i1
  tail call void @_ZN6duckdb5Value7BOOLEANEb(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8 %0, i1 noundef zeroext %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25ForceMbedtlsUnsafeSetting9SetGlobalEPNS_16DatabaseInstanceERNS_8DBConfigERKNS_5ValueE(ptr noundef %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(1360) initializes((265, 266)) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector.615", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZNK6duckdb5Value8GetValueIbEET_v(ptr noundef nonnull align 8 dereferenceable(64) %2) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 265
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 1, !tbaa !484
  br i1 %i.a, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN6duckdb16DatabaseInstance18GetDatabaseManagerEv(ptr noundef nonnull align 8 dereferenceable(1560) %0)
  call void @_ZN6duckdb15DatabaseManager12GetDatabasesEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.615") align 8 %3, ptr noundef nonnull align 8 dereferenceable(192) %i.d)
  %i.e = load ptr, ptr %3, align 8, !tbaa !485    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !485  ; 2 uses
  %.not.not37 = icmp eq ptr %i.e, %i.g
  br i1 %.not.not37, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.l
  %.sroa.027.038 = phi ptr [ %i.r, %bb.l ], [ %i.e, %bb.b ] ; 4 uses
  %i.h = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16AttachedDatabaseELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.038)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %.lr.ph
  %i.i = invoke noundef zeroext i1 @_ZNK6duckdb16AttachedDatabase17HasStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(408) %i.h)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16AttachedDatabaseELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.038)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb16AttachedDatabase17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(408) %i.j)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 196
  %i.m = load i8, ptr %i.l, align 4, !tbaa !487, !range !269, !noundef !369
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.o = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16AttachedDatabaseELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.038)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = invoke noundef zeroext i1 @_ZNK6duckdb16AttachedDatabase10IsReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(408) %i.o)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.p, label %bb.l, label %._crit_edge

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.y

bb.l:                                             ; preds = %bb.d, %bb.g, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.027.038, i64 16 ; 2 uses
  %.not.not = icmp eq ptr %i.r, %i.g
  br i1 %.not.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %bb.j
  %.not.not.lcssa.ph = phi i1 [ true, %bb.l ], [ false, %bb.j ] ; 2 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !506   ; 3 uses
  %.pre42 = load ptr, ptr %i.f, align 8, !tbaa !508 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre42
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !509  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.u, align 8, !tbaa !510
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !512
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !217
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !513
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !217
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !513
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !222
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.p ], [ %i.ah, %bb.q ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.r, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i, !prof !259

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.n, %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %.pre42
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !514

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !506
  br label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %.not.not.lcssa56 = phi i1 [ %.not.not.lcssa.ph, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.not.not.lcssa.ph, %._crit_edge ], [ true, %bb.b ]
  %i.ak = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.e, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEESaIS3_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ak) #27
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.not.not.lcssa56, label %bb.z, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEESaIS3_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.al, ptr noundef nonnull align 1 dereferenceable(6) @.str.83, i64 6, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.am, align 8, !tbaa !221
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.an, align 2, !tbaa !222
  %i.ao = call noundef zeroext i1 @_ZN6duckdb15ExtensionHelper20TryAutoLoadExtensionERNS_16DatabaseInstanceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  %i.ap = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.al
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  call void @_ZdlPv(ptr noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %i.ao, label %bb.z, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.84, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb29InvalidConfigurationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN6duckdb29InvalidConfigurationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.aa unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread: ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0 = phi i1 [ false, %bb.v ], [ true, %bb.u ]  ; 2 uses
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.au) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0, label %bb.x, label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn35 = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  call void @__cxa_free_exception(ptr %i.ar) #25
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.x, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn35, %bb.x ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.q, %bb.k ]
  resume { ptr, i32 } %.pn.pn

bb.z:                                             ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEESaIS3_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void

bb.aa:                                            ; preds = %bb.v
  unreachable
}

declare noundef nonnull align 8 dereferenceable(192) ptr @_ZN6duckdb16DatabaseInstance18GetDatabaseManagerEv(ptr noundef nonnull align 8 dereferenceable(1560)) local_unnamed_addr #2

declare void @_ZN6duckdb15DatabaseManager12GetDatabasesEv(ptr dead_on_unwind writable sret(%"class.duckdb::vector.615") align 8, ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_16AttachedDatabaseELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !515    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_16AttachedDatabaseELb1EE13AssertNotNullEb.exit, !prof !259

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_16AttachedDatabaseELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZNK6duckdb16AttachedDatabase17HasStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb16AttachedDatabase17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6duckdb16AttachedDatabase10IsReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !506    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !508  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !509  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !510
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !512
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !217
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !517
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !217
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !517
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !222
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i, !prof !259

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !514

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !506
  br label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #27
  br label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN6duckdb15ExtensionHelper20TryAutoLoadExtensionERNS_16DatabaseInstanceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1560), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare void @_ZN6duckdb29InvalidConfigurationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25ForceMbedtlsUnsafeSetting11ResetGlobalEPNS_16DatabaseInstanceERNS_8DBConfigE(ptr noundef %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(1360) initializes((265, 266)) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN6duckdb5ValueC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0)
  invoke void @_ZN6duckdb25ForceMbedtlsUnsafeSetting9SetGlobalEPNS_16DatabaseInstanceERNS_8DBConfigERKNS_5ValueE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(1360) %1, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25ForceMbedtlsUnsafeSetting10GetSettingERKNS_13ClientContextE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERKNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 265
  %i.c = load i8, ptr %i.b, align 1, !tbaa !484, !range !269, !noundef !369
  %i.d = trunc nuw i8 %i.c to i1
  tail call void @_ZN6duckdb5Value7BOOLEANEb(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8 %0, i1 noundef zeroext %i.d)
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN6duckdb24HTTPLoggingOutputSetting8SetLocalERNS_13ClientContextERKNS_5ValueE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(512) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 111, ptr %i.a, align 8, !tbaa !267
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %2, align 8, !tbaa !7
  %i.e = load i64, ptr %i.a, align 8, !tbaa !267  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(111) %i.d, ptr noundef nonnull align 1 dereferenceable(111) @.str.85, i64 111, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !221
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

declare void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN6duckdb24HTTPLoggingOutputSetting10ResetLocalERNS_13ClientContextE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(512) %0) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 111, ptr %i.a, align 8, !tbaa !267
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %1, align 8, !tbaa !7
  %i.e = load i64, ptr %i.a, align 8, !tbaa !267  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(111) %i.d, ptr noundef nonnull align 1 dereferenceable(111) @.str.85, i64 111, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !221
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
end_hunk_2
begin_hunk_3_@_ZN17duckdb_fast_float6detail18decimal_left_shiftERNS_7decimalEj:bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN17duckdb_fast_float6detail5roundERNS_7decimalE(ptr noundef nonnull align 4 dereferenceable(778) %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !628    ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !626  ; 9 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i32 %i.d, 18
  br i1 %i.f, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not42 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.h = zext i32 %i.a to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.d, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 30
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.02840.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.j = mul i64 %.02840.epil.init, 10
  %i.k = icmp samesign ult i64 %indvars.iv.epil.init, %i.h
  br i1 %i.k, label %bb.d, label %._crit_edge.loopexit.epilog-lcssa

bb.d:                                             ; preds = %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil.init
  %i.m = load i8, ptr %i.l, align 1, !tbaa !222
  %i.n = zext i8 %i.m to i64
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.d, %.epil.preheader
  %i.o = phi i64 [ %i.n, %bb.d ], [ 0, %.epil.preheader ]
  %i.p = add i64 %i.o, %i.j
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.028.lcssa = phi i64 [ 0, %.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %._crit_edge.loopexit.epilog-lcssa ] ; 5 uses
  %i.q = icmp ult i32 %i.d, %i.a
  br i1 %i.q, label %bb.j, label %.thread

bb.e:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 4 uses
  %.02840 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.r = mul i64 %.02840, 10
  %i.s = icmp samesign ult i64 %indvars.iv, %i.h
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 2, !tbaa !222
  %i.v = zext i8 %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.w = phi i64 [ %i.v, %bb.f ], [ 0, %bb.e ]
  %i.x = add i64 %i.w, %i.r
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.y = mul i64 %i.x, 10
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !222
  %i.ac = zext i8 %i.ab to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ]
  %i.ae = add i64 %i.ad, %i.y                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !637

bb.j:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ag = zext nneg i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !222
  %.fr = freeze i8 %i.ai                          ; 2 uses
  %i.aj = icmp eq i8 %.fr, 5
  %i.ak = add nuw nsw i32 %i.d, 1
  %i.al = icmp eq i32 %i.ak, %i.a
  %or.cond = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !629, !range !269, !noundef !369
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.thread35, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not42, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.ah, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !222
  %.fr39 = freeze i8 %i.aq
  %i.ar = trunc i8 %.fr39 to i1
  br i1 %i.ar, label %.thread35, label %.thread

bb.n:                                             ; preds = %bb.j
  %i.as = icmp ugt i8 %.fr, 4
  br i1 %i.as, label %.thread35, label %.thread

.thread35:                                        ; preds = %bb.k, %bb.m, %bb.n
  %i.at = add i64 %.028.lcssa, 1
  br label %.thread

.thread:                                          ; preds = %bb.l, %._crit_edge, %.thread35, %bb.n, %bb.m, %bb.c, %bb.a, %bb.b
  %.029 = phi i64 [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.at, %.thread35 ], [ %.028.lcssa, %bb.n ], [ %.028.lcssa, %bb.m ], [ %.028.lcssa, %._crit_edge ], [ %.028.lcssa, %bb.l ]
  ret i64 %.029
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !288
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !290     ; 6 uses
  %i.d = zext i8 %i.c to i64                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !293  ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !294
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !295  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i8, ptr %1, align 1                 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !248 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load i8, ptr %i.m, align 1, !tbaa !290
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit, label %bb.c, !llvm.loop !643

bb.e:                                             ; preds = %bb.c
  %i.p = zext i8 %i.l to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !293
  %i.s = urem i64 %i.p, %i.r
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !248  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !296
  %i.x = icmp eq i64 %i.w, %i.d
  %i.y = load i8, ptr %i.u, align 8
  %i.z = icmp eq i8 %i.c, %i.y
  %i.aa = select i1 %i.x, i1 %i.z, i1 false
  br i1 %i.aa, label %_ZNKSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ac = icmp eq i64 %i.ai, %i.d
  %i.ad = load i8, ptr %i.ab, align 1
  %i.ae = icmp eq i8 %i.c, %i.ad
  %i.af = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %i.af, label %_ZNKSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !644

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.t, %bb.f ]
  %i.ag = load ptr, ptr %.020.i.i, align 8, !tbaa !248 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !296 ; 2 uses
  %i.aj = urem i64 %i.ai, %i.f
  %.not19.i.i = icmp eq i64 %i.aj, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !644

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !644

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ak = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.al = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.am = phi i8 [ %i.l, %bb.e ], [ %i.c, %.thread34 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.an = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 4 uses
  store ptr null, ptr %i.an, align 8, !tbaa !248
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 %i.am, ptr %i.ao, align 8, !tbaa !290
  %i.ap = invoke ptr @_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull %i.an, i64 noundef 1)
          to label %_ZNKSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #27
  resume { ptr, i32 } %i.aq

_ZNKSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ap, %.critedge ], [ %i.t, %bb.f ], [ %i.ag, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !329
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !293
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !288
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #25 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !329
  invoke void @__cxa_rethrow() #26
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !293
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.t, align 8, !tbaa !296
  %i.u = load ptr, ptr %0, align 8, !tbaa !294    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !295  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !248
  store ptr %i.x, ptr %3, align 8, !tbaa !248
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !295
  store ptr %3, ptr %i.y, align 8, !tbaa !248
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !299
  store ptr %i.aa, ptr %3, align 8, !tbaa !248
  store ptr %3, ptr %i.z, align 8, !tbaa !299
  %i.ab = load ptr, ptr %3, align 8, !tbaa !248   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !293
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !296
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !295
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !295
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !288
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !288
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !259

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !328
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !259

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !299  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !299
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !248 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !296
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !295  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
end_hunk_3
