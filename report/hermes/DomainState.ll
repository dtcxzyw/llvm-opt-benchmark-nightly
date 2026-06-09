inline.NumInlined: 601
inline.NumDeleted: 374
begin_hunk_0_@_ZN8facebook6hermes3cdp11DomainStateC2Ev
define hidden void @_ZN8facebook6hermes3cdp11DomainStateC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19, !noalias !43, !inline_history !10 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !43
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp20DictionaryStateValueE, i64 16), ptr %i.b, align 8, !tbaa !11, !noalias !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.e, ptr %i.d, align 8, !tbaa !13, !noalias !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.f, align 8, !tbaa !23, !noalias !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !43
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !24, !noalias !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !43
  store ptr %i.b, ptr %i.a, align 8, !tbaa !46, !alias.scope !43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN8facebook6hermes3cdp11DomainStateC2ESt10unique_ptrINS1_20DictionaryStateValueESt14default_deleteIS4_EE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.b = load i64, ptr %1, align 8, !tbaa !46
  store i64 %i.b, ptr %i.a, align 8, !tbaa !46
  store ptr null, ptr %1, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes3cdp11DomainState4copyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.23") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #20 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #21
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_ZNSt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteIS3_EEaSEOS6_.exit unwind label %bb.c

_ZNSt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteIS3_EEaSEOS6_.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.h = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #20 ; 0 uses
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteIS3_EEaSEOS6_.exit
  %i.j = call ptr @__dynamic_cast(ptr nonnull %i.g, ptr nonnull @_ZTIN8facebook6hermes3cdp10StateValueE, ptr nonnull @_ZTIN8facebook6hermes3cdp20DictionaryStateValueE, i64 0) #20
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.l = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #20 ; 0 uses
  br label %_ZNSt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteIS3_EED2Ev.exit19

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteIS3_EEaSEOS6_.exit, %bb.b
  %i.m = phi ptr [ %i.j, %bb.b ], [ null, %_ZNSt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteIS3_EEaSEOS6_.exit ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.n = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19
          to label %_ZNSt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteIS3_EED2Ev.exit13 unwind label %bb.e ; 3 uses

_ZNSt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteIS3_EED2Ev.exit13: ; preds = %bb.d
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 40, i1 false), !noalias !48
  store i64 %i.o, ptr %i.p, align 8, !tbaa !46, !noalias !48
  store ptr %i.n, ptr %0, align 8, !tbaa !51, !alias.scope !48
  ret void

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i14 = icmp eq ptr %i.m, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteIS3_EED2Ev.exit19, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp20DictionaryStateValueEEclEPS3_.exit.i15

_ZNKSt14default_deleteIN8facebook6hermes3cdp20DictionaryStateValueEEclEPS3_.exit.i15: ; preds = %bb.e
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(64) %i.m) #20, !inline_history !32
  br label %_ZNSt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteIS3_EED2Ev.exit19

_ZNSt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteIS3_EED2Ev.exit19: ; preds = %bb.c, %bb.e, %_ZNKSt14default_deleteIN8facebook6hermes3cdp20DictionaryStateValueEEclEPS3_.exit.i15
  %.pn7 = phi { ptr, i32 } [ %i.q, %_ZNKSt14default_deleteIN8facebook6hermes3cdp20DictionaryStateValueEEclEPS3_.exit.i15 ], [ %i.k, %bb.c ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %.pn7
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes3cdp11DomainState7getCopyESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #20 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #21
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !55
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.i, ptr %i.a, align 8, !tbaa !61
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %3, align 8, !tbaa !58
  %i.l = load i64, ptr %i.a, align 8, !tbaa !61
  store i64 %i.l, ptr %i.f, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !62
  store i8 %i.n, ptr %i.m, align 1, !tbaa !62
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !60
  %i.q = load ptr, ptr %3, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32 ; 3 uses
  store ptr %i.t, ptr %i.c, align 8, !tbaa !63
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.v, align 8, !tbaa !62
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #22
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !53
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.z = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %.not39.i = icmp eq ptr %i.ac, %i.z
  br i1 %.not39.i, label %_ZN8facebook6hermes3cdp11DomainState7getDictERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEb.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, %bb.g
  %.01941.i = phi ptr [ %.120.ph.i, %bb.g ], [ %i.ab, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit ]
  %.sroa.033.040.i = phi ptr [ %i.ak, %bb.g ], [ %i.ac, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01941.i, i64 8 ; 2 uses
  %i.ae = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.040.i)
          to label %.noexc11 unwind label %.loopexit

.noexc11:                                         ; preds = %.lr.ph.split.i
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.critedge, label %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %.noexc11
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.040.i)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc12
  %i.aj = call ptr @__dynamic_cast(ptr nonnull %i.ah, ptr nonnull @_ZTIN8facebook6hermes3cdp10StateValueE, ptr nonnull @_ZTIN8facebook6hermes3cdp20DictionaryStateValueE, i64 0) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc12
  %.120.ph.i = phi ptr [ null, %.noexc12 ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.033.040.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.z
  br i1 %.not.i, label %_ZN8facebook6hermes3cdp11DomainState7getDictERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEb.exit, label %.lr.ph.split.i

_ZN8facebook6hermes3cdp11DomainState7getDictERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEb.exit: ; preds = %bb.g, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit
  %spec.select.i = phi ptr [ %i.ab, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit ], [ %.120.ph.i, %bb.g ] ; 2 uses
  %.not = icmp eq ptr %spec.select.i, null
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN8facebook6hermes3cdp11DomainState7getDictERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEb.exit
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8 ; 2 uses
  %i.am = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE4findERSJ_.exit unwind label %bb.k

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE4findERSJ_.exit: ; preds = %bb.h
  %.not23 = icmp eq ptr %i.am, null
  br i1 %.not23, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE4findERSJ_.exit
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit unwind label %.loopexit.split-lp

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit: ; preds = %bb.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %bb.l unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

.loopexit:                                        ; preds = %.lr.ph.split.i, %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.critedge:                                        ; preds = %.noexc11, %_ZN8facebook6hermes3cdp11DomainState7getDictERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEb.exit, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE4findERSJ_.exit
  store ptr null, ptr %0, align 8, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit, %.critedge
  %i.au = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.f
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !62
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ay = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #20 ; 0 uses
  ret void

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.at, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.f
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.m
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !62
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %.pn, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #20 ; 0 uses
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN8facebook6hermes3cdp11DomainState7getDictERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !53     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 3 uses
  %.not39 = icmp eq ptr %i.c, %i.e
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.01941.us = phi ptr [ %.120.ph.us, %bb.d ], [ %i.b, %.lr.ph ]
  %.sroa.033.040.us = phi ptr [ %i.z, %bb.d ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01941.us, i64 8 ; 3 uses
  %i.g = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.040.us)
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19, !noalias !65, !inline_history !10 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !65
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp20DictionaryStateValueE, i64 16), ptr %i.i, align 8, !tbaa !11, !noalias !65
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.l, ptr %i.k, align 8, !tbaa !13, !noalias !65
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %i.m, align 8, !tbaa !23, !noalias !65
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !65
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !24, !noalias !65
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !noalias !65
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.040.us)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.us unwind label %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit27.split.us ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.us: ; preds = %bb.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  store ptr %i.i, ptr %i.q, align 8, !tbaa !29
  %.not.i.i.i.us = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.us, label %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.us, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp10StateValueEEclEPS3_.exit.i.i.i.us

_ZNKSt14default_deleteIN8facebook6hermes3cdp10StateValueEEclEPS3_.exit.i.i.i.us: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.us
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #20, !inline_history !68
  br label %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.us

_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.us: ; preds = %_ZNKSt14default_deleteIN8facebook6hermes3cdp10StateValueEEclEPS3_.exit.i.i.i.us, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.us, %.lr.ph.split.us
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.040.us)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.us
  %i.y = tail call ptr @__dynamic_cast(ptr nonnull %i.w, ptr nonnull @_ZTIN8facebook6hermes3cdp10StateValueE, ptr nonnull @_ZTIN8facebook6hermes3cdp20DictionaryStateValueE, i64 0) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.us
  %.120.ph.us = phi ptr [ null, %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.us ], [ %i.y, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.033.040.us, i64 32 ; 2 uses
  %.not.us = icmp eq ptr %i.z, %i.e
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit27.split.us: ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(64) %i.i) #20, !inline_history !32
  resume { ptr, i32 } %i.aa

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %.01941 = phi ptr [ %.120.ph, %bb.f ], [ %i.b, %.lr.ph ]
  %.sroa.033.040 = phi ptr [ %i.al, %bb.f ], [ %i.c, %.lr.ph ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01941, i64 8 ; 2 uses
  %i.af = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.040)
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %._crit_edge, label %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit: ; preds = %.lr.ph.split
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.040)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit
  %i.ak = tail call ptr @__dynamic_cast(ptr nonnull %i.ai, ptr nonnull @_ZTIN8facebook6hermes3cdp10StateValueE, ptr nonnull @_ZTIN8facebook6hermes3cdp20DictionaryStateValueE, i64 0) #20
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit, %bb.e
  %.120.ph = phi ptr [ null, %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit ], [ %i.ak, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.033.040, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.f, %.lr.ph.split, %bb.d, %bb.a
  %spec.select = phi ptr [ %i.b, %bb.a ], [ %.120.ph.us, %bb.d ], [ %.120.ph, %bb.f ], [ null, %.lr.ph.split ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN8facebook6hermes3cdp11DomainState11transactionEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.facebook::hermes::cdp::DomainState::Transaction") align 8 captures(none) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #5 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes3cdp11DomainState17commitTransactionERNS2_11TransactionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::unique_ptr<facebook::hermes::cdp::StateValue>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::unique_ptr<facebook::hermes::cdp::StateValue>>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #20 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #21
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %.not6391 = icmp eq ptr %i.e, %i.g
  br i1 %.not6391, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.l = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #20 ; 0 uses
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.053.092 = phi ptr [ %i.e, %.lr.ph ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.053.092, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.053.092, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53   ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -32
  store ptr %i.h, ptr %3, align 8, !tbaa !55
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58   ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !60   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.s, ptr %i.b, align 8, !tbaa !61
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.af    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.u, ptr %3, align 8, !tbaa !58
  %i.v = load i64, ptr %i.b, align 8, !tbaa !61
  store i64 %i.v, ptr %i.h, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.c
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.h, %bb.c ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !62
  store i8 %i.x, ptr %i.w, align 1, !tbaa !62
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  store i64 %i.y, ptr %i.i, align 8, !tbaa !60
  %i.z = load ptr, ptr %3, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !63  ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -32 ; 2 uses
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !63
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !62
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.g, label %bb.ag

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !46  ; 2 uses
  %i.ak = load ptr, ptr %.sroa.053.092, align 8, !tbaa !53 ; 2 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !53  ; 2 uses
  %.not39.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not39.i, label %_ZN8facebook6hermes3cdp11DomainState7getDictERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEb.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.g, %bb.ad
  %.01941.i = phi ptr [ %.120.ph.i, %bb.ad ], [ %i.aj, %bb.g ] ; 5 uses
  %.sroa.033.040.i = phi ptr [ %i.ez, %bb.ad ], [ %i.ak, %bb.g ] ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01941.i, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01941.i, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !71
  %.not.i29 = icmp ugt i64 %i.ao, 20
  br i1 %.not.i29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.01941.i, i64 24
  %.sroa.06.016.i = load ptr, ptr %i.ap, align 8, !tbaa !25 ; 3 uses
  %.not1117.i = icmp eq ptr %.sroa.06.016.i, null
  br i1 %.not1117.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE5eraseERSJ_.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.033.040.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !60
  %.fr24.i = freeze i64 %i.ar                     ; 5 uses
  %i.as = icmp eq i64 %.fr24.i, 0
  %i.at = load ptr, ptr %.sroa.033.040.i, align 8 ; 3 uses
  br i1 %i.as, label %.lr.ph.split.us.i, label %.lr.ph.split.i31

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i30, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread10.us.i
  %.sroa.06.018.us.i = phi ptr [ %.sroa.06.0.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread10.us.i ], [ %.sroa.06.016.i, %.lr.ph.i30 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !60
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread10.us.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread10.us.i: ; preds = %.lr.ph.split.us.i
  %.sroa.06.0.us.i = load ptr, ptr %.sroa.06.018.us.i, align 8, !tbaa !25 ; 2 uses
  %.not11.us.i = icmp eq ptr %.sroa.06.0.us.i, null
  br i1 %.not11.us.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE5eraseERSJ_.exit, label %.lr.ph.split.us.i, !llvm.loop !72

.lr.ph.split.i31:                                 ; preds = %.lr.ph.i30, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread10.i
  %.sroa.06.018.i = phi ptr [ %.sroa.06.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread10.i ], [ %.sroa.06.016.i, %.lr.ph.i30 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !60
  %i.az = icmp eq i64 %.fr24.i, %i.ay
  br i1 %i.az, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread10.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.i: ; preds = %.lr.ph.split.i31
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !58
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.at, ptr %i.bb, i64 %.fr24.i)
  %i.bc = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bc, label %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread10.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread10.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.i, %.lr.ph.split.i31
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.018.i, align 8, !tbaa !25 ; 2 uses
  %.not11.i = icmp eq ptr %.sroa.06.0.i, null
  br i1 %.not11.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE5eraseERSJ_.exit, label %.lr.ph.split.i31, !llvm.loop !72

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.bd = load ptr, ptr %.sroa.033.040.i, align 8, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.033.040.i, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !60
  %i.bg = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.bd, i64 noundef %i.bf, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i32 unwind label %bb.j ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #23
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i32: ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.01941.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !23 ; 3 uses
  %i.bl = urem i64 %i.bg, %i.bk                   ; 3 uses
  %i.bm = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i33, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE5eraseERSJ_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !25 ; 3 uses
  %i.bq = load i64, ptr %i.be, align 8
  %.fr22.i.i.i34 = freeze i64 %i.bq               ; 5 uses
  %i.br = icmp eq i64 %.fr22.i.i.i34, 0
  %i.bs = load ptr, ptr %.sroa.033.040.i, align 8 ; 3 uses
  %.phi.trans.insert25.i.i.i35 = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %.pre26.i.i.i36 = load i64, ptr %.phi.trans.insert25.i.i.i35, align 8, !tbaa !75 ; 2 uses
  br i1 %i.br, label %.split.us.i.i.i44, label %.split.i.i.i37

.split.us.i.i.i44:                                ; preds = %bb.k, %bb.m
  %i.bt = phi i64 [ %i.ca, %bb.m ], [ %.pre26.i.i.i36, %bb.k ]
  %.0.us.i.i.i45 = phi ptr [ %i.by, %bb.m ], [ %i.bp, %bb.k ] ; 2 uses
  %i.bu = icmp eq i64 %i.bg, %i.bt
  br i1 %i.bu, label %bb.l, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i46

bb.l:                                             ; preds = %.split.us.i.i.i44
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i45, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !60
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i46

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i46: ; preds = %bb.l, %.split.us.i.i.i44
  %i.by = load ptr, ptr %.0.us.i.i.i45, align 8, !tbaa !25 ; 3 uses
  %.not18.us.i.i.i47 = icmp eq ptr %i.by, null
  br i1 %.not18.us.i.i.i47, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE5eraseERSJ_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i46
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !75 ; 2 uses
  %i.cb = urem i64 %i.ca, %i.bk
  %.not19.us.i.i.i48 = icmp eq i64 %i.cb, %i.bl
  br i1 %.not19.us.i.i.i48, label %.split.us.i.i.i44, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE5eraseERSJ_.exit, !llvm.loop !77

.split.i.i.i37:                                   ; preds = %bb.k, %bb.o
  %i.cc = phi i64 [ %i.cm, %bb.o ], [ %.pre26.i.i.i36, %bb.k ]
  %.0.i.i.i38 = phi ptr [ %i.ck, %bb.o ], [ %i.bp, %bb.k ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i38, i64 8
  %i.ce = icmp eq i64 %i.bg, %i.cc
  br i1 %i.ce, label %bb.n, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i39

bb.n:                                             ; preds = %.split.i.i.i37
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i.i38, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !60
  %i.ch = icmp eq i64 %.fr22.i.i.i34, %i.cg
  br i1 %i.ch, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i42, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i39

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i42: ; preds = %bb.n
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !58
  %bcmp.i.i.i.i.i.i.i43 = call i32 @bcmp(ptr %i.bs, ptr %i.ci, i64 %.fr22.i.i.i34)
  %i.cj = icmp eq i32 %bcmp.i.i.i.i.i.i.i43, 0
  br i1 %i.cj, label %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i39

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i39: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i42, %bb.n, %.split.i.i.i37
  %i.ck = load ptr, ptr %.0.i.i.i38, align 8, !tbaa !25 ; 3 uses
  %.not18.i.i.i40 = icmp eq ptr %i.ck, null
  br i1 %.not18.i.i.i40, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE5eraseERSJ_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i39
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !75 ; 2 uses
  %i.cn = urem i64 %i.cm, %i.bk
  %.not19.i.i.i41 = icmp eq i64 %i.cn, %i.bl
  br i1 %.not19.i.i.i41, label %.split.i.i.i37, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE5eraseERSJ_.exit, !llvm.loop !77

_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.i, %.lr.ph.split.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i42, %bb.l
  %i.co = phi i64 [ %.fr24.i, %.lr.ph.split.us.i ], [ %.fr22.i.i.i34, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i42 ], [ %.fr22.i.i.i34, %bb.l ], [ %.fr24.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.i ]
  %i.cp = phi ptr [ %i.at, %.lr.ph.split.us.i ], [ %i.bs, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i42 ], [ %i.bs, %bb.l ], [ %i.at, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISH_Lb1EEE.exit.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.033.040.i, i64 8 ; 2 uses
  %i.cr = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.cp, i64 noundef %i.co, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i unwind label %bb.p ; 4 uses

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.i
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #23
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i: ; preds = %_ZNSt10unique_ptrIN8facebook6hermes3cdp20DictionaryStateValueESt14default_deleteIS3_EED2Ev.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.01941.i, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !23 ; 3 uses
  %i.cw = urem i64 %i.cr, %i.cv                   ; 4 uses
  %i.cx = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i, label %.loopexit26.i, label %bb.q

bb.q:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !25 ; 3 uses
  %i.db = load i64, ptr %i.cq, align 8
  %.fr22.i.i.i = freeze i64 %i.db                 ; 3 uses
  %i.dc = icmp eq i64 %.fr22.i.i.i, 0
  %i.dd = load ptr, ptr %.sroa.033.040.i, align 8
  %.phi.trans.insert25.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %.pre26.i.i.i = load i64, ptr %.phi.trans.insert25.i.i.i, align 8, !tbaa !75 ; 2 uses
  br i1 %i.dc, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.q, %bb.s
  %i.de = phi i64 [ %i.dl, %bb.s ], [ %.pre26.i.i.i, %bb.q ]
  %.0.us.i.i.i = phi ptr [ %i.dj, %bb.s ], [ %i.da, %bb.q ] ; 3 uses
  %i.df = icmp eq i64 %i.cr, %i.de
  br i1 %i.df, label %bb.r, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i

bb.r:                                             ; preds = %.split.us.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !60
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %.noexc22, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i: ; preds = %bb.r, %.split.us.i.i.i
  %i.dj = load ptr, ptr %.0.us.i.i.i, align 8, !tbaa !25 ; 3 uses
  %.not18.us.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not18.us.i.i.i, label %.loopexit26.i, label %bb.s

bb.s:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !75 ; 2 uses
  %i.dm = urem i64 %i.dl, %i.cv
  %.not19.us.i.i.i = icmp eq i64 %i.dm, %i.cw
  br i1 %.not19.us.i.i.i, label %.split.us.i.i.i, label %.loopexit26.i, !llvm.loop !77

.split.i.i.i:                                     ; preds = %bb.q, %bb.u
  %i.dn = phi i64 [ %i.dx, %bb.u ], [ %.pre26.i.i.i, %bb.q ]
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE17_M_realloc_insertIJRS8_SG_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !90     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !93     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i, label %.noexc27, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775776
  br i1 %i.x, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !98

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #21
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19
          to label %.noexc27 unwind label %bb.h

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ null, %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit ], [ %i.y, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.z, ptr %i.q, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !95
  %i.ad = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.t, ptr %i.s, ptr noundef %i.z)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc27
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !93  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !95
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #22
  br label %bb.j

bb.f:                                             ; preds = %.noexc27
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.al = load i64, ptr %3, align 8, !tbaa !29
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !29
  store ptr null, ptr %3, align 8, !tbaa !29
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %i.p, %bb.f ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.am = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !53, !alias.scope !115, !noalias !112
  store <2 x ptr> %i.am, ptr %.012.i.i.i, align 8, !tbaa !53, !alias.scope !112, !noalias !115
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95, !alias.scope !115, !noalias !112
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !95, !alias.scope !112, !noalias !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !115, !noalias !112
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !29, !alias.scope !115, !noalias !112
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !29, !alias.scope !112, !noalias !115
  store ptr null, ptr %i.ar, align 8, !tbaa !29, !alias.scope !115, !noalias !112
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !117

_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.au, %.lr.ph.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.be, %.lr.ph.i.i.i29 ], [ %i.av, %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit ] ; 4 uses
  %.0911.i.i.i31 = phi ptr [ %i.bd, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.aw = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !53, !alias.scope !121, !noalias !118
  store <2 x ptr> %i.aw, ptr %.012.i.i.i30, align 8, !tbaa !53, !alias.scope !118, !noalias !121
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !95, !alias.scope !121, !noalias !118
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !95, !alias.scope !118, !noalias !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !121, !noalias !118
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !29, !alias.scope !121, !noalias !118
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !29, !alias.scope !118, !noalias !121
  store ptr null, ptr %i.bb, align 8, !tbaa !29, !alias.scope !121, !noalias !118
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !117

_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.av, %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit ], [ %i.be, %.lr.ph.i.i.i29 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESaISI_EE13_M_deallocateEPSI_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit34
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !97
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #22
  br label %_ZNSt12_Vector_baseISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESaISI_EE13_M_deallocateEPSI_m.exit

_ZNSt12_Vector_baseISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESaISI_EE13_M_deallocateEPSI_m.exit: ; preds = %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit34, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !90
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !91
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !97
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bk, %bb.h ], [ %i.ae, %bb.e ], [ %i.ae, %bb.d ]
  %i.bm = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bn = tail call ptr @__cxa_begin_catch(ptr %i.bm) #20 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #22
  invoke void @__cxa_rethrow() #21
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bl

bb.l:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  tail call void @__clang_call_terminate(ptr %i.bp) #23
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !55
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !58 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.e, ptr %i.a, align 8, !tbaa !61
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !58
  %i.h = load i64, ptr %i.a, align 8, !tbaa !61
  store i64 %i.h, ptr %i.b, align 8, !tbaa !62
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !62
  store i8 %i.j, ptr %i.i, align 1, !tbaa !62
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !60
  %i.m = load ptr, ptr %.014, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !123

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #21
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #23
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE17_M_realloc_insertIJRS8_DnEEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !90     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !93     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i, label %.noexc27, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775776
  br i1 %i.x, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !98

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #21
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19
          to label %.noexc27 unwind label %bb.h

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ null, %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit ], [ %i.y, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.z, ptr %i.q, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !95
  %i.ad = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.t, ptr %i.s, ptr noundef %i.z)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc27
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !93  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !95
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #22
  br label %bb.j

bb.f:                                             ; preds = %.noexc27
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !26
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.p, %bb.f ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.al = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !53, !alias.scope !127, !noalias !124
  store <2 x ptr> %i.al, ptr %.012.i.i.i, align 8, !tbaa !53, !alias.scope !124, !noalias !127
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !95, !alias.scope !127, !noalias !124
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !95, !alias.scope !124, !noalias !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !127, !noalias !124
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !29, !alias.scope !127, !noalias !124
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !29, !alias.scope !124, !noalias !127
  store ptr null, ptr %i.aq, align 8, !tbaa !29, !alias.scope !127, !noalias !124
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !117

_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.at, %.lr.ph.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bd, %.lr.ph.i.i.i29 ], [ %i.au, %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit ] ; 4 uses
  %.0911.i.i.i31 = phi ptr [ %i.bc, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.av = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !53, !alias.scope !132, !noalias !129
  store <2 x ptr> %i.av, ptr %.012.i.i.i30, align 8, !tbaa !53, !alias.scope !129, !noalias !132
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !95, !alias.scope !132, !noalias !129
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !95, !alias.scope !129, !noalias !132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !132, !noalias !129
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !29, !alias.scope !132, !noalias !129
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !29, !alias.scope !129, !noalias !132
  store ptr null, ptr %i.ba, align 8, !tbaa !29, !alias.scope !132, !noalias !129
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bc, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !117

_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.au, %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit ], [ %i.bd, %.lr.ph.i.i.i29 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESaISI_EE13_M_deallocateEPSI_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit34
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !97
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #22
  br label %_ZNSt12_Vector_baseISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESaISI_EE13_M_deallocateEPSI_m.exit

_ZNSt12_Vector_baseISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESaISI_EE13_M_deallocateEPSI_m.exit: ; preds = %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit34, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !90
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !91
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !97
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.h ], [ %i.ae, %bb.e ], [ %i.ae, %bb.d ]
  %i.bl = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bm = tail call ptr @__cxa_begin_catch(ptr %i.bl) #20 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #22
  invoke void @__cxa_rethrow() #21
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bk

bb.l:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #23
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }

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
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZSt11make_uniqueIN8facebook6hermes3cdp20DictionaryStateValueEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!9 = distinct !{!9, !"_ZSt11make_uniqueIN8facebook6hermes3cdp20DictionaryStateValueEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!10 = distinct !{null}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !6, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE", !15, i64 0, !18, i64 8, !19, i64 16, !18, i64 24, !21, i64 32, !20, i64 48}
!15 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!16 = !{!"any p2 pointer", !17, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !20, i64 0}
!20 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!21 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !22, i64 0, !18, i64 8}
!22 = !{!"float", !5, i64 0}
!23 = !{!14, !18, i64 8}
!24 = !{!21, !22, i64 0}
!25 = !{!19, !20, i64 0}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook6hermes3cdp10StateValueELb0EE", !28, i64 0}
!28 = !{!"p1 _ZTSN8facebook6hermes3cdp10StateValueE", !17, i64 0}
!29 = !{!28, !28, i64 0}
!30 = distinct !{null, null, null, null, null}
!31 = distinct !{null, null}
!32 = distinct !{null, null}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZSt11make_uniqueIN8facebook6hermes3cdp17BooleanStateValueEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!35 = distinct !{!35, !"_ZSt11make_uniqueIN8facebook6hermes3cdp17BooleanStateValueEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!36 = distinct !{null}
!37 = !{!38, !40, i64 8}
!38 = !{!"_ZTSN8facebook6hermes3cdp17BooleanStateValueE", !39, i64 0, !40, i64 8}
!39 = !{!"_ZTSN8facebook6hermes3cdp10StateValueE"}
!40 = !{!"bool", !5, i64 0}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZSt11make_uniqueIN8facebook6hermes3cdp20DictionaryStateValueEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!45 = distinct !{!45, !"_ZSt11make_uniqueIN8facebook6hermes3cdp20DictionaryStateValueEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 _ZTSN8facebook6hermes3cdp20DictionaryStateValueE", !17, i64 0}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZSt11make_uniqueIN8facebook6hermes3cdp11DomainStateEJSt10unique_ptrINS2_20DictionaryStateValueESt14default_deleteIS5_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!50 = distinct !{!50, !"_ZSt11make_uniqueIN8facebook6hermes3cdp11DomainStateEJSt10unique_ptrINS2_20DictionaryStateValueESt14default_deleteIS5_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 _ZTSN8facebook6hermes3cdp11DomainStateE", !17, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !57, i64 0}
!57 = !{!"p1 omnipotent char", !17, i64 0}
!58 = !{!59, !57, i64 0}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !56, i64 0, !18, i64 8, !5, i64 16}
!60 = !{!59, !18, i64 8}
!61 = !{!18, !18, i64 0}
!62 = !{!5, !5, i64 0}
!63 = !{!64, !54, i64 8}
!64 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZSt11make_uniqueIN8facebook6hermes3cdp20DictionaryStateValueEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!67 = distinct !{!67, !"_ZSt11make_uniqueIN8facebook6hermes3cdp20DictionaryStateValueEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!68 = distinct !{null, null, null, null}
!69 = !{!70, !70, i64 0}
!70 = !{!"p1 _ZTSSt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEE", !17, i64 0}
!71 = !{!14, !18, i64 24}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!20, !20, i64 0}
!75 = !{!76, !18, i64 0}
!76 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !18, i64 0}
!77 = distinct !{!77, !73}
!78 = !{!79, !80, i64 0}
!79 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !80, i64 0, !81, i64 8}
!80 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEELb1EEEEEE", !17, i64 0}
!81 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEELb1EEE", !17, i64 0}
!82 = !{!79, !81, i64 8}
!83 = !{!84, !52, i64 0}
!84 = !{!"_ZTSN8facebook6hermes3cdp11DomainState11TransactionE", !52, i64 0, !85, i64 8}
!85 = !{!"_ZTSSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE", !86, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESaISI_EE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESaISI_EE12_Vector_implE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESaISI_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!89 = !{i64 8}
!90 = !{!88, !70, i64 0}
!91 = !{!88, !70, i64 8}
!92 = distinct !{null, null, null, null, null, null}
!93 = !{!64, !54, i64 0}
!94 = distinct !{!94, !73}
!95 = !{!64, !54, i64 16}
!96 = distinct !{!96, !73}
!97 = !{!88, !70, i64 16}
!98 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!99 = !{!100, !100, i64 0}
!100 = !{!"std::nullptr_t", !5, i64 0}
!101 = !{!14, !20, i64 16}
!102 = distinct !{null, null, null, null, null, null, null, null}
!103 = distinct !{!103, !73}
!104 = distinct !{ptr @_ZN8facebook6hermes3cdp20DictionaryStateValueD2Ev, null, null, null, null, null, null, null, null}
!105 = !{ptr @_ZN8facebook6hermes3cdp20DictionaryStateValueD2Ev}
!106 = !{!21, !18, i64 8}
!107 = distinct !{null, null, null, null}
!108 = !{!14, !20, i64 48}
!109 = distinct !{!109, !73}
!110 = distinct !{!110, !73}
!111 = distinct !{null, null, null, null, null}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZSt19__relocate_object_aISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESI_SaISI_EEvPT_PT0_RT1_: argument 0"}
!114 = distinct !{!114, !"_ZSt19__relocate_object_aISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESI_SaISI_EEvPT_PT0_RT1_"}
!115 = !{!116}
!116 = distinct !{!116, !114, !"_ZSt19__relocate_object_aISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESI_SaISI_EEvPT_PT0_RT1_: argument 1"}
!117 = distinct !{!117, !73}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZSt19__relocate_object_aISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESI_SaISI_EEvPT_PT0_RT1_: argument 0"}
!120 = distinct !{!120, !"_ZSt19__relocate_object_aISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESI_SaISI_EEvPT_PT0_RT1_"}
!121 = !{!122}
!122 = distinct !{!122, !120, !"_ZSt19__relocate_object_aISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESI_SaISI_EEvPT_PT0_RT1_: argument 1"}
!123 = distinct !{!123, !73}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZSt19__relocate_object_aISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESI_SaISI_EEvPT_PT0_RT1_: argument 0"}
!126 = distinct !{!126, !"_ZSt19__relocate_object_aISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESI_SaISI_EEvPT_PT0_RT1_"}
!127 = !{!128}
!128 = distinct !{!128, !126, !"_ZSt19__relocate_object_aISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESI_SaISI_EEvPT_PT0_RT1_: argument 1"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZSt19__relocate_object_aISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESI_SaISI_EEvPT_PT0_RT1_: argument 0"}
!131 = distinct !{!131, !"_ZSt19__relocate_object_aISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESI_SaISI_EEvPT_PT0_RT1_"}
!132 = !{!133}
!133 = distinct !{!133, !131, !"_ZSt19__relocate_object_aISt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISE_EEESI_SaISI_EEvPT_PT0_RT1_: argument 1"}
end_hunk_1
