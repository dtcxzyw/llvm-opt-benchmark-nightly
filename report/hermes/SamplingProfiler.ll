inline.NumInlined: 740
inline.NumDeleted: 441
begin_hunk_0_@_ZN6hermes2vm16SamplingProfiler14registerDomainEPNS0_6DomainE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 8 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm16SamplingProfiler14registerDomainEPNS0_6DomainE:bb.a
  br i1 %i.ak, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN6hermes2vm6DomainESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread, label %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE9push_backERKS3_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN6hermes2vm6DomainESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN6hermes2vm6DomainESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.d, %i.am
  br i1 %.not.i, label %bb.k, label %bb.j
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm16SamplingProfiler14registerDomainEPNS0_6DomainE:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %2 = load ptr, ptr %i.al, align 8, !tbaa !15
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %4) #18
  br label %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm16SamplingProfiler22registerNativeFunctionEPNS0_14NativeFunctionE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f                       ; 8 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm16SamplingProfiler22registerNativeFunctionEPNS0_14NativeFunctionE:bb.a
  br label %bb.p

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN6hermes2vm14NativeFunctionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN6hermes2vm14NativeFunctionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.d, %i.ao
  br i1 %.not.i, label %bb.l, label %bb.k
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm16SamplingProfiler22registerNativeFunctionEPNS0_14NativeFunctionE:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %2 = load ptr, ptr %i.an, align 8, !tbaa !24
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %4) #18
  br label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
end_hunk_5
begin_hunk_6_@_ZN6hermes2vm16SamplingProfilerC2ERNS0_7RuntimeE:bb.a
  store volatile i32 0, ptr %i.c, align 4, !tbaa !358
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(12000) ptr @_Znwm(i64 noundef 12000) #17 ; 11 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !307
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12000 ; 2 uses
end_hunk_6
