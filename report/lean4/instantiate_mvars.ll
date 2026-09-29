Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/instantiate_mvars?download=true
inline.NumInlined: 1989
inline.NumDeleted: 974
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_N4lean5levelEE16mi_stl_allocatorIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKP11lean_objectN4lean5levelEELb0EEEEE18_M_deallocate_nodeEPSA_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.d, align 4, !tbaa !40   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !41

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !40
  br label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKP11lean_objectN4lean5levelEELb0EEEEE18_M_deallocate_nodeEPSA_.exit

bb.e:                                             ; preds = %bb.c
  %.not.i1.i.i.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i1.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKP11lean_objectN4lean5levelEELb0EEEEE18_M_deallocate_nodeEPSA_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.d)
          to label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKP11lean_objectN4lean5levelEELb0EEEEE18_M_deallocate_nodeEPSA_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #17
  unreachable

_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKP11lean_objectN4lean5levelEELb0EEEEE18_M_deallocate_nodeEPSA_.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  tail call void @mi_free(ptr noundef nonnull %i.b) #16
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKP11lean_objectN4lean5levelEELb0EEEEE18_M_deallocate_nodeEPSA_.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noalias ptr @mi_new_n(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @mi_free(ptr noundef) local_unnamed_addr #4

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_N4lean5levelEE16mi_stl_allocatorIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !258
  br label %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_N4lean5levelEE16mi_stl_allocatorIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef ptr @mi_new_n(i64 noundef %1, i64 noundef 8)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.d = shl i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %i.d, i1 false)
  br label %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_N4lean5levelEE16mi_stl_allocatorIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_N4lean5levelEE16mi_stl_allocatorIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %.noexc, %bb.b
  %.0.i.i = phi ptr [ %i.b, %bb.b ], [ %i.c, %.noexc ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !49
  %.not29.i = icmp eq ptr %i.f, null
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_N4lean5levelEE16mi_stl_allocatorIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i, %bb.g
  %.031.i = phi i64 [ %.1.i, %bb.g ], [ 0, %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_N4lean5levelEE16mi_stl_allocatorIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  %.02530.i = phi ptr [ %i.g, %bb.g ], [ %i.f, %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_N4lean5levelEE16mi_stl_allocatorIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 8 uses
  %i.g = load ptr, ptr %.02530.i, align 8, !tbaa !50 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02530.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = urem i64 %i.j, %1                        ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.k ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 2 uses
  %.not27.i = icmp eq ptr %i.m, null
  br i1 %.not27.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !49
  store ptr %i.n, ptr %.02530.i, align 8, !tbaa !50
  store ptr %.02530.i, ptr %i.e, align 8, !tbaa !49
  store ptr %i.e, ptr %i.l, align 8, !tbaa !74
  %i.o = load ptr, ptr %.02530.i, align 8, !tbaa !50
  %.not28.i = icmp eq ptr %i.o, null
  br i1 %.not28.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %.031.i
  store ptr %.02530.i, ptr %i.p, align 8, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !50
  store ptr %i.q, ptr %.02530.i, align 8, !tbaa !50
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !74
  store ptr %.02530.i, ptr %i.r, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1.i = phi i64 [ %.031.i, %bb.f ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !257

._crit_edge.i:                                    ; preds = %bb.g, %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_N4lean5levelEE16mi_stl_allocatorIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  tail call void @mi_free(ptr noundef %i.s) #16
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #16 ; 0 uses
  %i.y = load i64, ptr %2, align 8, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.y, ptr %i.z, align 8, !tbaa !89
  invoke void @__cxa_rethrow() #18
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %bb.h, %._crit_edge.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.ab, align 8, !tbaa !37
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !36
  ret void

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.aa

bb.m:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #17
  unreachable

bb.n:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean19unreachable_reachedD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4lean19unreachable_reached4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare ptr @lean_get_lmvar_assignment(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4lean5levelESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !45     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4lean5levelESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN4lean5levelESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %2, align 8, !tbaa !25     ; 5 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !25
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNSt16allocator_traitsISaIN4lean5levelEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit

bb.c:                                             ; preds = %_ZNKSt6vectorIN4lean5levelESaIS1_EE12_M_check_lenEmPKc.exit
  %.val.i.i.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !40 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i.i.i.i.i, 0
  br i1 %i.u, label %bb.d, label %bb.e, !prof !41

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw i32 %.val.i.i.i.i.i.i, 1
  store i32 %i.v, ptr %i.r, align 4, !tbaa !40
  br label %_ZNSt16allocator_traitsISaIN4lean5levelEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIN4lean5levelEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = atomicrmw sub ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZNSt16allocator_traitsISaIN4lean5levelEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN4lean5levelEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN4lean5levelESaIS1_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e, %bb.f
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt16allocator_traitsISaIN4lean5levelEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %i.x = add i64 %i.m, -8
  %i.y = sub i64 %i.x, %i.e                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.ac
  %scevgep47 = getelementptr i8, ptr %i.c, i64 %i.ac
  %bound0 = icmp ult ptr %i.p, %scevgep47
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.p, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ag ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.ag ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.ah = getelementptr i8, ptr %next.gep48, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep48, align 8, !tbaa !25, !alias.scope !277, !noalias !275
  %wide.load49 = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !25, !alias.scope !277, !noalias !275
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !278, !noalias !277
  store <2 x ptr> %wide.load49, ptr %i.ai, align 8, !tbaa !25, !alias.scope !278, !noalias !277
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %next.gep48, align 8, !tbaa !25, !alias.scope !277, !noalias !275
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.ah, align 8, !tbaa !25, !alias.scope !277, !noalias !275
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.preheader73

.lr.ph.i.i.i.preheader73:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader73, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader73 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader73 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.ak = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !25, !alias.scope !276, !noalias !275
  store ptr %i.ak, ptr %.012.i.i.i, align 8, !tbaa !25, !alias.scope !275, !noalias !276
  store ptr inttoptr (i64 1 to ptr), ptr %.0911.i.i.i, align 8, !tbaa !25, !alias.scope !276, !noalias !275
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !266

_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt16allocator_traitsISaIN4lean5levelEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN4lean5levelEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i ] ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27.preheader

.lr.ph.i.i.i27.preheader:                         ; preds = %_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ao = add i64 %i.d, -8
  %i.ap = sub i64 %i.ao, %i.m                     ; 3 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check58 = icmp ult i64 %i.ap, 152
  br i1 %min.iters.check58, label %.lr.ph.i.i.i27.preheader72, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.lr.ph.i.i.i27.preheader
  %i.as = and i64 %i.ap, -8                       ; 2 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep52 = getelementptr i8, ptr %i.at, i64 16
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep53 = getelementptr i8, ptr %i.au, i64 8
  %bound054 = icmp ult ptr %i.an, %scevgep53
  %bound155 = icmp ult ptr %1, %scevgep52
  %found.conflict56 = and i1 %bound054, %bound155
  br i1 %found.conflict56, label %.lr.ph.i.i.i27.preheader72, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck51
  %n.vec60 = and i64 %i.ar, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec60, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.an, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body61 ] ; 2 uses
  %i.ay = shl i64 %index62, 3                     ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.an, i64 %i.ay ; 2 uses
  %next.gep64 = getelementptr i8, ptr %1, i64 %i.ay ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.az = getelementptr i8, ptr %next.gep64, i64 16 ; 2 uses
  %wide.load65 = load <2 x ptr>, ptr %next.gep64, align 8, !tbaa !25, !alias.scope !281, !noalias !279
  %wide.load66 = load <2 x ptr>, ptr %i.az, align 8, !tbaa !25, !alias.scope !281, !noalias !279
  %i.ba = getelementptr i8, ptr %next.gep63, i64 16
  store <2 x ptr> %wide.load65, ptr %next.gep63, align 8, !tbaa !25, !alias.scope !282, !noalias !281
  store <2 x ptr> %wide.load66, ptr %i.ba, align 8, !tbaa !25, !alias.scope !282, !noalias !281
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %next.gep64, align 8, !tbaa !25, !alias.scope !281, !noalias !279
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.az, align 8, !tbaa !25, !alias.scope !281, !noalias !279
  %index.next67 = add nuw i64 %index62, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next67, %n.vec60
  br i1 %i.bb, label %middle.block68, label %vector.body61, !llvm.loop !273

middle.block68:                                   ; preds = %vector.body61
  %cmp.n69 = icmp eq i64 %i.ar, %n.vec60
  br i1 %cmp.n69, label %_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27.preheader72

.lr.ph.i.i.i27.preheader72:                       ; preds = %vector.memcheck51, %.lr.ph.i.i.i27.preheader, %middle.block68
  %.012.i.i.i28.ph = phi ptr [ %i.an, %vector.memcheck51 ], [ %i.an, %.lr.ph.i.i.i27.preheader ], [ %i.aw, %middle.block68 ]
  %.0911.i.i.i29.ph = phi ptr [ %1, %vector.memcheck51 ], [ %1, %.lr.ph.i.i.i27.preheader ], [ %i.ax, %middle.block68 ]
  br label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %.lr.ph.i.i.i27.preheader72, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.be, %.lr.ph.i.i.i27 ], [ %.012.i.i.i28.ph, %.lr.ph.i.i.i27.preheader72 ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.bd, %.lr.ph.i.i.i27 ], [ %.0911.i.i.i29.ph, %.lr.ph.i.i.i27.preheader72 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.bc = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !25, !alias.scope !280, !noalias !279
  store ptr %i.bc, ptr %.012.i.i.i28, align 8, !tbaa !25, !alias.scope !279, !noalias !280
  store ptr inttoptr (i64 1 to ptr), ptr %.0911.i.i.i29, align 8, !tbaa !25, !alias.scope !280, !noalias !279
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !274

_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %middle.block68, %_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.an, %_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.aw, %middle.block68 ], [ %i.be, %.lr.ph.i.i.i27 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN4lean5levelESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !48
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #19
  br label %_ZNSt12_Vector_baseIN4lean5levelESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4lean5levelESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4lean5levelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !46
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !48
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare ptr @lean_assign_lmvar(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #3

declare void @lean_inc_heartbeat() local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @lean_internal_panic_out_of_memory() local_unnamed_addr #11

declare void @_ZN4lean4exprC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean22instantiate_delayed_fnC2ERNS_10object_refE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.lean::scope_cache<std::pair<lean_object *, unsigned int>, lean::expr, lean::instantiate_delayed_fn::key_hasher>::scope_gen_node", align 8 ; 7 uses
  store ptr %1, ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.c, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 1, ptr %i.i, align 8, !tbaa !99
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.l, i8 0, i64 96, i1 false)
  invoke void @_ZNSt11_Deque_baseIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 0)
          to label %_ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EEC2Ev.exit.i unwind label %bb.e

_ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EEC2Ev.exit.i: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 8, !tbaa !102
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !103
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !107  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %.not.i.i.i = icmp eq ptr %i.q, %i.t
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EEC2Ev.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !111
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !107
  br label %_ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EE9push_backEOSA_.exit.i

bb.c:                                             ; preds = %_ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EEC2Ev.exit.i
  invoke void @_ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EE16_M_push_back_auxIJSA_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %._ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EE9push_backEOSA_.exit_crit_edge.i unwind label %bb.f

._ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EE9push_backEOSA_.exit_crit_edge.i: ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !112, !noalias !285
  br label %_ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EE9push_backEOSA_.exit.i

_ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EE9push_backEOSA_.exit.i: ; preds = %._ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EE9push_backEOSA_.exit_crit_edge.i, %bb.b
  %i.w = phi ptr [ %.pre.i, %._ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EE9push_backEOSA_.exit_crit_edge.i ], [ %i.v, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !113, !noalias !285
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EE9push_backEOSA_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !114, !noalias !285
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !110
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 512
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.m) #16
  br label %.body

.body:                                            ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.af, %bb.e ]
  call void @_ZNSt13unordered_mapISt4pairIP11lean_objectjESt6vectorIN4lean11scope_cacheIS3_NS5_4exprENS5_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISB_EES9_St8equal_toIS3_E16mi_stl_allocatorIS0_IKS3_SD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(152) %i.g) #16
  call void @_ZNSt13unordered_mapIN4lean4nameENS0_16fvar_subst_entryENS0_12name_hash_fnENS0_10name_eq_fnE16mi_stl_allocatorISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #16
  resume { ptr, i32 } %.pn.i

bb.g:                                             ; preds = %_ZNSt5dequeIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE14scope_gen_nodeESaISA_EE9push_backEOSA_.exit.i, %bb.d
end_hunk_0
begin_hunk_1_@_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE11flip_colorsEONS3_4nodeE:bb.a

bb.w:                                             ; preds = %bb.u
  %.not.i.i.i.i.i.i.i31 = icmp eq i32 %.val.i.i.i.i.i.i.i30, 0
  br i1 %.not.i.i.i.i.i.i.i31, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = atomicrmw sub ptr %i.bo, i32 1 monotonic, align 4, !noalias !482 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4nodeC2ERKS4_.exit9.i.i28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !162, !range !71, !noalias !482, !noundef !72
  store i8 %i.bw, ptr %i.bu, align 8, !tbaa !162, !noalias !482
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 28 ; 2 uses
  store i32 0, ptr %i.bx, align 4, !tbaa !163, !noalias !482
  store ptr %i.bc, ptr %4, align 8, !tbaa !157, !alias.scope !482
  %i.by = atomicrmw add ptr %i.bx, i32 1 monotonic, align 4, !noalias !482 ; 0 uses
  br label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE15ensure_unsharedEONS3_4nodeE.exit33

_ZNK4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4node9is_sharedEv.exit.thread.i24: ; preds = %_ZNK4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4node9is_sharedEv.exit._ZNK4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4node9is_sharedEv.exit.thread_crit_edge.i22, %bb.q
  %i.bz = phi ptr [ %.pre.i23, %_ZNK4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4node9is_sharedEv.exit._ZNK4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4node9is_sharedEv.exit.thread_crit_edge.i22 ], [ null, %bb.q ]
  store ptr %i.bz, ptr %4, align 8, !tbaa !157, !alias.scope !482
  store ptr null, ptr %5, align 8, !tbaa !157, !noalias !482
  br label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE15ensure_unsharedEONS3_4nodeE.exit33

_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE15ensure_unsharedEONS3_4nodeE.exit33: ; preds = %_ZNK4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4node9is_sharedEv.exit.thread.i24, %bb.y
  %i.ca = load ptr, ptr %1, align 8, !tbaa !157
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !157 ; 6 uses
  %.not.i34 = icmp eq ptr %i.cc, null
  br i1 %.not.i34, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE15ensure_unsharedEONS3_4nodeE.exit33
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ce = atomicrmw sub ptr %i.cd, i32 1 acq_rel, align 4
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !25 ; 4 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = and i64 %i.ci, 1
  %.not.i.i.i.i.i.i35 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i35, label %bb.ab, label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7deallocEv.exit.i.i36

bb.ab:                                            ; preds = %bb.aa
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !40 ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 1
  br i1 %i.cl, label %bb.ac, label %bb.ad, !prof !41

bb.ac:                                            ; preds = %bb.ab
  %i.cm = add nsw i32 %i.ck, -1
  store i32 %i.cm, ptr %i.ch, align 4, !tbaa !40
  br label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7deallocEv.exit.i.i36

bb.ad:                                            ; preds = %bb.ab
  %.not.i1.i.i.i.i.i37 = icmp eq i32 %i.ck, 0
  br i1 %.not.i1.i.i.i.i.i37, label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7deallocEv.exit.i.i36, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ch)
          to label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7deallocEv.exit.i.i36 unwind label %bb.af, !inline_history !5

bb.af:                                            ; preds = %bb.ae
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #17, !inline_history !5
  unreachable

_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7deallocEv.exit.i.i36: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  call void @_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cp) #16, !inline_history !6
  call void @_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %i.cc) #16, !inline_history !6
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 noundef 32) #19, !inline_history !5
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7deallocEv.exit.i.i36, %bb.z, %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE15ensure_unsharedEONS3_4nodeE.exit33
  %i.cq = load ptr, ptr %4, align 8, !tbaa !157
  store ptr %i.cq, ptr %i.cb, align 8, !tbaa !157
  store ptr null, ptr %4, align 8, !tbaa !157
  call void @_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  call void @_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.cr = load ptr, ptr %1, align 8, !tbaa !157   ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !157
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !162, !range !71, !noundef !72
  %i.cv = xor i8 %i.cu, 1
  store i8 %i.cv, ptr %i.ct, align 8, !tbaa !162
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !157
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !162, !range !71, !noundef !72
  %i.da = xor i8 %i.cz, 1
  store i8 %i.da, ptr %i.cy, align 8, !tbaa !162
  store ptr %i.cr, ptr %0, align 8, !tbaa !157
  store ptr null, ptr %1, align 8, !tbaa !157
  ret void

bb.ah:                                            ; preds = %bb.b
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.aj

bb.ai:                                            ; preds = %bb.r
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn16.pn = phi { ptr, i32 } [ %i.dc, %bb.ai ], [ %i.db, %bb.ah ]
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4nodeaSERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !157    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.c = atomicrmw add ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !157
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pre, %bb.b ], [ null, %bb.a ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !157    ; 6 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7dec_refEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7dec_refEv.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 4 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7deallocEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.j, align 4, !tbaa !40   ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.g, label %bb.h, !prof !41

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %i.j, align 4, !tbaa !40
  br label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7deallocEv.exit.i

bb.h:                                             ; preds = %bb.f
  %.not.i1.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i1.i.i.i.i, label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7deallocEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.j)
          to label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7deallocEv.exit.i unwind label %bb.j, !inline_history !5

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #17, !inline_history !5
  unreachable

_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7deallocEv.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #16, !inline_history !6
  tail call void @_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE4nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %i.e) #16, !inline_history !6
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 32) #19, !inline_history !5
  br label %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7dec_refEv.exit

_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7dec_refEv.exit: ; preds = %_ZN4lean7rb_treeINS_4nameENS_14name_quick_cmpEE9node_cell7deallocEv.exit.i, %bb.d, %bb.c
  store ptr %i.d, ptr %0, align 8, !tbaa !157
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4lean4exprESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !134    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4lean4exprESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN4lean4exprESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %2, align 8, !tbaa !25     ; 5 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !25
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNSt16allocator_traitsISaIN4lean4exprEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit

bb.c:                                             ; preds = %_ZNKSt6vectorIN4lean4exprESaIS1_EE12_M_check_lenEmPKc.exit
  %.val.i.i.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !40 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i.i.i.i.i, 0
  br i1 %i.u, label %bb.d, label %bb.e, !prof !41

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw i32 %.val.i.i.i.i.i.i, 1
  store i32 %i.v, ptr %i.r, align 4, !tbaa !40
  br label %_ZNSt16allocator_traitsISaIN4lean4exprEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIN4lean4exprEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = atomicrmw sub ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZNSt16allocator_traitsISaIN4lean4exprEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN4lean4exprEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN4lean4exprESaIS1_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e, %bb.f
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt16allocator_traitsISaIN4lean4exprEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %i.x = add i64 %i.m, -8
  %i.y = sub i64 %i.x, %i.e                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.ac
  %scevgep47 = getelementptr i8, ptr %i.c, i64 %i.ac
  %bound0 = icmp ult ptr %i.p, %scevgep47
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.p, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ag ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.ag ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.ah = getelementptr i8, ptr %next.gep48, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep48, align 8, !tbaa !25, !alias.scope !501, !noalias !499
  %wide.load49 = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !25, !alias.scope !501, !noalias !499
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !502, !noalias !501
  store <2 x ptr> %wide.load49, ptr %i.ai, align 8, !tbaa !25, !alias.scope !502, !noalias !501
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %next.gep48, align 8, !tbaa !25, !alias.scope !501, !noalias !499
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.ah, align 8, !tbaa !25, !alias.scope !501, !noalias !499
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !489

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.preheader73

.lr.ph.i.i.i.preheader73:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader73, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader73 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader73 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.ak = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !25, !alias.scope !500, !noalias !499
  store ptr %i.ak, ptr %.012.i.i.i, align 8, !tbaa !25, !alias.scope !499, !noalias !500
  store ptr inttoptr (i64 1 to ptr), ptr %.0911.i.i.i, align 8, !tbaa !25, !alias.scope !500, !noalias !499
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !490

_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt16allocator_traitsISaIN4lean4exprEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN4lean4exprEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i ] ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27.preheader

.lr.ph.i.i.i27.preheader:                         ; preds = %_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ao = add i64 %i.d, -8
  %i.ap = sub i64 %i.ao, %i.m                     ; 3 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check58 = icmp ult i64 %i.ap, 152
  br i1 %min.iters.check58, label %.lr.ph.i.i.i27.preheader72, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.lr.ph.i.i.i27.preheader
  %i.as = and i64 %i.ap, -8                       ; 2 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep52 = getelementptr i8, ptr %i.at, i64 16
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep53 = getelementptr i8, ptr %i.au, i64 8
  %bound054 = icmp ult ptr %i.an, %scevgep53
  %bound155 = icmp ult ptr %1, %scevgep52
  %found.conflict56 = and i1 %bound054, %bound155
  br i1 %found.conflict56, label %.lr.ph.i.i.i27.preheader72, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck51
  %n.vec60 = and i64 %i.ar, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec60, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.an, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body61 ] ; 2 uses
  %i.ay = shl i64 %index62, 3                     ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.an, i64 %i.ay ; 2 uses
  %next.gep64 = getelementptr i8, ptr %1, i64 %i.ay ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.az = getelementptr i8, ptr %next.gep64, i64 16 ; 2 uses
  %wide.load65 = load <2 x ptr>, ptr %next.gep64, align 8, !tbaa !25, !alias.scope !505, !noalias !503
  %wide.load66 = load <2 x ptr>, ptr %i.az, align 8, !tbaa !25, !alias.scope !505, !noalias !503
  %i.ba = getelementptr i8, ptr %next.gep63, i64 16
  store <2 x ptr> %wide.load65, ptr %next.gep63, align 8, !tbaa !25, !alias.scope !506, !noalias !505
  store <2 x ptr> %wide.load66, ptr %i.ba, align 8, !tbaa !25, !alias.scope !506, !noalias !505
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %next.gep64, align 8, !tbaa !25, !alias.scope !505, !noalias !503
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.az, align 8, !tbaa !25, !alias.scope !505, !noalias !503
  %index.next67 = add nuw i64 %index62, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next67, %n.vec60
  br i1 %i.bb, label %middle.block68, label %vector.body61, !llvm.loop !497

middle.block68:                                   ; preds = %vector.body61
  %cmp.n69 = icmp eq i64 %i.ar, %n.vec60
  br i1 %cmp.n69, label %_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27.preheader72

.lr.ph.i.i.i27.preheader72:                       ; preds = %vector.memcheck51, %.lr.ph.i.i.i27.preheader, %middle.block68
  %.012.i.i.i28.ph = phi ptr [ %i.an, %vector.memcheck51 ], [ %i.an, %.lr.ph.i.i.i27.preheader ], [ %i.aw, %middle.block68 ]
  %.0911.i.i.i29.ph = phi ptr [ %1, %vector.memcheck51 ], [ %1, %.lr.ph.i.i.i27.preheader ], [ %i.ax, %middle.block68 ]
  br label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %.lr.ph.i.i.i27.preheader72, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.be, %.lr.ph.i.i.i27 ], [ %.012.i.i.i28.ph, %.lr.ph.i.i.i27.preheader72 ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.bd, %.lr.ph.i.i.i27 ], [ %.0911.i.i.i29.ph, %.lr.ph.i.i.i27.preheader72 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.bc = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !25, !alias.scope !504, !noalias !503
  store ptr %i.bc, ptr %.012.i.i.i28, align 8, !tbaa !25, !alias.scope !503, !noalias !504
  store ptr inttoptr (i64 1 to ptr), ptr %.0911.i.i.i29, align 8, !tbaa !25, !alias.scope !504, !noalias !503
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !498

_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %middle.block68, %_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.an, %_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.aw, %middle.block68 ], [ %i.be, %.lr.ph.i.i.i27 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN4lean4exprESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !136
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #19
  br label %_ZNSt12_Vector_baseIN4lean4exprESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4lean4exprESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4lean4exprESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !134
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !135
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !136
  ret void
}

declare ptr @lean_assign_mvar(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lean_get_delayed_mvar_assignment(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lean_delayed_mvar_assignment_mvar_id_pending(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean10get_app_fnERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean21instantiate_direct_fn17visit_nonmvar_appERKNS_4exprE(ptr dead_on_unwind noalias writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.lean::expr", align 8        ; 7 uses
  %4 = alloca %"class.lean::expr", align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = load ptr, ptr %2, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @_ZN4lean21instantiate_direct_fn5visitERKNS_4exprE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.c = load ptr, ptr %2, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val.i.i.i.i = load i32, ptr %i.f, align 4
  %.mask.i = and i32 %.val.i.i.i.i, -16777216
  %i.g = icmp eq i32 %.mask.i, 83886080
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4lean21instantiate_direct_fn17visit_nonmvar_appERKNS_4exprE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.d unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN4lean21instantiate_direct_fn5visitERKNS_4exprE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @_ZN4lean10update_appERKNS_4exprES2_S2_(ptr dead_on_unwind writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %4, align 8, !tbaa !25     ; 4 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN4lean10object_refD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.h, align 4, !tbaa !40   ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %bb.h, !prof !41

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %i.h, align 4, !tbaa !40
  br label %_ZN4lean10object_refD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %.not.i1.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.h)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #17
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.p = load ptr, ptr %3, align 8, !tbaa !25     ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 1
  %.not.i.i.i12 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i12, label %bb.k, label %_ZN4lean10object_refD2Ev.exit14

bb.k:                                             ; preds = %_ZN4lean10object_refD2Ev.exit
  %i.s = load i32, ptr %i.p, align 4, !tbaa !40   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.l, label %bb.m, !prof !41

bb.l:                                             ; preds = %bb.k
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.p, align 4, !tbaa !40
  br label %_ZN4lean10object_refD2Ev.exit14

bb.m:                                             ; preds = %bb.k
  %.not.i1.i.i13 = icmp eq i32 %i.s, 0
  br i1 %.not.i1.i.i13, label %_ZN4lean10object_refD2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.p)
          to label %_ZN4lean10object_refD2Ev.exit14 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #17
  unreachable

_ZN4lean10object_refD2Ev.exit14:                  ; preds = %_ZN4lean10object_refD2Ev.exit, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.p:                                             ; preds = %bb.c, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.y, %bb.q ], [ %i.x, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
end_hunk_1
