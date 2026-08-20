inline.NumInlined: 1489
inline.NumDeleted: 694
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIN4lean8lib_infoESaIS1_EE9push_backERKS1_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !62
  store i64 %i.e, ptr %i.b, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !68
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69   ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !70

.noexc6.i.i.i:                                    ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 2 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !16
  store i64 %i.k, ptr %i.h, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.b
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.h, %bb.b ] ; 3 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt12construct_atIN4lean8lib_infoEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = load i8, ptr %i.i, align 1, !tbaa !21
  store i8 %i.r, ptr %i.q, align 1, !tbaa !21
  br label %_ZSt12construct_atIN4lean8lib_infoEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZSt12construct_atIN4lean8lib_infoEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZSt12construct_atIN4lean8lib_infoEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.k, ptr %i.s, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1, !tbaa !21
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr %i.v, ptr %i.a, align 8, !tbaa !15
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN4lean8lib_infoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZSt12construct_atIN4lean8lib_infoEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean16object_compactorC2EPvSt6vectorINS_11region_viewESaIS3_EEb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr nofree noundef align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.5.i.i24.i.i.i = alloca { i64, ptr }, align 8 ; 4 uses
  %4 = alloca %"struct.lean::region_view", align 8 ; 4 uses
  %.sroa.5.i.i12.i.i.i = alloca { i64, ptr }, align 8 ; 4 uses
  %.sroa.5.i.i.i.i.i = alloca { i64, ptr }, align 8 ; 4 uses
  %5 = alloca %"struct.lean::region_view", align 8 ; 4 uses
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %0, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27
          to label %bb.b unwind label %bb.u       ; 11 uses

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %0 to i64                   ; 2 uses
  store i64 %i.i, ptr %i.h, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store i64 1, ptr %i.m, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 noundef 1048576)
          to label %bb.c unwind label %.body      ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.m, align 8, !tbaa !84
  %i.s = icmp ugt i64 %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZN4lean16object_compactor17max_sharing_tableC2EPS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.q, 1
  br i1 %i.t, label %bb.e, label %bb.f, !prof !70

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.l, align 8, !tbaa !85
  br label %_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = invoke noalias noundef ptr @mi_new_n(i64 noundef %i.q, i64 noundef 8)
          to label %.noexc.i.i.i unwind label %.body ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.v = shl i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.v, i1 false)
  br label %_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %.noexc.i.i.i, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.u, %.noexc.i.i.i ]
  store ptr %.0.i.i.i.i, ptr %i.k, align 8, !tbaa !76
  store i64 %i.q, ptr %i.m, align 8, !tbaa !84
  br label %_ZN4lean16object_compactor17max_sharing_tableC2EPS0_.exit

.body:                                            ; preds = %bb.f, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.h) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 72) #26
  br label %bb.z

_ZN4lean16object_compactor17max_sharing_tableC2EPS0_.exit: ; preds = %_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i, %bb.c
  store ptr %i.h, ptr %i.g, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i8 0, i64 48, i1 false)
  %i.aa = load <2 x ptr>, ptr %2, align 8, !tbaa !87
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !88
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_ZN4lean15get_loaded_libsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %i.ae)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %_ZN4lean16object_compactor17max_sharing_tableC2EPS0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.a, ptr %i.ah, align 8, !tbaa !89
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %1, ptr %i.ai, align 8, !tbaa !90
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ak = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #29 ; 3 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !91
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1048576
  store ptr %i.an, ptr %i.am, align 8, !tbaa !92
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !87  ; 16 uses
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !87 ; 7 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_16object_compactorC1EPvS7_bE3$_0EvT_SC_T0_.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = sdiv exact i64 %i.at, 24
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true)
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = xor i64 %i.aw, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_SF_T0_T1_"(ptr %i.ao, ptr %i.ap, i64 noundef %i.ax)
  %i.ay = icmp sgt i64 %i.at, 384
  %scevgep.i.i.i = getelementptr i8, ptr %i.ao, i64 24 ; 4 uses
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %bb.n

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.m
  %.sroa.0.018.i.idx.i.i.i = phi i64 [ %.sroa.0.018.i.add.i.i.i, %bb.m ], [ 24, %bb.h ] ; 4 uses
  %.pn17.i.i.i.i = phi ptr [ %.sroa.0.018.i.ptr.i.i.i, %bb.m ], [ %i.ao, %bb.h ] ; 4 uses
  %.sroa.0.018.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.018.i.idx.i.i.i ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.0.018.i.ptr.i.i.i, align 8, !tbaa !93 ; 4 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.az = icmp ult ptr %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.az, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i.ptr.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %i.ba = icmp samesign ugt i64 %.sroa.0.018.i.idx.i.i.i, 24
  br i1 %i.ba, label %bb.j, label %bb.k, !prof !96

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %.sroa.0.018.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn17.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !95
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !97
  %.val2.i10.i.i.i.i.i = load ptr, ptr %.pn17.i.i.i.i, align 8, !tbaa !93
  %i.bc = icmp ult ptr %.val.i.i.i.i.i, %.val2.i10.i.i.i.i.i
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn17.i.i.i.i, %bb.l ] ; 4 uses
  %.sroa.06.011.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.018.i.ptr.i.i.i, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !93
  %i.bd = icmp ult ptr %.val.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !98

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.l
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.018.i.ptr.i.i.i, %bb.l ], [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store ptr %.val.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i.i.i.i, align 8, !tbaa !61
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  br label %bb.m

bb.m:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i
  %.sroa.0.018.i.add.i.i.i = add nuw nsw i64 %.sroa.0.018.i.idx.i.i.i, 24 ; 2 uses
  %i.be = icmp eq i64 %.sroa.0.018.i.add.i.i.i, 384
  br i1 %i.be, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_SF_T0_.exit.i.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !99

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_SF_T0_.exit.i.i.i": ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 384 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ap
  br i1 %i.bg, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_16object_compactorC1EPvS7_bE3$_0EvT_SC_T0_.exit", label %.lr.ph.i13.i.i.i

.lr.ph.i13.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_SF_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i16.i.i.i"
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.bj, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i16.i.i.i" ], [ %i.bf, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_SF_T0_.exit.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %.sroa.03.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.0.06.i.i.i.i, align 8, !tbaa !61 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i14.i.i.i, i64 16, i1 false), !tbaa.struct !97
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.06.i.i.i.i, i64 -24 ; 2 uses
  %.val2.i10.i.i15.i.i.i = load ptr, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !93
  %i.bh = icmp ult ptr %.sroa.03.0.copyload.i.i.i.i.i, %.val2.i10.i.i15.i.i.i
  br i1 %i.bh, label %.lr.ph.i.i19.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i16.i.i.i"

.lr.ph.i.i19.i.i.i:                               ; preds = %.lr.ph.i13.i.i.i, %.lr.ph.i.i19.i.i.i
  %.sroa.0.012.i.i20.i.i.i = phi ptr [ %.sroa.0.0.i.i22.i.i.i, %.lr.ph.i.i19.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i13.i.i.i ] ; 4 uses
  %.sroa.06.011.i.i21.i.i.i = phi ptr [ %.sroa.0.012.i.i20.i.i.i, %.lr.ph.i.i19.i.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i13.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.011.i.i21.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i20.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %.sroa.0.0.i.i22.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i20.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i23.i.i.i = load ptr, ptr %.sroa.0.0.i.i22.i.i.i, align 8, !tbaa !93
  %i.bi = icmp ult ptr %.sroa.03.0.copyload.i.i.i.i.i, %.val2.i.i.i23.i.i.i
  br i1 %i.bi, label %.lr.ph.i.i19.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i16.i.i.i", !llvm.loop !98

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i16.i.i.i": ; preds = %.lr.ph.i.i19.i.i.i, %.lr.ph.i13.i.i.i
  %.sroa.06.0.lcssa.i.i17.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i, %.lr.ph.i13.i.i.i ], [ %.sroa.0.012.i.i20.i.i.i, %.lr.ph.i.i19.i.i.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i17.i.i.i, align 8, !tbaa !61
  %.sroa.5.0..sroa_idx5.i.i18.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i17.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i18.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12.i.i.i, i64 16, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 24 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ap
  br i1 %i.bk, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_16object_compactorC1EPvS7_bE3$_0EvT_SC_T0_.exit", label %.lr.ph.i13.i.i.i, !llvm.loop !100

bb.n:                                             ; preds = %bb.h
  %i.bl = icmp eq ptr %scevgep.i.i.i, %i.ap
  br i1 %i.bl, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_16object_compactorC1EPvS7_bE3$_0EvT_SC_T0_.exit", label %.lr.ph.i27.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %bb.n, %bb.t
  %.sroa.0.018.i28.i.i.i = phi ptr [ %.sroa.0.0.i37.i.i.i, %bb.t ], [ %scevgep.i.i.i, %bb.n ] ; 7 uses
  %.pn17.i29.i.i.i = phi ptr [ %.sroa.0.018.i28.i.i.i, %bb.t ], [ %i.ao, %bb.n ] ; 4 uses
  %.val.i.i30.i.i.i = load ptr, ptr %.sroa.0.018.i28.i.i.i, align 8, !tbaa !93 ; 4 uses
  %.val1.i.i31.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.bm = icmp ult ptr %.val.i.i30.i.i.i, %.val1.i.i31.i.i.i
  br i1 %i.bm, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i27.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i28.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %i.bn = ptrtoint ptr %.sroa.0.018.i28.i.i.i to i64
  %i.bo = sub i64 %i.bn, %i.as                    ; 3 uses
  %i.bp = icmp sgt i64 %i.bo, 24
  br i1 %i.bp, label %bb.p, label %bb.q, !prof !96

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.bo, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i43.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = icmp eq i64 %i.bo, 24
  br i1 %i.bq, label %bb.r, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i43.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %.pn17.i29.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !95
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i43.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i43.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i27.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i24.i.i.i)
  %.sroa.5.0..sroa_idx.i.i32.i.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i29.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i24.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i32.i.i.i, i64 16, i1 false), !tbaa.struct !97
  %.val2.i10.i.i33.i.i.i = load ptr, ptr %.pn17.i29.i.i.i, align 8, !tbaa !93
  %i.bs = icmp ult ptr %.val.i.i30.i.i.i, %.val2.i10.i.i33.i.i.i
  br i1 %i.bs, label %.lr.ph.i.i38.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i34.i.i.i"

.lr.ph.i.i38.i.i.i:                               ; preds = %bb.s, %.lr.ph.i.i38.i.i.i
  %.sroa.0.012.i.i39.i.i.i = phi ptr [ %.sroa.0.0.i.i41.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.pn17.i29.i.i.i, %bb.s ] ; 4 uses
  %.sroa.06.011.i.i40.i.i.i = phi ptr [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.sroa.0.018.i28.i.i.i, %bb.s ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.011.i.i40.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i39.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %.sroa.0.0.i.i41.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i39.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i42.i.i.i = load ptr, ptr %.sroa.0.0.i.i41.i.i.i, align 8, !tbaa !93
  %i.bt = icmp ult ptr %.val.i.i30.i.i.i, %.val2.i.i.i42.i.i.i
  br i1 %i.bt, label %.lr.ph.i.i38.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i34.i.i.i", !llvm.loop !98

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i34.i.i.i": ; preds = %.lr.ph.i.i38.i.i.i, %bb.s
  %.sroa.06.0.lcssa.i.i35.i.i.i = phi ptr [ %.sroa.0.018.i28.i.i.i, %bb.s ], [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ] ; 2 uses
  store ptr %.val.i.i30.i.i.i, ptr %.sroa.06.0.lcssa.i.i35.i.i.i, align 8, !tbaa !61
  %.sroa.5.0..sroa_idx5.i.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i35.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i36.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i24.i.i.i, i64 16, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i24.i.i.i)
  br label %bb.t

bb.t:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i34.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i43.i.i.i
  %.sroa.0.0.i37.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i28.i.i.i, i64 24 ; 2 uses
  %i.bu = icmp eq ptr %.sroa.0.0.i37.i.i.i, %i.ap
  br i1 %i.bu, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_16object_compactorC1EPvS7_bE3$_0EvT_SC_T0_.exit", label %.lr.ph.i27.i.i.i, !llvm.loop !99

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_16object_compactorC1EPvS7_bE3$_0EvT_SC_T0_.exit": ; preds = %bb.t, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_T0_.exit.i16.i.i.i", %bb.n, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16object_compactorC1EPvS7_bE3$_0EEEvT_SF_T0_.exit.i.i.i", %bb.g
  ret void

bb.u:                                             ; preds = %bb.a
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %_ZN4lean16object_compactor17max_sharing_tableC2EPS0_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !88
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cb) #26
  br label %_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit

_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit: ; preds = %bb.v, %bb.w
  %i.cc = load ptr, ptr %i.y, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIP11lean_objectSaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !103
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #26
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EED2Ev.exit

_ZNSt6vectorIP11lean_objectSaIS1_EED2Ev.exit:     ; preds = %_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit, %bb.x
  %i.ci = load ptr, ptr %i.x, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIP11lean_objectSaIS1_EED2Ev.exit12, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EED2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !103
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #26
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EED2Ev.exit12

_ZNSt6vectorIP11lean_objectSaIS1_EED2Ev.exit12:   ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EED2Ev.exit, %bb.y
  tail call void @_ZNSt10unique_ptrIN4lean16object_compactor17max_sharing_tableESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #25
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EED2Ev.exit12, %.body, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bw, %_ZNSt6vectorIP11lean_objectSaIS1_EED2Ev.exit12 ], [ %i.w, %.body ], [ %i.bv, %bb.u ]
  tail call void @_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4lean16object_compactor17max_sharing_tableESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86     ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !105 ; 2 uses
  tail call void @mi_free(ptr noundef nonnull %.06.i.i.i.i.i.i) #25
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !106

_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !84
  %i.i = shl i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !76   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt14default_deleteIN4lean16object_compactor17max_sharing_tableEEclEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  tail call void @mi_free(ptr noundef %i.j) #25
  br label %_ZNKSt14default_deleteIN4lean16object_compactor17max_sharing_tableEEclEPS2_.exit

_ZNKSt14default_deleteIN4lean16object_compactor17max_sharing_tableEEclEPS2_.exit: ; preds = %_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #26
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN4lean16object_compactor17max_sharing_tableEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !105 ; 2 uses
  tail call void @mi_free(ptr noundef nonnull %.06.i.i.i) #25
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !108

_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !72
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  tail call void @mi_free(ptr noundef %i.h) #25
  br label %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4lean16object_compactorD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(224) dereferenceable(224) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
end_hunk_0
begin_hunk_1_@_ZN4lean16object_compactor12insert_arrayEP11lean_object:bb.a
  %i.r = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.q) ; 2 uses
  %i.s = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !61
  %i.t = icmp eq ptr %i.r, %i.s
  %spec.select = select i1 %i.t, i1 true, i1 %.03236 ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.o
  store ptr %i.r, ptr %i.v, align 8, !tbaa !61
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.d
  br i1 %spec.select, label %bb.m, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.w = icmp ugt i64 %.val.i, 2305843009213693951
  br i1 %i.w, label %bb.f, label %_ZL22lean_usize_mul_checkedmm.exit, !prof !132

bb.f:                                             ; preds = %bb.e
  tail call void @lean_internal_panic_overflow() #28
  unreachable

_ZL22lean_usize_mul_checkedmm.exit:               ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit, %bb.e
  %.not35475056 = phi i1 [ false, %bb.e ], [ true, %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit ]
  %i.x = shl nuw i64 %.val.i, 3
  %i.y = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.x, i64 24) ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %bb.g, label %_ZL22lean_usize_add_checkedmm.exit, !prof !70

bb.g:                                             ; preds = %_ZL22lean_usize_mul_checkedmm.exit
  tail call void @lean_internal_panic_overflow() #28
  unreachable

_ZL22lean_usize_add_checkedmm.exit:               ; preds = %_ZL22lean_usize_mul_checkedmm.exit
  %i.aa = extractvalue { i64, i1 } %i.y, 0        ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !91 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !92 ; 2 uses
  %i.ag = icmp ugt ptr %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph.i, label %_ZN4lean16object_compactor5allocEm.exit

.lr.ph.i:                                         ; preds = %_ZL22lean_usize_add_checkedmm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i = load ptr, ptr %i.ah, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %i.ai = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.aj = phi ptr [ %i.af, %.lr.ph.i ], [ %i.aw, %bb.h ]
  %i.ak = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.au, %bb.h ]
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = shl i64 %i.an, 1                        ; 2 uses
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ao) #29 ; 5 uses
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = sub i64 %i.aq, %i.am                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.ai, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  store ptr %i.as, ptr %i.ab, align 8, !tbaa !91
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.at, ptr %i.ac, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.ai) #25
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !26
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !91 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aa
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !92 ; 2 uses
  %i.ax = icmp ugt ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.h, label %_ZN4lean16object_compactor5allocEm.exit, !llvm.loop !111

_ZN4lean16object_compactor5allocEm.exit:          ; preds = %bb.h, %_ZL22lean_usize_add_checkedmm.exit
  %.lcssa.i = phi ptr [ %i.ad, %_ZL22lean_usize_add_checkedmm.exit ], [ %i.au, %bb.h ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i, i8 0, i64 %i.aa, i1 false)
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !91
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aa
  store ptr %i.az, ptr %i.ab, align 8, !tbaa !91
  store i32 0, ptr %.lcssa.i, align 4, !tbaa !123
  %i.ba = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  store i32 -167772159, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i64 %.val.i, ptr %i.bb, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  store i64 %.val.i, ptr %i.bc, align 8, !tbaa !60
  br i1 %.not35475056, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %_ZN4lean16object_compactor5allocEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 24 ; 5 uses
  %i.be = add i64 %.val.i, -1
  %xtraiter = and i64 %.val.i, 3                  ; 3 uses
  %i.bf = icmp ult i64 %i.be, 3
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph39.new

.lr.ph39.new:                                     ; preds = %.lr.ph39
  %unroll_iter = and i64 %.val.i, -4
  br label %bb.l

._crit_edge40.loopexit.unr-lcssa:                 ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge40, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge40.loopexit.unr-lcssa, %.lr.ph39
  %.038.epil.init = phi i64 [ 0, %.lr.ph39 ], [ %i.de, %._crit_edge40.loopexit.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod57)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.038.epil = phi i64 [ %.038.epil.init, %.epil.preheader ], [ %i.bk, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.038.epil
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !61
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.038.epil
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !61
  %i.bk = add nuw i64 %.038.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge40, label %bb.i, !llvm.loop !133

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit.unr-lcssa, %bb.i, %_ZN4lean16object_compactor5allocEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !26
  %i.bn = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %4, align 8, !tbaa !112
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.bq, align 8, !tbaa !114
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !86
  %i.bt = call ptr @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge40
  store ptr %.lcssa.i, ptr %i.ab, align 8, !tbaa !91
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !26 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !112
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx
  %.pre7.i = ptrtoint ptr %i.by to i64
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

bb.k:                                             ; preds = %._crit_edge40
  %i.bz = load ptr, ptr %i.br, align 8, !tbaa !86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.bz, ptr %3, align 8, !tbaa !115
  %i.ca = call { ptr, i8 } @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre.i34 = load ptr, ptr %i.bl, align 8, !tbaa !26
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit: ; preds = %bb.j, %bb.k
  %.pre-phi.i = phi i64 [ %i.bn, %bb.k ], [ %.pre7.i, %bb.j ]
  %i.cb = phi ptr [ %.pre.i34, %bb.k ], [ %i.bv, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %.pre-phi.i, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !90
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = add i64 %i.cd, %i.cg
  %i.ci = inttoptr i64 %i.ch to ptr
  store ptr %1, ptr %2, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.m

bb.l:                                             ; preds = %bb.l, %.lr.ph39.new
  %.038 = phi i64 [ 0, %.lr.ph39.new ], [ %i.de, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph39.new ], [ %niter.next.3, %bb.l ]
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.038
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !61
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.038
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !61
  %i.cp = or disjoint i64 %.038, 1                ; 2 uses
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !61
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cp
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !61
  %i.cu = or disjoint i64 %.038, 2                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !61
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cu
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !61
  %i.cz = or disjoint i64 %.038, 3                ; 2 uses
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !61
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cz
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !61
  %i.de = add nuw i64 %.038, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge40.loopexit.unr-lcssa, label %bb.l, !llvm.loop !135

bb.m:                                             ; preds = %._crit_edge, %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit
  %.033 = phi i1 [ false, %._crit_edge ], [ true, %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit ]
  ret i1 %.033
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4lean16object_compactor12insert_thunkEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.lean::max_sharing_key", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZL14lean_thunk_getP11lean_object.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lean_thunk_get_core(ptr noundef nonnull %1)
  br label %_ZL14lean_thunk_getP11lean_object.exit

_ZL14lean_thunk_getP11lean_object.exit:           ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %i.d = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %.0.i) ; 2 uses
  %i.e = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !61
  %i.f = icmp ne ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZL14lean_thunk_getP11lean_object.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !91   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !92   ; 2 uses
  %i.l = icmp ugt ptr %i.j, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.n = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.u, %bb.d ] ; 3 uses
  %i.o = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.ab, %bb.d ]
  %i.p = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.z, %bb.d ]
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = shl i64 %i.s, 1                          ; 2 uses
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #29 ; 5 uses
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.v, %i.r                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.n, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  store ptr %i.x, ptr %i.g, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.y, ptr %i.h, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.n) #25
  store ptr %i.u, ptr %i.m, align 8, !tbaa !26
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !91   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !92  ; 2 uses
  %i.ac = icmp ugt ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit, !llvm.loop !111

_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit: ; preds = %bb.d, %bb.c
  %.lcssa.i.i = phi ptr [ %i.i, %bb.c ], [ %i.z, %bb.d ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.lcssa.i.i, i8 0, i64 24, i1 false)
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false)
  %i.af = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.af, align 4
  store i32 0, ptr %.lcssa.i.i, align 4, !tbaa !123
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4
  %i.ah = and i32 %.val.i, -65536
  %i.ai = or disjoint i32 %i.ah, 24
  store i32 %i.ai, ptr %i.ag, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  store atomic ptr %i.d, ptr %i.aj seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26
  %i.am = ptrtoint ptr %.lcssa.i.i to i64         ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  store i64 %i.ao, ptr %4, align 8, !tbaa !112
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 24, ptr %i.ap, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !86
  %i.as = call ptr @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  store ptr %.lcssa.i.i, ptr %i.g, align 8, !tbaa !91
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %.pre7.i = ptrtoint ptr %i.ax to i64
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

bb.f:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.ay, ptr %3, align 8, !tbaa !115
  %i.az = call { ptr, i8 } @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre.i = load ptr, ptr %i.ak, align 8, !tbaa !26
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit: ; preds = %bb.e, %bb.f
  %.pre-phi.i = phi i64 [ %i.am, %bb.f ], [ %.pre7.i, %bb.e ]
  %i.ba = phi ptr [ %.pre.i, %bb.f ], [ %i.au, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %.pre-phi.i, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !90
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = add i64 %i.bc, %i.bf
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr %1, ptr %2, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bh, ptr %i.bi, align 8
  %i.bj = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZL14lean_thunk_getP11lean_object.exit, %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4lean16object_compactor10insert_refEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.lean::max_sharing_key", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.b) ; 2 uses
  %i.d = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !61
  %i.e = icmp ne ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %i.k = icmp ugt ptr %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.m = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.n = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.aa, %bb.c ]
  %i.o = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.y, %bb.c ]
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = shl i64 %i.r, 1                          ; 2 uses
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #29 ; 5 uses
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.u, %i.q                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.m, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  store ptr %i.w, ptr %i.f, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store ptr %i.x, ptr %i.g, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.m) #25
  store ptr %i.t, ptr %i.l, align 8, !tbaa !26
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !92  ; 2 uses
  %i.ab = icmp ugt ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit, !llvm.loop !111

_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit: ; preds = %bb.c, %bb.b
  %.lcssa.i.i = phi ptr [ %i.h, %bb.b ], [ %i.y, %bb.c ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.lcssa.i.i, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.ae = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.ae, align 4
end_hunk_1
begin_hunk_2_@_ZN4lean16object_compactor14insert_closureEP11lean_object:bb.a
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !92 ; 2 uses
  %i.al = icmp ugt ptr %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.i.i, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.am, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.an = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.au, %bb.j ] ; 3 uses
  %i.ao = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.bb, %bb.j ]
  %i.ap = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.az, %bb.j ]
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = shl i64 %i.as, 1                        ; 2 uses
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.at) #29 ; 5 uses
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = sub i64 %i.av, %i.ar                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.an, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  store ptr %i.ax, ptr %i.ag, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.an) #25
  store ptr %i.au, ptr %i.am, align 8, !tbaa !26
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !91 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0.i.i
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !92 ; 2 uses
  %i.bc = icmp ugt ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit, !llvm.loop !111

_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit: ; preds = %bb.j, %._crit_edge.thread
  %.lcssa.i.i = phi ptr [ %i.ai, %._crit_edge.thread ], [ %i.az, %bb.j ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i, i8 0, i64 %.0.i.i, i1 false)
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !91
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0.i.i
  store ptr %i.be, ptr %i.ag, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.lcssa.i.i, ptr nonnull align 4 %1, i64 %i.af, i1 false)
  %i.bf = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.bf, align 4
  store i32 0, ptr %.lcssa.i.i, align 4, !tbaa !123
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4
  %i.bh = and i32 %.val.i, -65536
  %i.bi = trunc i64 %i.af to i32
  %i.bj = and i32 %i.bi, 65535
  %i.bk = or disjoint i32 %i.bh, %i.bj
  store i32 %i.bk, ptr %i.bg, align 4
  br i1 %.not30, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 24 ; 5 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.bm = icmp ult i16 %.val, 4
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph34.new

.lr.ph34.new:                                     ; preds = %.lr.ph34
  %unroll_iter = and i64 %i.h, 65532
  br label %bb.q

._crit_edge35.loopexit.unr-lcssa:                 ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge35, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge35.loopexit.unr-lcssa, %.lr.ph34
  %indvars.iv37.epil.init = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next38.3, %._crit_edge35.loopexit.unr-lcssa ]
  %lcmp.mod54 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv37.epil = phi i64 [ %indvars.iv37.epil.init, %.epil.preheader ], [ %indvars.iv.next38.epil, %bb.k ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv37.epil
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !61
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv37.epil
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !61
  %indvars.iv.next38.epil = add nuw nsw i64 %indvars.iv37.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge35, label %bb.k, !llvm.loop !143

._crit_edge35:                                    ; preds = %._crit_edge35.loopexit.unr-lcssa, %bb.k, %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !26
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !144 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !110
  %.not.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge35
  store i64 %i.bw, ptr %i.bz, align 8, !tbaa !60
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !144
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.m:                                             ; preds = %._crit_edge35
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !109 ; 4 uses
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 6 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.ci = ashr exact i64 %i.cg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #27 ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 2 uses
  store i64 %i.bw, ptr %i.cp, align 8, !tbaa !60
  %i.cq = icmp sgt i64 %i.cg, 0
  br i1 %i.cq, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %i.cd, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cg) #26
  %.pre.pre = load ptr, ptr %i.bs, align 8, !tbaa !26
  %.pre42 = ptrtoint ptr %.pre.pre to i64
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %.pre41.pre-phi = phi i64 [ %.pre42, %bb.p ], [ %i.bv, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i ]
  store ptr %i.co, ptr %i.bx, align 8, !tbaa !109
  store ptr %i.cr, ptr %i.by, align 8, !tbaa !144
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  store ptr %i.cs, ptr %i.ca, align 8, !tbaa !110
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.bv, %bb.l ], [ %.pre41.pre-phi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ct = ptrtoint ptr %.lcssa.i.i to i64
  %i.cu = sub i64 %i.ct, %.pre-phi
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !90
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = add i64 %i.cu, %i.cx
  %i.cz = inttoptr i64 %i.cy to ptr
  store ptr %1, ptr %2, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cz, ptr %i.da, align 8
  %i.db = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph34.new
  %indvars.iv37 = phi i64 [ 0, %.lr.ph34.new ], [ %indvars.iv.next38.3, %bb.q ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph34.new ], [ %niter.next.3, %bb.q ]
  %i.dc = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv37
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !61
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv37
  store ptr %i.de, ptr %i.df, align 8, !tbaa !61
  %indvars.iv.next38 = or disjoint i64 %indvars.iv37, 1 ; 2 uses
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.next38
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !61
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next38
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !61
  %indvars.iv.next38.1 = or disjoint i64 %indvars.iv37, 2 ; 2 uses
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next38.1
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !61
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next38.1
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !61
  %indvars.iv.next38.2 = or disjoint i64 %indvars.iv37, 3 ; 2 uses
  %i.do = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next38.2
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !61
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next38.2
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !61
  %indvars.iv.next38.3 = add nuw nsw i64 %indvars.iv37, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge35.loopexit.unr-lcssa, label %bb.q, !llvm.loop !145

bb.r:                                             ; preds = %._crit_edge, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.028 = phi i1 [ false, %._crit_edge ], [ true, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  ret i1 %.028
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4lean16object_compactor14insert_promiseEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.lean::max_sharing_key", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.b) ; 2 uses
  %i.d = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !61
  %i.e = icmp ne ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %i.k = icmp ugt ptr %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.m = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.n = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.aa, %bb.c ]
  %i.o = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.y, %bb.c ]
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = shl i64 %i.r, 1                          ; 2 uses
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #29 ; 5 uses
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.u, %i.q                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.m, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  store ptr %i.w, ptr %i.f, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store ptr %i.x, ptr %i.g, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.m) #25
  store ptr %i.t, ptr %i.l, align 8, !tbaa !26
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !92  ; 2 uses
  %i.ab = icmp ugt ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit, !llvm.loop !111

_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit: ; preds = %bb.c, %bb.b
  %.lcssa.i.i = phi ptr [ %i.h, %bb.b ], [ %i.y, %bb.c ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.lcssa.i.i, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.ae = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.ae, align 4
  store i32 0, ptr %.lcssa.i.i, align 4, !tbaa !123
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4
  %i.ag = and i32 %.val.i, -65536
  %i.ah = or disjoint i32 %i.ag, 16
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  store ptr %i.c, ptr %i.ai, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.al = ptrtoint ptr %.lcssa.i.i to i64         ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  store i64 %i.an, ptr %4, align 8, !tbaa !112
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 16, ptr %i.ao, align 8, !tbaa !114
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !86
  %i.ar = call ptr @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  store ptr %.lcssa.i.i, ptr %i.f, align 8, !tbaa !91
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %.pre7.i = ptrtoint ptr %i.aw to i64
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

bb.e:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.ax, ptr %3, align 8, !tbaa !115
  %i.ay = call { ptr, i8 } @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !26
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit: ; preds = %bb.d, %bb.e
  %.pre-phi.i = phi i64 [ %i.al, %bb.e ], [ %.pre7.i, %bb.d ]
  %i.az = phi ptr [ %.pre.i, %bb.e ], [ %i.at, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %.pre-phi.i, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = add i64 %i.bb, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %1, ptr %2, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean16object_compactor10insert_mpzEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
_ZL22lean_usize_mul_checkedmm.exit:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true) ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 3 uses
  %.biased.i = add nuw nsw i64 %i.e, 24           ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.biased.i
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %i.k = icmp ugt ptr %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %_ZN4lean16object_compactor5allocEm.exit

.lr.ph.i:                                         ; preds = %_ZL22lean_usize_mul_checkedmm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !26
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.i
  %i.m = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.t, %bb.a ] ; 3 uses
  %i.n = phi ptr [ %i.j, %.lr.ph.i ], [ %i.aa, %bb.a ]
  %i.o = phi ptr [ %i.h, %.lr.ph.i ], [ %i.y, %bb.a ]
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = shl i64 %i.r, 1                          ; 2 uses
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #29 ; 5 uses
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.u, %i.q                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.m, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  store ptr %i.w, ptr %i.f, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store ptr %i.x, ptr %i.g, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.m) #25
  store ptr %i.t, ptr %i.l, align 8, !tbaa !26
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.biased.i
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !92  ; 2 uses
  %i.ab = icmp ugt ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.a, label %_ZN4lean16object_compactor5allocEm.exit, !llvm.loop !111

_ZN4lean16object_compactor5allocEm.exit:          ; preds = %bb.a, %_ZL22lean_usize_mul_checkedmm.exit
  %.lcssa.i = phi ptr [ %i.h, %_ZL22lean_usize_mul_checkedmm.exit ], [ %i.y, %bb.a ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i, i8 0, i64 %.biased.i, i1 false)
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.biased.i
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i32 0, ptr %.lcssa.i, align 4, !tbaa !123
  %i.ae = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  %i.af = trunc i64 %i.e to i32
  %i.ag = add i32 %i.af, 24
  %i.ah = and i32 %i.ag, 65528
  %i.ai = or disjoint i32 %i.ah, -100663296
  store i32 %i.ai, ptr %i.ae, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !151
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr align 8 %i.am, i64 %i.e, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ap = ptrtoint ptr %i.ak to i64
end_hunk_2
begin_hunk_3_@_ZN4lean16object_compactorclEP11lean_object:bb.a
._crit_edge:                                      ; preds = %bb.w, %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !102 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !128
  %.not.i.i = icmp eq ptr %i.dc, %i.da
  br i1 %.not.i.i, label %_ZNSt6vectorIP11lean_objectSaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.da, ptr %i.db, align 8, !tbaa !128
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE5clearEv.exit

_ZNSt6vectorIP11lean_objectSaIS1_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i, %._crit_edge, %_ZN4lean16object_compactor5allocEm.exit
  %i.dd = ptrtoint ptr %.lcssa.i to i64
  %i.de = ptrtoint ptr %i.aa to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.df
  %i.di = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1)
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !61
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4lean13region_readerC2EmPvS1_St6vectorINS_11region_viewESaIS3_EES2_ISt4pairImlESaIS7_EES2_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 40)) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef align 8 captures(none) %4, ptr nofree noundef align 8 captures(none) %5, ptr nofree noundef align 8 captures(none) %6) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !155
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !162
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !163
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !164
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %1
  store ptr %i.e, ptr %i.d, align 8, !tbaa !165
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.h, align 8, !tbaa !69
  store i8 0, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load <2 x ptr>, ptr %4, align 8, !tbaa !87
  store <2 x ptr> %i.j, ptr %i.i, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88
  store ptr %i.m, ptr %i.k, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load <2 x ptr>, ptr %5, align 8, !tbaa !166
  store <2 x ptr> %i.o, ptr %i.n, align 8, !tbaa !166
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !167
  store ptr %i.r, ptr %i.p, align 8, !tbaa !167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load <2 x ptr>, ptr %6, align 8, !tbaa !24
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110
  store ptr %i.w, ptr %i.u, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean13region_reader29sort_and_validate_dep_regionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.03.i.i22.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %1 = alloca %"struct.lean::region_view", align 8 ; 4 uses
  %.sroa.03.i.i12.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %.sroa.03.i.i.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %2 = alloca %"struct.lean::region_view", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 7 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_T1_"(ptr %i.b, ptr %i.d, i64 noundef %i.l)
  %i.m = icmp sgt i64 %i.h, 384
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %.preheader.i23.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.b, i64 16
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.0.018.i.idx.i.i.i = phi i64 [ 24, %.lr.ph.i.i.i.i ], [ %.sroa.0.018.i.add.i.i.i, %bb.h ] ; 4 uses
  %.pn17.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %.sroa.0.018.i.ptr.i.i.i, %bb.h ] ; 3 uses
  %.sroa.0.018.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.018.i.idx.i.i.i ; 5 uses
  %i.o = getelementptr i8, ptr %.pn17.i.i.i.i, i64 40
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !127 ; 4 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !127
  %i.p = icmp ult ptr %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i.ptr.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %i.q = icmp samesign ugt i64 %.sroa.0.018.i.idx.i.i.i, 24
  br i1 %i.q, label %bb.e, label %bb.f, !prof !96

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %.sroa.0.018.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.pn17.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !95
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i.ptr.i.i.i, i64 16, i1 false), !tbaa.struct !95
  %i.s = getelementptr i8, ptr %.pn17.i.i.i.i, i64 16
  %.val2.i9.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !127
  %i.t = icmp ult ptr %.val.i.i.i.i.i, %.val2.i9.i.i.i.i.i
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.06.010.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.018.i.ptr.i.i.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.010.i.i.i.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %i.u = getelementptr i8, ptr %.sroa.06.010.i.i.i.i.i, i64 -32
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.v = icmp ult ptr %.val.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !168

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.018.i.ptr.i.i.i, %bb.g ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0.lcssa.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !95
  %.sroa.4.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i.i.i.i, i64 16
  store ptr %.val.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i
  %.sroa.0.018.i.add.i.i.i = add nuw nsw i64 %.sroa.0.018.i.idx.i.i.i, 24 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.018.i.add.i.i.i, 384
  br i1 %i.w, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_.exit.i.i.i", label %bb.c, !llvm.loop !169

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_.exit.i.i.i": ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", label %.lr.ph.i13.i.i.i

.lr.ph.i13.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i15.i.i.i"
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.ad, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i15.i.i.i" ], [ %i.x, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_.exit.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.06.i.i.i.i, i64 16, i1 false), !tbaa.struct !95
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !61 ; 3 uses
  %i.z = getelementptr i8, ptr %.sroa.0.06.i.i.i.i, i64 -8
  %.val2.i9.i.i14.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !127
  %i.aa = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i, %.val2.i9.i.i14.i.i.i
  br i1 %i.aa, label %.lr.ph.i.i18.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i15.i.i.i"

.lr.ph.i.i18.i.i.i:                               ; preds = %.lr.ph.i13.i.i.i, %.lr.ph.i.i18.i.i.i
  %.sroa.06.010.i.i19.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i, %.lr.ph.i.i18.i.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i13.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i20.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.010.i.i19.i.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i19.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i20.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %i.ab = getelementptr i8, ptr %.sroa.06.010.i.i19.i.i.i, i64 -32
  %.val2.i.i.i21.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !127
  %i.ac = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i, %.val2.i.i.i21.i.i.i
  br i1 %i.ac, label %.lr.ph.i.i18.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i15.i.i.i", !llvm.loop !168

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i15.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i, %.lr.ph.i13.i.i.i
  %.sroa.06.0.lcssa.i.i16.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i, %.lr.ph.i13.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i, %.lr.ph.i.i18.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0.lcssa.i.i16.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i, i64 16, i1 false), !tbaa.struct !95
  %.sroa.4.0..sroa_idx4.i.i17.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i16.i.i.i, i64 16
  store ptr %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i17.i.i.i, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 24 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", label %.lr.ph.i13.i.i.i, !llvm.loop !170

.preheader.i23.i.i.i:                             ; preds = %bb.b
  %.sroa.0.016.i24.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.af = icmp eq ptr %.sroa.0.016.i24.i.i.i, %i.d
  br i1 %i.af, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", label %.lr.ph.i25.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %.preheader.i23.i.i.i
  %i.ag = getelementptr i8, ptr %i.b, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i25.i.i.i
  %.sroa.0.018.i26.i.i.i = phi ptr [ %.sroa.0.016.i24.i.i.i, %.lr.ph.i25.i.i.i ], [ %.sroa.0.0.i34.i.i.i, %bb.o ] ; 7 uses
  %.pn17.i27.i.i.i = phi ptr [ %i.b, %.lr.ph.i25.i.i.i ], [ %.sroa.0.018.i26.i.i.i, %bb.o ] ; 3 uses
  %i.ah = getelementptr i8, ptr %.pn17.i27.i.i.i, i64 40
  %.val.i.i28.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !127 ; 4 uses
  %.val1.i.i29.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !127
  %i.ai = icmp ult ptr %.val.i.i28.i.i.i, %.val1.i.i29.i.i.i
  br i1 %i.ai, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i26.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %i.aj = ptrtoint ptr %.sroa.0.018.i26.i.i.i to i64
  %i.ak = sub i64 %i.aj, %i.g                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 24
  br i1 %i.al, label %bb.k, label %bb.l, !prof !96

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.016.i24.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.ak, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = icmp eq i64 %i.ak, 24
  br i1 %i.am, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.pn17.i27.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !95
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i22.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i26.i.i.i, i64 16, i1 false), !tbaa.struct !95
  %i.ao = getelementptr i8, ptr %.pn17.i27.i.i.i, i64 16
  %.val2.i9.i.i30.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !127
  %i.ap = icmp ult ptr %.val.i.i28.i.i.i, %.val2.i9.i.i30.i.i.i
  br i1 %i.ap, label %.lr.ph.i.i35.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i31.i.i.i"

.lr.ph.i.i35.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i35.i.i.i
  %.sroa.06.010.i.i36.i.i.i = phi ptr [ %.sroa.0.0.i.i37.i.i.i, %.lr.ph.i.i35.i.i.i ], [ %.sroa.0.018.i26.i.i.i, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.010.i.i36.i.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i36.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i37.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %i.aq = getelementptr i8, ptr %.sroa.06.010.i.i36.i.i.i, i64 -32
  %.val2.i.i.i38.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.ar = icmp ult ptr %.val.i.i28.i.i.i, %.val2.i.i.i38.i.i.i
  br i1 %i.ar, label %.lr.ph.i.i35.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i31.i.i.i", !llvm.loop !168

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i31.i.i.i": ; preds = %.lr.ph.i.i35.i.i.i, %bb.n
  %.sroa.06.0.lcssa.i.i32.i.i.i = phi ptr [ %.sroa.0.018.i26.i.i.i, %bb.n ], [ %.sroa.0.0.i.i37.i.i.i, %.lr.ph.i.i35.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0.lcssa.i.i32.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i, i64 16, i1 false), !tbaa.struct !95
  %.sroa.4.0..sroa_idx4.i.i33.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i32.i.i.i, i64 16
  store ptr %.val.i.i28.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i33.i.i.i, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i22.i.i.i)
  br label %bb.o

bb.o:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i31.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i
  %.sroa.0.0.i34.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i26.i.i.i, i64 24 ; 2 uses
  %i.as = icmp eq ptr %.sroa.0.0.i34.i.i.i, %i.d
  br i1 %i.as, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", label %bb.i, !llvm.loop !169

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit": ; preds = %bb.o, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i15.i.i.i", %bb.a, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_.exit.i.i.i", %.preheader.i23.i.i.i
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !171 ; 3 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !101 ; 4 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 24                ; 2 uses
  %i.az = icmp ugt i64 %i.ay, 1
  br i1 %i.az, label %.lr.ph, label %._crit_edge

bb.p:                                             ; preds = %.lr.ph
  %i.ba = add nuw i64 %.02130, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.ay
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !172

._crit_edge:                                      ; preds = %bb.p, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit"
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !162
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = load i64, ptr %0, align 8, !tbaa !155
  %i.bf = add i64 %i.be, %i.bd
  %i.bg = icmp eq ptr %i.au, %i.at
  br i1 %i.bg, label %._crit_edge35, label %.lr.ph34

.lr.ph:                                           ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", %bb.p
  %.02130 = phi i64 [ %i.ba, %bb.p ], [ 1, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit" ] ; 2 uses
  %i.bh = getelementptr [24 x i8], ptr %i.au, i64 %.02130 ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !127
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = getelementptr i8, ptr %i.bh, i64 -16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !126
  %i.bn = add i64 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !127
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = icmp ugt i64 %i.bn, %i.bq
  br i1 %i.br, label %bb.q, label %bb.p

bb.q:                                             ; preds = %.lr.ph
  %i.bs = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, ptr noundef nonnull @.str.3)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.t:                                             ; preds = %.lr.ph34
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.023.032, i64 24 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.at
  br i1 %i.bv, label %._crit_edge35, label %.lr.ph34

._crit_edge35:                                    ; preds = %bb.t, %._crit_edge
  ret void

.lr.ph34:                                         ; preds = %._crit_edge, %bb.t
  %.sroa.023.032 = phi ptr [ %i.bu, %bb.t ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.023.032, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !127
  %i.by = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.023.032, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !126
  %i.cb = add i64 %i.ca, %i.by
  %i.cc = icmp ugt i64 %i.cb, %i.bd
  %i.cd = icmp ugt i64 %i.bf, %i.by
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond, label %bb.u, label %bb.t

bb.u:                                             ; preds = %.lr.ph34
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull @.str.4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.sink = phi ptr [ %i.ce, %bb.w ], [ %i.bs, %bb.s ]
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %i.bt, %bb.s ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4lean13region_reader7fix_mpzEP11lean_object(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j
  store ptr %i.k, ptr %i.c, align 8, !tbaa !151
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !149
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true)
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !164
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.q, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean13region_reader11fix_closureEP11lean_object(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 18
  %.val = load i16, ptr %i.b, align 2, !tbaa !140 ; 2 uses
  %i.c = zext i16 %.val to i64
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not10 = icmp eq i16 %.val, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit
  %.011 = phi ptr [ %i.a, %.lr.ph ], [ %i.ay, %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit ] ; 3 uses
  %i.j = load ptr, ptr %.011, align 8, !tbaa !61  ; 4 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 5 uses
  %i.l = and i64 %i.k, 1
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.c, label %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !162  ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
end_hunk_3
