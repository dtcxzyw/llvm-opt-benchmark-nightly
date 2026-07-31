inline.NumInlined: 7150
inline.NumDeleted: 3639
begin_hunk_0_@_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE3getILb1EEERS6_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb17ColumnAliasBinderC1ERNS_15SelectBindStateE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(328)) unnamed_addr #2

declare void @_ZN6duckdb11WhereBinderC1ERNS_6BinderERNS_13ClientContextENS_12optional_ptrINS_17ColumnAliasBinderELb1EEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(512), ptr) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17ColumnAliasBinderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !490  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #25
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !491

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !400
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !402
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !400  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #25
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  ret void
}

declare void @_ZN6duckdb11OrderBinderC1ENS_6vectorISt17reference_wrapperINS_6BinderEELb1ESaIS4_EEERNS_10SelectNodeERNS_15SelectBindStateE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(240), ptr noundef nonnull align 8 dereferenceable(328)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !182    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !181
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !685
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !179
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #24
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #26 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !685
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.z = sub i64 %i.d, %i.e
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.d, -8
  %i.ae = sub i64 %i.ad, %i.e
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ag
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ag
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.c, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !7, !alias.scope !691, !noalias !686
  %wide.load18 = load <2 x i64>, ptr %i.al, align 8, !tbaa !7, !alias.scope !691, !noalias !686
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !7, !alias.scope !694, !noalias !691
  store <2 x i64> %wide.load18, ptr %i.am, align 8, !tbaa !7, !alias.scope !694, !noalias !691
  %i.an = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !7, !alias.scope !691, !noalias !686
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !7, !alias.scope !691, !noalias !686
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !696

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !689, !noalias !686
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !686, !noalias !689
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !689, !noalias !686
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !697

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #25
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !182
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.as, ptr %i.a, align 8, !tbaa !179
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.at, ptr %i.j, align 8, !tbaa !181
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.au = icmp ult i64 %1, %i.g
  br i1 %i.au, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.av
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.av, %bb.g ] ; 2 uses
  %i.aw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !7 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(56) %i.aw) #23, !inline_history !698
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.av, ptr %i.a, align 8, !tbaa !179
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

declare void @_ZN6duckdb11GroupBinderC1ERNS_6BinderERNS_13ClientContextERNS_10SelectNodeEmRNS_15SelectBindStateERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSF_mEEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(240), i64 noundef, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

declare void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN6duckdb19FirstFunctionGetter11GetFunctionERKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::AggregateFunction") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN6duckdb14FunctionBinderC1ERNS_6BinderE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(472)) unnamed_addr #2

declare void @_ZN6duckdb14FunctionBinder21BindAggregateFunctionENS_17AggregateFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEES7_NS_13AggregateTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.768") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !117
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !699
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !699
  br label %_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit, !prof !120

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(236) %0) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !522    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
end_hunk_0
begin_hunk_1_@_ZN6duckdb6Binder26CastLogicalOperatorToTypesERKNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES6_NS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS8_ELb1EEE:bb.a
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader363, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.lg, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader363 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.lf, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader363 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.le = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !1115, !noalias !1112
  store i64 %i.le, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !1112, !noalias !1115
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !1115, !noalias !1112
  %i.lf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i138 = icmp eq ptr %i.lf, %i.jc
  br i1 %.not.i.i.i.i.i.i.i138, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1123

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc140
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.km, %.noexc140 ], [ %i.kx, %middle.block ], [ %i.lg, %.lr.ph.i.i.i.i.i.i.i ]
  %i.lh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jb) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.cq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.km, ptr %12, align 8, !tbaa !213
  store ptr %i.lh, ptr %i.iw, align 8, !tbaa !211
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kk ; 2 uses
  store ptr %i.li, ptr %i.ix, align 8, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143: ; preds = %bb.cn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.lj = phi ptr [ %i.jb, %bb.cn ], [ %i.km, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ]
  %i.lk = phi ptr [ %i.jc, %bb.cn ], [ %i.li, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ll = phi ptr [ %i.kb, %bb.cn ], [ %i.lh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ] ; 2 uses
  %i.lm = add nuw i64 %.0228, 1                   ; 2 uses
  %i.ln = load ptr, ptr %i.i, align 8, !tbaa !300
  %i.lo = load ptr, ptr %3, align 8, !tbaa !303
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = sdiv exact i64 %i.lr, 24
  %i.lt = icmp ult i64 %i.lm, %i.ls
  br i1 %i.lt, label %bb.by, label %._crit_edge, !llvm.loop !1124

.thread199:                                       ; preds = %bb.cg, %bb.cf, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145

.loopexit209:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp:                               ; preds = %bb.cp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit.split-lp, %.loopexit209
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit209 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i144 = icmp eq ptr %.sroa.0175.1, null
  br i1 %.not.i144, label %.body, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145: ; preds = %.thread199, %bb.cr
  %lpad.phi204 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread199 ], [ %lpad.phi, %bb.cr ]
  %.sroa.0175.0203 = phi ptr [ %i.jg, %.thread199 ], [ %.sroa.0175.1, %bb.cr ] ; 2 uses
  %i.lu = load ptr, ptr %.sroa.0175.0203, align 8, !tbaa !10
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0175.0203) #23, !inline_history !104
  br label %.body

bb.cs:                                            ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.lx = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc150 unwind label %bb.dd ; 3 uses

.noexc150:                                        ; preds = %bb.cs
  %i.ly = load ptr, ptr %12, align 8, !tbaa !213, !noalias !1125
  store ptr %i.ly, ptr %5, align 8, !tbaa !213, !noalias !1125
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.iz, ptr %i.lz, align 8, !tbaa !211, !noalias !1125
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.iy, ptr %i.ma, align 8, !tbaa !212, !noalias !1125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !1125
  invoke void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.lx, i64 noundef %i.ja, ptr noundef nonnull %5)
          to label %bb.ct unwind label %bb.cv, !noalias !1125

bb.ct:                                            ; preds = %.noexc150
  store ptr %i.lx, ptr %15, align 8, !tbaa !783, !alias.scope !1125
  %i.mb = load ptr, ptr %5, align 8, !tbaa !213, !noalias !1125 ; 3 uses
  %i.mc = load ptr, ptr %i.lz, align 8, !tbaa !211, !noalias !1125 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.mb, %i.mc
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i147

.lr.ph.i.i.i.i147:                                ; preds = %bb.ct, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.mh, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.mb, %bb.ct ] ; 2 uses
  %i.md = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !13, !noalias !1125 ; 3 uses
  %.not.i.i.i.i.i.i148 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i.i.i148, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i147
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !10, !noalias !1125
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !noalias !1125
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(88) %i.md) #23, !noalias !1125, !inline_history !895
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i147
  %i.mh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i149 = icmp eq ptr %i.mh, %i.mc
  br i1 %.not.i.i.i.i149, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i147, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !213, !noalias !1125
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.ct
  %i.mi = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.mb, %bb.ct ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i1.i.i, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.mi) #25, !noalias !1125
  br label %bb.cw

bb.cv:                                            ; preds = %.noexc150
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23, !noalias !1125
  call void @_ZdlPv(ptr noundef nonnull %i.lx) #25, !noalias !1125
  br label %.body151

bb.cw:                                            ; preds = %bb.cu, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.mk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.cx unwind label %bb.de     ; 3 uses

bb.cx:                                            ; preds = %bb.cw
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 24 ; 3 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !896 ; 6 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 32 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !897
  %.not.i.i153 = icmp eq ptr %i.mn, %i.mp
  br i1 %.not.i.i153, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mq = load i64, ptr %4, align 8, !tbaa !360
  store i64 %i.mq, ptr %i.mn, align 8, !tbaa !360
  store ptr null, ptr %4, align 8, !tbaa !360
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store ptr %i.mr, ptr %i.mm, align 8, !tbaa !896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

bb.cz:                                            ; preds = %bb.cx
  %i.ms = load ptr, ptr %i.ml, align 8, !tbaa !898 ; 10 uses
  %i.mt = ptrtoint ptr %i.mn to i64               ; 3 uses
  %i.mu = ptrtoint ptr %i.ms to i64               ; 3 uses
  %i.mv = sub i64 %i.mt, %i.mu                    ; 3 uses
  %i.mw = icmp eq i64 %i.mv, 9223372036854775800
  br i1 %i.mw, label %bb.da, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc163 unwind label %bb.de

.noexc163:                                        ; preds = %bb.da
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cz
  %i.mx = ashr exact i64 %i.mv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i154 = call i64 @llvm.umax.i64(i64 %i.mx, i64 1)
  %i.my = add nsw i64 %.sroa.speculated.i.i.i.i154, %i.mx ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mx
  %i.na = call i64 @llvm.umin.i64(i64 %i.my, i64 1152921504606846975)
  %i.nb = select i1 %i.mz, i64 1152921504606846975, i64 %i.na ; 3 uses
  %.not.i.i.i.i155 = icmp ne i64 %i.nb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i155)
  %i.nc = shl nuw nsw i64 %i.nb, 3
  %i.nd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nc) #26
          to label %.noexc164 unwind label %bb.de ; 10 uses

.noexc164:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.mv
  %i.nf = load i64, ptr %4, align 8, !tbaa !360
  store i64 %i.nf, ptr %i.ne, align 8, !tbaa !360
  store ptr null, ptr %4, align 8, !tbaa !360
  %.not10.i.i.i.i.i.i.i156 = icmp eq ptr %i.ms, %i.mn
  br i1 %.not10.i.i.i.i.i.i.i156, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i157.preheader

.lr.ph.i.i.i.i.i.i.i157.preheader:                ; preds = %.noexc164
  %i.ng = sub i64 %i.mt, %i.mu
  %i.nh = add i64 %i.ng, -8                       ; 2 uses
  %i.ni = lshr i64 %i.nh, 3
  %i.nj = add nuw nsw i64 %i.ni, 1                ; 2 uses
  %min.iters.check344 = icmp ult i64 %i.nh, 152
  br i1 %min.iters.check344, label %.lr.ph.i.i.i.i.i.i.i157.preheader362, label %vector.memcheck337

vector.memcheck337:                               ; preds = %.lr.ph.i.i.i.i.i.i.i157.preheader
  %i.nk = add i64 %i.mt, -8
  %i.nl = sub i64 %i.nk, %i.mu
  %i.nm = and i64 %i.nl, -8
  %i.nn = add i64 %i.nm, 8                        ; 2 uses
  %scevgep338 = getelementptr i8, ptr %i.nd, i64 %i.nn
  %scevgep339 = getelementptr i8, ptr %i.ms, i64 %i.nn
  %bound0340 = icmp ult ptr %i.nd, %scevgep339
  %bound1341 = icmp ult ptr %i.ms, %scevgep338
  %found.conflict342 = and i1 %bound0340, %bound1341
  br i1 %found.conflict342, label %.lr.ph.i.i.i.i.i.i.i157.preheader362, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck337
  %n.vec347 = and i64 %i.nj, 4611686018427387900  ; 3 uses
  %i.no = shl i64 %n.vec347, 3                    ; 2 uses
  %i.np = getelementptr i8, ptr %i.nd, i64 %i.no  ; 2 uses
  %i.nq = getelementptr i8, ptr %i.ms, i64 %i.no
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph345
  %index349 = phi i64 [ 0, %vector.ph345 ], [ %index.next354, %vector.body348 ] ; 2 uses
  %i.nr = shl i64 %index349, 3                    ; 2 uses
  %next.gep350 = getelementptr i8, ptr %i.nd, i64 %i.nr ; 2 uses
  %next.gep351 = getelementptr i8, ptr %i.ms, i64 %i.nr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.ns = getelementptr i8, ptr %next.gep351, i64 16
  %wide.load352 = load <2 x i64>, ptr %next.gep351, align 8, !tbaa !360, !alias.scope !1133, !noalias !1128
  %wide.load353 = load <2 x i64>, ptr %i.ns, align 8, !tbaa !360, !alias.scope !1133, !noalias !1128
  %i.nt = getelementptr i8, ptr %next.gep350, i64 16
  store <2 x i64> %wide.load352, ptr %next.gep350, align 8, !tbaa !360, !alias.scope !1136, !noalias !1133
  store <2 x i64> %wide.load353, ptr %i.nt, align 8, !tbaa !360, !alias.scope !1136, !noalias !1133
  %i.nu = getelementptr i8, ptr %next.gep351, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep351, align 8, !tbaa !360, !alias.scope !1133, !noalias !1128
  store <2 x ptr> splat (ptr null), ptr %i.nu, align 8, !tbaa !360, !alias.scope !1133, !noalias !1128
  %index.next354 = add nuw i64 %index349, 4       ; 2 uses
  %i.nv = icmp eq i64 %index.next354, %n.vec347
  br i1 %i.nv, label %middle.block355, label %vector.body348, !llvm.loop !1138

middle.block355:                                  ; preds = %vector.body348
  %cmp.n356 = icmp eq i64 %i.nj, %n.vec347
  br i1 %cmp.n356, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i157.preheader362

.lr.ph.i.i.i.i.i.i.i157.preheader362:             ; preds = %vector.memcheck337, %.lr.ph.i.i.i.i.i.i.i157.preheader, %middle.block355
  %.012.i.i.i.i.i.i.i158.ph = phi ptr [ %i.nd, %vector.memcheck337 ], [ %i.nd, %.lr.ph.i.i.i.i.i.i.i157.preheader ], [ %i.np, %middle.block355 ]
  %.0911.i.i.i.i.i.i.i159.ph = phi ptr [ %i.ms, %vector.memcheck337 ], [ %i.ms, %.lr.ph.i.i.i.i.i.i.i157.preheader ], [ %i.nq, %middle.block355 ]
  br label %.lr.ph.i.i.i.i.i.i.i157

.lr.ph.i.i.i.i.i.i.i157:                          ; preds = %.lr.ph.i.i.i.i.i.i.i157.preheader362, %.lr.ph.i.i.i.i.i.i.i157
  %.012.i.i.i.i.i.i.i158 = phi ptr [ %i.ny, %.lr.ph.i.i.i.i.i.i.i157 ], [ %.012.i.i.i.i.i.i.i158.ph, %.lr.ph.i.i.i.i.i.i.i157.preheader362 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i159 = phi ptr [ %i.nx, %.lr.ph.i.i.i.i.i.i.i157 ], [ %.0911.i.i.i.i.i.i.i159.ph, %.lr.ph.i.i.i.i.i.i.i157.preheader362 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.nw = load i64, ptr %.0911.i.i.i.i.i.i.i159, align 8, !tbaa !360, !alias.scope !1131, !noalias !1128
  store i64 %i.nw, ptr %.012.i.i.i.i.i.i.i158, align 8, !tbaa !360, !alias.scope !1128, !noalias !1131
  store ptr null, ptr %.0911.i.i.i.i.i.i.i159, align 8, !tbaa !360, !alias.scope !1131, !noalias !1128
  %i.nx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i159, i64 8 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i158, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i160 = icmp eq ptr %i.nx, %i.mn
  br i1 %.not.i.i.i.i.i.i.i160, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i157, !llvm.loop !1139

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i157, %middle.block355, %.noexc164
  %.0.lcssa.i.i.i.i.i.i.i161 = phi ptr [ %i.nd, %.noexc164 ], [ %i.np, %middle.block355 ], [ %i.ny, %.lr.ph.i.i.i.i.i.i.i157 ]
  %i.nz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i161, i64 8
  %.not.i23.i.i.i162 = icmp eq ptr %i.ms, null
  br i1 %.not.i23.i.i.i162, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ms) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.db, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.nd, ptr %i.ml, align 8, !tbaa !898
  store ptr %i.nz, ptr %i.mm, align 8, !tbaa !896
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.nb
  store ptr %i.oa, ptr %i.mo, align 8, !tbaa !897
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.cy
  %i.ob = load ptr, ptr %15, align 8, !tbaa !783
  store ptr %i.ob, ptr %0, align 8, !tbaa !1002
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %.pre = load ptr, ptr %11, align 8, !tbaa !1140 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.not.i.i.i168 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.pre) #25
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.dh

bb.dd:                                            ; preds = %bb.cs, %._crit_edge
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %.body151

bb.de:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.da, %bb.cw
  %i.od = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oe = load ptr, ptr %15, align 8, !tbaa !783  ; 3 uses
  %.not.i169 = icmp eq ptr %i.oe, null
  br i1 %.not.i169, label %.body151, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i170

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i170: ; preds = %bb.de
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !10
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 8 dereferenceable(112) %i.oe) #23, !inline_history !805
  br label %.body151

.body151:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i170, %bb.de, %bb.dd, %bb.cv
  %.pn = phi { ptr, i32 } [ %i.mj, %bb.cv ], [ %i.oc, %bb.dd ], [ %i.od, %bb.de ], [ %i.od, %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %.body

.body:                                            ; preds = %bb.ce, %bb.ck, %.thread193, %bb.cr, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145, %.body151
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn, %.body151 ], [ %.pn.i, %bb.ce ], [ %i.ju, %bb.ck ], [ %i.jv, %.thread193 ], [ %lpad.phi, %bb.cr ], [ %lpad.phi204, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.oi = load ptr, ptr %11, align 8, !tbaa !1140 ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit173, label %bb.df

bb.df:                                            ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.oi) #25
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit173

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit173: ; preds = %.body, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %bb.bg
  %.pn95.pn = phi { ptr, i32 } [ %.pn95, %bb.bg ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %.pn82.pn.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit173 ]
  resume { ptr, i32 } %.pn95.pn

bb.dh:                                            ; preds = %bb.bf, %._crit_edge236, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, %.loopexit210
  ret void
}

declare ptr @_ZN6duckdb6Binder13GetCTEBindingERKNS_12BindingAliasE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6duckdb10CTEBinding12IsReferencedEv(ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_19LogicalRecursiveCTEEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmmRbNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteISD_ELb1EEELb1ESaISG_EEENSC_INS_15LogicalOperatorESE_ISJ_ELb1EEESL_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.874") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::vector.272", align 16 ; 7 uses
  %10 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #26 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.c, ptr %8, align 8, !tbaa !126
  %i.d = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !127  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !112
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %8, align 8, !tbaa !103
  %i.i = load i64, ptr %i.a, align 8, !tbaa !112
  store i64 %i.i, ptr %i.c, align 8, !tbaa !119
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !119
  store i8 %i.k, ptr %i.j, align 1, !tbaa !119
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !127
  %i.n = load ptr, ptr %8, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
end_hunk_1
begin_hunk_2_@_ZN6duckdbL24PlanUncorrelatedSubqueryERNS_6BinderERNS_23BoundSubqueryExpressionERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS5_ELb1EEES8_:bb.a
bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pn.i399 = phi { ptr, i32 } [ %i.lu, %bb.ck ], [ %i.lt, %bb.cj ]
  call void @_ZdlPv(ptr noundef nonnull %i.ls) #25, !noalias !1383
  br label %.body404

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i408: ; preds = %bb.ci
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #23, !noalias !1383
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %i.lv = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  %i.lw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %.noexc421 unwind label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit521 ; 4 uses

.noexc421:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i408
  %i.lx = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.ly = ptrtoint ptr %i.ls to i64
  store i64 %i.ly, ptr %i.lw, align 8, !tbaa !13
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 4 uses
  store ptr %i.lw, ptr %53, align 8, !tbaa !213
  store ptr %i.lz, ptr %i.lv, align 8, !tbaa !211
  store ptr %i.lz, ptr %i.lx, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  invoke void @_ZN6duckdb14FunctionBinderC1ERNS_6BinderE(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.cm unwind label %bb.dq

bb.cm:                                            ; preds = %.noexc421
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  invoke void @_ZN6duckdb19FirstFunctionGetter11GetFunctionERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::AggregateFunction") align 8 %56, ptr noundef nonnull align 8 dereferenceable(24) %i.lr)
          to label %bb.cn unwind label %bb.dr

bb.cn:                                            ; preds = %bb.cm
  store ptr %i.lw, ptr %57, align 8, !tbaa !213
  %i.ma = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  store ptr %i.lz, ptr %i.ma, align 8, !tbaa !211
  %i.mb = getelementptr inbounds nuw i8, ptr %57, i64 16
  store ptr %i.lz, ptr %i.mb, align 8, !tbaa !212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  store ptr null, ptr %58, align 8, !tbaa !266
  invoke void @_ZN6duckdb14FunctionBinder21BindAggregateFunctionENS_17AggregateFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEES7_NS_13AggregateTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.768") align 8 %55, ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull %56, ptr noundef nonnull %57, ptr noundef nonnull %58, i8 noundef zeroext 1)
          to label %bb.co unwind label %bb.ds

bb.co:                                            ; preds = %bb.cn
  %i.mc = load ptr, ptr %58, align 8, !tbaa !13   ; 3 uses
  %.not.i426 = icmp eq ptr %i.mc, null
  br i1 %.not.i426, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i427

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i427: ; preds = %bb.co
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !10
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(88) %i.mc) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428: ; preds = %bb.co, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i427
  %i.mg = load ptr, ptr %57, align 8, !tbaa !213  ; 3 uses
  %i.mh = load ptr, ptr %i.ma, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i429 = icmp eq ptr %i.mg, %i.mh
  br i1 %.not4.i.i.i429, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i438, label %.lr.ph.i.i.i430

.lr.ph.i.i.i430:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i434
  %.05.i.i.i431 = phi ptr [ %i.mm, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i434 ], [ %i.mg, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428 ] ; 2 uses
  %i.mi = load ptr, ptr %.05.i.i.i431, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i432 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i.i432, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i434, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i433

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i433: ; preds = %.lr.ph.i.i.i430
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !10
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(88) %i.mi) #23, !inline_history !518
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i434

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i434: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i433, %.lr.ph.i.i.i430
  %i.mm = getelementptr inbounds nuw i8, ptr %.05.i.i.i431, i64 8 ; 2 uses
  %.not.i.i.i435 = icmp eq ptr %i.mm, %i.mh
  br i1 %.not.i.i.i435, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i436, label %.lr.ph.i.i.i430, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i436: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i434
  %.pr.i437 = load ptr, ptr %57, align 8, !tbaa !213
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i438

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i438: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i436, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428
  %i.mn = phi ptr [ %.pr.i437, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i436 ], [ %i.mg, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428 ] ; 2 uses
  %.not.i.i1.i439 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i1.i439, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit440, label %bb.cp

bb.cp:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i438
  call void @_ZdlPv(ptr noundef nonnull %i.mn) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit440

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit440: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i438, %bb.cp
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %56, align 8, !tbaa !10
  %i.mo = getelementptr inbounds nuw i8, ptr %56, i64 360
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i441 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i441, label %_ZN6duckdb17AggregateFunctionD2Ev.exit445, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit440
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 4 uses
  %i.mr = load atomic i64, ptr %i.mq acquire, align 8 ; 2 uses
  %i.ms = icmp eq i64 %i.mr, 4294967297
  %i.mt = trunc i64 %i.mr to i32                  ; 2 uses
  br i1 %i.ms, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.mq, align 8, !tbaa !115
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  store i32 0, ptr %i.mu, align 4, !tbaa !117
  %i.mv = load ptr, ptr %i.mp, align 8, !tbaa !10
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(16) %i.mp) #23, !inline_history !520
  %i.my = load ptr, ptr %i.mp, align 8, !tbaa !10
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8
  call void %i.na(ptr noundef nonnull align 8 dereferenceable(16) %i.mp) #23, !inline_history !520
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit445

bb.cs:                                            ; preds = %bb.cq
  %i.nb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i442 = icmp eq i8 %i.nb, 0
  br i1 %.not.i.i.i.i.i442, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.nc = add nsw i32 %i.mt, -1
  store i32 %i.nc, ptr %i.mq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i443

bb.cu:                                            ; preds = %bb.cs
  %i.nd = atomicrmw volatile add ptr %i.mq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i443

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i443: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i.i.i444 = phi i32 [ %i.mt, %bb.ct ], [ %i.nd, %bb.cu ]
  %i.ne = icmp eq i32 %.0.i.i.i.i.i.i444, 1
  br i1 %i.ne, label %bb.cv, label %_ZN6duckdb17AggregateFunctionD2Ev.exit445, !prof !120

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i443
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mp) #23, !inline_history !521
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit445

_ZN6duckdb17AggregateFunctionD2Ev.exit445:        ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit440, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i443, %bb.cv
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %56) #23, !inline_history !521
  %i.nf = load ptr, ptr %55, align 8, !tbaa !522  ; 5 uses
  store ptr null, ptr %55, align 8, !tbaa !522
  %i.ng = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 8 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !211 ; 6 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 5 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !212 ; 2 uses
  %.not.i.i446 = icmp eq ptr %i.nh, %i.nj
  br i1 %.not.i.i446, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit445
  %i.nk = ptrtoint ptr %i.nf to i64
  store i64 %i.nk, ptr %i.nh, align 8, !tbaa !13
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 2 uses
  store ptr %i.nl, ptr %i.ng, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit464

bb.cx:                                            ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit445
  %i.nm = load ptr, ptr %52, align 8, !tbaa !213  ; 10 uses
  %i.nn = ptrtoint ptr %i.nh to i64               ; 3 uses
  %i.no = ptrtoint ptr %i.nm to i64               ; 3 uses
  %i.np = sub i64 %i.nn, %i.no                    ; 3 uses
  %i.nq = icmp eq i64 %i.np, 9223372036854775800
  br i1 %i.nq, label %bb.cy, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i447

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc459 unwind label %bb.dt

.noexc459:                                        ; preds = %bb.cy
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i447: ; preds = %bb.cx
  %i.nr = ashr exact i64 %i.np, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i448 = call i64 @llvm.umax.i64(i64 %i.nr, i64 1)
  %i.ns = add nsw i64 %.sroa.speculated.i.i.i.i448, %i.nr ; 2 uses
  %i.nt = icmp ult i64 %i.ns, %i.nr
  %i.nu = call i64 @llvm.umin.i64(i64 %i.ns, i64 1152921504606846975)
  %i.nv = select i1 %i.nt, i64 1152921504606846975, i64 %i.nu ; 3 uses
  %.not.i.i.i.i449 = icmp ne i64 %i.nv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i449)
  %i.nw = shl nuw nsw i64 %i.nv, 3
  %i.nx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nw) #26
          to label %.noexc460 unwind label %bb.dt ; 10 uses

.noexc460:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i447
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.np
  %i.nz = ptrtoint ptr %i.nf to i64
  store i64 %i.nz, ptr %i.ny, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i450 = icmp eq ptr %i.nm, %i.nh
  br i1 %.not10.i.i.i.i.i.i.i450, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i455, label %.lr.ph.i.i.i.i.i.i.i451.preheader

.lr.ph.i.i.i.i.i.i.i451.preheader:                ; preds = %.noexc460
  %i.oa = sub i64 %i.nn, %i.no
  %i.ob = add i64 %i.oa, -8                       ; 2 uses
  %i.oc = lshr i64 %i.ob, 3
  %i.od = add nuw nsw i64 %i.oc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ob, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i451.preheader1561, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i451.preheader
  %i.oe = add i64 %i.nn, -8
  %i.of = sub i64 %i.oe, %i.no
  %i.og = and i64 %i.of, -8
  %i.oh = add i64 %i.og, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.nx, i64 %i.oh
  %scevgep1471 = getelementptr i8, ptr %i.nm, i64 %i.oh
  %bound0 = icmp ult ptr %i.nx, %scevgep1471
  %bound1 = icmp ult ptr %i.nm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i451.preheader1561, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.od, 4611686018427387900     ; 3 uses
  %i.oi = shl i64 %n.vec, 3                       ; 2 uses
  %i.oj = getelementptr i8, ptr %i.nx, i64 %i.oi  ; 2 uses
  %i.ok = getelementptr i8, ptr %i.nm, i64 %i.oi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ol = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.nx, i64 %i.ol ; 2 uses
  %next.gep1472 = getelementptr i8, ptr %i.nm, i64 %i.ol ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.om = getelementptr i8, ptr %next.gep1472, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1472, align 8, !tbaa !13, !alias.scope !1391, !noalias !1386
  %wide.load1473 = load <2 x i64>, ptr %i.om, align 8, !tbaa !13, !alias.scope !1391, !noalias !1386
  %i.on = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !13, !alias.scope !1394, !noalias !1391
  store <2 x i64> %wide.load1473, ptr %i.on, align 8, !tbaa !13, !alias.scope !1394, !noalias !1391
  %i.oo = getelementptr i8, ptr %next.gep1472, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1472, align 8, !tbaa !13, !alias.scope !1391, !noalias !1386
  store <2 x ptr> splat (ptr null), ptr %i.oo, align 8, !tbaa !13, !alias.scope !1391, !noalias !1386
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.op = icmp eq i64 %index.next, %n.vec
  br i1 %i.op, label %middle.block, label %vector.body, !llvm.loop !1396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.od, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i455, label %.lr.ph.i.i.i.i.i.i.i451.preheader1561

.lr.ph.i.i.i.i.i.i.i451.preheader1561:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i451.preheader, %middle.block
  %.012.i.i.i.i.i.i.i452.ph = phi ptr [ %i.nx, %vector.memcheck ], [ %i.nx, %.lr.ph.i.i.i.i.i.i.i451.preheader ], [ %i.oj, %middle.block ]
  %.0911.i.i.i.i.i.i.i453.ph = phi ptr [ %i.nm, %vector.memcheck ], [ %i.nm, %.lr.ph.i.i.i.i.i.i.i451.preheader ], [ %i.ok, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i451

.lr.ph.i.i.i.i.i.i.i451:                          ; preds = %.lr.ph.i.i.i.i.i.i.i451.preheader1561, %.lr.ph.i.i.i.i.i.i.i451
  %.012.i.i.i.i.i.i.i452 = phi ptr [ %i.os, %.lr.ph.i.i.i.i.i.i.i451 ], [ %.012.i.i.i.i.i.i.i452.ph, %.lr.ph.i.i.i.i.i.i.i451.preheader1561 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i453 = phi ptr [ %i.or, %.lr.ph.i.i.i.i.i.i.i451 ], [ %.0911.i.i.i.i.i.i.i453.ph, %.lr.ph.i.i.i.i.i.i.i451.preheader1561 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.oq = load i64, ptr %.0911.i.i.i.i.i.i.i453, align 8, !tbaa !13, !alias.scope !1389, !noalias !1386
  store i64 %i.oq, ptr %.012.i.i.i.i.i.i.i452, align 8, !tbaa !13, !alias.scope !1386, !noalias !1389
  store ptr null, ptr %.0911.i.i.i.i.i.i.i453, align 8, !tbaa !13, !alias.scope !1389, !noalias !1386
  %i.or = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i453, i64 8 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i452, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i454 = icmp eq ptr %i.or, %i.nh
  br i1 %.not.i.i.i.i.i.i.i454, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i455, label %.lr.ph.i.i.i.i.i.i.i451, !llvm.loop !1397

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i455: ; preds = %.lr.ph.i.i.i.i.i.i.i451, %middle.block, %.noexc460
  %.0.lcssa.i.i.i.i.i.i.i456 = phi ptr [ %i.nx, %.noexc460 ], [ %i.oj, %middle.block ], [ %i.os, %.lr.ph.i.i.i.i.i.i.i451 ]
  %i.ot = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i456, i64 8 ; 2 uses
  %.not.i23.i.i.i457 = icmp eq ptr %i.nm, null
  br i1 %.not.i23.i.i.i457, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i458, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i455
  call void @_ZdlPv(ptr noundef nonnull %i.nm) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i458

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i458: ; preds = %bb.cz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i455
  store ptr %i.nx, ptr %52, align 8, !tbaa !213
  store ptr %i.ot, ptr %i.ng, align 8, !tbaa !211
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.nv ; 2 uses
  store ptr %i.ou, ptr %i.ni, align 8, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit464

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit464: ; preds = %bb.cw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i458
  %i.ov = phi ptr [ %i.nj, %bb.cw ], [ %i.ou, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i458 ]
  %i.ow = phi ptr [ %i.nl, %bb.cw ], [ %i.ot, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i458 ]
  br i1 %i.lq, label %bb.da, label %bb.dx

bb.da:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit464
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #23
  invoke void @_ZN6duckdb12CountStarFun11GetFunctionEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::AggregateFunction") align 8 %61)
          to label %bb.db unwind label %bb.du

bb.db:                                            ; preds = %bb.da
  %i.ox = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %59, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  store ptr null, ptr %63, align 8, !tbaa !266
  invoke void @_ZN6duckdb14FunctionBinder21BindAggregateFunctionENS_17AggregateFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEES7_NS_13AggregateTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.768") align 8 %60, ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull %61, ptr noundef nonnull %62, ptr noundef nonnull %63, i8 noundef zeroext 1)
          to label %bb.dc unwind label %bb.dv

bb.dc:                                            ; preds = %bb.db
  %i.oz = load ptr, ptr %63, align 8, !tbaa !13   ; 3 uses
  %.not.i465 = icmp eq ptr %i.oz, null
  br i1 %.not.i465, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i466

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i466: ; preds = %bb.dc
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !10
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8
  call void %i.pc(ptr noundef nonnull align 8 dereferenceable(88) %i.oz) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467: ; preds = %bb.dc, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i466
  %i.pd = load ptr, ptr %62, align 8, !tbaa !213  ; 3 uses
  %i.pe = load ptr, ptr %i.ox, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i468 = icmp eq ptr %i.pd, %i.pe
  br i1 %.not4.i.i.i468, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i477, label %.lr.ph.i.i.i469

.lr.ph.i.i.i469:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i473
  %.05.i.i.i470 = phi ptr [ %i.pj, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i473 ], [ %i.pd, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467 ] ; 2 uses
  %i.pf = load ptr, ptr %.05.i.i.i470, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i471 = icmp eq ptr %i.pf, null
  br i1 %.not.i.i.i.i.i471, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i473, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i472

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i472: ; preds = %.lr.ph.i.i.i469
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !10
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8
  call void %i.pi(ptr noundef nonnull align 8 dereferenceable(88) %i.pf) #23, !inline_history !518
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i473

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i473: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i472, %.lr.ph.i.i.i469
  %i.pj = getelementptr inbounds nuw i8, ptr %.05.i.i.i470, i64 8 ; 2 uses
  %.not.i.i.i474 = icmp eq ptr %i.pj, %i.pe
  br i1 %.not.i.i.i474, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i475, label %.lr.ph.i.i.i469, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i475: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i473
  %.pr.i476 = load ptr, ptr %62, align 8, !tbaa !213
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i477

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i477: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i475, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467
  %i.pk = phi ptr [ %.pr.i476, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i475 ], [ %i.pd, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467 ] ; 2 uses
  %.not.i.i1.i478 = icmp eq ptr %i.pk, null
  br i1 %.not.i.i1.i478, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit479, label %bb.dd

bb.dd:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i477
  call void @_ZdlPv(ptr noundef nonnull %i.pk) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit479

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit479: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i477, %bb.dd
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %61, align 8, !tbaa !10
  %i.pl = getelementptr inbounds nuw i8, ptr %61, i64 360
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i480 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i.i480, label %_ZN6duckdb17AggregateFunctionD2Ev.exit484, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit479
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 4 uses
  %i.po = load atomic i64, ptr %i.pn acquire, align 8 ; 2 uses
  %i.pp = icmp eq i64 %i.po, 4294967297
  %i.pq = trunc i64 %i.po to i32                  ; 2 uses
  br i1 %i.pp, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.pn, align 8, !tbaa !115
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  store i32 0, ptr %i.pr, align 4, !tbaa !117
  %i.ps = load ptr, ptr %i.pm, align 8, !tbaa !10
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8
  call void %i.pu(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #23, !inline_history !520
  %i.pv = load ptr, ptr %i.pm, align 8, !tbaa !10
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #23, !inline_history !520
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit484

bb.dg:                                            ; preds = %bb.de
  %i.py = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i481 = icmp eq i8 %i.py, 0
  br i1 %.not.i.i.i.i.i481, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.pz = add nsw i32 %i.pq, -1
  store i32 %i.pz, ptr %i.pn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i482

bb.di:                                            ; preds = %bb.dg
  %i.qa = atomicrmw volatile add ptr %i.pn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i482

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i482: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i.i.i483 = phi i32 [ %i.pq, %bb.dh ], [ %i.qa, %bb.di ]
  %i.qb = icmp eq i32 %.0.i.i.i.i.i.i483, 1
  br i1 %i.qb, label %bb.dj, label %_ZN6duckdb17AggregateFunctionD2Ev.exit484, !prof !120

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i482
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #23, !inline_history !521
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit484

_ZN6duckdb17AggregateFunctionD2Ev.exit484:        ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit479, %bb.df, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i482, %bb.dj
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %61) #23, !inline_history !521
  %i.qc = load ptr, ptr %60, align 8, !tbaa !522  ; 5 uses
  store ptr null, ptr %60, align 8, !tbaa !522
  %i.qd = load ptr, ptr %i.ng, align 8, !tbaa !211 ; 6 uses
  %i.qe = load ptr, ptr %i.ni, align 8, !tbaa !212 ; 2 uses
  %.not.i.i485 = icmp eq ptr %i.qd, %i.qe
  br i1 %.not.i.i485, label %bb.dk, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread: ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit484
  %i.qf = ptrtoint ptr %i.qc to i64
  store i64 %i.qf, ptr %i.qd, align 8, !tbaa !13
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 2 uses
  store ptr %i.qg, ptr %i.ng, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506

bb.dk:                                            ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit484
  %i.qh = load ptr, ptr %52, align 8, !tbaa !213  ; 10 uses
  %i.qi = ptrtoint ptr %i.qd to i64               ; 3 uses
  %i.qj = ptrtoint ptr %i.qh to i64               ; 3 uses
  %i.qk = sub i64 %i.qi, %i.qj                    ; 3 uses
  %i.ql = icmp eq i64 %i.qk, 9223372036854775800
  br i1 %i.ql, label %bb.dl, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i486

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc498 unwind label %bb.dw

.noexc498:                                        ; preds = %bb.dl
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i486: ; preds = %bb.dk
  %i.qm = ashr exact i64 %i.qk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i487 = call i64 @llvm.umax.i64(i64 %i.qm, i64 1)
  %i.qn = add nsw i64 %.sroa.speculated.i.i.i.i487, %i.qm ; 2 uses
  %i.qo = icmp ult i64 %i.qn, %i.qm
  %i.qp = call i64 @llvm.umin.i64(i64 %i.qn, i64 1152921504606846975)
  %i.qq = select i1 %i.qo, i64 1152921504606846975, i64 %i.qp ; 4 uses
  %.not.i.i.i.i488 = icmp ne i64 %i.qq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i488)
  %i.qr = shl nuw nsw i64 %i.qq, 3
  %i.qs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qr) #26
          to label %.noexc499 unwind label %bb.dw ; 12 uses

.noexc499:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i486
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qk
  %i.qu = ptrtoint ptr %i.qc to i64
  store i64 %i.qu, ptr %i.qt, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i489 = icmp eq ptr %i.qh, %i.qd
  br i1 %.not10.i.i.i.i.i.i.i489, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i494, label %.lr.ph.i.i.i.i.i.i.i490.preheader

.lr.ph.i.i.i.i.i.i.i490.preheader:                ; preds = %.noexc499
  %i.qv = sub i64 %i.qi, %i.qj
  %i.qw = add i64 %i.qv, -8                       ; 2 uses
  %i.qx = lshr i64 %i.qw, 3
  %i.qy = add nuw nsw i64 %i.qx, 1                ; 2 uses
  %min.iters.check1482 = icmp ult i64 %i.qw, 152
  br i1 %min.iters.check1482, label %.lr.ph.i.i.i.i.i.i.i490.preheader1559, label %vector.memcheck1475

vector.memcheck1475:                              ; preds = %.lr.ph.i.i.i.i.i.i.i490.preheader
  %i.qz = add i64 %i.qi, -8
  %i.ra = sub i64 %i.qz, %i.qj
  %i.rb = and i64 %i.ra, -8
  %i.rc = add i64 %i.rb, 8                        ; 2 uses
  %scevgep1476 = getelementptr i8, ptr %i.qs, i64 %i.rc
  %scevgep1477 = getelementptr i8, ptr %i.qh, i64 %i.rc
  %bound01478 = icmp ult ptr %i.qs, %scevgep1477
  %bound11479 = icmp ult ptr %i.qh, %scevgep1476
  %found.conflict1480 = and i1 %bound01478, %bound11479
  br i1 %found.conflict1480, label %.lr.ph.i.i.i.i.i.i.i490.preheader1559, label %vector.ph1483

vector.ph1483:                                    ; preds = %vector.memcheck1475
  %n.vec1485 = and i64 %i.qy, 4611686018427387900 ; 3 uses
  %i.rd = shl i64 %n.vec1485, 3                   ; 2 uses
  %i.re = getelementptr i8, ptr %i.qs, i64 %i.rd  ; 2 uses
  %i.rf = getelementptr i8, ptr %i.qh, i64 %i.rd
  br label %vector.body1486

vector.body1486:                                  ; preds = %vector.body1486, %vector.ph1483
  %index1487 = phi i64 [ 0, %vector.ph1483 ], [ %index.next1492, %vector.body1486 ] ; 2 uses
  %i.rg = shl i64 %index1487, 3                   ; 2 uses
  %next.gep1488 = getelementptr i8, ptr %i.qs, i64 %i.rg ; 2 uses
  %next.gep1489 = getelementptr i8, ptr %i.qh, i64 %i.rg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.rh = getelementptr i8, ptr %next.gep1489, i64 16
  %wide.load1490 = load <2 x i64>, ptr %next.gep1489, align 8, !tbaa !13, !alias.scope !1403, !noalias !1398
  %wide.load1491 = load <2 x i64>, ptr %i.rh, align 8, !tbaa !13, !alias.scope !1403, !noalias !1398
  %i.ri = getelementptr i8, ptr %next.gep1488, i64 16
  store <2 x i64> %wide.load1490, ptr %next.gep1488, align 8, !tbaa !13, !alias.scope !1406, !noalias !1403
  store <2 x i64> %wide.load1491, ptr %i.ri, align 8, !tbaa !13, !alias.scope !1406, !noalias !1403
  %i.rj = getelementptr i8, ptr %next.gep1489, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1489, align 8, !tbaa !13, !alias.scope !1403, !noalias !1398
  store <2 x ptr> splat (ptr null), ptr %i.rj, align 8, !tbaa !13, !alias.scope !1403, !noalias !1398
  %index.next1492 = add nuw i64 %index1487, 4     ; 2 uses
  %i.rk = icmp eq i64 %index.next1492, %n.vec1485
  br i1 %i.rk, label %middle.block1493, label %vector.body1486, !llvm.loop !1408

middle.block1493:                                 ; preds = %vector.body1486
  %cmp.n1494 = icmp eq i64 %i.qy, %n.vec1485
  br i1 %cmp.n1494, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i494, label %.lr.ph.i.i.i.i.i.i.i490.preheader1559

.lr.ph.i.i.i.i.i.i.i490.preheader1559:            ; preds = %vector.memcheck1475, %.lr.ph.i.i.i.i.i.i.i490.preheader, %middle.block1493
  %.012.i.i.i.i.i.i.i491.ph = phi ptr [ %i.qs, %vector.memcheck1475 ], [ %i.qs, %.lr.ph.i.i.i.i.i.i.i490.preheader ], [ %i.re, %middle.block1493 ]
  %.0911.i.i.i.i.i.i.i492.ph = phi ptr [ %i.qh, %vector.memcheck1475 ], [ %i.qh, %.lr.ph.i.i.i.i.i.i.i490.preheader ], [ %i.rf, %middle.block1493 ]
  br label %.lr.ph.i.i.i.i.i.i.i490

.lr.ph.i.i.i.i.i.i.i490:                          ; preds = %.lr.ph.i.i.i.i.i.i.i490.preheader1559, %.lr.ph.i.i.i.i.i.i.i490
  %.012.i.i.i.i.i.i.i491 = phi ptr [ %i.rn, %.lr.ph.i.i.i.i.i.i.i490 ], [ %.012.i.i.i.i.i.i.i491.ph, %.lr.ph.i.i.i.i.i.i.i490.preheader1559 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i492 = phi ptr [ %i.rm, %.lr.ph.i.i.i.i.i.i.i490 ], [ %.0911.i.i.i.i.i.i.i492.ph, %.lr.ph.i.i.i.i.i.i.i490.preheader1559 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.rl = load i64, ptr %.0911.i.i.i.i.i.i.i492, align 8, !tbaa !13, !alias.scope !1401, !noalias !1398
  store i64 %i.rl, ptr %.012.i.i.i.i.i.i.i491, align 8, !tbaa !13, !alias.scope !1398, !noalias !1401
  store ptr null, ptr %.0911.i.i.i.i.i.i.i492, align 8, !tbaa !13, !alias.scope !1401, !noalias !1398
  %i.rm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i492, i64 8 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i491, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i493 = icmp eq ptr %i.rm, %i.qd
  br i1 %.not.i.i.i.i.i.i.i493, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i494, label %.lr.ph.i.i.i.i.i.i.i490, !llvm.loop !1409

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i494: ; preds = %.lr.ph.i.i.i.i.i.i.i490, %middle.block1493, %.noexc499
  %.0.lcssa.i.i.i.i.i.i.i495 = phi ptr [ %i.qs, %.noexc499 ], [ %i.re, %middle.block1493 ], [ %i.rn, %.lr.ph.i.i.i.i.i.i.i490 ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i495, i64 8 ; 5 uses
  %.not.i23.i.i.i496 = icmp eq ptr %i.qh, null
  br i1 %.not.i23.i.i.i496, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread1434, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread1434: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i494
  store ptr %i.qs, ptr %52, align 8, !tbaa !213
  store ptr %i.ro, ptr %i.ng, align 8, !tbaa !211
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %i.qq ; 2 uses
  store ptr %i.rp, ptr %i.ni, align 8, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i494
  call void @_ZdlPv(ptr noundef nonnull %i.qh) #25
  %.pre.pre = load ptr, ptr %60, align 8, !tbaa !522 ; 3 uses
  store ptr %i.qs, ptr %52, align 8, !tbaa !213
  store ptr %i.ro, ptr %i.ng, align 8, !tbaa !211
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %i.qq ; 3 uses
  store ptr %i.rq, ptr %i.ni, align 8, !tbaa !212
  %.not.i504 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i504, label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506, label %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i505

_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i505: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503
  %i.rr = load ptr, ptr %.pre.pre, align 8, !tbaa !10
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rt = load ptr, ptr %i.rs, align 8
  call void %i.rt(ptr noundef nonnull align 8 dereferenceable(512) %.pre.pre) #23, !inline_history !536
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506

_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread1434, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i505
  %i.ru = phi ptr [ %i.qg, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread ], [ %i.ro, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503 ], [ %i.ro, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i505 ], [ %i.ro, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread1434 ]
  %i.rv = phi ptr [ %i.qe, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread ], [ %i.rq, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503 ], [ %i.rq, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i505 ], [ %i.rp, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread1434 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  %i.rw = load ptr, ptr %59, align 8, !tbaa !213  ; 4 uses
  %i.rx = load ptr, ptr %i.oy, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i507 = icmp eq ptr %i.rw, %i.rx
  br i1 %.not4.i.i.i507, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i516, label %.lr.ph.i.i.i508

.lr.ph.i.i.i508:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i512
  %.05.i.i.i509 = phi ptr [ %i.sc, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i512 ], [ %i.rw, %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506 ] ; 2 uses
  %i.ry = load ptr, ptr %.05.i.i.i509, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i510 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i.i.i.i510, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i512, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i511

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i511: ; preds = %.lr.ph.i.i.i508
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !10
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(88) %i.ry) #23, !inline_history !518
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i512

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i512: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i511, %.lr.ph.i.i.i508
  %i.sc = getelementptr inbounds nuw i8, ptr %.05.i.i.i509, i64 8 ; 2 uses
  %.not.i.i.i513 = icmp eq ptr %i.sc, %i.rx
  br i1 %.not.i.i.i513, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i516, label %.lr.ph.i.i.i508, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i516: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i512, %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506
  %.not.i.i1.i517 = icmp eq ptr %i.rw, null
  br i1 %.not.i.i1.i517, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit518, label %bb.dm

bb.dm:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i516
  call void @_ZdlPv(ptr noundef nonnull %i.rw) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit518

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit518: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i516, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  br label %bb.dx

bb.dn:                                            ; preds = %bb.cf
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %bb.hx

bb.do:                                            ; preds = %bb.cg
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %bb.hx

bb.dp:                                            ; preds = %bb.ch
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %.body404

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit521: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i408
  %i.sg = landingpad { ptr, i32 }
          cleanup
  %i.sh = load ptr, ptr %i.ls, align 8, !tbaa !10
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sj = load ptr, ptr %i.si, align 8
  call void %i.sj(ptr noundef nonnull align 8 dereferenceable(88) %i.ls) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit847

bb.dq:                                            ; preds = %.noexc421
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.dr:                                            ; preds = %bb.cm
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit844

bb.ds:                                            ; preds = %bb.cn
  %i.sm = landingpad { ptr, i32 }
          cleanup
  %i.sn = load ptr, ptr %58, align 8, !tbaa !13   ; 3 uses
  %.not.i522 = icmp eq ptr %i.sn, null
  br i1 %.not.i522, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit524, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i523

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i523: ; preds = %bb.ds
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !10
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8
  call void %i.sq(ptr noundef nonnull align 8 dereferenceable(88) %i.sn) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit524

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit524: ; preds = %bb.ds, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i523
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %57) #23
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %56) #23
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit844

bb.dt:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i447, %bb.cy
  %i.sr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i525 = icmp eq ptr %i.nf, null
  br i1 %.not.i525, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit527, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i526

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i526: ; preds = %bb.dt
  %i.ss = load ptr, ptr %i.nf, align 8, !tbaa !10
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.su = load ptr, ptr %i.st, align 8
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(88) %i.nf) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit527

bb.du:                                            ; preds = %bb.da
  %i.sv = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN6duckdbL24PlanUncorrelatedSubqueryERNS_6BinderERNS_23BoundSubqueryExpressionERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS5_ELb1EEES8_:bb.a
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.uz)
          to label %bb.et unwind label %bb.eu, !noalias !1416

bb.et:                                            ; preds = %.noexc573
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.uy, ptr noundef nonnull %15, i64 %i.tl, i64 1, i64 noundef 0)
          to label %bb.ex unwind label %bb.ev, !noalias !1416

bb.eu:                                            ; preds = %.noexc573
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %bb.et
  %i.vb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #23, !noalias !1416
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.pn.i569 = phi { ptr, i32 } [ %i.vb, %bb.ev ], [ %i.va, %bb.eu ]
  call void @_ZdlPv(ptr noundef nonnull %i.uy) #25, !noalias !1416
  br label %.body574

bb.ex:                                            ; preds = %bb.et
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #23, !noalias !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #23
  invoke void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %67, i64 noundef 1)
          to label %bb.ey unwind label %bb.ha

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.vc = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc577 unwind label %bb.hb ; 5 uses

.noexc577:                                        ; preds = %bb.ey
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %67) #23, !noalias !1419
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.vc, ptr noundef nonnull %14)
          to label %bb.fa unwind label %bb.ez, !noalias !1419

bb.ez:                                            ; preds = %.noexc577
  %i.vd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #23, !noalias !1419
  call void @_ZdlPv(ptr noundef nonnull %i.vc) #25, !noalias !1419
  br label %.body578

bb.fa:                                            ; preds = %.noexc577
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #23, !noalias !1419
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %67) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.ve = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26
          to label %.noexc592 unwind label %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i770 ; 6 uses

.noexc592:                                        ; preds = %bb.fa
  store ptr %i.uy, ptr %12, align 8, !tbaa !266, !noalias !1422
  store ptr %i.vc, ptr %13, align 8, !tbaa !266, !noalias !1422
  invoke void @_ZN6duckdb25BoundComparisonExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(104) %i.ve, i8 noundef zeroext 28, ptr noundef nonnull %12, ptr noundef nonnull %13)
          to label %bb.fb unwind label %bb.fc, !noalias !1422

bb.fb:                                            ; preds = %.noexc592
  %i.vf = load ptr, ptr %13, align 8, !tbaa !13, !noalias !1422 ; 3 uses
  %.not.i.i587 = icmp eq ptr %i.vf, null
  br i1 %.not.i.i587, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i589, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i588

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i588: ; preds = %bb.fb
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !10, !noalias !1422
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8, !noalias !1422
  call void %i.vi(ptr noundef nonnull align 8 dereferenceable(88) %i.vf) #23, !noalias !1422, !inline_history !1379
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i589

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i589: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i588, %bb.fb
  %i.vj = load ptr, ptr %12, align 8, !tbaa !13, !noalias !1422 ; 3 uses
  %.not.i5.i590 = icmp eq ptr %i.vj, null
  br i1 %.not.i5.i590, label %bb.fd, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i591

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i591: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i589
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !10, !noalias !1422
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8, !noalias !1422
  call void %i.vm(ptr noundef nonnull align 8 dereferenceable(88) %i.vj) #23, !noalias !1422, !inline_history !1379
  br label %bb.fd

bb.fc:                                            ; preds = %.noexc592
  %i.vn = landingpad { ptr, i32 }
          cleanup
  %i.vo = load ptr, ptr %13, align 8, !tbaa !13, !noalias !1422 ; 3 uses
  %.not.i8.i581 = icmp eq ptr %i.vo, null
  br i1 %.not.i8.i581, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i583, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i582

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i582: ; preds = %bb.fc
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !10, !noalias !1422
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vr = load ptr, ptr %i.vq, align 8, !noalias !1422
  call void %i.vr(ptr noundef nonnull align 8 dereferenceable(88) %i.vo) #23, !noalias !1422, !inline_history !1379
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i583

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i583: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i582, %bb.fc
  %i.vs = load ptr, ptr %12, align 8, !tbaa !13, !noalias !1422 ; 3 uses
  %.not.i11.i584 = icmp eq ptr %i.vs, null
  br i1 %.not.i11.i584, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i586, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i585

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i585: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i583
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !10, !noalias !1422
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vv = load ptr, ptr %i.vu, align 8, !noalias !1422
  call void %i.vv(ptr noundef nonnull align 8 dereferenceable(88) %i.vs) #23, !noalias !1422, !inline_history !1379
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i586

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i586: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i585, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i583
  call void @_ZdlPv(ptr noundef nonnull %i.ve) #25, !noalias !1422
  br label %.body574

bb.fd:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i591, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i589
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %68, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #23
  invoke void @_ZN6duckdb5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %69, ptr noundef nonnull @.str.45)
          to label %bb.fe unwind label %bb.hd

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.vw = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc596 unwind label %bb.he ; 6 uses

.noexc596:                                        ; preds = %bb.fe
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %69) #23, !noalias !1425
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.vw, ptr noundef nonnull %11)
          to label %bb.fg unwind label %bb.ff, !noalias !1425

bb.ff:                                            ; preds = %.noexc596
  %i.vx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #23, !noalias !1425
  call void @_ZdlPv(ptr noundef nonnull %i.vw) #25, !noalias !1425
  br label %.body597

bb.fg:                                            ; preds = %.noexc596
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #23, !noalias !1425
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.vy = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 4 uses
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !211 ; 6 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 3 uses
  %i.wb = load ptr, ptr %i.wa, align 16, !tbaa !212
  %.not.i.i600 = icmp eq ptr %i.vz, %i.wb
  br i1 %.not.i.i600, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.wc = ptrtoint ptr %i.vw to i64
  store i64 %i.wc, ptr %i.vz, align 8, !tbaa !13
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  store ptr %i.wd, ptr %i.vy, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit621

bb.fi:                                            ; preds = %bb.fg
  %i.we = load ptr, ptr %68, align 16, !tbaa !213 ; 10 uses
  %i.wf = ptrtoint ptr %i.vz to i64               ; 3 uses
  %i.wg = ptrtoint ptr %i.we to i64               ; 3 uses
  %i.wh = sub i64 %i.wf, %i.wg                    ; 3 uses
  %i.wi = icmp eq i64 %i.wh, 9223372036854775800
  br i1 %i.wi, label %bb.fj, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i601

bb.fj:                                            ; preds = %bb.fi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc613 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit750

.noexc613:                                        ; preds = %bb.fj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i601: ; preds = %bb.fi
  %i.wj = ashr exact i64 %i.wh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i602 = call i64 @llvm.umax.i64(i64 %i.wj, i64 1)
  %i.wk = add nsw i64 %.sroa.speculated.i.i.i.i602, %i.wj ; 2 uses
  %i.wl = icmp ult i64 %i.wk, %i.wj
  %i.wm = call i64 @llvm.umin.i64(i64 %i.wk, i64 1152921504606846975)
  %i.wn = select i1 %i.wl, i64 1152921504606846975, i64 %i.wm ; 3 uses
  %.not.i.i.i.i603 = icmp ne i64 %i.wn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i603)
  %i.wo = shl nuw nsw i64 %i.wn, 3
  %i.wp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wo) #26
          to label %.noexc614 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit750 ; 10 uses

.noexc614:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i601
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 %i.wh
  %i.wr = ptrtoint ptr %i.vw to i64
  store i64 %i.wr, ptr %i.wq, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i604 = icmp eq ptr %i.we, %i.vz
  br i1 %.not10.i.i.i.i.i.i.i604, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i609, label %.lr.ph.i.i.i.i.i.i.i605.preheader

.lr.ph.i.i.i.i.i.i.i605.preheader:                ; preds = %.noexc614
  %i.ws = sub i64 %i.wf, %i.wg
  %i.wt = add i64 %i.ws, -8                       ; 2 uses
  %i.wu = lshr i64 %i.wt, 3
  %i.wv = add nuw nsw i64 %i.wu, 1                ; 2 uses
  %min.iters.check1504 = icmp ult i64 %i.wt, 152
  br i1 %min.iters.check1504, label %.lr.ph.i.i.i.i.i.i.i605.preheader1557, label %vector.memcheck1497

vector.memcheck1497:                              ; preds = %.lr.ph.i.i.i.i.i.i.i605.preheader
  %i.ww = add i64 %i.wf, -8
  %i.wx = sub i64 %i.ww, %i.wg
  %i.wy = and i64 %i.wx, -8
  %i.wz = add i64 %i.wy, 8                        ; 2 uses
  %scevgep1498 = getelementptr i8, ptr %i.wp, i64 %i.wz
  %scevgep1499 = getelementptr i8, ptr %i.we, i64 %i.wz
  %bound01500 = icmp ult ptr %i.wp, %scevgep1499
  %bound11501 = icmp ult ptr %i.we, %scevgep1498
  %found.conflict1502 = and i1 %bound01500, %bound11501
  br i1 %found.conflict1502, label %.lr.ph.i.i.i.i.i.i.i605.preheader1557, label %vector.ph1505

vector.ph1505:                                    ; preds = %vector.memcheck1497
  %n.vec1507 = and i64 %i.wv, 4611686018427387900 ; 3 uses
  %i.xa = shl i64 %n.vec1507, 3                   ; 2 uses
  %i.xb = getelementptr i8, ptr %i.wp, i64 %i.xa  ; 2 uses
  %i.xc = getelementptr i8, ptr %i.we, i64 %i.xa
  br label %vector.body1508

vector.body1508:                                  ; preds = %vector.body1508, %vector.ph1505
  %index1509 = phi i64 [ 0, %vector.ph1505 ], [ %index.next1514, %vector.body1508 ] ; 2 uses
  %i.xd = shl i64 %index1509, 3                   ; 2 uses
  %next.gep1510 = getelementptr i8, ptr %i.wp, i64 %i.xd ; 2 uses
  %next.gep1511 = getelementptr i8, ptr %i.we, i64 %i.xd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  %i.xe = getelementptr i8, ptr %next.gep1511, i64 16
  %wide.load1512 = load <2 x i64>, ptr %next.gep1511, align 8, !tbaa !13, !alias.scope !1433, !noalias !1428
  %wide.load1513 = load <2 x i64>, ptr %i.xe, align 8, !tbaa !13, !alias.scope !1433, !noalias !1428
  %i.xf = getelementptr i8, ptr %next.gep1510, i64 16
  store <2 x i64> %wide.load1512, ptr %next.gep1510, align 8, !tbaa !13, !alias.scope !1436, !noalias !1433
  store <2 x i64> %wide.load1513, ptr %i.xf, align 8, !tbaa !13, !alias.scope !1436, !noalias !1433
  %i.xg = getelementptr i8, ptr %next.gep1511, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1511, align 8, !tbaa !13, !alias.scope !1433, !noalias !1428
  store <2 x ptr> splat (ptr null), ptr %i.xg, align 8, !tbaa !13, !alias.scope !1433, !noalias !1428
  %index.next1514 = add nuw i64 %index1509, 4     ; 2 uses
  %i.xh = icmp eq i64 %index.next1514, %n.vec1507
  br i1 %i.xh, label %middle.block1515, label %vector.body1508, !llvm.loop !1438

middle.block1515:                                 ; preds = %vector.body1508
  %cmp.n1516 = icmp eq i64 %i.wv, %n.vec1507
  br i1 %cmp.n1516, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i609, label %.lr.ph.i.i.i.i.i.i.i605.preheader1557

.lr.ph.i.i.i.i.i.i.i605.preheader1557:            ; preds = %vector.memcheck1497, %.lr.ph.i.i.i.i.i.i.i605.preheader, %middle.block1515
  %.012.i.i.i.i.i.i.i606.ph = phi ptr [ %i.wp, %vector.memcheck1497 ], [ %i.wp, %.lr.ph.i.i.i.i.i.i.i605.preheader ], [ %i.xb, %middle.block1515 ]
  %.0911.i.i.i.i.i.i.i607.ph = phi ptr [ %i.we, %vector.memcheck1497 ], [ %i.we, %.lr.ph.i.i.i.i.i.i.i605.preheader ], [ %i.xc, %middle.block1515 ]
  br label %.lr.ph.i.i.i.i.i.i.i605

.lr.ph.i.i.i.i.i.i.i605:                          ; preds = %.lr.ph.i.i.i.i.i.i.i605.preheader1557, %.lr.ph.i.i.i.i.i.i.i605
  %.012.i.i.i.i.i.i.i606 = phi ptr [ %i.xk, %.lr.ph.i.i.i.i.i.i.i605 ], [ %.012.i.i.i.i.i.i.i606.ph, %.lr.ph.i.i.i.i.i.i.i605.preheader1557 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i607 = phi ptr [ %i.xj, %.lr.ph.i.i.i.i.i.i.i605 ], [ %.0911.i.i.i.i.i.i.i607.ph, %.lr.ph.i.i.i.i.i.i.i605.preheader1557 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  %i.xi = load i64, ptr %.0911.i.i.i.i.i.i.i607, align 8, !tbaa !13, !alias.scope !1431, !noalias !1428
  store i64 %i.xi, ptr %.012.i.i.i.i.i.i.i606, align 8, !tbaa !13, !alias.scope !1428, !noalias !1431
  store ptr null, ptr %.0911.i.i.i.i.i.i.i607, align 8, !tbaa !13, !alias.scope !1431, !noalias !1428
  %i.xj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i607, i64 8 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i606, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i608 = icmp eq ptr %i.xj, %i.vz
  br i1 %.not.i.i.i.i.i.i.i608, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i609, label %.lr.ph.i.i.i.i.i.i.i605, !llvm.loop !1439

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i609: ; preds = %.lr.ph.i.i.i.i.i.i.i605, %middle.block1515, %.noexc614
  %.0.lcssa.i.i.i.i.i.i.i610 = phi ptr [ %i.wp, %.noexc614 ], [ %i.xb, %middle.block1515 ], [ %i.xk, %.lr.ph.i.i.i.i.i.i.i605 ]
  %i.xl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i610, i64 8
  %.not.i23.i.i.i611 = icmp eq ptr %i.we, null
  br i1 %.not.i23.i.i.i611, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i612, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i609
  call void @_ZdlPv(ptr noundef nonnull %i.we) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i612

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i612: ; preds = %bb.fk, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i609
  store ptr %i.wp, ptr %68, align 16, !tbaa !213
  store ptr %i.xl, ptr %i.vy, align 8, !tbaa !211
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.wn
  store ptr %i.xm, ptr %i.wa, align 16, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit621

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit621: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i612, %bb.fh
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %69) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #23
  invoke void @_ZN6duckdb8ErrorFun11GetFunctionEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ScalarFunction") align 8 %71)
          to label %bb.fl unwind label %bb.hf

bb.fl:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit621
  %i.xn = load <2 x ptr>, ptr %68, align 16, !tbaa !210
  store <2 x ptr> %i.xn, ptr %72, align 16, !tbaa !210
  %i.xo = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.xp = load ptr, ptr %i.wa, align 16, !tbaa !212
  store ptr %i.xp, ptr %i.xo, align 16, !tbaa !212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %68, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb14FunctionBinder18BindScalarFunctionENS_14ScalarFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEEbNS_12optional_ptrINS_6BinderELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %70, ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull %71, ptr noundef nonnull %72, i1 noundef zeroext false, ptr null)
          to label %bb.fm unwind label %bb.hg

bb.fm:                                            ; preds = %bb.fl
  %i.xq = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.xr = load ptr, ptr %72, align 16, !tbaa !213 ; 3 uses
  %i.xs = load ptr, ptr %i.xq, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i622 = icmp eq ptr %i.xr, %i.xs
  br i1 %.not4.i.i.i622, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i631, label %.lr.ph.i.i.i623

.lr.ph.i.i.i623:                                  ; preds = %bb.fm, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i627
  %.05.i.i.i624 = phi ptr [ %i.xx, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i627 ], [ %i.xr, %bb.fm ] ; 2 uses
  %i.xt = load ptr, ptr %.05.i.i.i624, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i625 = icmp eq ptr %i.xt, null
  br i1 %.not.i.i.i.i.i625, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i627, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i626

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i626: ; preds = %.lr.ph.i.i.i623
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !10
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xw = load ptr, ptr %i.xv, align 8
  call void %i.xw(ptr noundef nonnull align 8 dereferenceable(88) %i.xt) #23, !inline_history !518
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i627

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i627: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i626, %.lr.ph.i.i.i623
  %i.xx = getelementptr inbounds nuw i8, ptr %.05.i.i.i624, i64 8 ; 2 uses
  %.not.i.i.i628 = icmp eq ptr %i.xx, %i.xs
  br i1 %.not.i.i.i628, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i629, label %.lr.ph.i.i.i623, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i629: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i627
  %.pr.i630 = load ptr, ptr %72, align 16, !tbaa !213
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i631

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i631: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i629, %bb.fm
  %i.xy = phi ptr [ %.pr.i630, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i629 ], [ %i.xr, %bb.fm ] ; 2 uses
  %.not.i.i1.i632 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i1.i632, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit633, label %bb.fn

bb.fn:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i631
  call void @_ZdlPv(ptr noundef nonnull %i.xy) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit633

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit633: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i631, %bb.fn
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %71, align 8, !tbaa !10
  %i.xz = getelementptr inbounds nuw i8, ptr %71, i64 352
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i634 = icmp eq ptr %i.ya, null
  br i1 %.not.i.i.i.i634, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit633
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8 ; 4 uses
  %i.yc = load atomic i64, ptr %i.yb acquire, align 8 ; 2 uses
  %i.yd = icmp eq i64 %i.yc, 4294967297
  %i.ye = trunc i64 %i.yc to i32                  ; 2 uses
  br i1 %i.yd, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  store i32 0, ptr %i.yb, align 8, !tbaa !115
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ya, i64 12
  store i32 0, ptr %i.yf, align 4, !tbaa !117
  %i.yg = load ptr, ptr %i.ya, align 8, !tbaa !10
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8
  call void %i.yi(ptr noundef nonnull align 8 dereferenceable(16) %i.ya) #23, !inline_history !1440
  %i.yj = load ptr, ptr %i.ya, align 8, !tbaa !10
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 24
  %i.yl = load ptr, ptr %i.yk, align 8
  call void %i.yl(ptr noundef nonnull align 8 dereferenceable(16) %i.ya) #23, !inline_history !1440
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

bb.fq:                                            ; preds = %bb.fo
  %i.ym = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i635 = icmp eq i8 %i.ym, 0
  br i1 %.not.i.i.i.i.i635, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yn = add nsw i32 %i.ye, -1
  store i32 %i.yn, ptr %i.yb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i636

bb.fs:                                            ; preds = %bb.fq
  %i.yo = atomicrmw volatile add ptr %i.yb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i636

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i636: ; preds = %bb.fs, %bb.fr
  %.0.i.i.i.i.i.i637 = phi i32 [ %i.ye, %bb.fr ], [ %i.yo, %bb.fs ]
  %i.yp = icmp eq i32 %.0.i.i.i.i.i.i637, 1
  br i1 %i.yp, label %bb.ft, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, !prof !120

bb.ft:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i636
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ya) #23, !inline_history !1441
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i: ; preds = %bb.ft, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i636, %bb.fp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit633
  %i.yq = getelementptr inbounds nuw i8, ptr %71, i64 256
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !776 ; 2 uses
  %.not.i.i638 = icmp eq ptr %i.yr, null
  br i1 %.not.i.i638, label %_ZN6duckdb14ScalarFunctionD2Ev.exit, label %bb.fu

bb.fu:                                            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i
  %i.ys = getelementptr inbounds nuw i8, ptr %71, i64 240 ; 2 uses
  %i.yt = invoke noundef zeroext i1 %i.yr(ptr noundef nonnull align 8 dereferenceable(32) %i.ys, ptr noundef nonnull align 8 dereferenceable(32) %i.ys, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunctionD2Ev.exit unwind label %bb.fv, !inline_history !1441 ; 0 uses

bb.fv:                                            ; preds = %bb.fu
  %i.yu = landingpad { ptr, i32 }
          catch ptr null
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb14BoundStatementESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ci, %.lr.ph.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 136 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i17 ], [ %i.cj, %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 13 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  %i.ck = load i64, ptr %.0911.i.i.i.i19, align 8, !tbaa !360, !alias.scope !1736, !noalias !1733
  store i64 %i.ck, ptr %.012.i.i.i.i18, align 8, !tbaa !360, !alias.scope !1733, !noalias !1736
  store ptr null, ptr %.0911.i.i.i.i19, align 8, !tbaa !360, !alias.scope !1736, !noalias !1733
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8 ; 2 uses
  %i.cn = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !362, !alias.scope !1736, !noalias !1733
  store <2 x ptr> %i.cn, ptr %i.cl, align 8, !tbaa !362, !alias.scope !1733, !noalias !1736
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !363, !alias.scope !1736, !noalias !1733
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !363, !alias.scope !1733, !noalias !1736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false), !alias.scope !1736, !noalias !1733
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32 ; 2 uses
  %i.ct = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !364, !alias.scope !1736, !noalias !1733
  store <2 x ptr> %i.ct, ptr %i.cr, align 8, !tbaa !364, !alias.scope !1733, !noalias !1736
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !365, !alias.scope !1736, !noalias !1733
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !365, !alias.scope !1733, !noalias !1736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false), !alias.scope !1736, !noalias !1733
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 56
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 56
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !366, !alias.scope !1736, !noalias !1733
  store i8 %i.cz, ptr %i.cx, align 8, !tbaa !366, !alias.scope !1733, !noalias !1736
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.dc = load <2 x ptr>, ptr %i.db, align 8, !tbaa !385, !alias.scope !1736, !noalias !1733
  store <2 x ptr> %i.dc, ptr %i.da, align 8, !tbaa !385, !alias.scope !1733, !noalias !1736
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 80
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 80
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !386, !alias.scope !1736, !noalias !1733
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !386, !alias.scope !1733, !noalias !1736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false), !alias.scope !1736, !noalias !1733
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 88
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 88 ; 2 uses
  %i.di = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !387, !alias.scope !1736, !noalias !1733
  store <2 x ptr> %i.di, ptr %i.dg, align 8, !tbaa !387, !alias.scope !1733, !noalias !1736
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 104
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 104
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !388, !alias.scope !1736, !noalias !1733
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !388, !alias.scope !1733, !noalias !1736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false), !alias.scope !1736, !noalias !1733
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 112
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 112 ; 2 uses
  %i.do = load <2 x ptr>, ptr %i.dn, align 8, !tbaa !160, !alias.scope !1736, !noalias !1733
  store <2 x ptr> %i.do, ptr %i.dm, align 8, !tbaa !160, !alias.scope !1733, !noalias !1736
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 128
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 128
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !181, !alias.scope !1736, !noalias !1733
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !181, !alias.scope !1733, !noalias !1736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i8 0, i64 24, i1 false), !alias.scope !1736, !noalias !1733
  tail call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.0911.i.i.i.i19) #23, !noalias !1733
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 136 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 136 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ds, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !1732

_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.cj, %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.dt, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb14BoundStatementESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #25
  br label %_ZNSt12_Vector_baseIN6duckdb14BoundStatementESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb14BoundStatementESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !663
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !664
  %i.dv = getelementptr inbounds nuw [136 x i8], ptr %i.p, i64 %i.l
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !388
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !150    ; 13 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1738 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1739
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8, !tbaa !296
  store i64 %i.j, ptr %i.f, align 8, !tbaa !296
  store ptr null, ptr %2, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !1738
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !296
  store i64 %i.n, ptr %i.f, align 8, !tbaa !296
  store ptr null, ptr %i.m, align 8, !tbaa !296
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %i.e, align 8, !tbaa !1738
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.b
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aa, %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.u, %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.f, %bb.d ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.t, %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.m, %bb.d ]
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !296
  store ptr null, ptr %i.t, align 8, !tbaa !296
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !296  ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !296
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.w) #23, !inline_history !1740
  br label %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i

_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.aa = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.ab = icmp sgt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !1741

_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i, %bb.d
  %i.ac = load ptr, ptr %2, align 8, !tbaa !296
  store ptr null, ptr %2, align 8, !tbaa !296
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !296 ; 3 uses
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !296
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit, label %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ad) #23, !inline_history !1742
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit

bb.e:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %i.a, i64 %i.d    ; 4 uses
  %i.ai = ptrtoint ptr %i.f to i64                ; 3 uses
  %i.aj = sub i64 %i.ai, %i.c                     ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #26 ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.d
  %i.at = load i64, ptr %2, align 8, !tbaa !296
  store i64 %i.at, ptr %i.as, align 8, !tbaa !296
  store ptr null, ptr %2, align 8, !tbaa !296
  %.not10.i.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.au = sub i64 %i.b, %i.c
  %i.av = add i64 %i.au, -8                       ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader50, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ay = add i64 %i.b, -8
  %i.az = sub i64 %i.ay, %i.c
  %i.ba = and i64 %i.az, -8
  %i.bb = add i64 %i.ba, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.bb
  %scevgep23 = getelementptr i8, ptr %i.a, i64 %i.bb
  %bound0 = icmp ult ptr %i.ar, %scevgep23
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ar, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.a, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bf ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.a, i64 %i.bf ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.bg = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !296, !alias.scope !1748, !noalias !1743
  %wide.load25 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !296, !alias.scope !1748, !noalias !1743
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !296, !alias.scope !1751, !noalias !1748
  store <2 x i64> %wide.load25, ptr %i.bh, align 8, !tbaa !296, !alias.scope !1751, !noalias !1748
  %i.bi = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !296, !alias.scope !1748, !noalias !1743
  store <2 x ptr> splat (ptr null), ptr %i.bi, align 8, !tbaa !296, !alias.scope !1748, !noalias !1743
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1753

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.preheader50:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader50 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader50 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.bk = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !296, !alias.scope !1746, !noalias !1743
  store i64 %i.bk, ptr %.012.i.i.i.i.i, align 8, !tbaa !296, !alias.scope !1743, !noalias !1746
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !296, !alias.scope !1746, !noalias !1743
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, %1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1754

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ar, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.bd, %middle.block ], [ %i.bm, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i.i16.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i.i16.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i17.i.preheader

.lr.ph.i.i.i.i17.i.preheader:                     ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.bo = sub i64 %i.ai, %i.b
  %i.bp = add i64 %i.bo, -8                       ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check34 = icmp ult i64 %i.bp, 216
  br i1 %min.iters.check34, label %.lr.ph.i.i.i.i17.i.preheader49, label %vector.memcheck27

vector.memcheck27:                                ; preds = %.lr.ph.i.i.i.i17.i.preheader
  %i.bs = add i64 %i.ai, -8
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = and i64 %i.bt, -8                       ; 2 uses
  %i.bv = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.bu
  %scevgep28 = getelementptr i8, ptr %i.bv, i64 16
  %i.bw = add i64 %i.bu, %i.b
  %i.bx = add i64 %i.bw, 8
  %i.by = sub i64 %i.bx, %i.c
  %scevgep29 = getelementptr i8, ptr %i.a, i64 %i.by
  %bound030 = icmp ult ptr %i.bn, %scevgep29
  %bound131 = icmp ult ptr %1, %scevgep28
  %found.conflict32 = and i1 %bound030, %bound131
  br i1 %found.conflict32, label %.lr.ph.i.i.i.i17.i.preheader49, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck27
  %n.vec37 = and i64 %i.br, 4611686018427387900   ; 3 uses
  %i.bz = shl i64 %n.vec37, 3                     ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bn, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ah, i64 %i.bz
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph35
  %index39 = phi i64 [ 0, %vector.ph35 ], [ %index.next44, %vector.body38 ] ; 2 uses
  %i.cc = shl i64 %index39, 3                     ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.bn, i64 %i.cc ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.ah, i64 %i.cc ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %i.cd = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load42 = load <2 x i64>, ptr %next.gep41, align 8, !tbaa !296, !alias.scope !1760, !noalias !1755
  %wide.load43 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !296, !alias.scope !1760, !noalias !1755
  %i.ce = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x i64> %wide.load42, ptr %next.gep40, align 8, !tbaa !296, !alias.scope !1763, !noalias !1760
  store <2 x i64> %wide.load43, ptr %i.ce, align 8, !tbaa !296, !alias.scope !1763, !noalias !1760
  %i.cf = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !tbaa !296, !alias.scope !1760, !noalias !1755
  store <2 x ptr> splat (ptr null), ptr %i.cf, align 8, !tbaa !296, !alias.scope !1760, !noalias !1755
  %index.next44 = add nuw i64 %index39, 4         ; 2 uses
  %i.cg = icmp eq i64 %index.next44, %n.vec37
  br i1 %i.cg, label %middle.block45, label %vector.body38, !llvm.loop !1765

middle.block45:                                   ; preds = %vector.body38
  %cmp.n46 = icmp eq i64 %i.br, %n.vec37
  br i1 %cmp.n46, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i17.i.preheader49

.lr.ph.i.i.i.i17.i.preheader49:                   ; preds = %vector.memcheck27, %.lr.ph.i.i.i.i17.i.preheader, %middle.block45
  %.012.i.i.i.i18.i.ph = phi ptr [ %i.bn, %vector.memcheck27 ], [ %i.bn, %.lr.ph.i.i.i.i17.i.preheader ], [ %i.ca, %middle.block45 ]
  %.0911.i.i.i.i19.i.ph = phi ptr [ %i.ah, %vector.memcheck27 ], [ %i.ah, %.lr.ph.i.i.i.i17.i.preheader ], [ %i.cb, %middle.block45 ]
  br label %.lr.ph.i.i.i.i17.i

.lr.ph.i.i.i.i17.i:                               ; preds = %.lr.ph.i.i.i.i17.i.preheader49, %.lr.ph.i.i.i.i17.i
  %.012.i.i.i.i18.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i17.i ], [ %.012.i.i.i.i18.i.ph, %.lr.ph.i.i.i.i17.i.preheader49 ] ; 2 uses
  %.0911.i.i.i.i19.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i17.i ], [ %.0911.i.i.i.i19.i.ph, %.lr.ph.i.i.i.i17.i.preheader49 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %i.ch = load i64, ptr %.0911.i.i.i.i19.i, align 8, !tbaa !296, !alias.scope !1758, !noalias !1755
  store i64 %i.ch, ptr %.012.i.i.i.i18.i, align 8, !tbaa !296, !alias.scope !1755, !noalias !1758
  store ptr null, ptr %.0911.i.i.i.i19.i, align 8, !tbaa !296, !alias.scope !1758, !noalias !1755
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19.i, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i.i20.i = icmp eq ptr %i.ci, %i.f
  br i1 %.not.i.i.i.i20.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i17.i, !llvm.loop !1766

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i17.i, %middle.block45, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %.0.lcssa.i.i.i.i21.i = phi ptr [ %i.bn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i ], [ %i.ca, %middle.block45 ], [ %i.cj, %.lr.ph.i.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.g
  store ptr %i.ar, ptr %0, align 8, !tbaa !1767
  store ptr %.0.lcssa.i.i.i.i21.i, ptr %i.e, align 8, !tbaa !1738
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ck, ptr %i.g, align 8, !tbaa !1739
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i, %bb.c, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !1767
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.d
  ret ptr %i.cm
}

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_24DeprecatedUsingKeySyntaxEEET_PKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_10CTEBindingELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1027
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb19LogicalSetOperationC1EmmNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_NS_19LogicalOperatorTypeEbb(ptr noundef nonnull align 8 dereferenceable(122), i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19LogicalRecursiveCTEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmbNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEENS8_INS_15LogicalOperatorESA_ISF_ELb1EEESH_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !126
  %i.b = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !127  ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %8, align 8, !tbaa !103
  %i.i = load i64, ptr %i.c, align 8, !tbaa !119
  store i64 %i.i, ptr %i.a, align 8, !tbaa !119
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !127
  store ptr %i.c, ptr %1, align 8, !tbaa !103
  store i64 0, ptr %i.k, align 8, !tbaa !127
  store i8 0, ptr %i.c, align 8, !tbaa !119
  %i.m = load i64, ptr %6, align 8, !tbaa !360
  store i64 %i.m, ptr %9, align 8, !tbaa !360
  store ptr null, ptr %6, align 8, !tbaa !360
  %i.n = load i64, ptr %7, align 8, !tbaa !360
  store i64 %i.n, ptr %10, align 8, !tbaa !360
  store ptr null, ptr %7, align 8, !tbaa !360
  invoke void @_ZN6duckdb10LogicalCTEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS8_ELb1EEESB_NS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %10, i8 noundef zeroext 78)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.o = load ptr, ptr %10, align 8, !tbaa !360   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.o) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.s = load ptr, ptr %9, align 8, !tbaa !360    ; 3 uses
  %.not.i5 = icmp eq ptr %i.s, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit7, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i6

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i6: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.s) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit7

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit7: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i6
  %i.w = load ptr, ptr %8, align 8, !tbaa !103    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit7
  call void @_ZdlPv(ptr noundef %i.w) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = zext i1 %4 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb19LogicalRecursiveCTEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.y, ptr %i.z, align 8, !tbaa !1768
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = load <2 x ptr>, ptr %5, align 8, !tbaa !210
  store <2 x ptr> %i.ab, ptr %i.aa, align 8, !tbaa !210
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !212
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %10, align 8, !tbaa !360  ; 3 uses
  %.not.i8 = icmp eq ptr %i.ag, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i9

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i9: ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ag) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i9
  %i.ak = load ptr, ptr %9, align 8, !tbaa !360   ; 3 uses
  %.not.i11 = icmp eq ptr %i.ak, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit13, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i12

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i12: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ak) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit13

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit13: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i12
  %i.ao = load ptr, ptr %8, align 8, !tbaa !103   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.a
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit13
  call void @_ZdlPv(ptr noundef %i.ao) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10LogicalCTEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS8_ELb1EEESB_NS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(97) %0, i8 noundef zeroext %6)
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb10LogicalCTEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !126
  %i.c = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !127  ; 2 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !103
  %i.j = load i64, ptr %i.d, align 8, !tbaa !119
  store i64 %i.j, ptr %i.b, align 8, !tbaa !119
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !127
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.l, ptr %i.m, align 8, !tbaa !127
  store ptr %i.d, ptr %1, align 8, !tbaa !103
  store i64 0, ptr %i.k, align 8, !tbaa !127
  store i8 0, ptr %i.d, align 8, !tbaa !119
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %2, ptr %i.n, align 8, !tbaa !1769
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %3, ptr %i.o, align 8, !tbaa !1770
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 -9223372036854775808, ptr %i.q, align 8, !tbaa !1509
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !896  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !897  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.w = load i64, ptr %4, align 8, !tbaa !360
  store i64 %i.w, ptr %i.t, align 8, !tbaa !360
  store ptr null, ptr %4, align 8, !tbaa !360
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !898  ; 10 uses
  %i.z = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #26
          to label %.noexc5 unwind label %bb.i    ; 10 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  %i.al = load i64, ptr %4, align 8, !tbaa !360
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !360
  store ptr null, ptr %4, align 8, !tbaa !360
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.t
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc5
  %i.am = sub i64 %i.z, %i.aa
  %i.an = add i64 %i.am, -8                       ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aq = add i64 %i.z, -8
  %i.ar = sub i64 %i.aq, %i.aa
  %i.as = and i64 %i.ar, -8
  %i.at = add i64 %i.as, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.at
  %scevgep38 = getelementptr i8, ptr %i.y, i64 %i.at
  %bound0 = icmp ult ptr %i.aj, %scevgep38
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.aj, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.y, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.ax ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.y, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  %i.ay = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep39, align 8, !tbaa !360, !alias.scope !1776, !noalias !1771
  %wide.load40 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !360, !alias.scope !1776, !noalias !1771
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !360, !alias.scope !1779, !noalias !1776
  store <2 x i64> %wide.load40, ptr %i.az, align 8, !tbaa !360, !alias.scope !1779, !noalias !1776
  %i.ba = getelementptr i8, ptr %next.gep39, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep39, align 8, !tbaa !360, !alias.scope !1776, !noalias !1771
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !360, !alias.scope !1776, !noalias !1771
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1781

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader65

.lr.ph.i.i.i.i.i.i.i.preheader65:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader65, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader65 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader65 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !360, !alias.scope !1774, !noalias !1771
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !360, !alias.scope !1771, !noalias !1774
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !360, !alias.scope !1774, !noalias !1771
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.t
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1782

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.noexc5 ], [ %i.av, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !898
  store ptr %i.bf, ptr %i.s, align 8, !tbaa !896
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah ; 2 uses
  store ptr %i.bg, ptr %i.u, align 8, !tbaa !897
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.c
  %i.bh = phi ptr [ %i.bg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.v, %bb.c ] ; 4 uses
  %i.bi = phi ptr [ %i.bf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.x, %bb.c ] ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bj = load i64, ptr %5, align 8, !tbaa !360
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !360
  store ptr null, ptr %5, align 8, !tbaa !360
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bk, ptr %i.s, align 8, !tbaa !896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !898 ; 10 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i7

.invoke:                                          ; preds = %bb.g, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i7: ; preds = %bb.g
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i8 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i8, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i9 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i9)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26
          to label %.noexc20 unwind label %bb.i   ; 10 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  %i.by = load i64, ptr %5, align 8, !tbaa !360
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !360
  store ptr null, ptr %5, align 8, !tbaa !360
  %.not10.i.i.i.i.i.i.i10 = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i.i.i10, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i15, label %.lr.ph.i.i.i.i.i.i.i11.preheader

.lr.ph.i.i.i.i.i.i.i11.preheader:                 ; preds = %.noexc20
  %i.bz = sub i64 %i.bm, %i.bn
  %i.ca = add i64 %i.bz, -8                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check49 = icmp ult i64 %i.ca, 152
  br i1 %min.iters.check49, label %.lr.ph.i.i.i.i.i.i.i11.preheader64, label %vector.memcheck42

vector.memcheck42:                                ; preds = %.lr.ph.i.i.i.i.i.i.i11.preheader
  %i.cd = add i64 %i.bm, -8
  %i.ce = sub i64 %i.cd, %i.bn
  %i.cf = and i64 %i.ce, -8
  %i.cg = add i64 %i.cf, 8                        ; 2 uses
  %scevgep43 = getelementptr i8, ptr %i.bw, i64 %i.cg
  %scevgep44 = getelementptr i8, ptr %i.bl, i64 %i.cg
  %bound045 = icmp ult ptr %i.bw, %scevgep44
  %bound146 = icmp ult ptr %i.bl, %scevgep43
  %found.conflict47 = and i1 %bound045, %bound146
  br i1 %found.conflict47, label %.lr.ph.i.i.i.i.i.i.i11.preheader64, label %vector.ph50

vector.ph50:                                      ; preds = %vector.memcheck42
  %n.vec52 = and i64 %i.cc, 4611686018427387900   ; 3 uses
  %i.ch = shl i64 %n.vec52, 3                     ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bw, i64 %i.ch  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bl, i64 %i.ch
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph50
  %index54 = phi i64 [ 0, %vector.ph50 ], [ %index.next59, %vector.body53 ] ; 2 uses
  %i.ck = shl i64 %index54, 3                     ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.bw, i64 %i.ck ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.bl, i64 %i.ck ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %i.cl = getelementptr i8, ptr %next.gep56, i64 16
  %wide.load57 = load <2 x i64>, ptr %next.gep56, align 8, !tbaa !360, !alias.scope !1788, !noalias !1783
  %wide.load58 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !360, !alias.scope !1788, !noalias !1783
  %i.cm = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x i64> %wide.load57, ptr %next.gep55, align 8, !tbaa !360, !alias.scope !1791, !noalias !1788
  store <2 x i64> %wide.load58, ptr %i.cm, align 8, !tbaa !360, !alias.scope !1791, !noalias !1788
  %i.cn = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep56, align 8, !tbaa !360, !alias.scope !1788, !noalias !1783
  store <2 x ptr> splat (ptr null), ptr %i.cn, align 8, !tbaa !360, !alias.scope !1788, !noalias !1783
  %index.next59 = add nuw i64 %index54, 4         ; 2 uses
  %i.co = icmp eq i64 %index.next59, %n.vec52
  br i1 %i.co, label %middle.block60, label %vector.body53, !llvm.loop !1793

middle.block60:                                   ; preds = %vector.body53
  %cmp.n61 = icmp eq i64 %i.cc, %n.vec52
  br i1 %cmp.n61, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i15, label %.lr.ph.i.i.i.i.i.i.i11.preheader64

.lr.ph.i.i.i.i.i.i.i11.preheader64:               ; preds = %vector.memcheck42, %.lr.ph.i.i.i.i.i.i.i11.preheader, %middle.block60
  %.012.i.i.i.i.i.i.i12.ph = phi ptr [ %i.bw, %vector.memcheck42 ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i11.preheader ], [ %i.ci, %middle.block60 ]
  %.0911.i.i.i.i.i.i.i13.ph = phi ptr [ %i.bl, %vector.memcheck42 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i11.preheader ], [ %i.cj, %middle.block60 ]
  br label %.lr.ph.i.i.i.i.i.i.i11

.lr.ph.i.i.i.i.i.i.i11:                           ; preds = %.lr.ph.i.i.i.i.i.i.i11.preheader64, %.lr.ph.i.i.i.i.i.i.i11
  %.012.i.i.i.i.i.i.i12 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i11 ], [ %.012.i.i.i.i.i.i.i12.ph, %.lr.ph.i.i.i.i.i.i.i11.preheader64 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i13 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i11 ], [ %.0911.i.i.i.i.i.i.i13.ph, %.lr.ph.i.i.i.i.i.i.i11.preheader64 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %i.cp = load i64, ptr %.0911.i.i.i.i.i.i.i13, align 8, !tbaa !360, !alias.scope !1786, !noalias !1783
  store i64 %i.cp, ptr %.012.i.i.i.i.i.i.i12, align 8, !tbaa !360, !alias.scope !1783, !noalias !1786
  store ptr null, ptr %.0911.i.i.i.i.i.i.i13, align 8, !tbaa !360, !alias.scope !1786, !noalias !1783
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i13, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i12, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i14 = icmp eq ptr %i.cq, %i.bh
  br i1 %.not.i.i.i.i.i.i.i14, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i15, label %.lr.ph.i.i.i.i.i.i.i11, !llvm.loop !1794

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i15: ; preds = %.lr.ph.i.i.i.i.i.i.i11, %middle.block60, %.noexc20
  %.0.lcssa.i.i.i.i.i.i.i16 = phi ptr [ %i.bw, %.noexc20 ], [ %i.ci, %middle.block60 ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i11 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i16, i64 8
  %.not.i23.i.i.i17 = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i.i17, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i18, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i15
  tail call void @_ZdlPv(ptr noundef nonnull %i.bl) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i18

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i18: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i15
  store ptr %i.bw, ptr %i.r, align 8, !tbaa !898
  store ptr %i.cs, ptr %i.s, align 8, !tbaa !896
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.ct, ptr %i.u, align 8, !tbaa !897
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i18, %bb.f
  ret void

bb.i:                                             ; preds = %.invoke, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i7, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb17CorrelatedColumnsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.p) #23
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.b
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef %i.cv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN6duckdb15LogicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %0) #23
  resume { ptr, i32 } %i.cu
}

declare void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(97), i8 noundef zeroext) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17CorrelatedColumnsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1514   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1507 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #25
  br label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1606

_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !1514
  br label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb20CorrelatedColumnInfoESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #25
  br label %_ZNSt6vectorIN6duckdb20CorrelatedColumnInfoESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb20CorrelatedColumnInfoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb15LogicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10LogicalCTED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb10LogicalCTEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1514 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1507 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.f) #25
  br label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #23
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1606

_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !1514
  br label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb17CorrelatedColumnsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #25
  br label %_ZN6duckdb17CorrelatedColumnsD2Ev.exit

_ZN6duckdb17CorrelatedColumnsD2Ev.exit:           ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !103  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_4
