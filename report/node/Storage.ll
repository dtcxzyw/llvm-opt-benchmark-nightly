inline.NumInlined: 372
inline.NumDeleted: 286
begin_hunk_0_@_ZN4node9inspector8protocol7Storage20DomainDispatcherImpl8DispatchESt4spanIKhLm18446744073709551615EE:bb.a
  %.016.i.i.i.i = phi i64 [ %.1.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt4spanIKhLm18446744073709551615EEMN4node9inspector8protocol7Storage20DomainDispatcherImplEFvRKN5crdtp12DispatchableEEESt6vectorISH_SaISH_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  %.sroa.011.015.i.i.i.i = phi ptr [ %.sroa.011.1.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt4spanIKhLm18446744073709551615EEMN4node9inspector8protocol7Storage20DomainDispatcherImplEFvRKN5crdtp12DispatchableEEESt6vectorISH_SaISH_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.f, %bb.d ] ; 2 uses
  %i.n = lshr i64 %.016.i.i.i.i, 1                ; 3 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.015.i.i.i.i, i64 %i.n ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.o, align 8
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8
end_hunk_0
begin_hunk_1_@_ZN4node9inspector8protocol7Storage10Dispatcher4wireEPN5crdtp14UberDispatcherEPNS2_7BackendE:bb.a
  br label %_ZN4node9inspector8protocol7Storage12_GLOBAL__N_115SortedRedirectsEv.exit

_ZN4node9inspector8protocol7Storage12_GLOBAL__N_115SortedRedirectsEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = load ptr, ptr @_ZZN4node9inspector8protocol7Storage12_GLOBAL__N_115SortedRedirectsEvE9redirects, align 8, !nonnull !11, !noundef !11
  store ptr %i.c, ptr %2, align 8
  call void @_ZN5crdtp14UberDispatcher11WireBackendESt4spanIKhLm18446744073709551615EERKSt6vectorISt4pairIS3_S3_ESaIS6_EESt10unique_ptrINS_16DomainDispatcherESt14default_deleteISC_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nonnull @_ZN4node9inspector8protocol7Storage8Metainfo10domainNameE, i64 7, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull %2) #12
  %i.j = load ptr, ptr %2, align 8                ; 3 uses
end_hunk_1
