inline.NumInlined: 3270
inline.NumDeleted: 1338
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv5gimpl7GIslandD2Ev:bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv4gapi8GBackend4PrivELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !16
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !664
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !664
  br label %_ZNSt12__shared_ptrIN2cv4gapi8GBackend4PrivELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN2cv4gapi8GBackend4PrivELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !136

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN2cv4gapi8GBackend4PrivELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv4gapi8GBackend4PrivELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7nothingES8_EE6dtor_hISA_E4helpEPNSt15aligned_storageILm32ELm8EE4typeE(ptr noundef %0) #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7nothingES8_EE6dtor_hIS8_E4helpEPNSt15aligned_storageILm32ELm8EE4typeE(ptr noundef %0) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !475    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !85
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN3ade5Graph4linkERKNS_6HandleINS_4NodeEEES5_(ptr dead_on_unwind writable sret(%"class.ade::Handle.227") align 8, ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_12HandleHasherIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN3ade6HandleINS2_4NodeEEELb1EEEEE19_M_deallocate_nodesEPS6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN3ade6HandleINS2_4NodeEEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN3ade6HandleINS2_4NodeEEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !54 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN3ade6HandleINS2_4NodeEEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85
  %.not.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !93   ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %i.k = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.k, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN3ade6HandleINS2_4NodeEEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #21, !inline_history !665
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN3ade6HandleINS2_4NodeEEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN3ade6HandleINS2_4NodeEEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %.lr.ph.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 32) #23
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN3ade6HandleINS2_4NodeEEELb1EEEEE19_M_deallocate_nodesEPS6_.exit, label %.lr.ph.i, !llvm.loop !200

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN3ade6HandleINS2_4NodeEEELb1EEEEE19_M_deallocate_nodesEPS6_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN3ade6HandleINS2_4NodeEEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !119
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN2cv5gimpl12pass_helpers8topoSortERKN3ade5GraphE(ptr dead_on_unwind writable sret(%"class.std::vector.174") align 8, ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #3

declare noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare void @_ZNK2cv5gimpl7GIsland4nameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #3

declare void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv5gimpl12_GLOBAL__N_111MergeAction8tryMergeEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::array.249", align 8   ; 5 uses
  %2 = alloca %"struct.std::array.249", align 8   ; 5 uses
  %3 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>::iterator", align 8 ; 5 uses
  %4 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>::iterator", align 8 ; 5 uses
  %5 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>::iterator", align 8 ; 5 uses
  %6 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>::iterator", align 8 ; 5 uses
  %7 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>::iterator", align 8 ; 5 uses
  %8 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>::iterator", align 8 ; 5 uses
  %9 = alloca %"class.ade::Handle.227", align 8   ; 6 uses
  %10 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::ChainRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>, ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>>::iterator", align 8 ; 5 uses
  %11 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::ChainRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>, ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>>::iterator", align 8 ; 5 uses
  %12 = alloca %"class.ade::Handle.227", align 8  ; 6 uses
  %13 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>::iterator", align 8 ; 5 uses
  %14 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>::iterator", align 8 ; 5 uses
  %15 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>::iterator", align 8 ; 5 uses
  %16 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>::iterator", align 8 ; 5 uses
  %17 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %18 = alloca %"class.ade::Handle", align 16     ; 5 uses
  %19 = alloca %"struct.std::array.249", align 8  ; 5 uses
  %20 = alloca %"struct.std::array.249", align 8  ; 5 uses
  %21 = alloca %"struct.std::array.329", align 8  ; 5 uses
  %22 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %23 = alloca %"class.ade::Handle", align 16     ; 5 uses
  %24 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %25 = alloca %"class.ade::Handle", align 16     ; 5 uses
  %26 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %27 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %28 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %29 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %30 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %31 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %32 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %33 = alloca %"class.ade::Handle.227", align 8  ; 6 uses
  %34 = alloca %"class.ade::Handle", align 8      ; 5 uses
  %35 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>, ade::Node::OutEdgeMapper>>::iterator", align 8 ; 7 uses
  %36 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %37 = alloca %"class.ade::Handle", align 16     ; 5 uses
  %38 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %39 = alloca %"class.ade::Handle", align 16     ; 5 uses
  %40 = alloca %"class.ade::ConstTypedGraph.31", align 8 ; 6 uses
  %41 = alloca %"struct.ade::util::Range::MapRange.198", align 8 ; 7 uses
  %42 = alloca %"struct.ade::util::Range::MapRange.198", align 8 ; 4 uses
  %43 = alloca %"struct.ade::util::Range::MapRange.198", align 8 ; 4 uses
  %44 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %45 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %46 = alloca %"class.ade::Handle", align 16     ; 9 uses
  %47 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %48 = alloca %"class.ade::Handle.227", align 8  ; 6 uses
  %49 = alloca %"class.ade::Handle", align 8      ; 5 uses
  %50 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>, ade::Node::OutEdgeMapper>>::iterator", align 8 ; 7 uses
  %51 = alloca %"struct.ade::util::Range::MapRange.198", align 8 ; 6 uses
  %52 = alloca %"struct.ade::util::Range::MapRange.198", align 8 ; 3 uses
  %53 = alloca %"struct.ade::util::Range::MapRange.198", align 8 ; 3 uses
  %54 = alloca %"class.ade::Handle.227", align 8  ; 6 uses
  %55 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %56 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 5 uses
  %57 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %58 = alloca %"class.ade::Handle.227", align 8  ; 6 uses
  %59 = alloca %"struct.ade::util::Range::MapRange.211", align 8 ; 5 uses
  %60 = alloca %"class.ade::Handle", align 8      ; 6 uses
  %61 = alloca %"struct.ade::util::Range::MapRange.211", align 8 ; 7 uses
  %62 = alloca %"class.ade::Handle.227", align 8  ; 6 uses
  %63 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %64 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %65 = alloca %"struct.std::__detail::_AllocNode.231", align 8 ; 4 uses
  %66 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %67 = alloca %"class.ade::Handle", align 16     ; 5 uses
  %68 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %69 = alloca %"class.ade::Handle", align 16     ; 5 uses
  %70 = alloca %"class.std::shared_ptr.220", align 16 ; 9 uses
  %71 = alloca %"class.std::shared_ptr.220", align 16 ; 9 uses
  %72 = alloca %"class.std::unordered_set.179", align 8 ; 12 uses
  %73 = alloca %"class.std::unordered_set.179", align 8 ; 19 uses
  %74 = alloca %"class.std::unordered_set.179", align 8 ; 17 uses
  %75 = alloca %"struct.ade::util::Range::MapRange.211", align 8 ; 7 uses
  %76 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>, ade::Node::InEdgeMapper>>::iterator", align 8 ; 11 uses
  %77 = alloca %"class.ade::Handle", align 8      ; 10 uses
  %78 = alloca %"class.std::unordered_set.179", align 8 ; 9 uses
  %79 = alloca %"class.std::unordered_set.179", align 8 ; 19 uses
  %80 = alloca %"struct.ade::util::Range::MapRange.198", align 8 ; 7 uses
  %81 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>, ade::Node::OutEdgeMapper>>::iterator", align 8 ; 11 uses
  %82 = alloca %"class.ade::Handle", align 8      ; 9 uses
  %83 = alloca %"class.ade::Handle", align 8      ; 7 uses
  %84 = alloca %"class.std::unordered_set.179", align 8 ; 15 uses
  %85 = alloca %"class.std::unordered_set.179", align 8 ; 15 uses
  %86 = alloca %"class.ade::Handle", align 16     ; 12 uses
  %87 = alloca %"class.ade::Handle", align 16     ; 6 uses
  %88 = alloca %"class.ade::Handle", align 8      ; 7 uses
  %89 = alloca %"struct.cv::gimpl::(anonymous namespace)::MergeAction::MergeObjects", align 8 ; 44 uses
  %90 = alloca %"class.std::shared_ptr.220", align 16 ; 7 uses
  %91 = alloca %"class.std::shared_ptr.220", align 16 ; 8 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %93 = alloca %"class.std::allocator.71", align 1 ; 3 uses
  %94 = alloca %"class.cv::util::optional", align 8 ; 16 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %98 = alloca %"class.std::allocator.71", align 1 ; 3 uses
  %99 = alloca %"class.cv::util::optional", align 8 ; 11 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %101 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %102 = alloca %"class.std::shared_ptr.220", align 8 ; 7 uses
  %103 = alloca %"class.ade::Handle", align 16    ; 12 uses
  %104 = alloca %"class.std::vector.315", align 8 ; 13 uses
  %.sroa.0969 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 2 uses
  %105 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 5 uses
  %106 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 5 uses
  %107 = alloca %"class.ade::Handle.227", align 16 ; 8 uses
  %108 = alloca %"class.ade::Handle", align 8     ; 6 uses
  %109 = alloca %"class.std::vector.315", align 8 ; 13 uses
  %.sroa.0958 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 2 uses
  %110 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 5 uses
  %111 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 5 uses
  %112 = alloca %"class.ade::Handle.227", align 16 ; 8 uses
  %113 = alloca %"class.ade::Handle", align 8     ; 6 uses
  %114 = alloca %"class.ade::Handle", align 16    ; 11 uses
  %115 = alloca %"struct.ade::util::Range::MapRange.211", align 8 ; 6 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %117 = alloca %"class.std::allocator.71", align 1 ; 3 uses
  %118 = alloca %"class.ade::Handle", align 8     ; 6 uses
  %119 = alloca %"struct.ade::util::Range::MapRange.211", align 8 ; 7 uses
  %120 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %121 = alloca %"class.std::allocator.71", align 1 ; 3 uses
  %122 = alloca %"class.std::vector.315", align 8 ; 11 uses
  %123 = alloca %"struct.ade::util::Range::ChainRange.321", align 8 ; 7 uses
  %124 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 5 uses
  %125 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 5 uses
  %126 = alloca %"class.ade::Handle.227", align 16 ; 6 uses
  %127 = alloca %"class.ade::Handle", align 16    ; 13 uses
  %128 = alloca %"struct.ade::util::Range::MapRange.211", align 8 ; 6 uses
  %129 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %130 = alloca %"class.std::allocator.71", align 1 ; 3 uses
  %131 = alloca %"class.ade::Handle", align 8     ; 6 uses
  %132 = alloca %"struct.ade::util::Range::MapRange.211", align 8 ; 7 uses
  %133 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %134 = alloca %"class.std::allocator.71", align 1 ; 3 uses
  %135 = alloca %"class.ade::Handle.227", align 8 ; 6 uses
  %136 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 6 uses
  %137 = alloca %"class.std::vector.315", align 8 ; 12 uses
  %.sroa.0934 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 2 uses
  %138 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 5 uses
  %139 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 5 uses
  %140 = alloca %"class.ade::Handle.227", align 16 ; 7 uses
  %141 = alloca %"class.ade::Handle", align 8     ; 6 uses
  %142 = alloca %"class.std::vector.315", align 8 ; 13 uses
  %.sroa.0923 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 2 uses
  %143 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 5 uses
  %144 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 5 uses
  %145 = alloca %"class.ade::Handle.227", align 16 ; 8 uses
  %146 = alloca %"class.ade::Handle", align 8     ; 6 uses
  %147 = alloca %"class.std::vector.315", align 8 ; 13 uses
  %.sroa.0912 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 2 uses
  %148 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 5 uses
  %149 = alloca %"struct.ade::util::Range::MapRange.200", align 8 ; 5 uses
  %150 = alloca %"class.ade::Handle.227", align 16 ; 8 uses
  %151 = alloca %"class.ade::Handle", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #21, !noalias !666
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69), !noalias !666
  %i.c = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !669
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101, !noalias !669 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.b, align 8, !tbaa !38, !noalias !669
  store <2 x ptr> %i.h, ptr %69, align 16, !tbaa !38, !noalias !669
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !669
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !93, !noalias !672
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !93, !noalias !672
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !672 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i:       ; preds = %bb.d, %bb.c, %bb.a
  %i.n = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK3ade5Graph8metadataENS_6HandleINS_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.d, ptr noundef nonnull align 8 %69)
          to label %bb.e unwind label %bb.j, !noalias !672 ; 5 uses

bb.e:                                             ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !101, !noalias !669 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !669
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.p, align 4, !tbaa !93, !noalias !672 ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !93, !noalias !672
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4, !noalias !672
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.r, %bb.g ], [ %i.t, %bb.h ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.i, label %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !17, !noalias !672
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !noalias !672
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #21, !noalias !672, !inline_history !673
  br label %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit.i

bb.j:                                             ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !101, !noalias !669 ; 4 uses
  %.not.i.i.i4.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i4.i.i, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !669
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !93, !noalias !672 ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !93, !noalias !672
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i

bb.m:                                             ; preds = %bb.k
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4, !noalias !672
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i7.i.i = phi i32 [ %i.ac, %bb.l ], [ %i.ae, %bb.m ]
end_hunk_0
begin_hunk_1_@_ZN2cv5gimpl12_GLOBAL__N_111MergeAction8tryMergeEv:bb.a

bb.dr:                                            ; preds = %bb.dp
  %i.nx = atomicrmw volatile add ptr %i.nt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.dr, %bb.dq
  %.0.i.i.i.i.i.i = phi i32 [ %i.nv, %bb.dq ], [ %i.nx, %bb.dr ]
  %i.ny = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ny, label %bb.ds, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i

bb.ds:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.nz = load ptr, ptr %i.ns, align 8, !tbaa !17
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #21, !inline_history !717
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i

_ZN3ade6HandleINS_4NodeEED2Ev.exit.i:             ; preds = %bb.ds, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #21, !noalias !666
  %i.oc = load ptr, ptr %76, align 8, !tbaa !268, !noalias !666
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 3 uses
  store ptr %i.od, ptr %76, align 8, !tbaa !268, !noalias !666
  %i.oe = load ptr, ptr %i.hc, align 8, !tbaa !246, !noalias !666
  %i.of = icmp eq ptr %i.od, %i.oe
  br i1 %i.of, label %._crit_edge.i, label %bb.bf

.body141.i:                                       ; preds = %bb.dn, %bb.dd, %_ZN3ade6HandleINS_4NodeEED2Ev.exit23.i.i, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i133.i
  %.pn65.i = phi { ptr, i32 } [ %.pn63.i, %bb.dn ], [ %i.mq, %bb.dd ], [ %i.lh, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i133.i ], [ %i.md, %_ZN3ade6HandleINS_4NodeEED2Ev.exit23.i.i ] ; 3 uses
  %i.og = load ptr, ptr %i.hk, align 8, !tbaa !101, !noalias !666 ; 4 uses
  %.not.i.i.i153.i = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i153.i, label %.body124.i, label %bb.dt

bb.dt:                                            ; preds = %.body141.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 12 ; 3 uses
  %i.oi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i154.i = icmp eq i8 %i.oi, 0
  br i1 %.not.i.i.i.i154.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.oj = load i32, ptr %i.oh, align 4, !tbaa !93 ; 2 uses
  %i.ok = add nsw i32 %i.oj, -1
  store i32 %i.ok, ptr %i.oh, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i155.i

bb.dv:                                            ; preds = %bb.dt
  %i.ol = atomicrmw volatile add ptr %i.oh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i155.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i155.i: ; preds = %bb.dv, %bb.du
  %.0.i.i.i.i.i156.i = phi i32 [ %i.oj, %bb.du ], [ %i.ol, %bb.dv ]
  %i.om = icmp eq i32 %.0.i.i.i.i.i156.i, 1
  br i1 %i.om, label %bb.dw, label %.body124.i

bb.dw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i155.i
  %i.on = load ptr, ptr %i.og, align 8, !tbaa !17
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #21, !inline_history !717
  br label %.body124.i

.body124.i:                                       ; preds = %bb.dw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i155.i, %.body141.i, %bb.dc, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i
  %.pn65.pn.i = phi { ptr, i32 } [ %i.in, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i ], [ %i.mp, %bb.dc ], [ %.pn65.i, %.body141.i ], [ %.pn65.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i155.i ], [ %.pn65.i, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #21, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #21, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #21, !noalias !666
  br label %bb.qe

bb.dx:                                            ; preds = %._crit_edge.i
  %i.oq = load i8, ptr %i.hy, align 8
  store i8 %i.oq, ptr %79, align 8, !noalias !666
  %i.or = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 3 uses
  store ptr null, ptr %i.or, align 8, !tbaa !113, !noalias !666
  %i.os = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !119
  store i64 %i.ou, ptr %i.os, align 8, !tbaa !119, !noalias !666
  %i.ov = getelementptr inbounds nuw i8, ptr %79, i64 24 ; 3 uses
  store ptr null, ptr %i.ov, align 8, !tbaa !54, !noalias !666
  %i.ow = getelementptr inbounds nuw i8, ptr %79, i64 32 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !316
  store i64 %i.oy, ptr %i.ow, align 8, !tbaa !316, !noalias !666
  %i.oz = getelementptr inbounds nuw i8, ptr %79, i64 40 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oz, ptr noundef nonnull align 8 dereferenceable(16) %i.pa, i64 16, i1 false), !tbaa.struct !678
  %i.pb = getelementptr inbounds nuw i8, ptr %79, i64 56 ; 2 uses
  store ptr null, ptr %i.pb, align 8, !tbaa !625, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #21, !noalias !666
  store ptr %79, ptr %55, align 8, !tbaa !127, !noalias !666
  invoke void @_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_12HandleHasherIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSG_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(64) %79, ptr noundef nonnull align 8 dereferenceable(64) %i.hy, ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %bb.dy unwind label %bb.ej

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #21, !noalias !666
  %i.pc = load ptr, ptr %i.f, align 8, !tbaa !101, !noalias !718, !nonnull !30, !noundef !30 ; 7 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 7 uses
  %i.pe = load atomic i32, ptr %i.pd monotonic, align 8, !noalias !721
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dz, %bb.dy
  %.06.i.i.i.i.i.i.i161.i = phi i32 [ %i.pe, %bb.dy ], [ %i.pi, %bb.dz ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i162.i = icmp ne i32 %.06.i.i.i.i.i.i.i161.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i162.i)
  %i.pf = add nsw i32 %.06.i.i.i.i.i.i.i161.i, 1
  %i.pg = cmpxchg weak ptr %i.pd, i32 %.06.i.i.i.i.i.i.i161.i, i32 %i.pf acq_rel monotonic, align 8, !noalias !721 ; 2 uses
  %i.ph = extractvalue { i32, i1 } %i.pg, 1
  %i.pi = extractvalue { i32, i1 } %i.pg, 0
  br i1 %i.ph, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i163.i, label %bb.dz, !llvm.loop !134

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i163.i: ; preds = %bb.dz
  %i.pj = load atomic i32, ptr %i.pd monotonic, align 8, !noalias !721
  %.not.i.i.i.i.i164.i = icmp eq i32 %i.pj, 0
  br i1 %.not.i.i.i.i.i164.i, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i165.i, label %bb.ea

bb.ea:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i163.i
  %i.pk = load ptr, ptr %i.b, align 8, !tbaa !98, !noalias !718
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i165.i

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i165.i: ; preds = %bb.ea, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i163.i
  %i.pl = phi ptr [ %i.pk, %bb.ea ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i163.i ] ; 2 uses
  %i.pm = load atomic i64, ptr %i.pd acquire, align 8 ; 2 uses
  %i.pn = icmp eq i64 %i.pm, 4294967297
  %i.po = trunc i64 %i.pm to i32                  ; 2 uses
  br i1 %i.pn, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i165.i
  store i32 0, ptr %i.pd, align 8, !tbaa !14
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pc, i64 12
  store i32 0, ptr %i.pp, align 4, !tbaa !16
  %i.pq = load ptr, ptr %i.pc, align 8, !tbaa !17
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8
  call void %i.ps(ptr noundef nonnull align 8 dereferenceable(16) %i.pc) #21, !inline_history !685
  %i.pt = load ptr, ptr %i.pc, align 8, !tbaa !17
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.pv = load ptr, ptr %i.pu, align 8
  call void %i.pv(ptr noundef nonnull align 8 dereferenceable(16) %i.pc) #21, !inline_history !685
  br label %bb.eg

bb.ec:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i165.i
  %i.pw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i1.i.i166.i = icmp eq i8 %i.pw, 0
  br i1 %.not.i.i.i1.i.i166.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.px = add nsw i32 %i.po, -1
  store i32 %i.px, ptr %i.pd, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i167.i

bb.ee:                                            ; preds = %bb.ec
  %i.py = atomicrmw volatile add ptr %i.pd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i167.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i167.i: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i.i.i168.i = phi i32 [ %i.po, %bb.ed ], [ %i.py, %bb.ee ]
  %i.pz = icmp eq i32 %.0.i.i.i.i.i.i168.i, 1
  br i1 %i.pz, label %bb.ef, label %bb.eg, !prof !136

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i167.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pc) #21
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i167.i, %bb.eb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pl) ]
  invoke void @_ZN3ade4Node8outNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.198") align 8 %80, ptr noundef nonnull align 8 dereferenceable(72) %i.pl)
          to label %bb.eh unwind label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #21, !noalias !666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %81, ptr noundef nonnull align 8 dereferenceable(25) %80, i64 25, i1 false), !noalias !666
  %i.qa = getelementptr inbounds nuw i8, ptr %81, i64 32 ; 2 uses
  store i8 0, ptr %i.qa, align 8, !tbaa !269, !alias.scope !722, !noalias !666
  %i.qb = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 2 uses
  %i.qc = load ptr, ptr %81, align 8, !tbaa !246, !noalias !666 ; 2 uses
  %i.qd = load ptr, ptr %i.qb, align 8, !tbaa !246, !noalias !666
  %i.qe = icmp eq ptr %i.qc, %i.qd
  br i1 %i.qe, label %._crit_edge619.i, label %.lr.ph618.i

.lr.ph618.i:                                      ; preds = %bb.eh
  %.sroa.5462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %80, i64 8
  %.sroa.5462.0.copyload.i = load ptr, ptr %.sroa.5462.0..sroa_idx.i, align 8, !noalias !666
  %.sroa.0461.0.copyload.i = load ptr, ptr %80, align 8, !noalias !666
  %i.qf = icmp eq ptr %.sroa.0461.0.copyload.i, %.sroa.5462.0.copyload.i
  %i.qg = getelementptr inbounds nuw i8, ptr %81, i64 16
  %i.qh = getelementptr inbounds nuw i8, ptr %81, i64 24
  %i.qi = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 5 uses
  %.sroa.026.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %51, i64 8
  %.sroa.026.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.qk = getelementptr inbounds nuw i8, ptr %50, i64 24
  %i.ql = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 8
  %.sroa.810.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.qo = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 2 uses
  br label %bb.ei

bb.ei:                                            ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit218.i, %.lr.ph618.i
  %.sroa.026.sroa.3.i.i.sroa.0.0 = phi <16 x i8> [ undef, %.lr.ph618.i ], [ %.sroa.026.sroa.3.i.i.sroa.0.0.vecblend, %_ZN3ade6HandleINS_4NodeEED2Ev.exit218.i ]
  %i.qp = phi ptr [ %i.qc, %.lr.ph618.i ], [ %i.zy, %_ZN3ade6HandleINS_4NodeEED2Ev.exit218.i ]
  %i.qq = load i8, ptr %i.qa, align 8, !tbaa !269, !range !247, !noalias !666, !noundef !30
  %i.qr = trunc nuw i8 %i.qq to i1
  %or.cond475.i = select i1 %i.qr, i1 %i.qf, i1 false
  br i1 %or.cond475.i, label %._crit_edge619.i, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i

._crit_edge619.i:                                 ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit218.i, %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #21, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #21, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #21, !noalias !666
  %i.qs = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %84, i64 56 ; 2 uses
  store ptr %i.qt, ptr %i.qs, align 8, !tbaa !113, !noalias !666
  %i.qu = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 4 uses
  store i64 1, ptr %i.qu, align 8, !tbaa !119, !noalias !666
  %i.qv = getelementptr inbounds nuw i8, ptr %84, i64 24 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %84, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qv, i8 0, i64 16, i1 false), !noalias !666
  store float 1.000000e+00, ptr %i.qw, align 8, !tbaa !120, !noalias !666
  %i.qx = getelementptr inbounds nuw i8, ptr %84, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qx, i8 0, i64 16, i1 false), !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #21, !noalias !666
  %i.qy = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %85, i64 56 ; 2 uses
  store ptr %i.qz, ptr %i.qy, align 8, !tbaa !113, !noalias !666
  %i.ra = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 4 uses
  store i64 1, ptr %i.ra, align 8, !tbaa !119, !noalias !666
  %i.rb = getelementptr inbounds nuw i8, ptr %85, i64 24 ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %85, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rb, i8 0, i64 16, i1 false), !noalias !666
  store float 1.000000e+00, ptr %i.rc, align 8, !tbaa !120, !noalias !666
  %i.rd = getelementptr inbounds nuw i8, ptr %85, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false), !noalias !666
  %i.re = load ptr, ptr %i.er, align 8, !tbaa !193, !noalias !666 ; 2 uses
  %.not621.i = icmp eq ptr %i.re, null
  br i1 %.not621.i, label %._crit_edge630.i, label %.lr.ph624.i

.lr.ph624.i:                                      ; preds = %._crit_edge619.i
  %i.rf = getelementptr inbounds nuw i8, ptr %86, i64 8 ; 8 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rk = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %40, i64 40
  %.sroa.03.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %41, i64 8
  %.sroa.03.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.rm = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.rn = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i277.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.810.0..sroa_idx.i.i.i278.i = getelementptr inbounds nuw i8, ptr %35, i64 32
  br label %bb.hs

bb.ej:                                            ; preds = %bb.dx, %._crit_edge.i
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.qd

bb.ek:                                            ; preds = %bb.eg
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.qc

_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i: ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #21, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #21, !noalias !725
  %i.rs = load ptr, ptr %i.qp, align 8, !tbaa !251, !noalias !730
  invoke void @_ZNK3ade4Node12HandleMapperclEPNS_4EdgeE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle.227") align 8 %54, ptr noundef nonnull align 1 dereferenceable(1) %i.qg, ptr noundef %i.rs)
          to label %.noexc180.i unwind label %bb.hc

.noexc180.i:                                      ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i
  invoke void @_ZNK3ade4Node13OutEdgeMapperclERKNS_6HandleINS_4EdgeEEE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle") align 8 %82, ptr noundef nonnull align 1 dereferenceable(1) %i.qh, ptr noundef nonnull align 8 dereferenceable(16) %54)
          to label %bb.el unwind label %bb.eq

bb.el:                                            ; preds = %.noexc180.i
  %i.rt = load ptr, ptr %i.qi, align 8, !tbaa !101, !noalias !725 ; 4 uses
  %.not.i.i.i.i.i176.i = icmp eq ptr %i.rt, null
  br i1 %.not.i.i.i.i.i176.i, label %bb.ev, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 12 ; 3 uses
  %i.rv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !725
  %.not.i.i.i.i.i.i177.i = icmp eq i8 %i.rv, 0
  br i1 %.not.i.i.i.i.i.i177.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.rw = load i32, ptr %i.ru, align 4, !tbaa !93 ; 2 uses
  %i.rx = add nsw i32 %i.rw, -1
  store i32 %i.rx, ptr %i.ru, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i178.i

bb.eo:                                            ; preds = %bb.em
  %i.ry = atomicrmw volatile add ptr %i.ru, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i178.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i178.i: ; preds = %bb.eo, %bb.en
  %.0.i.i.i.i.i.i.i179.i = phi i32 [ %i.rw, %bb.en ], [ %i.ry, %bb.eo ]
  %i.rz = icmp eq i32 %.0.i.i.i.i.i.i.i179.i, 1
  br i1 %i.rz, label %bb.ep, label %bb.ev

bb.ep:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i178.i
  %i.sa = load ptr, ptr %i.rt, align 8, !tbaa !17
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %i.sc = load ptr, ptr %i.sb, align 8
  call void %i.sc(ptr noundef nonnull align 8 dereferenceable(16) %i.rt) #21, !inline_history !733
  br label %bb.ev

bb.eq:                                            ; preds = %.noexc180.i
  %i.sd = landingpad { ptr, i32 }
          cleanup
  %i.se = load ptr, ptr %i.qi, align 8, !tbaa !101, !noalias !725 ; 4 uses
  %.not.i.i.i2.i.i171.i = icmp eq ptr %i.se, null
  br i1 %.not.i.i.i2.i.i171.i, label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i175.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 12 ; 3 uses
  %i.sg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !725
  %.not.i.i.i.i3.i.i172.i = icmp eq i8 %i.sg, 0
  br i1 %.not.i.i.i.i3.i.i172.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.sh = load i32, ptr %i.sf, align 4, !tbaa !93 ; 2 uses
  %i.si = add nsw i32 %i.sh, -1
  store i32 %i.si, ptr %i.sf, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i173.i

bb.et:                                            ; preds = %bb.er
  %i.sj = atomicrmw volatile add ptr %i.sf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i173.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i173.i: ; preds = %bb.et, %bb.es
  %.0.i.i.i.i.i5.i.i174.i = phi i32 [ %i.sh, %bb.es ], [ %i.sj, %bb.et ]
  %i.sk = icmp eq i32 %.0.i.i.i.i.i5.i.i174.i, 1
  br i1 %i.sk, label %bb.eu, label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i175.i

bb.eu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i173.i
  %i.sl = load ptr, ptr %i.se, align 8, !tbaa !17
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8
  call void %i.sn(ptr noundef nonnull align 8 dereferenceable(16) %i.se) #21, !inline_history !733
  br label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i175.i

_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i175.i:     ; preds = %bb.eu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i173.i, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21, !noalias !725
  br label %.body181.i

bb.ev:                                            ; preds = %bb.ep, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i178.i, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21, !noalias !725
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21, !noalias !666
  %i.so = load ptr, ptr %i.qj, align 8, !tbaa !101, !noalias !734, !nonnull !30, !noundef !30 ; 7 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8 ; 7 uses
  %i.sq = load atomic i32, ptr %i.sp monotonic, align 8, !noalias !737
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %bb.ev
  %.06.i.i.i.i.i.i.i.i183.i = phi i32 [ %i.sq, %bb.ev ], [ %i.su, %bb.ew ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i.i184.i = icmp ne i32 %.06.i.i.i.i.i.i.i.i183.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i.i184.i)
  %i.sr = add nsw i32 %.06.i.i.i.i.i.i.i.i183.i, 1
  %i.ss = cmpxchg weak ptr %i.sp, i32 %.06.i.i.i.i.i.i.i.i183.i, i32 %i.sr acq_rel monotonic, align 8, !noalias !737 ; 2 uses
  %i.st = extractvalue { i32, i1 } %i.ss, 1
  %i.su = extractvalue { i32, i1 } %i.ss, 0
  br i1 %i.st, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i185.i, label %bb.ew, !llvm.loop !134

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i185.i: ; preds = %bb.ew
  %i.sv = load atomic i32, ptr %i.sp monotonic, align 8, !noalias !737 ; 0 uses
  %i.sw = load ptr, ptr %82, align 8, !noalias !666
  %i.sx = load atomic i64, ptr %i.sp acquire, align 8 ; 2 uses
  %i.sy = icmp eq i64 %i.sx, 4294967297
  %i.sz = trunc i64 %i.sx to i32                  ; 2 uses
  br i1 %i.sy, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i185.i
  store i32 0, ptr %i.sp, align 8, !tbaa !14
  %i.ta = getelementptr inbounds nuw i8, ptr %i.so, i64 12
  store i32 0, ptr %i.ta, align 4, !tbaa !16
  %i.tb = load ptr, ptr %i.so, align 8, !tbaa !17
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.td = load ptr, ptr %i.tc, align 8
  call void %i.td(ptr noundef nonnull align 8 dereferenceable(16) %i.so) #21, !inline_history !738
  %i.te = load ptr, ptr %i.so, align 8, !tbaa !17
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.tg = load ptr, ptr %i.tf, align 8
  call void %i.tg(ptr noundef nonnull align 8 dereferenceable(16) %i.so) #21, !inline_history !738
  br label %_ZNK3ade6HandleINS_4NodeEEptEv.exit.i191.i

bb.ey:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i185.i
  %i.th = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i1.i.i.i188.i = icmp eq i8 %i.th, 0
  br i1 %.not.i.i.i1.i.i.i188.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ti = add nsw i32 %i.sz, -1
  store i32 %i.ti, ptr %i.sp, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i189.i

bb.fa:                                            ; preds = %bb.ey
  %i.tj = atomicrmw volatile add ptr %i.sp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i189.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i189.i: ; preds = %bb.fa, %bb.ez
  %.0.i.i.i.i.i.i.i190.i = phi i32 [ %i.sz, %bb.ez ], [ %i.tj, %bb.fa ]
  %i.tk = icmp eq i32 %.0.i.i.i.i.i.i.i190.i, 1
  br i1 %i.tk, label %bb.fb, label %_ZNK3ade6HandleINS_4NodeEEptEv.exit.i191.i, !prof !136

bb.fb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i189.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.so) #21
  br label %_ZNK3ade6HandleINS_4NodeEEptEv.exit.i191.i

_ZNK3ade6HandleINS_4NodeEEptEv.exit.i191.i:       ; preds = %bb.fb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i189.i, %bb.ex
  invoke void @_ZN3ade4Node8outNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.198") align 8 %51, ptr noundef nonnull align 8 dereferenceable(72) %i.sw)
          to label %.noexc197.i unwind label %.loopexit.split-lp499.i

.noexc197.i:                                      ; preds = %_ZNK3ade6HandleINS_4NodeEEptEv.exit.i191.i
  %.sroa.026.sroa.0.0.copyload.i.i = load ptr, ptr %51, align 8, !noalias !666 ; 2 uses
  %.sroa.026.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.026.sroa.2.0..sroa_idx.i.i, align 8, !noalias !666 ; 5 uses
  %.sroa.026.sroa.3.i.i.sroa.0.0.copyload2348 = load <9 x i8>, ptr %.sroa.026.sroa.3.0..sroa_idx.i.i, align 8, !noalias !666
  %.sroa.026.sroa.3.i.i.sroa.0.0.vec.expand = shufflevector <9 x i8> %.sroa.026.sroa.3.i.i.sroa.0.0.copyload2348, <9 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.026.sroa.3.i.i.sroa.0.0.vecblend = shufflevector <16 x i8> %.sroa.026.sroa.3.i.i.sroa.0.0.vec.expand, <16 x i8> %.sroa.026.sroa.3.i.i.sroa.0.0, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21, !noalias !666
  %i.tl = load ptr, ptr %i.qj, align 8, !tbaa !101, !noalias !739, !nonnull !30, !noundef !30 ; 7 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 7 uses
  %i.tn = load atomic i32, ptr %i.tm monotonic, align 8, !noalias !742
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fc, %.noexc197.i
  %.06.i.i.i.i.i.i.i5.i.i = phi i32 [ %i.tn, %.noexc197.i ], [ %i.tr, %bb.fc ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i6.i.i = icmp ne i32 %.06.i.i.i.i.i.i.i5.i.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i6.i.i)
  %i.to = add nsw i32 %.06.i.i.i.i.i.i.i5.i.i, 1
  %i.tp = cmpxchg weak ptr %i.tm, i32 %.06.i.i.i.i.i.i.i5.i.i, i32 %i.to acq_rel monotonic, align 8, !noalias !742 ; 2 uses
  %i.tq = extractvalue { i32, i1 } %i.tp, 1
  %i.tr = extractvalue { i32, i1 } %i.tp, 0
  br i1 %i.tq, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i7.i.i, label %bb.fc, !llvm.loop !134

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i7.i.i: ; preds = %bb.fc
  %i.ts = load atomic i32, ptr %i.tm monotonic, align 8, !noalias !742 ; 0 uses
  %i.tt = load ptr, ptr %82, align 8, !noalias !666
  %i.tu = load atomic i64, ptr %i.tm acquire, align 8 ; 2 uses
  %i.tv = icmp eq i64 %i.tu, 4294967297
  %i.tw = trunc i64 %i.tu to i32                  ; 2 uses
  br i1 %i.tv, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i7.i.i
  store i32 0, ptr %i.tm, align 8, !tbaa !14
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tl, i64 12
  store i32 0, ptr %i.tx, align 4, !tbaa !16
  %i.ty = load ptr, ptr %i.tl, align 8, !tbaa !17
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8
  call void %i.ua(ptr noundef nonnull align 8 dereferenceable(16) %i.tl) #21, !inline_history !738
  %i.ub = load ptr, ptr %i.tl, align 8, !tbaa !17
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 24
  %i.ud = load ptr, ptr %i.uc, align 8
  call void %i.ud(ptr noundef nonnull align 8 dereferenceable(16) %i.tl) #21, !inline_history !738
  br label %_ZNK3ade6HandleINS_4NodeEEptEv.exit13.i.i

bb.fe:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i7.i.i
  %i.ue = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i1.i.i10.i.i = icmp eq i8 %i.ue, 0
  br i1 %.not.i.i.i1.i.i10.i.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.uf = add nsw i32 %i.tw, -1
  store i32 %i.uf, ptr %i.tm, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i11.i.i

bb.fg:                                            ; preds = %bb.fe
  %i.ug = atomicrmw volatile add ptr %i.tm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i11.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i11.i.i: ; preds = %bb.fg, %bb.ff
  %.0.i.i.i.i.i.i12.i.i = phi i32 [ %i.tw, %bb.ff ], [ %i.ug, %bb.fg ]
  %i.uh = icmp eq i32 %.0.i.i.i.i.i.i12.i.i, 1
  br i1 %i.uh, label %bb.fh, label %_ZNK3ade6HandleINS_4NodeEEptEv.exit13.i.i, !prof !136

bb.fh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i11.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tl) #21
  br label %_ZNK3ade6HandleINS_4NodeEEptEv.exit13.i.i

_ZNK3ade6HandleINS_4NodeEEptEv.exit13.i.i:        ; preds = %bb.fh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i11.i.i, %bb.fd
  invoke void @_ZN3ade4Node8outNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.198") align 8 %52, ptr noundef nonnull align 8 dereferenceable(72) %i.tt)
          to label %.noexc198.i unwind label %.loopexit.split-lp499.i

.noexc198.i:                                      ; preds = %_ZNK3ade6HandleINS_4NodeEEptEv.exit13.i.i
  %i.ui = icmp eq ptr %.sroa.026.sroa.0.0.copyload.i.i, %.sroa.026.sroa.2.0.copyload.i.i
  br i1 %i.ui, label %_ZSt7find_ifIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKNS0_6HandleISG_EEST_EUlST_E_ET_SV_SV_T0_.exit.i.i, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i.i.i

_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i.i.i: ; preds = %.noexc198.i, %bb.gn
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.xn, %bb.gn ], [ %.sroa.026.sroa.0.0.copyload.i.i, %.noexc198.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50), !noalias !743
  store ptr %.sroa.0.0.i.i.i.i, ptr %50, align 8, !noalias !743
  store ptr %.sroa.026.sroa.2.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !743
  store <16 x i8> %.sroa.026.sroa.3.i.i.sroa.0.0.vecblend, ptr %i.ql, align 8, !noalias !666
  store i8 0, ptr %.sroa.810.0..sroa_idx.i.i.i.i, align 8, !noalias !743
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21, !noalias !743
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21, !noalias !750
  %i.uj = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !251, !noalias !755
  invoke void @_ZNK3ade4Node12HandleMapperclEPNS_4EdgeE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle.227") align 8 %48, ptr noundef nonnull align 1 dereferenceable(1) %i.ql, ptr noundef %i.uj)
          to label %.noexc199.i unwind label %.loopexit498.i

.noexc199.i:                                      ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i.i.i
  invoke void @_ZNK3ade4Node13OutEdgeMapperclERKNS_6HandleINS_4EdgeEEE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle") align 8 %49, ptr noundef nonnull align 1 dereferenceable(1) %i.qk, ptr noundef nonnull align 8 dereferenceable(16) %48)
          to label %bb.fi unwind label %bb.fn, !noalias !758

bb.fi:                                            ; preds = %.noexc199.i
  %i.uk = load ptr, ptr %i.qm, align 8, !tbaa !101, !noalias !750 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.uk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i.i.i.i.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 12 ; 3 uses
  %i.um = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !750
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.um, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.un = load i32, ptr %i.ul, align 4, !tbaa !93, !noalias !758 ; 2 uses
  %i.uo = add nsw i32 %i.un, -1
  store i32 %i.uo, ptr %i.ul, align 4, !tbaa !93, !noalias !758
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.fl:                                            ; preds = %bb.fj
  %i.up = atomicrmw volatile add ptr %i.ul, i32 -1 acq_rel, align 4, !noalias !758
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.un, %bb.fk ], [ %i.up, %bb.fl ]
  %i.uq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.uq, label %bb.fm, label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i.i.i.i.i.i

bb.fm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ur = load ptr, ptr %i.uk, align 8, !tbaa !17, !noalias !758
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 24
  %i.ut = load ptr, ptr %i.us, align 8, !noalias !758
  call void %i.ut(ptr noundef nonnull align 8 dereferenceable(16) %i.uk) #21, !noalias !758, !inline_history !759
  br label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i.i.i.i.i.i

bb.fn:                                            ; preds = %.noexc199.i
  %i.uu = landingpad { ptr, i32 }
          cleanup
  %i.uv = load ptr, ptr %i.qm, align 8, !tbaa !101, !noalias !750 ; 4 uses
  %.not.i.i.i2.i.i.i.i.i.i.i.i = icmp eq ptr %i.uv, null
  br i1 %.not.i.i.i2.i.i.i.i.i.i.i.i, label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 12 ; 3 uses
  %i.ux = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !750
  %.not.i.i.i.i3.i.i.i.i.i.i.i.i = icmp eq i8 %i.ux, 0
  br i1 %.not.i.i.i.i3.i.i.i.i.i.i.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.uy = load i32, ptr %i.uw, align 4, !tbaa !93, !noalias !758 ; 2 uses
  %i.uz = add nsw i32 %i.uy, -1
  store i32 %i.uz, ptr %i.uw, align 4, !tbaa !93, !noalias !758
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i.i.i.i.i.i

bb.fq:                                            ; preds = %bb.fo
  %i.va = atomicrmw volatile add ptr %i.uw, i32 -1 acq_rel, align 4, !noalias !758
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i.i.i.i.i.i: ; preds = %bb.fq, %bb.fp
  %.0.i.i.i.i.i5.i.i.i.i.i.i.i.i = phi i32 [ %i.uy, %bb.fp ], [ %i.va, %bb.fq ]
  %i.vb = icmp eq i32 %.0.i.i.i.i.i5.i.i.i.i.i.i.i.i, 1
  br i1 %i.vb, label %bb.fr, label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i.i

bb.fr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i.i.i.i.i.i
  %i.vc = load ptr, ptr %i.uv, align 8, !tbaa !17, !noalias !758
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8, !noalias !758
  call void %i.ve(ptr noundef nonnull align 8 dereferenceable(16) %i.uv) #21, !noalias !758, !inline_history !759
  br label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i.i

_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i.i: ; preds = %bb.fr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i.i.i.i.i.i, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21, !noalias !750
  br label %.body200.i

_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i.i.i.i.i.i: ; preds = %bb.fm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21, !noalias !750
  %i.vf = load ptr, ptr %i.qn, align 8, !tbaa !101, !noalias !760 ; 8 uses
  %.not.i.i.i.i.i.i424.i = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i.i.i.i424.i, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i.i, label %bb.fs

bb.fs:                                            ; preds = %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i.i.i.i.i.i
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8 ; 7 uses
  %i.vh = load atomic i32, ptr %i.vg monotonic, align 8, !noalias !763
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs
  %.06.i.i.i.i.i.i.i425.i = phi i32 [ %i.vh, %bb.fs ], [ %i.vl, %bb.fu ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i426.i = icmp eq i32 %.06.i.i.i.i.i.i.i425.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i426.i, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.vi = add nsw i32 %.06.i.i.i.i.i.i.i425.i, 1
  %i.vj = cmpxchg weak ptr %i.vg, i32 %.06.i.i.i.i.i.i.i425.i, i32 %i.vi acq_rel monotonic, align 8, !noalias !763 ; 2 uses
  %i.vk = extractvalue { i32, i1 } %i.vj, 1
  %i.vl = extractvalue { i32, i1 } %i.vj, 0
  br i1 %i.vk, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i427.i, label %bb.ft, !llvm.loop !134

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i427.i: ; preds = %bb.fu
  %i.vm = load atomic i32, ptr %i.vg monotonic, align 8, !noalias !763
  %.not.i.i.i.i.i428.i = icmp eq i32 %i.vm, 0
  %i.vn = load ptr, ptr %49, align 8, !noalias !666
  %spec.select478.i = select i1 %.not.i.i.i.i.i428.i, ptr null, ptr %i.vn ; 3 uses
  %i.vo = load atomic i64, ptr %i.vg acquire, align 8, !noalias !758 ; 2 uses
  %i.vp = icmp eq i64 %i.vo, 4294967297
  %i.vq = trunc i64 %i.vo to i32                  ; 2 uses
  br i1 %i.vp, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i427.i
  store i32 0, ptr %i.vg, align 8, !tbaa !14, !noalias !758
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vf, i64 12
  store i32 0, ptr %i.vr, align 4, !tbaa !16, !noalias !758
  %i.vs = load ptr, ptr %i.vf, align 8, !tbaa !17, !noalias !758
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.vu = load ptr, ptr %i.vt, align 8, !noalias !758
  call void %i.vu(ptr noundef nonnull align 8 dereferenceable(16) %i.vf) #21, !noalias !758, !inline_history !764
  %i.vv = load ptr, ptr %i.vf, align 8, !tbaa !17, !noalias !758
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  %i.vx = load ptr, ptr %i.vw, align 8, !noalias !758
  call void %i.vx(ptr noundef nonnull align 8 dereferenceable(16) %i.vf) #21, !noalias !758, !inline_history !764
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i.i

bb.fw:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i427.i
  %i.vy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !743
  %.not.i.i.i1.i.i430.i = icmp eq i8 %i.vy, 0
  br i1 %.not.i.i.i1.i.i430.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.vz = add nsw i32 %i.vq, -1
  store i32 %i.vz, ptr %i.vg, align 8, !tbaa !93, !noalias !758
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i431.i

bb.fy:                                            ; preds = %bb.fw
  %i.wa = atomicrmw volatile add ptr %i.vg, i32 -1 acq_rel, align 4, !noalias !758
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i431.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i431.i: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i.i.i432.i = phi i32 [ %i.vq, %bb.fx ], [ %i.wa, %bb.fy ]
  %i.wb = icmp eq i32 %.0.i.i.i.i.i.i432.i, 1
  br i1 %i.wb, label %bb.fz, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i.i, !prof !136

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i431.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vf) #21, !noalias !758
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i.i

_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i.i:        ; preds = %bb.ft, %bb.fz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i431.i, %bb.fv, %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i.i.i.i.i.i
  %i.wc = phi ptr [ %spec.select478.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i431.i ], [ %spec.select478.i, %bb.fz ], [ %spec.select478.i, %bb.fv ], [ null, %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i.i.i.i.i.i ], [ null, %bb.ft ]
  %i.wd = load ptr, ptr %i.bz, align 8, !tbaa !101, !noalias !765 ; 8 uses
  %.not.i.i.i.i.i2.i.i = icmp eq ptr %i.wd, null
  br i1 %.not.i.i.i.i.i2.i.i, label %_ZZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS2_4NodeEEES7_ENKUlS7_E_clES7_.exit.i.i.i.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8 ; 7 uses
  %i.wf = load atomic i32, ptr %i.we monotonic, align 8, !noalias !768
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gc, %bb.ga
  %.06.i.i.i.i.i.i3.i.i = phi i32 [ %i.wf, %bb.ga ], [ %i.wj, %bb.gc ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i4.i.i = icmp eq i32 %.06.i.i.i.i.i.i3.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i4.i.i, label %_ZZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS2_4NodeEEES7_ENKUlS7_E_clES7_.exit.i.i.i.i.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.wg = add nsw i32 %.06.i.i.i.i.i.i3.i.i, 1
  %i.wh = cmpxchg weak ptr %i.we, i32 %.06.i.i.i.i.i.i3.i.i, i32 %i.wg acq_rel monotonic, align 8, !noalias !768 ; 2 uses
  %i.wi = extractvalue { i32, i1 } %i.wh, 1
  %i.wj = extractvalue { i32, i1 } %i.wh, 0
  br i1 %i.wi, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i.i, label %bb.gb, !llvm.loop !134

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i.i: ; preds = %bb.gc
  %i.wk = load atomic i32, ptr %i.we monotonic, align 8, !noalias !768
  %.not.i.i.i.i6.i.i = icmp eq i32 %i.wk, 0
  br i1 %.not.i.i.i.i6.i.i, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i.i, label %bb.gd

bb.gd:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i.i
  %i.wl = load ptr, ptr %i.bv, align 8, !tbaa !98, !noalias !765
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i.i

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i.i:  ; preds = %bb.gd, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i.i
  %i.wm = phi ptr [ %i.wl, %bb.gd ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i.i ] ; 3 uses
  %i.wn = load atomic i64, ptr %i.we acquire, align 8, !noalias !758 ; 2 uses
  %i.wo = icmp eq i64 %i.wn, 4294967297
  %i.wp = trunc i64 %i.wn to i32                  ; 2 uses
  br i1 %i.wo, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i.i
  store i32 0, ptr %i.we, align 8, !tbaa !14, !noalias !758
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wd, i64 12
  store i32 0, ptr %i.wq, align 4, !tbaa !16, !noalias !758
  %i.wr = load ptr, ptr %i.wd, align 8, !tbaa !17, !noalias !758
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !758
  call void %i.wt(ptr noundef nonnull align 8 dereferenceable(16) %i.wd) #21, !noalias !758, !inline_history !764
  %i.wu = load ptr, ptr %i.wd, align 8, !tbaa !17, !noalias !758
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 24
  %i.ww = load ptr, ptr %i.wv, align 8, !noalias !758
  call void %i.ww(ptr noundef nonnull align 8 dereferenceable(16) %i.wd) #21, !noalias !758, !inline_history !764
  br label %_ZZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS2_4NodeEEES7_ENKUlS7_E_clES7_.exit.i.i.i.i.i.i

bb.gf:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i.i
  %i.wx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !743
  %.not.i.i.i1.i8.i.i = icmp eq i8 %i.wx, 0
  br i1 %.not.i.i.i1.i8.i.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.wy = add nsw i32 %i.wp, -1
  store i32 %i.wy, ptr %i.we, align 8, !tbaa !93, !noalias !758
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i.i

bb.gh:                                            ; preds = %bb.gf
  %i.wz = atomicrmw volatile add ptr %i.we, i32 -1 acq_rel, align 4, !noalias !758
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i.i: ; preds = %bb.gh, %bb.gg
  %.0.i.i.i.i.i10.i.i = phi i32 [ %i.wp, %bb.gg ], [ %i.wz, %bb.gh ]
  %i.xa = icmp eq i32 %.0.i.i.i.i.i10.i.i, 1
  br i1 %i.xa, label %bb.gi, label %_ZZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS2_4NodeEEES7_ENKUlS7_E_clES7_.exit.i.i.i.i.i.i, !prof !136

bb.gi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wd) #21, !noalias !758
  br label %_ZZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS2_4NodeEEES7_ENKUlS7_E_clES7_.exit.i.i.i.i.i.i

_ZZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS2_4NodeEEES7_ENKUlS7_E_clES7_.exit.i.i.i.i.i.i: ; preds = %bb.gb, %bb.gi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i.i, %bb.ge, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i.i
  %i.xb = phi ptr [ %i.wm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i.i ], [ %i.wm, %bb.gi ], [ %i.wm, %bb.ge ], [ null, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i.i ], [ null, %bb.gb ]
  %i.xc = icmp eq ptr %i.wc, %i.xb
  %i.xd = load ptr, ptr %i.qn, align 8, !tbaa !101, !noalias !743 ; 4 uses
  %.not.i.i.i.i.i.i.i.i193.i = icmp eq ptr %i.xd, null
  br i1 %.not.i.i.i.i.i.i.i.i193.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS5_4NodeEEESA_EUlSA_E_EclINS5_4util5Range13IterableRangeINSF_8MapRangeINSH_INSF_9IterRangeINS_17__normal_iteratorIPPNS5_4EdgeESt6vectorISL_SaISL_EEEESQ_EENS7_12HandleMapperEEENS7_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %_ZZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS2_4NodeEEES7_ENKUlS7_E_clES7_.exit.i.i.i.i.i.i
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 12 ; 3 uses
  %i.xf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !743
  %.not.i.i.i.i.i.i.i.i.i194.i = icmp eq i8 %i.xf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i194.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.xg = load i32, ptr %i.xe, align 4, !tbaa !93, !noalias !758 ; 2 uses
  %i.xh = add nsw i32 %i.xg, -1
  store i32 %i.xh, ptr %i.xe, align 4, !tbaa !93, !noalias !758
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i195.i

bb.gl:                                            ; preds = %bb.gj
  %i.xi = atomicrmw volatile add ptr %i.xe, i32 -1 acq_rel, align 4, !noalias !758
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i195.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i195.i: ; preds = %bb.gl, %bb.gk
  %.0.i.i.i.i.i.i.i.i.i.i196.i = phi i32 [ %i.xg, %bb.gk ], [ %i.xi, %bb.gl ]
  %i.xj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i196.i, 1
  br i1 %i.xj, label %bb.gm, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS5_4NodeEEESA_EUlSA_E_EclINS5_4util5Range13IterableRangeINSF_8MapRangeINSH_INSF_9IterRangeINS_17__normal_iteratorIPPNS5_4EdgeESt6vectorISL_SaISL_EEEESQ_EENS7_12HandleMapperEEENS7_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i

bb.gm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i195.i
  %i.xk = load ptr, ptr %i.xd, align 8, !tbaa !17, !noalias !758
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  %i.xm = load ptr, ptr %i.xl, align 8, !noalias !758
  call void %i.xm(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #21, !noalias !758, !inline_history !769
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS5_4NodeEEESA_EUlSA_E_EclINS5_4util5Range13IterableRangeINSF_8MapRangeINSH_INSF_9IterRangeINS_17__normal_iteratorIPPNS5_4EdgeESt6vectorISL_SaISL_EEEESQ_EENS7_12HandleMapperEEENS7_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS5_4NodeEEESA_EUlSA_E_EclINS5_4util5Range13IterableRangeINSF_8MapRangeINSH_INSF_9IterRangeINS_17__normal_iteratorIPPNS5_4EdgeESt6vectorISL_SaISL_EEEESQ_EENS7_12HandleMapperEEENS7_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i: ; preds = %bb.gm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i195.i, %_ZZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS2_4NodeEEES7_ENKUlS7_E_clES7_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21, !noalias !743
  call void @llvm.lifetime.end.p0(ptr nonnull %50), !noalias !743
  br i1 %i.xc, label %_ZSt7find_ifIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKNS0_6HandleISG_EEST_EUlST_E_ET_SV_SV_T0_.exit.loopexit.i.i, label %bb.gn

bb.gn:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS5_4NodeEEESA_EUlSA_E_EclINS5_4util5Range13IterableRangeINSF_8MapRangeINSH_INSF_9IterRangeINS_17__normal_iteratorIPPNS5_4EdgeESt6vectorISL_SaISL_EEEESQ_EENS7_12HandleMapperEEENS7_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i
  %i.xn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8 ; 2 uses
  %i.xo = icmp eq ptr %i.xn, %.sroa.026.sroa.2.0.copyload.i.i
  br i1 %i.xo, label %_ZSt7find_ifIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKNS0_6HandleISG_EEST_EUlST_E_ET_SV_SV_T0_.exit.loopexit.i.i, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i.i.i, !llvm.loop !770

_ZSt7find_ifIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKNS0_6HandleISG_EEST_EUlST_E_ET_SV_SV_T0_.exit.loopexit.i.i: ; preds = %bb.gn, %_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS5_4NodeEEESA_EUlSA_E_EclINS5_4util5Range13IterableRangeINSF_8MapRangeINSH_INSF_9IterRangeINS_17__normal_iteratorIPPNS5_4EdgeESt6vectorISL_SaISL_EEEESQ_EENS7_12HandleMapperEEENS7_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i
  %.sroa.0.1.i.i.ph.i.i = phi ptr [ %.sroa.026.sroa.2.0.copyload.i.i, %bb.gn ], [ %.sroa.0.0.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKN3ade6HandleINS5_4NodeEEESA_EUlSA_E_EclINS5_4util5Range13IterableRangeINSF_8MapRangeINSH_INSF_9IterRangeINS_17__normal_iteratorIPPNS5_4EdgeESt6vectorISL_SaISL_EEEESQ_EENS7_12HandleMapperEEENS7_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i ]
  %i.xp = icmp ne ptr %.sroa.0.1.i.i.ph.i.i, %.sroa.026.sroa.2.0.copyload.i.i
  br label %_ZSt7find_ifIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKNS0_6HandleISG_EEST_EUlST_E_ET_SV_SV_T0_.exit.i.i

_ZSt7find_ifIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKNS0_6HandleISG_EEST_EUlST_E_ET_SV_SV_T0_.exit.i.i: ; preds = %_ZSt7find_ifIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKNS0_6HandleISG_EEST_EUlST_E_ET_SV_SV_T0_.exit.loopexit.i.i, %.noexc198.i
  %.sroa.0.1.i.i.i.i = phi i1 [ false, %.noexc198.i ], [ %i.xp, %_ZSt7find_ifIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKNS0_6HandleISG_EEST_EUlST_E_ET_SV_SV_T0_.exit.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21, !noalias !666
  %i.xq = load ptr, ptr %i.qj, align 8, !tbaa !101, !noalias !771, !nonnull !30, !noundef !30 ; 7 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8 ; 7 uses
  %i.xs = load atomic i32, ptr %i.xr monotonic, align 8, !noalias !774
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %_ZSt7find_ifIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKNS0_6HandleISG_EEST_EUlST_E_ET_SV_SV_T0_.exit.i.i
  %.06.i.i.i.i.i.i.i15.i.i = phi i32 [ %i.xs, %_ZSt7find_ifIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN2cv5gimpl12_GLOBAL__N_112isConsumedByERKNS0_6HandleISG_EEST_EUlST_E_ET_SV_SV_T0_.exit.i.i ], [ %i.xw, %bb.go ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i16.i.i = icmp ne i32 %.06.i.i.i.i.i.i.i15.i.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i16.i.i)
  %i.xt = add nsw i32 %.06.i.i.i.i.i.i.i15.i.i, 1
  %i.xu = cmpxchg weak ptr %i.xr, i32 %.06.i.i.i.i.i.i.i15.i.i, i32 %i.xt acq_rel monotonic, align 8, !noalias !774 ; 2 uses
  %i.xv = extractvalue { i32, i1 } %i.xu, 1
  %i.xw = extractvalue { i32, i1 } %i.xu, 0
  br i1 %i.xv, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i17.i.i, label %bb.go, !llvm.loop !134

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i17.i.i: ; preds = %bb.go
  %i.xx = load atomic i32, ptr %i.xr monotonic, align 8, !noalias !774 ; 0 uses
  %i.xy = load ptr, ptr %82, align 8, !noalias !666
  %i.xz = load atomic i64, ptr %i.xr acquire, align 8 ; 2 uses
  %i.ya = icmp eq i64 %i.xz, 4294967297
  %i.yb = trunc i64 %i.xz to i32                  ; 2 uses
  br i1 %i.ya, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i17.i.i
  store i32 0, ptr %i.xr, align 8, !tbaa !14
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xq, i64 12
  store i32 0, ptr %i.yc, align 4, !tbaa !16
  %i.yd = load ptr, ptr %i.xq, align 8, !tbaa !17
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %i.yf = load ptr, ptr %i.ye, align 8
  call void %i.yf(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #21, !inline_history !738
  %i.yg = load ptr, ptr %i.xq, align 8, !tbaa !17
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 24
  %i.yi = load ptr, ptr %i.yh, align 8
  call void %i.yi(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #21, !inline_history !738
  br label %_ZNK3ade6HandleINS_4NodeEEptEv.exit23.i.i

bb.gq:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i17.i.i
  %i.yj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i1.i.i20.i.i = icmp eq i8 %i.yj, 0
  br i1 %.not.i.i.i1.i.i20.i.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.yk = add nsw i32 %i.yb, -1
  store i32 %i.yk, ptr %i.xr, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21.i.i

bb.gs:                                            ; preds = %bb.gq
  %i.yl = atomicrmw volatile add ptr %i.xr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21.i.i: ; preds = %bb.gs, %bb.gr
  %.0.i.i.i.i.i.i22.i.i = phi i32 [ %i.yb, %bb.gr ], [ %i.yl, %bb.gs ]
  %i.ym = icmp eq i32 %.0.i.i.i.i.i.i22.i.i, 1
  br i1 %i.ym, label %bb.gt, label %_ZNK3ade6HandleINS_4NodeEEptEv.exit23.i.i, !prof !136

bb.gt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #21
  br label %_ZNK3ade6HandleINS_4NodeEEptEv.exit23.i.i

_ZNK3ade6HandleINS_4NodeEEptEv.exit23.i.i:        ; preds = %bb.gt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21.i.i, %bb.gp
  invoke void @_ZN3ade4Node8outNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.198") align 8 %53, ptr noundef nonnull align 8 dereferenceable(72) %i.xy)
          to label %bb.gu unwind label %.loopexit.split-lp499.i

bb.gu:                                            ; preds = %_ZNK3ade6HandleINS_4NodeEEptEv.exit23.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21, !noalias !666
  br i1 %.sroa.0.1.i.i.i.i, label %bb.hj, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #21, !noalias !666
  %i.yn = load ptr, ptr %70, align 16, !tbaa !154, !noalias !666
  %i.yo = load ptr, ptr %0, align 8, !tbaa !499, !noalias !666, !nonnull !30, !align !31
  invoke void @_ZNK2cv5gimpl7GIsland8producerERKN3ade5GraphERKNS2_6HandleINS2_4NodeEEE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle") align 8 %83, ptr noundef nonnull align 8 dereferenceable(248) %i.yn, ptr noundef nonnull align 8 dereferenceable(168) %i.yo, ptr noundef nonnull align 8 dereferenceable(16) %82)
          to label %bb.gw unwind label %bb.hd

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21, !noalias !666
  store ptr %79, ptr %47, align 8, !tbaa !127, !noalias !666
  %i.yp = invoke { ptr, i8 } @_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_12HandleHasherIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(64) %79, ptr noundef nonnull align 8 dereferenceable(16) %83, ptr noundef nonnull align 8 dereferenceable(16) %83, ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.gx unwind label %bb.he     ; 0 uses

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21, !noalias !666
  %i.yq = load ptr, ptr %i.qo, align 8, !tbaa !101, !noalias !666 ; 4 uses
  %.not.i.i.i204.i = icmp eq ptr %i.yq, null
  br i1 %.not.i.i.i204.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit208.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 12 ; 3 uses
  %i.ys = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i205.i = icmp eq i8 %i.ys, 0
  br i1 %.not.i.i.i.i205.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.yt = load i32, ptr %i.yr, align 4, !tbaa !93 ; 2 uses
  %i.yu = add nsw i32 %i.yt, -1
  store i32 %i.yu, ptr %i.yr, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i206.i

bb.ha:                                            ; preds = %bb.gy
  %i.yv = atomicrmw volatile add ptr %i.yr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i206.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i206.i: ; preds = %bb.ha, %bb.gz
  %.0.i.i.i.i.i207.i = phi i32 [ %i.yt, %bb.gz ], [ %i.yv, %bb.ha ]
  %i.yw = icmp eq i32 %.0.i.i.i.i.i207.i, 1
  br i1 %i.yw, label %bb.hb, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit208.i

bb.hb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i206.i
  %i.yx = load ptr, ptr %i.yq, align 8, !tbaa !17
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  %i.yz = load ptr, ptr %i.yy, align 8
  call void %i.yz(ptr noundef nonnull align 8 dereferenceable(16) %i.yq) #21, !inline_history !717
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit208.i

_ZN3ade6HandleINS_4NodeEED2Ev.exit208.i:          ; preds = %bb.hb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i206.i, %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #21, !noalias !666
  br label %bb.hj

bb.hc:                                            ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %.body181.i

.loopexit498.i:                                   ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i.i.i
  %lpad.loopexit500.i = landingpad { ptr, i32 }
          cleanup
  br label %.body200.i

.loopexit.split-lp499.i:                          ; preds = %_ZNK3ade6HandleINS_4NodeEEptEv.exit23.i.i, %_ZNK3ade6HandleINS_4NodeEEptEv.exit13.i.i, %_ZNK3ade6HandleINS_4NodeEEptEv.exit.i191.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body200.i

bb.hd:                                            ; preds = %bb.gv
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit213.i

bb.he:                                            ; preds = %bb.gw
  %i.zc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.zd = load ptr, ptr %i.qo, align 8, !tbaa !101, !noalias !666 ; 4 uses
  %.not.i.i.i209.i = icmp eq ptr %i.zd, null
  br i1 %.not.i.i.i209.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit213.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 12 ; 3 uses
  %i.zf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i210.i = icmp eq i8 %i.zf, 0
  br i1 %.not.i.i.i.i210.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.zg = load i32, ptr %i.ze, align 4, !tbaa !93 ; 2 uses
  %i.zh = add nsw i32 %i.zg, -1
  store i32 %i.zh, ptr %i.ze, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i211.i

bb.hh:                                            ; preds = %bb.hf
  %i.zi = atomicrmw volatile add ptr %i.ze, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i211.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i211.i: ; preds = %bb.hh, %bb.hg
  %.0.i.i.i.i.i212.i = phi i32 [ %i.zg, %bb.hg ], [ %i.zi, %bb.hh ]
  %i.zj = icmp eq i32 %.0.i.i.i.i.i212.i, 1
  br i1 %i.zj, label %bb.hi, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit213.i

bb.hi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i211.i
  %i.zk = load ptr, ptr %i.zd, align 8, !tbaa !17
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 24
  %i.zm = load ptr, ptr %i.zl, align 8
  call void %i.zm(ptr noundef nonnull align 8 dereferenceable(16) %i.zd) #21, !inline_history !717
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit213.i

_ZN3ade6HandleINS_4NodeEED2Ev.exit213.i:          ; preds = %bb.hi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i211.i, %bb.he, %bb.hd
  %.pn54.i = phi { ptr, i32 } [ %i.zb, %bb.hd ], [ %i.zc, %bb.he ], [ %i.zc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i211.i ], [ %i.zc, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #21, !noalias !666
  br label %.body200.i

bb.hj:                                            ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit208.i, %bb.gu
  %i.zn = load ptr, ptr %i.qj, align 8, !tbaa !101, !noalias !666 ; 4 uses
  %.not.i.i.i214.i = icmp eq ptr %i.zn, null
  br i1 %.not.i.i.i214.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit218.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 12 ; 3 uses
  %i.zp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i215.i = icmp eq i8 %i.zp, 0
  br i1 %.not.i.i.i.i215.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.zq = load i32, ptr %i.zo, align 4, !tbaa !93 ; 2 uses
  %i.zr = add nsw i32 %i.zq, -1
  store i32 %i.zr, ptr %i.zo, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i216.i

bb.hm:                                            ; preds = %bb.hk
  %i.zs = atomicrmw volatile add ptr %i.zo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i216.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i216.i: ; preds = %bb.hm, %bb.hl
  %.0.i.i.i.i.i217.i = phi i32 [ %i.zq, %bb.hl ], [ %i.zs, %bb.hm ]
  %i.zt = icmp eq i32 %.0.i.i.i.i.i217.i, 1
  br i1 %i.zt, label %bb.hn, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit218.i

bb.hn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i216.i
  %i.zu = load ptr, ptr %i.zn, align 8, !tbaa !17
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 24
  %i.zw = load ptr, ptr %i.zv, align 8
  call void %i.zw(ptr noundef nonnull align 8 dereferenceable(16) %i.zn) #21, !inline_history !717
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit218.i

_ZN3ade6HandleINS_4NodeEED2Ev.exit218.i:          ; preds = %bb.hn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i216.i, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #21, !noalias !666
  %i.zx = load ptr, ptr %81, align 8, !tbaa !268, !noalias !666
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 8 ; 3 uses
  store ptr %i.zy, ptr %81, align 8, !tbaa !268, !noalias !666
  %i.zz = load ptr, ptr %i.qb, align 8, !tbaa !246, !noalias !666
  %i.aaa = icmp eq ptr %i.zy, %i.zz
  br i1 %i.aaa, label %._crit_edge619.i, label %bb.ei

.body200.i:                                       ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit213.i, %.loopexit.split-lp499.i, %.loopexit498.i, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i.i
  %.pn54.pn.i = phi { ptr, i32 } [ %.pn54.i, %_ZN3ade6HandleINS_4NodeEED2Ev.exit213.i ], [ %i.uu, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i.i ], [ %lpad.loopexit500.i, %.loopexit498.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp499.i ] ; 3 uses
  %i.aab = load ptr, ptr %i.qj, align 8, !tbaa !101, !noalias !666 ; 4 uses
  %.not.i.i.i219.i = icmp eq ptr %i.aab, null
  br i1 %.not.i.i.i219.i, label %.body181.i, label %bb.ho

bb.ho:                                            ; preds = %.body200.i
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 12 ; 3 uses
  %i.aad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i220.i = icmp eq i8 %i.aad, 0
  br i1 %.not.i.i.i.i220.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aae = load i32, ptr %i.aac, align 4, !tbaa !93 ; 2 uses
  %i.aaf = add nsw i32 %i.aae, -1
  store i32 %i.aaf, ptr %i.aac, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i221.i

bb.hq:                                            ; preds = %bb.ho
  %i.aag = atomicrmw volatile add ptr %i.aac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i221.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i221.i: ; preds = %bb.hq, %bb.hp
  %.0.i.i.i.i.i222.i = phi i32 [ %i.aae, %bb.hp ], [ %i.aag, %bb.hq ]
  %i.aah = icmp eq i32 %.0.i.i.i.i.i222.i, 1
  br i1 %i.aah, label %bb.hr, label %.body181.i

bb.hr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i221.i
  %i.aai = load ptr, ptr %i.aab, align 8, !tbaa !17
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 24
  %i.aak = load ptr, ptr %i.aaj, align 8
  call void %i.aak(ptr noundef nonnull align 8 dereferenceable(16) %i.aab) #21, !inline_history !717
  br label %.body181.i

.body181.i:                                       ; preds = %bb.hr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i221.i, %.body200.i, %bb.hc, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i175.i
  %.pn54.pn.pn.i = phi { ptr, i32 } [ %i.sd, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i175.i ], [ %i.za, %bb.hc ], [ %.pn54.pn.i, %.body200.i ], [ %.pn54.pn.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i221.i ], [ %.pn54.pn.i, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #21, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #21, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #21, !noalias !666
  br label %bb.qc

._crit_edge625.i:                                 ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit311.i
  %.pre662.i = load ptr, ptr %i.rb, align 8, !tbaa !193, !noalias !666 ; 2 uses
  %.not484626.i = icmp eq ptr %.pre662.i, null
  br i1 %.not484626.i, label %._crit_edge630.i, label %.lr.ph629.i

.lr.ph629.i:                                      ; preds = %._crit_edge625.i
  %i.aal = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %88, i64 8 ; 2 uses
  br label %bb.na

bb.hs:                                            ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit311.i, %.lr.ph624.i
  %.sroa.03.sroa.3.i.i.sroa.0.0 = phi <16 x i8> [ undef, %.lr.ph624.i ], [ %.sroa.03.sroa.3.i.i.sroa.0.1, %_ZN3ade6HandleINS_4NodeEED2Ev.exit311.i ] ; 2 uses
  %.sroa.0457.0622.i = phi ptr [ %i.re, %.lr.ph624.i ], [ %i.aph, %_ZN3ade6HandleINS_4NodeEED2Ev.exit311.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #21, !noalias !666
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.0457.0622.i, i64 8
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !98 ; 3 uses
  store ptr %i.aao, ptr %86, align 16, !tbaa !98, !noalias !666
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.0457.0622.i, i64 16
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !101 ; 4 uses
  store ptr %i.aaq, ptr %i.rf, align 8, !tbaa !101, !noalias !666
  %.not.i.i.i.i224.i = icmp eq ptr %i.aaq, null
  br i1 %.not.i.i.i.i224.i, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.thread.i, label %bb.ht

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.thread.i:  ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %46), !noalias !666
  %i.aar = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !775
  %i.aas = inttoptr i64 %i.aar to ptr
  store ptr %i.aao, ptr %46, align 16, !tbaa !98, !noalias !775
  store ptr null, ptr %i.rg, align 8, !tbaa !101, !noalias !775
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i228.i

bb.ht:                                            ; preds = %bb.hs
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 12 ; 4 uses
  %i.aau = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i.i225.i = icmp eq i8 %i.aau, 0
  br i1 %.not.i.i.i.i.i225.i, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i, label %.thread

.thread:                                          ; preds = %bb.ht
  %i.aav = load i32, ptr %i.aat, align 4, !tbaa !93
  %i.aaw = add nsw i32 %i.aav, 1
  store i32 %i.aaw, ptr %i.aat, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %46), !noalias !666
  %i.aax = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !775
  %i.aay = inttoptr i64 %i.aax to ptr
  store ptr %i.aao, ptr %46, align 16, !tbaa !98, !noalias !775
  store ptr %i.aaq, ptr %i.rg, align 8, !tbaa !101, !noalias !775
  br label %bb.hv

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i:         ; preds = %bb.ht
  %i.aaz = atomicrmw volatile add ptr %i.aat, i32 1 acq_rel, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46), !noalias !666
  %i.aba = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !775
  %i.abb = inttoptr i64 %i.aba to ptr             ; 3 uses
  %.pre661.i = load ptr, ptr %i.rf, align 8, !tbaa !101, !noalias !775 ; 2 uses
  %i.abc = load <2 x ptr>, ptr %86, align 16, !tbaa !38, !noalias !775
  store <2 x ptr> %i.abc, ptr %46, align 16, !tbaa !38, !noalias !775
  %.not.i.i.i.i.i226.i = icmp eq ptr %.pre661.i, null
  br i1 %.not.i.i.i.i.i226.i, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i228.i, label %bb.hu

bb.hu:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !775
  %i.abd = icmp eq i8 %.pre, 0
  %i.abe = getelementptr inbounds nuw i8, ptr %.pre661.i, i64 12 ; 2 uses
  br i1 %i.abd, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %.thread, %bb.hu
  %i.abf = phi ptr [ %i.aat, %.thread ], [ %i.abe, %bb.hu ] ; 2 uses
  %i.abg = phi ptr [ %i.aay, %.thread ], [ %i.abb, %bb.hu ]
  %i.abh = load i32, ptr %i.abf, align 4, !tbaa !93, !noalias !778
  %i.abi = add nsw i32 %i.abh, 1
  store i32 %i.abi, ptr %i.abf, align 4, !tbaa !93, !noalias !778
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i228.i

bb.hw:                                            ; preds = %bb.hu
  %i.abj = atomicrmw volatile add ptr %i.abe, i32 1 acq_rel, align 4, !noalias !778 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i228.i

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i228.i:    ; preds = %bb.hw, %bb.hv, %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i, %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.thread.i
  %i.abk = phi ptr [ %i.aas, %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.thread.i ], [ %i.abb, %bb.hw ], [ %i.abg, %bb.hv ], [ %i.abb, %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i ]
  %i.abl = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK3ade5Graph8metadataENS_6HandleINS_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.abk, ptr noundef nonnull align 8 %46)
          to label %bb.hx unwind label %bb.ic, !noalias !778 ; 5 uses

bb.hx:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i228.i
  %i.abm = load ptr, ptr %i.rg, align 8, !tbaa !101, !noalias !775 ; 4 uses
  %.not.i.i.i.i234.i = icmp eq ptr %i.abm, null
  br i1 %.not.i.i.i.i234.i, label %bb.ih, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 12 ; 3 uses
  %i.abo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !775
  %.not.i.i.i.i3.i235.i = icmp eq i8 %i.abo, 0
  br i1 %.not.i.i.i.i3.i235.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.abp = load i32, ptr %i.abn, align 4, !tbaa !93, !noalias !778 ; 2 uses
  %i.abq = add nsw i32 %i.abp, -1
  store i32 %i.abq, ptr %i.abn, align 4, !tbaa !93, !noalias !778
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i236.i

bb.ia:                                            ; preds = %bb.hy
  %i.abr = atomicrmw volatile add ptr %i.abn, i32 -1 acq_rel, align 4, !noalias !778
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i236.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i236.i: ; preds = %bb.ia, %bb.hz
  %.0.i.i.i.i.i.i237.i = phi i32 [ %i.abp, %bb.hz ], [ %i.abr, %bb.ia ]
  %i.abs = icmp eq i32 %.0.i.i.i.i.i.i237.i, 1
  br i1 %i.abs, label %bb.ib, label %bb.ih

bb.ib:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i236.i
  %i.abt = load ptr, ptr %i.abm, align 8, !tbaa !17, !noalias !778
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 24
  %i.abv = load ptr, ptr %i.abu, align 8, !noalias !778
  call void %i.abv(ptr noundef nonnull align 8 dereferenceable(16) %i.abm) #21, !noalias !778, !inline_history !673
  br label %bb.ih

bb.ic:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i228.i
  %i.abw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.abx = load ptr, ptr %i.rg, align 8, !tbaa !101, !noalias !775 ; 4 uses
  %.not.i.i.i4.i229.i = icmp eq ptr %i.abx, null
  br i1 %.not.i.i.i4.i229.i, label %.body239.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 12 ; 3 uses
  %i.abz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !775
  %.not.i.i.i.i5.i230.i = icmp eq i8 %i.abz, 0
  br i1 %.not.i.i.i.i5.i230.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aca = load i32, ptr %i.aby, align 4, !tbaa !93, !noalias !778 ; 2 uses
  %i.acb = add nsw i32 %i.aca, -1
  store i32 %i.acb, ptr %i.aby, align 4, !tbaa !93, !noalias !778
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i231.i

bb.if:                                            ; preds = %bb.id
  %i.acc = atomicrmw volatile add ptr %i.aby, i32 -1 acq_rel, align 4, !noalias !778
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i231.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i231.i: ; preds = %bb.if, %bb.ie
  %.0.i.i.i.i.i7.i232.i = phi i32 [ %i.aca, %bb.ie ], [ %i.acc, %bb.if ]
  %i.acd = icmp eq i32 %.0.i.i.i.i.i7.i232.i, 1
  br i1 %i.acd, label %bb.ig, label %.body239.i

bb.ig:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i231.i
  %i.ace = load ptr, ptr %i.abx, align 8, !tbaa !17, !noalias !778
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 24
  %i.acg = load ptr, ptr %i.acf, align 8, !noalias !778
  call void %i.acg(ptr noundef nonnull align 8 dereferenceable(16) %i.abx) #21, !noalias !778, !inline_history !673
  br label %.body239.i

bb.ih:                                            ; preds = %bb.ib, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i236.i, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %46), !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21, !noalias !666
  %.sroa.0.0.copyload.i.i242.i = load ptr, ptr %i.rh, align 8, !tbaa !38, !noalias !666
  store ptr %.sroa.0.0.copyload.i.i242.i, ptr %45, align 8, !noalias !666
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abl, i64 32
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !42
  %.not.not.i.i.i.i243.i = icmp eq i64 %i.aci, 0
  br i1 %.not.not.i.i.i.i243.i, label %bb.ii, label %bb.ik

bb.ii:                                            ; preds = %bb.ih
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abl, i64 24
  br label %bb.ij

bb.ij:                                            ; preds = %.noexc257.i, %bb.ii
  %.sroa.06.0.in.i.i.i.i255.i = phi ptr [ %i.acj, %bb.ii ], [ %.sroa.06.0.i.i.i.i256.i, %.noexc257.i ]
  %.sroa.06.0.i.i.i.i256.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i255.i, align 8, !tbaa !54, !nonnull !30, !noundef !30 ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i256.i, i64 8
  %i.acl = invoke noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(24) %i.ack)
          to label %.noexc257.i unwind label %.loopexit490.i

.noexc257.i:                                      ; preds = %bb.ij
  br i1 %i.acl, label %.loopexit494.i, label %bb.ij, !llvm.loop !55

bb.ik:                                            ; preds = %bb.ih
  %i.acm = invoke noundef i64 @_ZNK3ade7details8Metadata6IdHashclERKNS0_10MetadataIdE(ptr noundef nonnull align 8 dereferenceable(64) %i.abl, ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %.noexc258.i unwind label %.loopexit.split-lp491.loopexit.split-lp.i ; 2 uses

.noexc258.i:                                      ; preds = %bb.ik
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abl, i64 16 ; 2 uses
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !57 ; 2 uses
  %i.acp = urem i64 %i.acm, %i.aco                ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !58
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %i.acp
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !59, !nonnull !30, !noundef !30 ; 2 uses
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !54 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i244.i = getelementptr inbounds nuw i8, ptr %i.acu, i64 24
  %.pre.i.i.i.i.i.i245.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i244.i, align 8, !tbaa !60
  br label %bb.il

bb.il:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i248.i, %.noexc258.i
  %i.acv = phi i64 [ %i.aco, %.noexc258.i ], [ %i.ada, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i248.i ]
  %i.acw = phi i64 [ %.pre.i.i.i.i.i.i245.i, %.noexc258.i ], [ %i.add, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i248.i ]
  %.015.i.i.i.i.i.i246.i = phi ptr [ %i.act, %.noexc258.i ], [ %.0.i.i.i.i.i.i247.i, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i248.i ]
  %.0.i.i.i.i.i.i247.i = phi ptr [ %i.acu, %.noexc258.i ], [ %i.adb, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i248.i ] ; 3 uses
  %i.acx = icmp eq i64 %i.acm, %i.acw
  br i1 %i.acx, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i250.i, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i248.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i250.i: ; preds = %bb.il
  %i.acy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i247.i, i64 8
  %i.acz = invoke noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(24) %i.acy)
          to label %.noexc259.i unwind label %.loopexit.split-lp491.loopexit.i

.noexc259.i:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i250.i
  br i1 %i.acz, label %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i253.i, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i251.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i251.i: ; preds = %.noexc259.i
  %.pre.i.i252.i = load i64, ptr %i.acn, align 8, !tbaa !57
  br label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i248.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i248.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i251.i, %bb.il
  %i.ada = phi i64 [ %.pre.i.i252.i, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i251.i ], [ %i.acv, %bb.il ] ; 2 uses
  %i.adb = load ptr, ptr %.0.i.i.i.i.i.i247.i, align 8, !tbaa !54, !nonnull !30, !noundef !30 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 24
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !60 ; 2 uses
  %i.ade = urem i64 %i.add, %i.ada
  %.not19.i.i.i.i.i.i249.i = icmp eq i64 %i.ade, %i.acp
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i249.i)
  br label %bb.il

_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i253.i: ; preds = %.noexc259.i
  %i.adf = load ptr, ptr %.015.i.i.i.i.i.i246.i, align 8, !tbaa !54
  br label %.loopexit494.i

.loopexit494.i:                                   ; preds = %.noexc257.i, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i253.i
  %.sroa.06.1.i.i.i.i254.i = phi ptr [ %i.adf, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i253.i ], [ %.sroa.06.0.i.i.i.i256.i, %.noexc257.i ]
  %i.adg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i254.i, i64 16
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !62
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21, !noalias !666
  store ptr %73, ptr %44, align 8, !tbaa !127, !noalias !666
  %i.adj = invoke { ptr, i8 } @_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_12HandleHasherIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(64) %73, ptr noundef nonnull align 8 dereferenceable(16) %i.adi, ptr noundef nonnull align 8 dereferenceable(16) %i.adi, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.im unwind label %.loopexit.split-lp491.loopexit.split-lp.i ; 0 uses

bb.im:                                            ; preds = %.loopexit494.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %39), !noalias !666
  %i.adk = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !779
  %i.adl = inttoptr i64 %i.adk to ptr
  %i.adm = load ptr, ptr %i.rf, align 8, !tbaa !101, !noalias !779 ; 2 uses
  %i.adn = load <2 x ptr>, ptr %86, align 16, !tbaa !38, !noalias !779
  store <2 x ptr> %i.adn, ptr %39, align 16, !tbaa !38, !noalias !779
  %.not.i.i.i.i.i.i262.i = icmp eq ptr %i.adm, null
  br i1 %.not.i.i.i.i.i.i262.i, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adm, i64 12 ; 3 uses
  %i.adp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !779
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.adp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.adq = load i32, ptr %i.ado, align 4, !tbaa !93, !noalias !782
  %i.adr = add nsw i32 %i.adq, 1
  store i32 %i.adr, ptr %i.ado, align 4, !tbaa !93, !noalias !782
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i.i

bb.ip:                                            ; preds = %bb.in
  %i.ads = atomicrmw volatile add ptr %i.ado, i32 1 acq_rel, align 4, !noalias !782 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i.i

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i.i:     ; preds = %bb.ip, %bb.io, %bb.im
  %i.adt = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK3ade5Graph8metadataENS_6HandleINS_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.adl, ptr noundef nonnull align 8 %39)
          to label %bb.iq unwind label %bb.iv, !noalias !782 ; 5 uses

bb.iq:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i.i
  %i.adu = load ptr, ptr %i.ri, align 8, !tbaa !101, !noalias !779 ; 4 uses
  %.not.i.i.i.i.i265.i = icmp eq ptr %i.adu, null
  br i1 %.not.i.i.i.i.i265.i, label %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit.i.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 12 ; 3 uses
  %i.adw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !779
  %.not.i.i.i.i3.i.i266.i = icmp eq i8 %i.adw, 0
  br i1 %.not.i.i.i.i3.i.i266.i, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.adx = load i32, ptr %i.adv, align 4, !tbaa !93, !noalias !782 ; 2 uses
  %i.ady = add nsw i32 %i.adx, -1
  store i32 %i.ady, ptr %i.adv, align 4, !tbaa !93, !noalias !782
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i267.i

bb.it:                                            ; preds = %bb.ir
  %i.adz = atomicrmw volatile add ptr %i.adv, i32 -1 acq_rel, align 4, !noalias !782
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i267.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i267.i: ; preds = %bb.it, %bb.is
  %.0.i.i.i.i.i.i.i268.i = phi i32 [ %i.adx, %bb.is ], [ %i.adz, %bb.it ]
  %i.aea = icmp eq i32 %.0.i.i.i.i.i.i.i268.i, 1
  br i1 %i.aea, label %bb.iu, label %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit.i.i

bb.iu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i267.i
  %i.aeb = load ptr, ptr %i.adu, align 8, !tbaa !17, !noalias !782
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 24
  %i.aed = load ptr, ptr %i.aec, align 8, !noalias !782
  call void %i.aed(ptr noundef nonnull align 8 dereferenceable(16) %i.adu) #21, !noalias !782, !inline_history !783
  br label %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit.i.i

bb.iv:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i.i
  %i.aee = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aef = load ptr, ptr %i.ri, align 8, !tbaa !101, !noalias !779 ; 3 uses
  %.not.i.i.i4.i.i.i = icmp eq ptr %i.aef, null
  br i1 %.not.i.i.i4.i.i.i, label %.body239.i, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 12 ; 3 uses
  %i.aeh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !779
  %.not.i.i.i.i5.i.i.i = icmp eq i8 %i.aeh, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aei = load i32, ptr %i.aeg, align 4, !tbaa !93, !noalias !782 ; 2 uses
  %i.aej = add nsw i32 %i.aei, -1
  store i32 %i.aej, ptr %i.aeg, align 4, !tbaa !93, !noalias !782
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i.i

bb.iy:                                            ; preds = %bb.iw
  %i.aek = atomicrmw volatile add ptr %i.aeg, i32 -1 acq_rel, align 4, !noalias !782
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i.i: ; preds = %bb.iy, %bb.ix
  %.0.i.i.i.i.i7.i.i.i = phi i32 [ %i.aei, %bb.ix ], [ %i.aek, %bb.iy ]
  %i.ael = icmp eq i32 %.0.i.i.i.i.i7.i.i.i, 1
  br i1 %i.ael, label %common.resume.sink.split.i.i, label %.body239.i

common.resume.sink.split.i.i:                     ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i.i
  %.sink54.i.i = phi ptr [ %i.afs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i.i ], [ %i.aef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i.i ] ; 2 uses
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %.pn13.pn.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i.i ], [ %i.aee, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i.i ]
  %i.aem = load ptr, ptr %.sink54.i.i, align 8, !tbaa !17
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 24
  %i.aeo = load ptr, ptr %i.aen, align 8
  call void %i.aeo(ptr noundef nonnull align 8 dereferenceable(16) %.sink54.i.i) #21, !inline_history !784
  br label %.body239.i

_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit.i.i: ; preds = %bb.iu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i267.i, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %39), !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21, !noalias !666
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.rh, align 8, !tbaa !38, !noalias !666
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %38, align 8, !noalias !666
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adt, i64 32
  %i.aeq = load i64, ptr %i.aep, align 8, !tbaa !42
  %.not.not.i.i.i.i.i.i = icmp eq i64 %i.aeq, 0
  br i1 %.not.not.i.i.i.i.i.i, label %bb.iz, label %bb.jb

bb.iz:                                            ; preds = %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit.i.i
  %i.aer = getelementptr inbounds nuw i8, ptr %i.adt, i64 24
  br label %bb.ja

bb.ja:                                            ; preds = %.noexc302.i, %bb.iz
  %.sroa.06.0.in.i.i.i.i.i.i = phi ptr [ %i.aer, %bb.iz ], [ %.sroa.06.0.i.i.i.i.i.i, %.noexc302.i ]
  %.sroa.06.0.i.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i.i, align 8, !tbaa !54, !nonnull !30, !noundef !30 ; 3 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8
  %i.aet = invoke noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(24) %i.aes)
          to label %.noexc302.i unwind label %.loopexit.i

.noexc302.i:                                      ; preds = %bb.ja
  br i1 %i.aet, label %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit.i.i, label %bb.ja, !llvm.loop !55

bb.jb:                                            ; preds = %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit.i.i
  %i.aeu = invoke noundef i64 @_ZNK3ade7details8Metadata6IdHashclERKNS0_10MetadataIdE(ptr noundef nonnull align 8 dereferenceable(64) %i.adt, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %.noexc303.i unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

.noexc303.i:                                      ; preds = %bb.jb
  %i.aev = getelementptr inbounds nuw i8, ptr %i.adt, i64 16 ; 2 uses
  %i.aew = load i64, ptr %i.aev, align 8, !tbaa !57 ; 2 uses
  %i.aex = urem i64 %i.aeu, %i.aew                ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.adt, i64 8
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !58
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %i.aex
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !59, !nonnull !30, !noundef !30 ; 2 uses
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !54 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.afc, i64 24
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !60
  br label %bb.jc

bb.jc:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i, %.noexc303.i
  %i.afd = phi i64 [ %i.aew, %.noexc303.i ], [ %i.afi, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i ]
  %i.afe = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %.noexc303.i ], [ %i.afl, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i ]
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.afb, %.noexc303.i ], [ %.0.i.i.i.i.i.i16.i.i, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i16.i.i = phi ptr [ %i.afc, %.noexc303.i ], [ %i.afj, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aff = icmp eq i64 %i.aeu, %i.afe
  br i1 %i.aff, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.jc
  %i.afg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i16.i.i, i64 8
  %i.afh = invoke noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(24) %i.afg)
          to label %.noexc304.i unwind label %.loopexit.split-lp.loopexit.i

.noexc304.i:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i.i.i
  br i1 %i.afh, label %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i.i.i: ; preds = %.noexc304.i
  %.pre.i.i.i.i = load i64, ptr %i.aev, align 8, !tbaa !57
  br label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i.i.i, %bb.jc
  %i.afi = phi i64 [ %.pre.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i.i.i ], [ %i.afd, %bb.jc ] ; 2 uses
  %i.afj = load ptr, ptr %.0.i.i.i.i.i.i16.i.i, align 8, !tbaa !54, !nonnull !30, !noundef !30 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 24
  %i.afl = load i64, ptr %i.afk, align 8, !tbaa !60 ; 2 uses
  %i.afm = urem i64 %i.afl, %i.afi
  %.not19.i.i.i.i.i.i.i.i = icmp eq i64 %i.afm, %i.aex
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i.i.i)
  br label %bb.jc

_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i.i.i: ; preds = %.noexc304.i
  %i.afn = load ptr, ptr %.015.i.i.i.i.i.i.i.i, align 8, !tbaa !54
  br label %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit.i.i

_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit.i.i: ; preds = %.noexc302.i, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i.i.i
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %i.afn, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i.i.i ], [ %.sroa.06.0.i.i.i.i.i.i, %.noexc302.i ]
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i, i64 16
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !62 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21, !noalias !666
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afp, i64 16
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !101 ; 8 uses
  %i.aft = load <2 x ptr>, ptr %i.afq, align 8, !tbaa !38
  %.not.i.i.i.i17.i.i = icmp eq ptr %i.afs, null  ; 4 uses
  br i1 %.not.i.i.i.i17.i.i, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i270.i, label %bb.jd

bb.jd:                                            ; preds = %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit.i.i
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afs, i64 12 ; 3 uses
  %i.afv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i.i18.i269.i = icmp eq i8 %i.afv, 0
  br i1 %.not.i.i.i.i.i18.i269.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.afw = load i32, ptr %i.afu, align 4, !tbaa !93
  %i.afx = add nsw i32 %i.afw, 1
  store i32 %i.afx, ptr %i.afu, align 4, !tbaa !93
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i270.i

bb.jf:                                            ; preds = %bb.jd
  %i.afy = atomicrmw volatile add ptr %i.afu, i32 1 acq_rel, align 4 ; 0 uses
end_hunk_1
begin_hunk_2_@_ZN2cv5gimpl12_GLOBAL__N_111MergeAction8tryMergeEv:bb.a
  %.not.i.i.i.i5.i23.i.i = icmp eq i8 %i.agv, 0
  br i1 %.not.i.i.i.i5.i23.i.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.agw = load i32, ptr %i.agu, align 4, !tbaa !93, !noalias !789 ; 2 uses
  %i.agx = add nsw i32 %i.agw, -1
  store i32 %i.agx, ptr %i.agu, align 4, !tbaa !93, !noalias !789
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i24.i.i

bb.js:                                            ; preds = %bb.jq
  %i.agy = atomicrmw volatile add ptr %i.agu, i32 -1 acq_rel, align 4, !noalias !789
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i24.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i24.i.i: ; preds = %bb.js, %bb.jr
  %.0.i.i.i.i.i7.i25.i.i = phi i32 [ %i.agw, %bb.jr ], [ %i.agy, %bb.js ]
  %i.agz = icmp eq i32 %.0.i.i.i.i.i7.i25.i.i, 1
  br i1 %i.agz, label %bb.jt, label %.body.i.i

bb.jt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i24.i.i
  %i.aha = load ptr, ptr %i.agt, align 8, !tbaa !17, !noalias !789
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  %i.ahc = load ptr, ptr %i.ahb, align 8, !noalias !789
  call void %i.ahc(ptr noundef nonnull align 8 dereferenceable(16) %i.agt) #21, !noalias !789, !inline_history !790
  br label %.body.i.i

bb.ju:                                            ; preds = %bb.jo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29.i.i, %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %37), !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21, !noalias !666
  %.sroa.0.0.copyload.i.i31.i.i = load ptr, ptr %i.rl, align 8, !tbaa !38, !noalias !666
  store ptr %.sroa.0.0.copyload.i.i31.i.i, ptr %36, align 8, !noalias !666
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agh, i64 32
  %i.ahe = load i64, ptr %i.ahd, align 8, !tbaa !42
  %.not.not.i.i.i.i32.i.i = icmp eq i64 %i.ahe, 0
  br i1 %.not.not.i.i.i.i32.i.i, label %bb.jv, label %bb.jx

bb.jv:                                            ; preds = %bb.ju
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  br label %bb.jw

bb.jw:                                            ; preds = %.noexc.i.i, %bb.jv
  %.sroa.06.0.in.i.i.i.i44.i.i = phi ptr [ %i.ahf, %bb.jv ], [ %.sroa.06.0.i.i.i.i45.i.i, %.noexc.i.i ]
  %.sroa.06.0.i.i.i.i45.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i44.i.i, align 8, !tbaa !54, !nonnull !30, !noundef !30 ; 3 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i45.i.i, i64 8
  %i.ahh = invoke noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(24) %i.ahg)
          to label %.noexc.i.i unwind label %.loopexit26.i.i

.noexc.i.i:                                       ; preds = %bb.jw
  br i1 %i.ahh, label %.loopexit31.i.i, label %bb.jw, !llvm.loop !55

bb.jx:                                            ; preds = %bb.ju
  %i.ahi = invoke noundef i64 @_ZNK3ade7details8Metadata6IdHashclERKNS0_10MetadataIdE(ptr noundef nonnull align 8 dereferenceable(64) %i.agh, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %.noexc46.i.i unwind label %.loopexit.split-lp27.loopexit.split-lp.i.i ; 2 uses

.noexc46.i.i:                                     ; preds = %bb.jx
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agh, i64 16 ; 2 uses
  %i.ahk = load i64, ptr %i.ahj, align 8, !tbaa !57 ; 2 uses
  %i.ahl = urem i64 %i.ahi, %i.ahk                ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !58
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %i.ahn, i64 %i.ahl
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !59, !nonnull !30, !noundef !30 ; 2 uses
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !54 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i33.i.i = getelementptr inbounds nuw i8, ptr %i.ahq, i64 24
  %.pre.i.i.i.i.i.i34.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i33.i.i, align 8, !tbaa !60
  br label %bb.jy

bb.jy:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i37.i.i, %.noexc46.i.i
  %i.ahr = phi i64 [ %i.ahk, %.noexc46.i.i ], [ %i.ahw, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i37.i.i ]
  %i.ahs = phi i64 [ %.pre.i.i.i.i.i.i34.i.i, %.noexc46.i.i ], [ %i.ahz, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i37.i.i ]
  %.015.i.i.i.i.i.i35.i.i = phi ptr [ %i.ahp, %.noexc46.i.i ], [ %.0.i.i.i.i.i.i36.i.i, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i37.i.i ]
  %.0.i.i.i.i.i.i36.i.i = phi ptr [ %i.ahq, %.noexc46.i.i ], [ %i.ahx, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i37.i.i ] ; 3 uses
  %i.aht = icmp eq i64 %i.ahi, %i.ahs
  br i1 %i.aht, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i39.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i37.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i39.i.i: ; preds = %bb.jy
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i36.i.i, i64 8
  %i.ahv = invoke noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(24) %i.ahu)
          to label %.noexc47.i.i unwind label %.loopexit.split-lp27.loopexit.i.i

.noexc47.i.i:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i39.i.i
  br i1 %i.ahv, label %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i42.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i40.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i40.i.i: ; preds = %.noexc47.i.i
  %.pre.i.i41.i.i = load i64, ptr %i.ahj, align 8, !tbaa !57
  br label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i37.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i37.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i40.i.i, %bb.jy
  %i.ahw = phi i64 [ %.pre.i.i41.i.i, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i40.i.i ], [ %i.ahr, %bb.jy ] ; 2 uses
  %i.ahx = load ptr, ptr %.0.i.i.i.i.i.i36.i.i, align 8, !tbaa !54, !nonnull !30, !noundef !30 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 24
  %i.ahz = load i64, ptr %i.ahy, align 8, !tbaa !60 ; 2 uses
  %i.aia = urem i64 %i.ahz, %i.ahw
  %.not19.i.i.i.i.i.i38.i.i = icmp eq i64 %i.aia, %i.ahl
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i38.i.i)
  br label %bb.jy

_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i42.i.i: ; preds = %.noexc47.i.i
  %i.aib = load ptr, ptr %.015.i.i.i.i.i.i35.i.i, align 8, !tbaa !54
  br label %.loopexit31.i.i

.loopexit31.i.i:                                  ; preds = %.noexc.i.i, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i42.i.i
  %.sroa.06.1.i.i.i.i43.i.i = phi ptr [ %i.aib, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i42.i.i ], [ %.sroa.06.0.i.i.i.i45.i.i, %.noexc.i.i ]
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i43.i.i, i64 16
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21, !noalias !666
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 116
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !177
  %i.aig = icmp eq i32 %i.aif, 2
  br i1 %i.aig, label %bb.mh, label %bb.jz

.loopexit26.i.i:                                  ; preds = %bb.jw
  %lpad.loopexit28.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp27.loopexit.i.i:                ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i39.i.i
  %lpad.loopexit32.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp27.loopexit.split-lp.i.i:       ; preds = %bb.jx, %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i270.i
  %lpad.loopexit.split-lp33.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp27.loopexit.split-lp.i.i, %.loopexit.split-lp27.loopexit.i.i, %.loopexit26.i.i, %bb.jt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i24.i.i, %bb.jp
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ags, %bb.jp ], [ %i.ags, %bb.jt ], [ %i.ags, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i24.i.i ], [ %lpad.loopexit28.i.i, %.loopexit26.i.i ], [ %lpad.loopexit32.i.i, %.loopexit.split-lp27.loopexit.i.i ], [ %lpad.loopexit.split-lp33.i.i, %.loopexit.split-lp27.loopexit.split-lp.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21, !noalias !666
  br label %bb.mm

bb.jz:                                            ; preds = %.loopexit31.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21, !noalias !666
  %i.aih = load ptr, ptr %i.rf, align 8, !tbaa !101, !noalias !791, !nonnull !30, !noundef !30 ; 7 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 8 ; 7 uses
  %i.aij = load atomic i32, ptr %i.aii monotonic, align 8, !noalias !794
  br label %bb.ka

bb.ka:                                            ; preds = %bb.ka, %bb.jz
  %.06.i.i.i.i.i.i.i.i271.i = phi i32 [ %i.aij, %bb.jz ], [ %i.ain, %bb.ka ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i.i272.i = icmp ne i32 %.06.i.i.i.i.i.i.i.i271.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i.i272.i)
  %i.aik = add nsw i32 %.06.i.i.i.i.i.i.i.i271.i, 1
  %i.ail = cmpxchg weak ptr %i.aii, i32 %.06.i.i.i.i.i.i.i.i271.i, i32 %i.aik acq_rel monotonic, align 8, !noalias !794 ; 2 uses
  %i.aim = extractvalue { i32, i1 } %i.ail, 1
  %i.ain = extractvalue { i32, i1 } %i.ail, 0
  br i1 %i.aim, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i273.i, label %bb.ka, !llvm.loop !134

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i273.i: ; preds = %bb.ka
  %i.aio = load atomic i32, ptr %i.aii monotonic, align 8, !noalias !794 ; 0 uses
  %i.aip = load ptr, ptr %86, align 16, !noalias !666
  %i.aiq = load atomic i64, ptr %i.aii acquire, align 8 ; 2 uses
  %i.air = icmp eq i64 %i.aiq, 4294967297
  %i.ais = trunc i64 %i.aiq to i32                ; 2 uses
  br i1 %i.air, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i273.i
  store i32 0, ptr %i.aii, align 8, !tbaa !14
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aih, i64 12
  store i32 0, ptr %i.ait, align 4, !tbaa !16
  %i.aiu = load ptr, ptr %i.aih, align 8, !tbaa !17
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  %i.aiw = load ptr, ptr %i.aiv, align 8
  call void %i.aiw(ptr noundef nonnull align 8 dereferenceable(16) %i.aih) #21, !inline_history !795
  %i.aix = load ptr, ptr %i.aih, align 8, !tbaa !17
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 24
  %i.aiz = load ptr, ptr %i.aiy, align 8
  call void %i.aiz(ptr noundef nonnull align 8 dereferenceable(16) %i.aih) #21, !inline_history !795
  br label %bb.kg

bb.kc:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i273.i
  %i.aja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i1.i.i.i275.i = icmp eq i8 %i.aja, 0
  br i1 %.not.i.i.i1.i.i.i275.i, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.ajb = add nsw i32 %i.ais, -1
  store i32 %i.ajb, ptr %i.aii, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50.i.i

bb.ke:                                            ; preds = %bb.kc
  %i.ajc = atomicrmw volatile add ptr %i.aii, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50.i.i: ; preds = %bb.ke, %bb.kd
  %.0.i.i.i.i.i.i51.i.i = phi i32 [ %i.ais, %bb.kd ], [ %i.ajc, %bb.ke ]
  %i.ajd = icmp eq i32 %.0.i.i.i.i.i.i51.i.i, 1
  br i1 %i.ajd, label %bb.kf, label %bb.kg, !prof !136

bb.kf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aih) #21
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50.i.i, %bb.kb
  invoke void @_ZN3ade4Node8outNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.198") align 8 %41, ptr noundef nonnull align 8 dereferenceable(72) %i.aip)
          to label %bb.kh unwind label %bb.me

bb.kh:                                            ; preds = %bb.kg
  %.sroa.03.sroa.0.0.copyload.i.i = load ptr, ptr %41, align 8, !noalias !666 ; 2 uses
  %.sroa.03.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.03.sroa.2.0..sroa_idx.i.i, align 8, !noalias !666 ; 5 uses
  %.sroa.03.sroa.3.i.i.sroa.0.0.copyload2349 = load <9 x i8>, ptr %.sroa.03.sroa.3.0..sroa_idx.i.i, align 8, !noalias !666
  %.sroa.03.sroa.3.i.i.sroa.0.0.vec.expand = shufflevector <9 x i8> %.sroa.03.sroa.3.i.i.sroa.0.0.copyload2349, <9 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.03.sroa.3.i.i.sroa.0.0.vecblend = shufflevector <16 x i8> %.sroa.03.sroa.3.i.i.sroa.0.0.vec.expand, <16 x i8> %.sroa.03.sroa.3.i.i.sroa.0.0, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21, !noalias !666
  %i.aje = load ptr, ptr %i.rf, align 8, !tbaa !101, !noalias !796, !nonnull !30, !noundef !30 ; 7 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 8 ; 7 uses
  %i.ajg = load atomic i32, ptr %i.ajf monotonic, align 8, !noalias !799
  br label %bb.ki

bb.ki:                                            ; preds = %bb.ki, %bb.kh
  %.06.i.i.i.i.i.i.i53.i.i = phi i32 [ %i.ajg, %bb.kh ], [ %i.ajk, %bb.ki ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i54.i.i = icmp ne i32 %.06.i.i.i.i.i.i.i53.i.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i54.i.i)
  %i.ajh = add nsw i32 %.06.i.i.i.i.i.i.i53.i.i, 1
  %i.aji = cmpxchg weak ptr %i.ajf, i32 %.06.i.i.i.i.i.i.i53.i.i, i32 %i.ajh acq_rel monotonic, align 8, !noalias !799 ; 2 uses
  %i.ajj = extractvalue { i32, i1 } %i.aji, 1
  %i.ajk = extractvalue { i32, i1 } %i.aji, 0
  br i1 %i.ajj, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i55.i.i, label %bb.ki, !llvm.loop !134

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i55.i.i: ; preds = %bb.ki
  %i.ajl = load atomic i32, ptr %i.ajf monotonic, align 8, !noalias !799 ; 0 uses
  %i.ajm = load ptr, ptr %86, align 16, !noalias !666
  %i.ajn = load atomic i64, ptr %i.ajf acquire, align 8 ; 2 uses
  %i.ajo = icmp eq i64 %i.ajn, 4294967297
  %i.ajp = trunc i64 %i.ajn to i32                ; 2 uses
  br i1 %i.ajo, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i55.i.i
  store i32 0, ptr %i.ajf, align 8, !tbaa !14
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.aje, i64 12
  store i32 0, ptr %i.ajq, align 4, !tbaa !16
  %i.ajr = load ptr, ptr %i.aje, align 8, !tbaa !17
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 16
  %i.ajt = load ptr, ptr %i.ajs, align 8
  call void %i.ajt(ptr noundef nonnull align 8 dereferenceable(16) %i.aje) #21, !inline_history !795
  %i.aju = load ptr, ptr %i.aje, align 8, !tbaa !17
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 24
  %i.ajw = load ptr, ptr %i.ajv, align 8
  call void %i.ajw(ptr noundef nonnull align 8 dereferenceable(16) %i.aje) #21, !inline_history !795
  br label %bb.ko

bb.kk:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i55.i.i
  %i.ajx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i1.i.i58.i.i = icmp eq i8 %i.ajx, 0
  br i1 %.not.i.i.i1.i.i58.i.i, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ajy = add nsw i32 %i.ajp, -1
  store i32 %i.ajy, ptr %i.ajf, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i.i

bb.km:                                            ; preds = %bb.kk
  %i.ajz = atomicrmw volatile add ptr %i.ajf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i.i: ; preds = %bb.km, %bb.kl
  %.0.i.i.i.i.i.i60.i.i = phi i32 [ %i.ajp, %bb.kl ], [ %i.ajz, %bb.km ]
  %i.aka = icmp eq i32 %.0.i.i.i.i.i.i60.i.i, 1
  br i1 %i.aka, label %bb.kn, label %bb.ko, !prof !136

bb.kn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aje) #21
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i.i, %bb.kj
  invoke void @_ZN3ade4Node8outNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.198") align 8 %42, ptr noundef nonnull align 8 dereferenceable(72) %i.ajm)
          to label %bb.kp unwind label %.loopexit.split-lp.i.i

bb.kp:                                            ; preds = %bb.ko
  %i.akb = icmp eq ptr %.sroa.03.sroa.0.0.copyload.i.i, %.sroa.03.sroa.2.0.copyload.i.i
  br i1 %i.akb, label %.loopexit25.i.i, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i.i279.i

_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i.i279.i: ; preds = %bb.kp, %bb.lw
  %.sroa.0.0.i.i.i280.i = phi ptr [ %i.anf, %bb.lw ], [ %.sroa.03.sroa.0.0.copyload.i.i, %bb.kp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35), !noalias !800
  store ptr %.sroa.0.0.i.i.i280.i, ptr %35, align 8, !noalias !800
  store ptr %.sroa.03.sroa.2.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i277.i, align 8, !noalias !800
  store <16 x i8> %.sroa.03.sroa.3.i.i.sroa.0.0.vecblend, ptr %i.rn, align 8, !noalias !666
  store i8 0, ptr %.sroa.810.0..sroa_idx.i.i.i278.i, align 8, !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21, !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21, !noalias !807
  %i.akc = load ptr, ptr %.sroa.0.0.i.i.i280.i, align 8, !tbaa !251, !noalias !812
  invoke void @_ZNK3ade4Node12HandleMapperclEPNS_4EdgeE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle.227") align 8 %33, ptr noundef nonnull align 1 dereferenceable(1) %i.rn, ptr noundef %i.akc)
          to label %.noexc62.i.i unwind label %.loopexit.i.i

.noexc62.i.i:                                     ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i.i279.i
  invoke void @_ZNK3ade4Node13OutEdgeMapperclERKNS_6HandleINS_4EdgeEEE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle") align 8 %34, ptr noundef nonnull align 1 dereferenceable(1) %i.rm, ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.kq unwind label %bb.kv, !noalias !815

bb.kq:                                            ; preds = %.noexc62.i.i
  %i.akd = load ptr, ptr %i.ro, align 8, !tbaa !101, !noalias !807 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i286.i = icmp eq ptr %i.akd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i286.i, label %bb.la, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 12 ; 3 uses
  %i.akf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !807
  %.not.i.i.i.i.i.i.i.i.i.i.i287.i = icmp eq i8 %i.akf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i287.i, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.akg = load i32, ptr %i.ake, align 4, !tbaa !93, !noalias !815 ; 2 uses
  %i.akh = add nsw i32 %i.akg, -1
  store i32 %i.akh, ptr %i.ake, align 4, !tbaa !93, !noalias !815
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i288.i

bb.kt:                                            ; preds = %bb.kr
  %i.aki = atomicrmw volatile add ptr %i.ake, i32 -1 acq_rel, align 4, !noalias !815
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i288.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i288.i: ; preds = %bb.kt, %bb.ks
  %.0.i.i.i.i.i.i.i.i.i.i.i.i289.i = phi i32 [ %i.akg, %bb.ks ], [ %i.aki, %bb.kt ]
  %i.akj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i289.i, 1
  br i1 %i.akj, label %bb.ku, label %bb.la

bb.ku:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i288.i
  %i.akk = load ptr, ptr %i.akd, align 8, !tbaa !17, !noalias !815
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 24
  %i.akm = load ptr, ptr %i.akl, align 8, !noalias !815
  call void %i.akm(ptr noundef nonnull align 8 dereferenceable(16) %i.akd) #21, !noalias !815, !inline_history !816
  br label %bb.la

bb.kv:                                            ; preds = %.noexc62.i.i
  %i.akn = landingpad { ptr, i32 }
          cleanup
  %i.ako = load ptr, ptr %i.ro, align 8, !tbaa !101, !noalias !807 ; 4 uses
  %.not.i.i.i2.i.i.i.i.i.i.i281.i = icmp eq ptr %i.ako, null
  br i1 %.not.i.i.i2.i.i.i.i.i.i.i281.i, label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i285.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 12 ; 3 uses
  %i.akq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !807
  %.not.i.i.i.i3.i.i.i.i.i.i.i282.i = icmp eq i8 %i.akq, 0
  br i1 %.not.i.i.i.i3.i.i.i.i.i.i.i282.i, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.akr = load i32, ptr %i.akp, align 4, !tbaa !93, !noalias !815 ; 2 uses
  %i.aks = add nsw i32 %i.akr, -1
  store i32 %i.aks, ptr %i.akp, align 4, !tbaa !93, !noalias !815
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i.i.i.i.i283.i

bb.ky:                                            ; preds = %bb.kw
  %i.akt = atomicrmw volatile add ptr %i.akp, i32 -1 acq_rel, align 4, !noalias !815
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i.i.i.i.i283.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i.i.i.i.i283.i: ; preds = %bb.ky, %bb.kx
  %.0.i.i.i.i.i5.i.i.i.i.i.i.i284.i = phi i32 [ %i.akr, %bb.kx ], [ %i.akt, %bb.ky ]
  %i.aku = icmp eq i32 %.0.i.i.i.i.i5.i.i.i.i.i.i.i284.i, 1
  br i1 %i.aku, label %bb.kz, label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i285.i

bb.kz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i.i.i.i.i283.i
  %i.akv = load ptr, ptr %i.ako, align 8, !tbaa !17, !noalias !815
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 24
  %i.akx = load ptr, ptr %i.akw, align 8, !noalias !815
  call void %i.akx(ptr noundef nonnull align 8 dereferenceable(16) %i.ako) #21, !noalias !815, !inline_history !816
  br label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i285.i

_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i285.i: ; preds = %bb.kz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i.i.i.i.i283.i, %bb.kv
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21, !noalias !807
  br label %.body63.i.i

bb.la:                                            ; preds = %bb.ku, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i288.i, %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21, !noalias !807
  %i.aky = load ptr, ptr %i.rp, align 8, !tbaa !101, !noalias !817 ; 8 uses
  %.not.i.i.i.i.i.i433.i = icmp eq ptr %i.aky, null
  br i1 %.not.i.i.i.i.i.i433.i, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i442.i, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 8 ; 7 uses
  %i.ala = load atomic i32, ptr %i.akz monotonic, align 8, !noalias !820
  br label %bb.lc

bb.lc:                                            ; preds = %bb.ld, %bb.lb
  %.06.i.i.i.i.i.i.i434.i = phi i32 [ %i.ala, %bb.lb ], [ %i.ale, %bb.ld ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i435.i = icmp eq i32 %.06.i.i.i.i.i.i.i434.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i435.i, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i442.i, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.alb = add nsw i32 %.06.i.i.i.i.i.i.i434.i, 1
  %i.alc = cmpxchg weak ptr %i.akz, i32 %.06.i.i.i.i.i.i.i434.i, i32 %i.alb acq_rel monotonic, align 8, !noalias !820 ; 2 uses
  %i.ald = extractvalue { i32, i1 } %i.alc, 1
  %i.ale = extractvalue { i32, i1 } %i.alc, 0
  br i1 %i.ald, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i436.i, label %bb.lc, !llvm.loop !134

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i436.i: ; preds = %bb.ld
  %i.alf = load atomic i32, ptr %i.akz monotonic, align 8, !noalias !820
  %.not.i.i.i.i.i437.i = icmp eq i32 %i.alf, 0
  %i.alg = load ptr, ptr %34, align 8, !noalias !666
  %spec.select482.i = select i1 %.not.i.i.i.i.i437.i, ptr null, ptr %i.alg ; 3 uses
  %i.alh = load atomic i64, ptr %i.akz acquire, align 8, !noalias !815 ; 2 uses
  %i.ali = icmp eq i64 %i.alh, 4294967297
  %i.alj = trunc i64 %i.alh to i32                ; 2 uses
  br i1 %i.ali, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i436.i
  store i32 0, ptr %i.akz, align 8, !tbaa !14, !noalias !815
  %i.alk = getelementptr inbounds nuw i8, ptr %i.aky, i64 12
  store i32 0, ptr %i.alk, align 4, !tbaa !16, !noalias !815
  %i.all = load ptr, ptr %i.aky, align 8, !tbaa !17, !noalias !815
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 16
  %i.aln = load ptr, ptr %i.alm, align 8, !noalias !815
  call void %i.aln(ptr noundef nonnull align 8 dereferenceable(16) %i.aky) #21, !noalias !815, !inline_history !821
  %i.alo = load ptr, ptr %i.aky, align 8, !tbaa !17, !noalias !815
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 24
  %i.alq = load ptr, ptr %i.alp, align 8, !noalias !815
  call void %i.alq(ptr noundef nonnull align 8 dereferenceable(16) %i.aky) #21, !noalias !815, !inline_history !821
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i442.i

bb.lf:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i436.i
  %i.alr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !800
  %.not.i.i.i1.i.i439.i = icmp eq i8 %i.alr, 0
  br i1 %.not.i.i.i1.i.i439.i, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.als = add nsw i32 %i.alj, -1
  store i32 %i.als, ptr %i.akz, align 8, !tbaa !93, !noalias !815
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i440.i

bb.lh:                                            ; preds = %bb.lf
  %i.alt = atomicrmw volatile add ptr %i.akz, i32 -1 acq_rel, align 4, !noalias !815
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i440.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i440.i: ; preds = %bb.lh, %bb.lg
  %.0.i.i.i.i.i.i441.i = phi i32 [ %i.alj, %bb.lg ], [ %i.alt, %bb.lh ]
  %i.alu = icmp eq i32 %.0.i.i.i.i.i.i441.i, 1
  br i1 %i.alu, label %bb.li, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i442.i, !prof !136

bb.li:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i440.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aky) #21, !noalias !815
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i442.i

_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i442.i:     ; preds = %bb.lc, %bb.li, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i440.i, %bb.le, %bb.la
  %i.alv = phi ptr [ %spec.select482.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i440.i ], [ %spec.select482.i, %bb.li ], [ %spec.select482.i, %bb.le ], [ null, %bb.la ], [ null, %bb.lc ]
  %i.alw = load ptr, ptr %i.bz, align 8, !tbaa !101, !noalias !822 ; 8 uses
  %.not.i.i.i.i.i2.i443.i = icmp eq ptr %i.alw, null
  br i1 %.not.i.i.i.i.i2.i443.i, label %_ZNK3ade6HandleINS_4NodeEEneERKS2_.exit.i, label %bb.lj

bb.lj:                                            ; preds = %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i442.i
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8 ; 7 uses
  %i.aly = load atomic i32, ptr %i.alx monotonic, align 8, !noalias !825
  br label %bb.lk

bb.lk:                                            ; preds = %bb.ll, %bb.lj
  %.06.i.i.i.i.i.i3.i444.i = phi i32 [ %i.aly, %bb.lj ], [ %i.amc, %bb.ll ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i4.i445.i = icmp eq i32 %.06.i.i.i.i.i.i3.i444.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i4.i445.i, label %_ZNK3ade6HandleINS_4NodeEEneERKS2_.exit.i, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.alz = add nsw i32 %.06.i.i.i.i.i.i3.i444.i, 1
  %i.ama = cmpxchg weak ptr %i.alx, i32 %.06.i.i.i.i.i.i3.i444.i, i32 %i.alz acq_rel monotonic, align 8, !noalias !825 ; 2 uses
  %i.amb = extractvalue { i32, i1 } %i.ama, 1
  %i.amc = extractvalue { i32, i1 } %i.ama, 0
  br i1 %i.amb, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i446.i, label %bb.lk, !llvm.loop !134

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i446.i: ; preds = %bb.ll
  %i.amd = load atomic i32, ptr %i.alx monotonic, align 8, !noalias !825
  %.not.i.i.i.i6.i447.i = icmp eq i32 %i.amd, 0
  br i1 %.not.i.i.i.i6.i447.i, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i448.i, label %bb.lm

bb.lm:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i446.i
  %i.ame = load ptr, ptr %i.bv, align 8, !tbaa !98, !noalias !822
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i448.i

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i448.i: ; preds = %bb.lm, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i446.i
  %i.amf = phi ptr [ %i.ame, %bb.lm ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i446.i ] ; 3 uses
  %i.amg = load atomic i64, ptr %i.alx acquire, align 8, !noalias !815 ; 2 uses
  %i.amh = icmp eq i64 %i.amg, 4294967297
  %i.ami = trunc i64 %i.amg to i32                ; 2 uses
  br i1 %i.amh, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i448.i
  store i32 0, ptr %i.alx, align 8, !tbaa !14, !noalias !815
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alw, i64 12
  store i32 0, ptr %i.amj, align 4, !tbaa !16, !noalias !815
  %i.amk = load ptr, ptr %i.alw, align 8, !tbaa !17, !noalias !815
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 16
  %i.amm = load ptr, ptr %i.aml, align 8, !noalias !815
  call void %i.amm(ptr noundef nonnull align 8 dereferenceable(16) %i.alw) #21, !noalias !815, !inline_history !821
  %i.amn = load ptr, ptr %i.alw, align 8, !tbaa !17, !noalias !815
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 24
  %i.amp = load ptr, ptr %i.amo, align 8, !noalias !815
  call void %i.amp(ptr noundef nonnull align 8 dereferenceable(16) %i.alw) #21, !noalias !815, !inline_history !821
  br label %_ZNK3ade6HandleINS_4NodeEEneERKS2_.exit.i

bb.lo:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i448.i
  %i.amq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !800
  %.not.i.i.i1.i8.i449.i = icmp eq i8 %i.amq, 0
  br i1 %.not.i.i.i1.i8.i449.i, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.amr = add nsw i32 %i.ami, -1
  store i32 %i.amr, ptr %i.alx, align 8, !tbaa !93, !noalias !815
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i450.i

bb.lq:                                            ; preds = %bb.lo
  %i.ams = atomicrmw volatile add ptr %i.alx, i32 -1 acq_rel, align 4, !noalias !815
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i450.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i450.i: ; preds = %bb.lq, %bb.lp
  %.0.i.i.i.i.i10.i451.i = phi i32 [ %i.ami, %bb.lp ], [ %i.ams, %bb.lq ]
  %i.amt = icmp eq i32 %.0.i.i.i.i.i10.i451.i, 1
  br i1 %i.amt, label %bb.lr, label %_ZNK3ade6HandleINS_4NodeEEneERKS2_.exit.i, !prof !136

bb.lr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i450.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.alw) #21, !noalias !815
  br label %_ZNK3ade6HandleINS_4NodeEEneERKS2_.exit.i

_ZNK3ade6HandleINS_4NodeEEneERKS2_.exit.i:        ; preds = %bb.lk, %bb.lr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i450.i, %bb.ln, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i442.i
  %i.amu = phi ptr [ %i.amf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i450.i ], [ %i.amf, %bb.lr ], [ %i.amf, %bb.ln ], [ null, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i442.i ], [ null, %bb.lk ]
  %.not485.i = icmp eq ptr %i.alv, %i.amu
  %i.amv = load ptr, ptr %i.rp, align 8, !tbaa !101, !noalias !800 ; 4 uses
  %.not.i.i.i.i.i.i.i.i290.i = icmp eq ptr %i.amv, null
  br i1 %.not.i.i.i.i.i.i.i.i290.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK2cv5gimpl12_GLOBAL__N_111MergeAction8identifyEvENK3$_0clERKN3ade6HandleINS7_4NodeEEEEUlOSA_E_EclINS7_4util5Range13IterableRangeINSI_8MapRangeINSK_INSI_9IterRangeINS_17__normal_iteratorIPPNS7_4EdgeESt6vectorISO_SaISO_EEEEST_EENS9_12HandleMapperEEENS9_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i", label %bb.ls

bb.ls:                                            ; preds = %_ZNK3ade6HandleINS_4NodeEEneERKS2_.exit.i
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 12 ; 3 uses
  %i.amx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !800
  %.not.i.i.i.i.i.i.i.i.i291.i = icmp eq i8 %i.amx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i291.i, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.amy = load i32, ptr %i.amw, align 4, !tbaa !93, !noalias !815 ; 2 uses
  %i.amz = add nsw i32 %i.amy, -1
  store i32 %i.amz, ptr %i.amw, align 4, !tbaa !93, !noalias !815
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i292.i

bb.lu:                                            ; preds = %bb.ls
  %i.ana = atomicrmw volatile add ptr %i.amw, i32 -1 acq_rel, align 4, !noalias !815
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i292.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i292.i: ; preds = %bb.lu, %bb.lt
  %.0.i.i.i.i.i.i.i.i.i.i293.i = phi i32 [ %i.amy, %bb.lt ], [ %i.ana, %bb.lu ]
  %i.anb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i293.i, 1
  br i1 %i.anb, label %bb.lv, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK2cv5gimpl12_GLOBAL__N_111MergeAction8identifyEvENK3$_0clERKN3ade6HandleINS7_4NodeEEEEUlOSA_E_EclINS7_4util5Range13IterableRangeINSI_8MapRangeINSK_INSI_9IterRangeINS_17__normal_iteratorIPPNS7_4EdgeESt6vectorISO_SaISO_EEEEST_EENS9_12HandleMapperEEENS9_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i"

bb.lv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i292.i
  %i.anc = load ptr, ptr %i.amv, align 8, !tbaa !17, !noalias !815
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 24
  %i.ane = load ptr, ptr %i.and, align 8, !noalias !815
  call void %i.ane(ptr noundef nonnull align 8 dereferenceable(16) %i.amv) #21, !noalias !815, !inline_history !826
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK2cv5gimpl12_GLOBAL__N_111MergeAction8identifyEvENK3$_0clERKN3ade6HandleINS7_4NodeEEEEUlOSA_E_EclINS7_4util5Range13IterableRangeINSI_8MapRangeINSK_INSI_9IterRangeINS_17__normal_iteratorIPPNS7_4EdgeESt6vectorISO_SaISO_EEEEST_EENS9_12HandleMapperEEENS9_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK2cv5gimpl12_GLOBAL__N_111MergeAction8identifyEvENK3$_0clERKN3ade6HandleINS7_4NodeEEEEUlOSA_E_EclINS7_4util5Range13IterableRangeINSI_8MapRangeINSK_INSI_9IterRangeINS_17__normal_iteratorIPPNS7_4EdgeESt6vectorISO_SaISO_EEEEST_EENS9_12HandleMapperEEENS9_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i": ; preds = %bb.lv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i292.i, %_ZNK3ade6HandleINS_4NodeEEneERKS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21, !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %35), !noalias !800
  br i1 %.not485.i, label %bb.lw, label %.loopexit25.loopexit.i.i

bb.lw:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK2cv5gimpl12_GLOBAL__N_111MergeAction8identifyEvENK3$_0clERKN3ade6HandleINS7_4NodeEEEEUlOSA_E_EclINS7_4util5Range13IterableRangeINSI_8MapRangeINSK_INSI_9IterRangeINS_17__normal_iteratorIPPNS7_4EdgeESt6vectorISO_SaISO_EEEEST_EENS9_12HandleMapperEEENS9_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i"
  %i.anf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i280.i, i64 8 ; 2 uses
  %i.ang = icmp eq ptr %i.anf, %.sroa.03.sroa.2.0.copyload.i.i
  br i1 %i.ang, label %.loopexit25.loopexit.i.i, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i.i279.i, !llvm.loop !827

.loopexit25.loopexit.i.i:                         ; preds = %bb.lw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK2cv5gimpl12_GLOBAL__N_111MergeAction8identifyEvENK3$_0clERKN3ade6HandleINS7_4NodeEEEEUlOSA_E_EclINS7_4util5Range13IterableRangeINSI_8MapRangeINSK_INSI_9IterRangeINS_17__normal_iteratorIPPNS7_4EdgeESt6vectorISO_SaISO_EEEEST_EENS9_12HandleMapperEEENS9_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i"
  %.sroa.0.1.i.i.ph.i294.i = phi ptr [ %.sroa.03.sroa.2.0.copyload.i.i, %bb.lw ], [ %.sroa.0.0.i.i.i280.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK2cv5gimpl12_GLOBAL__N_111MergeAction8identifyEvENK3$_0clERKN3ade6HandleINS7_4NodeEEEEUlOSA_E_EclINS7_4util5Range13IterableRangeINSI_8MapRangeINSK_INSI_9IterRangeINS_17__normal_iteratorIPPNS7_4EdgeESt6vectorISO_SaISO_EEEEST_EENS9_12HandleMapperEEENS9_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i" ]
  %.not486.i = icmp eq ptr %.sroa.0.1.i.i.ph.i294.i, %.sroa.03.sroa.2.0.copyload.i.i
  %i.anh = select i1 %.not486.i, ptr %84, ptr %85
  br label %.loopexit25.i.i

.loopexit25.i.i:                                  ; preds = %.loopexit25.loopexit.i.i, %bb.kp
  %.sroa.0.1.i.i.i295.i = phi ptr [ %84, %bb.kp ], [ %i.anh, %.loopexit25.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21, !noalias !666
  %i.ani = load ptr, ptr %i.rf, align 8, !tbaa !101, !noalias !828, !nonnull !30, !noundef !30 ; 7 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 8 ; 7 uses
  %i.ank = load atomic i32, ptr %i.anj monotonic, align 8, !noalias !831
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lx, %.loopexit25.i.i
  %.06.i.i.i.i.i.i.i66.i.i = phi i32 [ %i.ank, %.loopexit25.i.i ], [ %i.ano, %bb.lx ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i67.i.i = icmp ne i32 %.06.i.i.i.i.i.i.i66.i.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i67.i.i)
  %i.anl = add nsw i32 %.06.i.i.i.i.i.i.i66.i.i, 1
  %i.anm = cmpxchg weak ptr %i.anj, i32 %.06.i.i.i.i.i.i.i66.i.i, i32 %i.anl acq_rel monotonic, align 8, !noalias !831 ; 2 uses
  %i.ann = extractvalue { i32, i1 } %i.anm, 1
  %i.ano = extractvalue { i32, i1 } %i.anm, 0
  br i1 %i.ann, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i68.i.i, label %bb.lx, !llvm.loop !134

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i68.i.i: ; preds = %bb.lx
  %i.anp = load atomic i32, ptr %i.anj monotonic, align 8, !noalias !831 ; 0 uses
  %i.anq = load ptr, ptr %86, align 16, !noalias !666
  %i.anr = load atomic i64, ptr %i.anj acquire, align 8 ; 2 uses
  %i.ans = icmp eq i64 %i.anr, 4294967297
  %i.ant = trunc i64 %i.anr to i32                ; 2 uses
  br i1 %i.ans, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i68.i.i
  store i32 0, ptr %i.anj, align 8, !tbaa !14
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ani, i64 12
  store i32 0, ptr %i.anu, align 4, !tbaa !16
  %i.anv = load ptr, ptr %i.ani, align 8, !tbaa !17
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 16
  %i.anx = load ptr, ptr %i.anw, align 8
  call void %i.anx(ptr noundef nonnull align 8 dereferenceable(16) %i.ani) #21, !inline_history !795
  %i.any = load ptr, ptr %i.ani, align 8, !tbaa !17
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 24
  %i.aoa = load ptr, ptr %i.anz, align 8
  call void %i.aoa(ptr noundef nonnull align 8 dereferenceable(16) %i.ani) #21, !inline_history !795
  br label %bb.md

bb.lz:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i68.i.i
  %i.aob = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i1.i.i71.i.i = icmp eq i8 %i.aob, 0
  br i1 %.not.i.i.i1.i.i71.i.i, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.aoc = add nsw i32 %i.ant, -1
  store i32 %i.aoc, ptr %i.anj, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i72.i.i

bb.mb:                                            ; preds = %bb.lz
  %i.aod = atomicrmw volatile add ptr %i.anj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i72.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i72.i.i: ; preds = %bb.mb, %bb.ma
  %.0.i.i.i.i.i.i73.i.i = phi i32 [ %i.ant, %bb.ma ], [ %i.aod, %bb.mb ]
  %i.aoe = icmp eq i32 %.0.i.i.i.i.i.i73.i.i, 1
  br i1 %i.aoe, label %bb.mc, label %bb.md, !prof !136

bb.mc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i72.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ani) #21
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i72.i.i, %bb.ly
  invoke void @_ZN3ade4Node8outNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.198") align 8 %43, ptr noundef nonnull align 8 dereferenceable(72) %i.anq)
          to label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i unwind label %bb.mg

_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i: ; preds = %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21, !noalias !666
  br label %bb.mh

bb.me:                                            ; preds = %bb.kg
  %i.aof = landingpad { ptr, i32 }
          cleanup
  br label %bb.mf

.loopexit.i.i:                                    ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i.i279.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.ko
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i.i

.body63.i.i:                                      ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i285.i
  %eh.lpad-body64.i.i = phi { ptr, i32 } [ %i.akn, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i285.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21, !noalias !666
  br label %bb.mf

bb.mf:                                            ; preds = %.body63.i.i, %bb.me
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body64.i.i, %.body63.i.i ], [ %i.aof, %bb.me ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21, !noalias !666
  br label %bb.mm

bb.mg:                                            ; preds = %bb.md
  %i.aog = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21, !noalias !666
  br label %bb.mm

bb.mh:                                            ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i, %.loopexit31.i.i
  %.sroa.03.sroa.3.i.i.sroa.0.1 = phi <16 x i8> [ %.sroa.03.sroa.3.i.i.sroa.0.0, %.loopexit31.i.i ], [ %.sroa.03.sroa.3.i.i.sroa.0.0.vecblend, %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i ]
  %.0.i296.i = phi ptr [ %85, %.loopexit31.i.i ], [ %.sroa.0.1.i.i.i295.i, %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i ] ; 2 uses
  br i1 %.not.i.i.i.i17.i.i, label %bb.mq, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.afs, i64 12 ; 3 uses
  %i.aoi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i75.i.i = icmp eq i8 %i.aoi, 0
  br i1 %.not.i.i.i.i75.i.i, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.aoj = load i32, ptr %i.aoh, align 4, !tbaa !93 ; 2 uses
  %i.aok = add nsw i32 %i.aoj, -1
  store i32 %i.aok, ptr %i.aoh, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i297.i

bb.mk:                                            ; preds = %bb.mi
  %i.aol = atomicrmw volatile add ptr %i.aoh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i297.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i297.i: ; preds = %bb.mk, %bb.mj
  %.0.i.i.i.i.i.i298.i = phi i32 [ %i.aoj, %bb.mj ], [ %i.aol, %bb.mk ]
  %i.aom = icmp eq i32 %.0.i.i.i.i.i.i298.i, 1
  br i1 %i.aom, label %bb.ml, label %bb.mq

bb.ml:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i297.i
  %i.aon = load ptr, ptr %i.afs, align 8, !tbaa !17
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 24
  %i.aop = load ptr, ptr %i.aoo, align 8
  call void %i.aop(ptr noundef nonnull align 8 dereferenceable(16) %i.afs) #21, !inline_history !832
  br label %bb.mq

bb.mm:                                            ; preds = %bb.mg, %bb.mf, %.body.i.i
  %.pn13.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.aog, %bb.mg ], [ %.pn.i.i, %bb.mf ] ; 3 uses
  br i1 %.not.i.i.i.i17.i.i, label %.body239.i, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.afs, i64 12 ; 3 uses
  %i.aor = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i77.i.i = icmp eq i8 %i.aor, 0
  br i1 %.not.i.i.i.i77.i.i, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.aos = load i32, ptr %i.aoq, align 4, !tbaa !93 ; 2 uses
  %i.aot = add nsw i32 %i.aos, -1
  store i32 %i.aot, ptr %i.aoq, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i.i

bb.mp:                                            ; preds = %bb.mn
  %i.aou = atomicrmw volatile add ptr %i.aoq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i.i: ; preds = %bb.mp, %bb.mo
  %.0.i.i.i.i.i79.i.i = phi i32 [ %i.aos, %bb.mo ], [ %i.aou, %bb.mp ]
  %i.aov = icmp eq i32 %.0.i.i.i.i.i79.i.i, 1
  br i1 %i.aov, label %common.resume.sink.split.i.i, label %.body239.i

bb.mq:                                            ; preds = %bb.ml, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i297.i, %bb.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21, !noalias !666
  store ptr %.0.i296.i, ptr %32, align 8, !tbaa !127, !noalias !666
  %i.aow = invoke { ptr, i8 } @_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_12HandleHasherIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(64) %.0.i296.i, ptr noundef nonnull align 8 dereferenceable(16) %86, ptr noundef nonnull align 8 dereferenceable(16) %86, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.mr unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.mr:                                            ; preds = %bb.mq
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21, !noalias !666
  %i.aox = load ptr, ptr %i.rf, align 8, !tbaa !101, !noalias !666 ; 4 uses
  %.not.i.i.i307.i = icmp eq ptr %i.aox, null
  br i1 %.not.i.i.i307.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit311.i, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 12 ; 3 uses
  %i.aoz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i308.i = icmp eq i8 %i.aoz, 0
  br i1 %.not.i.i.i.i308.i, label %bb.mu, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.apa = load i32, ptr %i.aoy, align 4, !tbaa !93 ; 2 uses
  %i.apb = add nsw i32 %i.apa, -1
  store i32 %i.apb, ptr %i.aoy, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i309.i

bb.mu:                                            ; preds = %bb.ms
  %i.apc = atomicrmw volatile add ptr %i.aoy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i309.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i309.i: ; preds = %bb.mu, %bb.mt
  %.0.i.i.i.i.i310.i = phi i32 [ %i.apa, %bb.mt ], [ %i.apc, %bb.mu ]
  %i.apd = icmp eq i32 %.0.i.i.i.i.i310.i, 1
  br i1 %i.apd, label %bb.mv, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit311.i

bb.mv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i309.i
  %i.ape = load ptr, ptr %i.aox, align 8, !tbaa !17
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 24
  %i.apg = load ptr, ptr %i.apf, align 8
  call void %i.apg(ptr noundef nonnull align 8 dereferenceable(16) %i.aox) #21, !inline_history !717
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit311.i

_ZN3ade6HandleINS_4NodeEED2Ev.exit311.i:          ; preds = %bb.mv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i309.i, %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #21, !noalias !666
  %i.aph = load ptr, ptr %.sroa.0457.0622.i, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp eq ptr %i.aph, null
  br i1 %.not.i, label %._crit_edge625.i, label %bb.hs

.loopexit490.i:                                   ; preds = %bb.ij
  %lpad.loopexit492.i = landingpad { ptr, i32 }
          cleanup
  br label %.body239.i

.loopexit.split-lp491.loopexit.i:                 ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i250.i
  %lpad.loopexit495.i = landingpad { ptr, i32 }
          cleanup
  br label %.body239.i

.loopexit.split-lp491.loopexit.split-lp.i:        ; preds = %.loopexit494.i, %bb.ik
  %lpad.loopexit.split-lp496.i = landingpad { ptr, i32 }
          cleanup
  br label %.body239.i

.loopexit.i:                                      ; preds = %bb.ja
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body239.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit487.i = landingpad { ptr, i32 }
          cleanup
  br label %.body239.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.mq, %bb.jb
  %lpad.loopexit.split-lp488.i = landingpad { ptr, i32 }
          cleanup
  br label %.body239.i

.body239.i:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i, %.loopexit.split-lp491.loopexit.split-lp.i, %.loopexit.split-lp491.loopexit.i, %.loopexit490.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i.i, %bb.mm, %common.resume.sink.split.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i.i, %bb.iv, %bb.ig, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i231.i, %bb.ic
  %.pn51.i = phi { ptr, i32 } [ %i.abw, %bb.ic ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ], [ %i.abw, %bb.ig ], [ %i.abw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i231.i ], [ %lpad.loopexit.split-lp496.i, %.loopexit.split-lp491.loopexit.split-lp.i ], [ %i.aee, %bb.iv ], [ %.pn13.pn.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i.i ], [ %i.aee, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i.i ], [ %.pn13.pn.i.i, %bb.mm ], [ %lpad.loopexit492.i, %.loopexit490.i ], [ %lpad.loopexit495.i, %.loopexit.split-lp491.loopexit.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit487.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp488.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.api = load ptr, ptr %i.rf, align 8, !tbaa !101, !noalias !666 ; 4 uses
  %.not.i.i.i312.i = icmp eq ptr %i.api, null
  br i1 %.not.i.i.i312.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit316.i, label %bb.mw

bb.mw:                                            ; preds = %.body239.i
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 12 ; 3 uses
  %i.apk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i313.i = icmp eq i8 %i.apk, 0
  br i1 %.not.i.i.i.i313.i, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.apl = load i32, ptr %i.apj, align 4, !tbaa !93 ; 2 uses
  %i.apm = add nsw i32 %i.apl, -1
  store i32 %i.apm, ptr %i.apj, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i314.i

bb.my:                                            ; preds = %bb.mw
  %i.apn = atomicrmw volatile add ptr %i.apj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i314.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i314.i: ; preds = %bb.my, %bb.mx
  %.0.i.i.i.i.i315.i = phi i32 [ %i.apl, %bb.mx ], [ %i.apn, %bb.my ]
  %i.apo = icmp eq i32 %.0.i.i.i.i.i315.i, 1
  br i1 %i.apo, label %bb.mz, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit316.i

bb.mz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i314.i
  %i.app = load ptr, ptr %i.api, align 8, !tbaa !17
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 24
  %i.apr = load ptr, ptr %i.apq, align 8
  call void %i.apr(ptr noundef nonnull align 8 dereferenceable(16) %i.api) #21, !inline_history !717
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit316.i

_ZN3ade6HandleINS_4NodeEED2Ev.exit316.i:          ; preds = %bb.mz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i314.i, %.body239.i
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #21, !noalias !666
  br label %bb.qb

._crit_edge630.i:                                 ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit333.i, %._crit_edge625.i, %._crit_edge619.i
  %i.aps = load i8, ptr %73, align 8, !noalias !666
  store i8 %i.aps, ptr %89, align 8, !alias.scope !666
  %i.apt = getelementptr inbounds nuw i8, ptr %89, i64 8
  store ptr null, ptr %i.apt, align 8, !tbaa !113, !alias.scope !666
  %i.apu = getelementptr inbounds nuw i8, ptr %89, i64 16
  %i.apv = load i64, ptr %i.ey, align 8, !tbaa !119, !noalias !666
  store i64 %i.apv, ptr %i.apu, align 8, !tbaa !119, !alias.scope !666
  %i.apw = getelementptr inbounds nuw i8, ptr %89, i64 24
  store ptr null, ptr %i.apw, align 8, !tbaa !54, !alias.scope !666
  %i.apx = getelementptr inbounds nuw i8, ptr %89, i64 32
  %i.apy = load i64, ptr %i.fc, align 8, !tbaa !316, !noalias !666
  store i64 %i.apy, ptr %i.apx, align 8, !tbaa !316, !alias.scope !666
  %i.apz = getelementptr inbounds nuw i8, ptr %89, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apz, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i64 16, i1 false), !tbaa.struct !678
  %i.aqa = getelementptr inbounds nuw i8, ptr %89, i64 56
  store ptr null, ptr %i.aqa, align 8, !tbaa !625, !alias.scope !666
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21, !noalias !666
  store ptr %89, ptr %31, align 8, !tbaa !127, !noalias !666
  invoke void @_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_12HandleHasherIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSG_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(64) %89, ptr noundef nonnull align 8 dereferenceable(64) %73, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.ny unwind label %bb.pt

bb.na:                                            ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit333.i, %.lr.ph629.i
  %.sroa.0452.0627.i = phi ptr [ %.pre662.i, %.lr.ph629.i ], [ %i.arh, %_ZN3ade6HandleINS_4NodeEED2Ev.exit333.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #21, !noalias !666
  %i.aqb = getelementptr inbounds nuw i8, ptr %.sroa.0452.0627.i, i64 8
  %i.aqc = getelementptr inbounds nuw i8, ptr %.sroa.0452.0627.i, i64 16
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !101 ; 2 uses
  %i.aqe = load <2 x ptr>, ptr %i.aqb, align 8, !tbaa !38
  store <2 x ptr> %i.aqe, ptr %87, align 16, !tbaa !38, !noalias !666
  %.not.i.i.i.i319.i = icmp eq ptr %i.aqd, null
  br i1 %.not.i.i.i.i319.i, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit321.i, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqd, i64 12 ; 3 uses
  %i.aqg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i.i320.i = icmp eq i8 %i.aqg, 0
  br i1 %.not.i.i.i.i.i320.i, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.aqh = load i32, ptr %i.aqf, align 4, !tbaa !93
  %i.aqi = add nsw i32 %i.aqh, 1
  store i32 %i.aqi, ptr %i.aqf, align 4, !tbaa !93
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit321.i

bb.nd:                                            ; preds = %bb.nb
  %i.aqj = atomicrmw volatile add ptr %i.aqf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit321.i

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit321.i:      ; preds = %bb.nd, %bb.nc, %bb.na
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #21, !noalias !666
  %i.aqk = load ptr, ptr %70, align 16, !tbaa !154, !noalias !666
  %i.aql = load ptr, ptr %0, align 8, !tbaa !499, !noalias !666, !nonnull !30, !align !31
  invoke void @_ZNK2cv5gimpl7GIsland8producerERKN3ade5GraphERKNS2_6HandleINS2_4NodeEEE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle") align 8 %88, ptr noundef nonnull align 8 dereferenceable(248) %i.aqk, ptr noundef nonnull align 8 dereferenceable(168) %i.aql, ptr noundef nonnull align 8 dereferenceable(16) %87)
          to label %bb.ne unwind label %bb.no

bb.ne:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit321.i
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21, !noalias !666
  store ptr %79, ptr %30, align 8, !tbaa !127, !noalias !666
  %i.aqm = invoke { ptr, i8 } @_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_12HandleHasherIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(64) %79, ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.nf unwind label %bb.np     ; 0 uses

bb.nf:                                            ; preds = %bb.ne
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21, !noalias !666
  %i.aqn = load ptr, ptr %i.aam, align 8, !tbaa !101, !noalias !666 ; 4 uses
  %.not.i.i.i324.i = icmp eq ptr %i.aqn, null
  br i1 %.not.i.i.i324.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit328.i, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 12 ; 3 uses
  %i.aqp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85, !noalias !666
  %.not.i.i.i.i325.i = icmp eq i8 %i.aqp, 0
  br i1 %.not.i.i.i.i325.i, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.aqq = load i32, ptr %i.aqo, align 4, !tbaa !93 ; 2 uses
  %i.aqr = add nsw i32 %i.aqq, -1
  store i32 %i.aqr, ptr %i.aqo, align 4, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i326.i

bb.ni:                                            ; preds = %bb.ng
  %i.aqs = atomicrmw volatile add ptr %i.aqo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i326.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i326.i: ; preds = %bb.ni, %bb.nh
  %.0.i.i.i.i.i327.i = phi i32 [ %i.aqq, %bb.nh ], [ %i.aqs, %bb.ni ]
  %i.aqt = icmp eq i32 %.0.i.i.i.i.i327.i, 1
end_hunk_2
