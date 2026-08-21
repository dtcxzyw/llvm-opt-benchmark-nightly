Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ColladaExporter?download=true
inline.NumInlined: 3741
inline.NumDeleted: 859
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp15ColladaExporter9WriteFileEv:bb.a
  %i.cr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.cp, i64 noundef %i.cq) ; 0 uses
  %i.cs = load i64, ptr %i.l, align 8             ; 3 uses
  %i.ct = add i64 %i.cs, -2                       ; 3 uses
  %i.cu = icmp ult i64 %i.cs, 2
  br i1 %i.cu, label %bb.j, label %_ZN6Assimp15ColladaExporter6PopTagEv.exit13

bb.j:                                             ; preds = %_ZN6Assimp15ColladaExporter6PopTagEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.350, i64 noundef %i.ct, i64 noundef %i.cs) #26
  unreachable

_ZN6Assimp15ColladaExporter6PopTagEv.exit13:      ; preds = %_ZN6Assimp15ColladaExporter6PopTagEv.exit
  store i64 %i.ct, ptr %i.l, align 8
  %i.cv = load ptr, ptr %i.p, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ct
  store i8 0, ptr %i.cw, align 1
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.17, i64 noundef 10) ; 0 uses
  %i.cy = load ptr, ptr %i.c, align 8
  %i.cz = load i64, ptr %i.e, align 8
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.cy, i64 noundef %i.cz) ; 0 uses
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.h
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %1, align 8               ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bh
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.l
  %i.df = load i64, ptr %i.bh, align 8
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.k
  %.pn = phi { ptr, i32 } [ %i.db, %bb.k ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.dc, %bb.l ]
  %i.dh = load ptr, ptr %2, align 8               ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.an
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.dj = load i64, ptr %i.an, align 8
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5arrayISt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS6_EEELm5EED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.3, %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.2, %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.1, %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit, %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.1 unwind label %bb.b

_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.1: ; preds = %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k)
          to label %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.2 unwind label %bb.b

_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.2: ; preds = %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef %i.n)
          to label %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.3 unwind label %bb.b

_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.3: ; preds = %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.p)
          to label %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.4 unwind label %bb.b

_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.4: ; preds = %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit.3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIPKvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 48) #27
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ColladaExporter13WriteTexturesEv(ptr noundef nonnull align 8 dereferenceable(1248) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 9 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"struct.std::pair.27", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i = icmp ne ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp ne i32 %i.i, 0
  %i.k = select i1 %.not.i, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %14 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 18
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %i.ar = phi ptr [ %i.e, %.lr.ph ], [ %i.mo, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %.pre526, %._crit_edge ] ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8            ; 6 uses
  %i.aw = icmp eq ptr %i.av, null
  %.pre526 = add nuw nsw i64 %indvars.iv, 1       ; 3 uses
  br i1 %i.aw, label %._crit_edge, label %15

15:                                               ; preds = %bb.b
  %16 = trunc nuw i64 %.pre526 to i32             ; 2 uses
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %bb.c, label %.lr.ph.i.preheader

bb.c:                                             ; preds = %15
  store i8 45, ptr %i.c, align 16
  %i.ax = trunc nuw i64 %indvars.iv to i32
  %18 = xor i32 %i.ax, -1
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c, %15
  %.13051.i.ph = phi i32 [ 1, %15 ], [ 2, %bb.c ]
  %.13350.i.ph = phi i32 [ %16, %15 ], [ %18, %bb.c ]
  %.13749.i.ph = phi ptr [ %i.c, %15 ], [ %14, %bb.c ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %.02653.i = phi i1 [ %or.cond3.i, %bb.e ], [ false, %.lr.ph.i.preheader ]
  %.02752.i = phi i32 [ %i.bh, %bb.e ], [ 1000000000, %.lr.ph.i.preheader ] ; 5 uses
  %.13051.i = phi i32 [ %.231.i, %bb.e ], [ %.13051.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.13350.i = phi i32 [ %.234.i, %bb.e ], [ %.13350.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.13749.i = phi ptr [ %.238.i, %bb.e ], [ %.13749.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ay = sdiv i32 %.13350.i, %.02752.i           ; 3 uses
  %.recomposed = srem i32 %.13350.i, %.02752.i
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = icmp eq i32 %.02752.i, 1                ; 2 uses
  %i.bb = or i1 %i.ba, %i.az
  %or.cond3.i = select i1 %.02653.i, i1 true, i1 %i.bb ; 2 uses
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.bc = trunc i32 %i.ay to i8
  %i.bd = add i8 %i.bc, 48
  %i.be = getelementptr inbounds nuw i8, ptr %.13749.i, i64 1 ; 2 uses
  store i8 %i.bd, ptr %.13749.i, align 1
  %i.bf = add nuw nsw i32 %.13051.i, 1
  %i.bg = mul i32 %i.ay, %.02752.i                ; 0 uses
  br i1 %i.ba, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.238.i = phi ptr [ %i.be, %bb.d ], [ %.13749.i, %.lr.ph.i ] ; 2 uses
  %.234.i = phi i32 [ %.recomposed, %bb.d ], [ %.13350.i, %.lr.ph.i ]
  %.231.i = phi i32 [ %i.bf, %bb.d ], [ %.13051.i, %.lr.ph.i ] ; 2 uses
  %i.bh = sdiv i32 %.02752.i, 10
  %i.bi = icmp ult i32 %.231.i, 1024
  br i1 %i.bi, label %.lr.ph.i, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit

_ZN6Assimp13ASSIMP_itoa10EPcji.exit:              ; preds = %bb.d, %bb.e
  %.440.i = phi ptr [ %.238.i, %bb.e ], [ %i.be, %bb.d ]
  store i8 0, ptr %.440.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.bj = load ptr, ptr %i.l, align 8, !noalias !23
  %i.bk = load i64, ptr %i.m, align 8, !noalias !23 ; 3 uses
  store ptr %i.n, ptr %7, align 8, !alias.scope !26
  store i64 0, ptr %i.o, align 8, !alias.scope !26
  store i8 0, ptr %i.n, align 8, !alias.scope !26
  %i.bl = add i64 %i.bk, 9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bl)
          to label %bb.f unwind label %.loopexit196

bb.f:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10EPcji.exit
  %i.bm = load i64, ptr %i.o, align 8, !alias.scope !26
  %i.bn = sub i64 4611686018427387903, %i.bm
  %i.bo = icmp ult i64 %i.bn, %i.bk
  br i1 %i.bo, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.bj, i64 noundef %i.bk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit196 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bq = load i64, ptr %i.o, align 8, !alias.scope !26
  %i.br = add i64 %i.bq, -4611686018427387895
  %i.bs = icmp ult i64 %i.br, 9
  br i1 %i.bs, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.63, i64 noundef 9)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit196 ; 0 uses

.loopexit196:                                     ; preds = %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit196
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit196 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bu = load ptr, ptr %7, align 8, !alias.scope !26 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.n
  br i1 %i.bv, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bw = load i64, ptr %i.n, align 8, !alias.scope !26
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %common.resume.op = phi { ptr, i32 } [ %.pn39.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.phi, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.by = icmp samesign ult i64 %indvars.iv, 1000 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.bz = zext i1 %i.by to i64                    ; 2 uses
  %i.ca = load i64, ptr %i.o, align 8, !noalias !29
  %i.cb = sub i64 4611686018427387903, %i.ca
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.noexc unwind label %.loopexit.split-lp198

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cd = select i1 %i.by, ptr @.str.64, ptr @.str.65
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.cd, i64 noundef %i.bz)
          to label %.noexc45 unwind label %.loopexit197 ; 6 uses

.noexc45:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.p, ptr %6, align 8, !alias.scope !29
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc45
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load i64, ptr %i.ci, align 8            ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nuw nsw i64 %i.cj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.cg, i64 %i.cl, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc45
  store ptr %i.cf, ptr %6, align 8, !alias.scope !29
  %i.cm = load i64, ptr %i.cg, align 8
  store i64 %i.cm, ptr %i.p, align 8, !alias.scope !29
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.cn = phi i64 [ %i.cj, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %i.cn, ptr %i.q, align 8, !alias.scope !29
  store ptr %i.cg, ptr %i.ce, align 8
  store i64 0, ptr %i.co, align 8
  store i8 0, ptr %i.cg, align 8
  %i.cp = icmp samesign ult i64 %indvars.iv, 100  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.cq = zext i1 %i.cp to i64                    ; 2 uses
  %i.cr = load i64, ptr %i.q, align 8, !noalias !32
  %i.cs = sub i64 4611686018427387903, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.cq
  br i1 %i.ct, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i46

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.noexc50 unwind label %.loopexit.split-lp203

.noexc50:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i46: ; preds = %bb.j
  %i.cu = select i1 %i.cp, ptr @.str.64, ptr @.str.65
  %i.cv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.cu, i64 noundef %i.cq)
          to label %.noexc51 unwind label %.loopexit202 ; 6 uses

.noexc51:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i46
  store ptr %i.r, ptr %5, align 8, !alias.scope !32
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 5 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

bb.l:                                             ; preds = %.noexc51
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.da = load i64, ptr %i.cz, align 8            ; 3 uses
  %i.db = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.db)
  %i.dc = add nuw nsw i64 %i.da, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.cx, i64 %i.dc, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %.noexc51
  store ptr %i.cw, ptr %5, align 8, !alias.scope !32
  %i.dd = load i64, ptr %i.cx, align 8
  store i64 %i.dd, ptr %i.r, align 8, !alias.scope !32
  %.phi.trans.insert.i48 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.pre.i49 = load i64, ptr %.phi.trans.insert.i48, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.l
  %i.de = phi i64 [ %i.da, %bb.l ], [ %.pre.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.de, ptr %i.s, align 8, !alias.scope !32
  store ptr %i.cx, ptr %i.cv, align 8
  store i64 0, ptr %i.df, align 8
end_hunk_0
