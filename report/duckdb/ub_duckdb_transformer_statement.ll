inline.NumInlined: 9726
inline.NumDeleted: 5291
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2IPKS5_EET_SL_mRKSB_RKSA_RKS6_St17integral_constantIbLb1EE:bb.a
  %.not7.i.i = icmp eq ptr %1, %2
  br i1 %.not7.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSB_RKSA_RKS6_.exit, %.noexc
  %.08.i.i = phi ptr [ %i.p, %.noexc ], [ %1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSB_RKSA_RKS6_.exit ] ; 3 uses
  %i.o = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SK_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %2
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !2508

.loopexit:                                        ; preds = %.noexc, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSB_RKSA_RKS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #23
  br label %common.resume
}

declare void @_ZN6duckdb20SetVariableStatementC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS8_ELb1EEENS_8SetScopeE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr noundef, i8 noundef zeroext) unnamed_addr #4

declare void @_ZN6duckdb16RenameColumnInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb15RenameFieldInfoC1ENS_14AlterEntryDataENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEES8_(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb15RenameTableInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb14RenameViewInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb15BinderExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZN6duckdb16CreateSecretInfoC1ENS_16OnCreateConflictENS_17SecretPersistTypeE(ptr noundef nonnull align 8 dereferenceable(472), i8 noundef zeroext, i8 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery14PGLimitPercentELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1904
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.183, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
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

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1967   ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1942 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1943
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8
  store i64 %i.j, ptr %i.f, align 8
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !1942
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.e, align 8, !tbaa !1942
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %i.f, align 8
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !1942 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.e, align 8, !tbaa !1942
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.b                       ; 3 uses
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %i.v = icmp sgt i64 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.f, !prof !386

bb.e:                                             ; preds = %bb.d
  %i.w = sub nsw i64 0, %i.u
  %i.x = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.m, i64 %i.t, i1 false)
  br label %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %i.t, 8
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.m, align 8
  store i64 %i.z, ptr %i.r, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_.exit

_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aa = load i64, ptr %2, align 8
  store i64 %i.aa, ptr %i.m, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.ac = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.ad = sub i64 %i.ac, %i.c                     ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.i, label %_ZNKSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #25 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.d
  %i.an = load i64, ptr %2, align 8
  store i64 %i.an, ptr %i.am, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.ao = ptrtoaddr ptr %i.al to i64
  %i.ap = sub i64 %i.b, %i.c
  %i.aq = add i64 %i.ap, -8                       ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 72
  %i.at = sub i64 %i.c, %i.ao
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.a, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.a, i64 %i.ax ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  %i.ay = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 8, !alias.scope !2512, !noalias !2509
  %wide.load22 = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !2512, !noalias !2509
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2509, !noalias !2512
  store <2 x i64> %wide.load22, ptr %i.az, align 8, !alias.scope !2509, !noalias !2512
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !2514

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.i.preheader44

.lr.ph.i.i.i.i.i.preheader44:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader44, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader44 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !2512, !noalias !2509
  store i64 %i.bb, ptr %.012.i.i.i.i.i, align 8, !alias.scope !2509, !noalias !2512
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2515

_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE12_M_check_lenEmPKc.exit.i ], [ %i.av, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i25 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i.i16.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i.i16.i, label %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i17.i.preheader

.lr.ph.i.i.i.i17.i.preheader:                     ; preds = %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.bf = sub i64 %i.ac, %i.b
  %i.bg = add i64 %i.bf, -8                       ; 2 uses
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check28 = icmp ult i64 %i.bg, 104
  br i1 %min.iters.check28, label %.lr.ph.i.i.i.i17.i.preheader43, label %vector.memcheck24

vector.memcheck24:                                ; preds = %.lr.ph.i.i.i.i17.i.preheader
  %3 = sub i64 %.0.lcssa.i.i.i.i.i25, %i.b
  %4 = add i64 %3, 7
  %diff.check26 = icmp ult i64 %4, 31
  br i1 %diff.check26, label %.lr.ph.i.i.i.i17.i.preheader43, label %vector.ph29

vector.ph29:                                      ; preds = %vector.memcheck24
  %n.vec31 = and i64 %i.bi, 4611686018427387900   ; 3 uses
  %i.bj = shl i64 %n.vec31, 3                     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.be, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ab, i64 %i.bj
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph29
  %index33 = phi i64 [ 0, %vector.ph29 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %i.bm = shl i64 %index33, 3                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.be, i64 %i.bm ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.ab, i64 %i.bm ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  %i.bn = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load36 = load <2 x i64>, ptr %next.gep35, align 8, !alias.scope !2519, !noalias !2516
  %wide.load37 = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !2519, !noalias !2516
  %i.bo = getelementptr i8, ptr %next.gep34, i64 16
  store <2 x i64> %wide.load36, ptr %next.gep34, align 8, !alias.scope !2516, !noalias !2519
  store <2 x i64> %wide.load37, ptr %i.bo, align 8, !alias.scope !2516, !noalias !2519
  %index.next38 = add nuw i64 %index33, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.bp, label %middle.block39, label %vector.body32, !llvm.loop !2521

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %i.bi, %n.vec31
  br i1 %cmp.n40, label %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i17.i.preheader43

.lr.ph.i.i.i.i17.i.preheader43:                   ; preds = %vector.memcheck24, %.lr.ph.i.i.i.i17.i.preheader, %middle.block39
  %.012.i.i.i.i18.i.ph = phi ptr [ %i.be, %vector.memcheck24 ], [ %i.be, %.lr.ph.i.i.i.i17.i.preheader ], [ %i.bk, %middle.block39 ]
  %.0911.i.i.i.i19.i.ph = phi ptr [ %i.ab, %vector.memcheck24 ], [ %i.ab, %.lr.ph.i.i.i.i17.i.preheader ], [ %i.bl, %middle.block39 ]
  br label %.lr.ph.i.i.i.i17.i

.lr.ph.i.i.i.i17.i:                               ; preds = %.lr.ph.i.i.i.i17.i.preheader43, %.lr.ph.i.i.i.i17.i
  %.012.i.i.i.i18.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i17.i ], [ %.012.i.i.i.i18.i.ph, %.lr.ph.i.i.i.i17.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i19.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i17.i ], [ %.0911.i.i.i.i19.i.ph, %.lr.ph.i.i.i.i17.i.preheader43 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  %i.bq = load i64, ptr %.0911.i.i.i.i19.i, align 8, !alias.scope !2519, !noalias !2516
  store i64 %i.bq, ptr %.012.i.i.i.i18.i, align 8, !alias.scope !2516, !noalias !2519
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i.i20.i = icmp eq ptr %i.br, %i.f
  br i1 %.not.i.i.i.i20.i, label %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i17.i, !llvm.loop !2522

_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i17.i, %middle.block39, %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.0.lcssa.i.i.i.i21.i = phi ptr [ %i.be, %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ], [ %i.bk, %middle.block39 ], [ %i.bs, %.lr.ph.i.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26
  br label %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit

_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, %bb.j
  store ptr %i.al, ptr %0, align 8, !tbaa !1939
  store ptr %.0.lcssa.i.i.i.i21.i, ptr %i.e, align 8, !tbaa !1942
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !1943
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_.exit, %_ZNSt6vectorISt17reference_wrapperIN17duckdb_libpgquery6PGNodeEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit
  %i.bu = load ptr, ptr %0, align 8, !tbaa !1939
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.d
  ret ptr %i.bv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery11PGWindowDefELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1780
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.183, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
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

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEESaISC_ENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSF_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, duckdb_libpgquery::PGWindowDef *>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, duckdb_libpgquery::PGWindowDef *>>, std::__detail::_Select1st, duckdb::CaseInsensitiveStringEquality, duckdb::CaseInsensitiveStringHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %3 = alloca %"class.std::tuple.1600", align 8   ; 4 uses
  %4 = alloca %"class.std::tuple.1589", align 1   ; 3 uses
  %i.a = tail call noundef i64 @_ZN6duckdb10StringUtil6CIHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1788
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !1789
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !383  ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN17duckdb_libpgquery11PGWindowDefEESaISB_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSF_33CaseInsensitiveStringHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !327  ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !381
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.p, %bb.d ]
  %.015.i.i = phi ptr [ %i.g, %bb.b ], [ %.0.i.i, %bb.d ]
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.d ] ; 3 uses
  %i.j = icmp eq i64 %i.a, %i.i
  br i1 %i.j, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSE_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSE_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSE_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.l = tail call noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.k)
  br i1 %i.l, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN17duckdb_libpgquery11PGWindowDefEESaISB_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSF_33CaseInsensitiveStringHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSE_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSE_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSE_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i, %bb.c
  %i.m = load ptr, ptr %.0.i.i, align 8, !tbaa !327 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.m, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN17duckdb_libpgquery11PGWindowDefEESaISB_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSF_33CaseInsensitiveStringHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSE_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i
  %i.n = load i64, ptr %i.b, align 8, !tbaa !1788
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !381  ; 2 uses
  %i.q = urem i64 %i.p, %i.n
  %.not19.i.i = icmp eq i64 %i.q, %i.d
  br i1 %.not19.i.i, label %bb.c, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN17duckdb_libpgquery11PGWindowDefEESaISB_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSF_33CaseInsensitiveStringHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread, !llvm.loop !1790

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN17duckdb_libpgquery11PGWindowDefEESaISB_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSF_33CaseInsensitiveStringHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSE_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i
  %i.r = load ptr, ptr %.015.i.i, align 8, !tbaa !327 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN17duckdb_libpgquery11PGWindowDefEESaISB_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSF_33CaseInsensitiveStringHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread, label %bb.f

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN17duckdb_libpgquery11PGWindowDefEESaISB_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSF_33CaseInsensitiveStringHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSE_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i, %bb.d, %bb.a, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN17duckdb_libpgquery11PGWindowDefEESaISB_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSF_33CaseInsensitiveStringHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %1, ptr %3, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %0, ptr %2, align 8, !tbaa !2523
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN17duckdb_libpgquery11PGWindowDefEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESL_IJEEEEEPSE_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !2527
end_hunk_0
