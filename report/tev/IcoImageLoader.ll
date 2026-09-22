Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/IcoImageLoader?download=true
inline.NumInlined: 6024
inline.NumDeleted: 2372
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN4tlog6LoggerC2ENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_6vectorINS1_10shared_ptrINS_7IOutputEEENS5_ISB_EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.a, ptr %3, align 8, !tbaa !229, !alias.scope !757
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.j, align 8, !tbaa !232, !alias.scope !757
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEC2ERKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEEEDaRT_m.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #37
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEEEDaRT_m.exit.i.i.i: ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #36
          to label %bb.d unwind label %bb.f       ; 6 uses

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEEEDaRT_m.exit.i.i.i
  store ptr %i.l, ptr %i.a, align 8, !tbaa !115
  store ptr %i.l, ptr %i.b, align 8, !tbaa !116
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store ptr %i.m, ptr %i.c, align 8, !tbaa !233
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i, %bb.d
  %.010.i.i.i.i.i = phi ptr [ %i.s, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %bb.d ] ; 3 uses
  %storemerge9.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !227  ; 2 uses
  %i.p = load <2 x ptr>, ptr %.010.i.i.i.i.i, align 8, !tbaa !171
  store <2 x ptr> %i.p, ptr %storemerge9.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE18__construct_at_endIPS4_S9_EEvT_T0_m.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE18__construct_at_endIPS4_S9_EEvT_T0_m.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.w
  store ptr %i.x, ptr %i.b, align 8, !tbaa !116
  br label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEC2ERKS7_.exit

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.ai, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEEEDaRT_m.exit.i.i.i, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %common.resume

_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEC2ERKS7_.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE18__construct_at_endIPS4_S9_EEvT_T0_m.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load i8, ptr %1, align 8
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEC2ERKS7_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !209
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEC2ERKS7_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !81
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef %i.ad, i64 noundef %i.af)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = load i32, ptr %0, align 8, !tbaa !758
  %i.ah = or i32 %i.ag, 4
  store i32 %i.ah, ptr %0, align 8, !tbaa !758
  ret void

bb.j:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #34
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__114default_deleteIN4tlog6LoggerEEclB8ne180100EPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.g = load i64, ptr %i.b, align 8
  %i.h = and i64 %i.g, -2
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.h) #38
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN4tlog6LoggerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !116  ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.m, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -16 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !227  ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = atomicrmw add ptr %i.p, i64 -1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(24) %i.o) #34, !inline_history !759
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o) #34
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.j, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i
  %.pre1.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !115
  br label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i, %bb.d
  %i.v = phi ptr [ %.pre1.i.i.i, %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !116
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !233
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.aa) #38
  br label %_ZN4tlog6LoggerD2Ev.exit

_ZN4tlog6LoggerD2Ev.exit:                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i, %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 56) #38
  br label %bb.g

bb.g:                                             ; preds = %_ZN4tlog6LoggerD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryELb0EEEvT1_SQ_T0_NS_15iterator_traitsISQ_E15difference_typeEb"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #23 {
bb.a:
  %.sroa.7.i106 = alloca [10 x i8], align 2       ; 4 uses
  %4 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  %.sroa.19.i = alloca [10 x i8], align 2         ; 4 uses
  %5 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  %.sroa.22.i = alloca [10 x i8], align 2         ; 4 uses
  %6 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  %.sroa.7.i.i.i.i.i = alloca [10 x i8], align 2  ; 4 uses
  %7 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 5 uses
  %.sroa.7.i57 = alloca [10 x i8], align 2        ; 4 uses
  %.sroa.7.i = alloca [10 x i8], align 2          ; 4 uses
  %8 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  %i.a = zext i1 %3 to i8
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer": ; preds = %bb.au, %bb.a
  %.020.ph = phi ptr [ %i.of, %bb.au ], [ %1, %bb.a ] ; 29 uses
  %.017.ph = phi ptr [ %.017, %bb.au ], [ %0, %bb.a ]
  %.048.ph = phi i8 [ %.048.ph319, %bb.au ], [ %i.a, %bb.a ]
  %.046.ph = phi i64 [ %i.if, %bb.au ], [ %2, %bb.a ]
  %i.b = ptrtoint ptr %.020.ph to i64
  %i.c = getelementptr inbounds i8, ptr %.020.ph, i64 -24 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.020.ph, i64 -48
  %i.e = getelementptr inbounds i8, ptr %.020.ph, i64 -72
  %i.f = getelementptr inbounds i8, ptr %.020.ph, i64 -12
  %i.g = getelementptr inbounds i8, ptr %.020.ph, i64 -24
  %i.h = getelementptr inbounds i8, ptr %.020.ph, i64 -20
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer317"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer317": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer317.backedge", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer"
  %.017.ph318 = phi ptr [ %.017.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer" ], [ %.017.ph318.be, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer317.backedge" ]
  %.048.ph319 = phi i8 [ %.048.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer" ], [ 0, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer317.backedge" ] ; 3 uses
  %.046.ph320 = phi i64 [ %.046.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer" ], [ %i.if, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer317.backedge" ]
  %i.i = trunc nuw i8 %.048.ph319 to i1           ; 2 uses
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer317", %bb.av
  %.017 = phi ptr [ %.130.lcssa.i, %bb.av ], [ %.017.ph318, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer317" ] ; 63 uses
  %.046 = phi i64 [ %i.if, %bb.av ], [ %.046.ph320, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer317" ] ; 2 uses
  %i.j = ptrtoint ptr %.017 to i64                ; 2 uses
  %i.k = sub i64 %i.b, %i.j                       ; 4 uses
  %i.l = sdiv exact i64 %i.k, 24                  ; 5 uses
  switch i64 %i.l, label %bb.g [
    i64 0, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread"
    i64 1, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread"
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

bb.b:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit"
  %i.m = getelementptr inbounds i8, ptr %.020.ph, i64 -24 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.020.ph, i64 -12
  %i.o = load i16, ptr %i.n, align 2, !tbaa !97   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.017, i64 12
  %i.q = load i16, ptr %i.p, align 2, !tbaa !97   ; 2 uses
  %i.r = icmp eq i16 %i.o, %i.q
  br i1 %i.r, label %.split, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit"

.split:                                           ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.017, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !96
  %i.u = getelementptr inbounds i8, ptr %.020.ph, i64 -20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !96
  %i.w = load i32, ptr %.017, align 4, !tbaa !96  ; 2 uses
  %i.x = load i32, ptr %i.m, align 4, !tbaa !96   ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.w
  %i.z = icmp sgt i32 %i.x, %i.w
  %i.aa = icmp sgt i32 %i.v, %i.t
  %spec.select.i = select i1 %i.y, i1 %i.aa, i1 %i.z
  br i1 %spec.select.i, label %bb.c, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread"

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit": ; preds = %bb.b
  %i.ab = icmp ugt i16 %i.o, %i.q
  br i1 %i.ab, label %bb.c, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread"

bb.c:                                             ; preds = %.split, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(24) %.017, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.017, ptr noundef nonnull align 4 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.m, ptr noundef nonnull align 4 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread"

bb.d:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit"
  %i.ac = getelementptr inbounds nuw i8, ptr %.017, i64 24
  %i.ad = getelementptr inbounds i8, ptr %.020.ph, i64 -24
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEjT1_SQ_SQ_T0_"(ptr noundef %.017, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread"

bb.e:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %.017, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.017, i64 48
  %i.ag = getelementptr inbounds i8, ptr %.020.ph, i64 -24
  tail call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_SQ_SQ_T0_"(ptr noundef %.017, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread"

bb.f:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit"
  %i.ah = getelementptr inbounds nuw i8, ptr %.017, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.017, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.017, i64 72
  %i.ak = getelementptr inbounds i8, ptr %.020.ph, i64 -24
  tail call fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSS_SS_SS_SS_SS_SR_"(ptr noundef %.017, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread"

bb.g:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit"
  %i.al = icmp slt i64 %i.k, 576
  br i1 %i.al, label %bb.h, label %9

bb.h:                                             ; preds = %bb.g
  %i.am = trunc nuw i8 %.048.ph319 to i1
  %i.an = icmp eq ptr %.017, %.020.ph
  %storemerge13.i = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 3 uses
  %.not14.i = icmp eq ptr %storemerge13.i, %.020.ph
  %or.cond.i = select i1 %i.an, i1 true, i1 %.not14.i ; 2 uses
  br i1 %i.am, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %or.cond.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread", label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %bb.i, %bb.k
  %storemerge16.i = phi ptr [ %storemerge.i, %bb.k ], [ %storemerge13.i, %bb.i ] ; 5 uses
  %.pn15.i = phi ptr [ %storemerge16.i, %bb.k ], [ %.017, %bb.i ] ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn15.i, i64 36
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !97 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn15.i, i64 12
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !97 ; 2 uses
  %i.as = icmp eq i16 %i.ap, %i.ar
  br i1 %i.as, label %.split.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i"

.split.i:                                         ; preds = %.lr.ph17.i
  %i.at = getelementptr inbounds nuw i8, ptr %.pn15.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !96
  %i.av = getelementptr inbounds nuw i8, ptr %.pn15.i, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !96
  %i.ax = load i32, ptr %.pn15.i, align 4, !tbaa !96 ; 2 uses
  %i.ay = load i32, ptr %storemerge16.i, align 4, !tbaa !96 ; 3 uses
  %i.az = icmp eq i32 %i.ay, %i.ax
  %i.ba = icmp sgt i32 %i.ay, %i.ax
  %i.bb = icmp sgt i32 %i.aw, %i.au
  %spec.select.i.i = select i1 %i.az, i1 %i.bb, i1 %i.ba
  br i1 %spec.select.i.i, label %bb.j, label %bb.k

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i": ; preds = %.lr.ph17.i
  %i.bc = icmp ugt i16 %i.ap, %i.ar
  br i1 %i.bc, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i", label %bb.k

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i": ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i"
  %.sroa.0.0.copyload.pre.i = load i32, ptr %storemerge16.i, align 4, !tbaa !96
  br label %bb.j

bb.j:                                             ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i", %.split.i
  %.sroa.0.0.copyload.i = phi i32 [ %.sroa.0.0.copyload.pre.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i" ], [ %i.ay, %.split.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.5.0..val18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn15.i, i64 28 ; 2 uses
  %i.bd = load <2 x i32>, ptr %.sroa.5.0..val18.sroa_idx.i, align 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..val18.sroa_idx.i, align 4, !tbaa !96
  %.sroa.7.0..val18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn15.i, i64 38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..val18.sroa_idx.i, i64 10, i1 false), !tbaa.struct !246
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %storemerge16.i, ptr noundef nonnull align 4 dereferenceable(24) %.pn15.i, i64 24, i1 false), !tbaa.struct !98
  %.not179.i = icmp eq ptr %.pn15.i, %.017
  br i1 %.not179.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.backedge.i
  %.0710.i = phi ptr [ %i.be, %.backedge.i ], [ %.pn15.i, %bb.j ] ; 6 uses
  %i.be = getelementptr inbounds i8, ptr %.0710.i, i64 -24 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %.0710.i, i64 -12
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !97 ; 2 uses
  %i.bh = icmp eq i16 %i.ap, %i.bg
  br i1 %i.bh, label %.split8.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21.i"

.split8.i:                                        ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds i8, ptr %.0710.i, i64 -20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !96
  %i.bk = load i32, ptr %i.be, align 4, !tbaa !96 ; 2 uses
  %i.bl = icmp eq i32 %.sroa.0.0.copyload.i, %i.bk
  %i.bm = icmp sgt i32 %.sroa.0.0.copyload.i, %i.bk
  %i.bn = icmp sgt i32 %.sroa.5.0.copyload.i, %i.bj
  %spec.select.i20.i = select i1 %i.bl, i1 %i.bn, i1 %i.bm
  br i1 %spec.select.i20.i, label %.backedge.i, label %.critedge.i

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21.i": ; preds = %.lr.ph.i
  %i.bo = icmp ugt i16 %i.ap, %i.bg
  br i1 %i.bo, label %.backedge.i, label %.critedge.i

.backedge.i:                                      ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21.i", %.split8.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.0710.i, ptr noundef nonnull align 4 dereferenceable(24) %i.be, i64 24, i1 false), !tbaa.struct !98
  %.not17.i = icmp eq ptr %i.be, %.017
  br i1 %.not17.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !760

.critedge.i:                                      ; preds = %.backedge.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21.i", %.split8.i, %bb.j
  %.07.lcssa.i = phi ptr [ %.017, %bb.j ], [ %.0710.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21.i" ], [ %.017, %.backedge.i ], [ %.0710.i, %.split8.i ] ; 4 uses
  store i32 %.sroa.0.0.copyload.i, ptr %.07.lcssa.i, align 4, !tbaa !96
  %.sroa.5.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 4
  store <2 x i32> %i.bd, ptr %.sroa.5.0..0..sroa_idx.i, align 4
  %.sroa.63.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 12
  store i16 %i.ap, ptr %.sroa.63.0..0..sroa_idx.i, align 4, !tbaa !97
  %.sroa.7.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.i, i64 10, i1 false), !tbaa.struct !246
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i", %.split.i
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge16.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i, %.020.ph
  br i1 %.not.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread", label %.lr.ph17.i, !llvm.loop !761

bb.l:                                             ; preds = %bb.h
  br i1 %or.cond.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread", label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.l, %bb.o
  %storemerge12.i = phi ptr [ %storemerge.i61, %bb.o ], [ %storemerge13.i, %bb.l ] ; 5 uses
  %.pn11.i = phi ptr [ %storemerge12.i, %bb.o ], [ %.017, %bb.l ] ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn11.i, i64 36
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !97 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.pn11.i, i64 12
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !97 ; 2 uses
  %i.bt = icmp eq i16 %i.bq, %i.bs
  br i1 %i.bt, label %.split.i73, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i60"

.split.i73:                                       ; preds = %.lr.ph.i59
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn11.i, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !96
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn11.i, i64 28
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !96
  %i.by = load i32, ptr %.pn11.i, align 4, !tbaa !96 ; 2 uses
  %i.bz = load i32, ptr %storemerge12.i, align 4, !tbaa !96 ; 3 uses
  %i.ca = icmp eq i32 %i.bz, %i.by
  %i.cb = icmp sgt i32 %i.bz, %i.by
  %i.cc = icmp sgt i32 %i.bx, %i.bv
  %spec.select.i.i74 = select i1 %i.ca, i1 %i.cc, i1 %i.cb
  br i1 %spec.select.i.i74, label %bb.m, label %bb.o

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i60": ; preds = %.lr.ph.i59
  %i.cd = icmp ugt i16 %i.bq, %i.bs
  br i1 %i.cd, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i63", label %bb.o

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i63": ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i60"
  %.sroa.0.0.copyload.pre.i64 = load i32, ptr %storemerge12.i, align 4, !tbaa !96
  br label %bb.m

bb.m:                                             ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i63", %.split.i73
  %.sroa.0.0.copyload.i65 = phi i32 [ %.sroa.0.0.copyload.pre.i64, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i63" ], [ %i.bz, %.split.i73 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i57)
  %.sroa.5.0..val14.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn11.i, i64 28 ; 2 uses
  %i.ce = load <2 x i32>, ptr %.sroa.5.0..val14.sroa_idx.i, align 4
  %.sroa.5.0.copyload.i66 = load i32, ptr %.sroa.5.0..val14.sroa_idx.i, align 4, !tbaa !96
  %.sroa.7.0..val14.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn11.i, i64 38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.i57, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..val14.sroa_idx.i, i64 10, i1 false), !tbaa.struct !246
  br label %.backedge.i71

.backedge.i71:                                    ; preds = %.backedge.i71.backedge, %bb.m
  %.07.i = phi ptr [ %.pn11.i, %bb.m ], [ %i.cf, %.backedge.i71.backedge ] ; 9 uses
  %.0.i = phi ptr [ %storemerge12.i, %bb.m ], [ %.07.i, %.backedge.i71.backedge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.0.i, ptr noundef nonnull align 4 dereferenceable(24) %.07.i, i64 24, i1 false), !tbaa.struct !98
  %i.cf = getelementptr inbounds i8, ptr %.07.i, i64 -24 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.07.i, i64 -12
  %i.ch = load i16, ptr %i.cg, align 4, !tbaa !97 ; 2 uses
  %i.ci = icmp eq i16 %i.bq, %i.ch
  br i1 %i.ci, label %.split8.i72, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i"

.split8.i72:                                      ; preds = %.backedge.i71
  %i.cj = getelementptr inbounds i8, ptr %.07.i, i64 -20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !96
  %i.cl = load i32, ptr %i.cf, align 4, !tbaa !96 ; 2 uses
  %i.cm = icmp eq i32 %.sroa.0.0.copyload.i65, %i.cl
  %i.cn = icmp sgt i32 %.sroa.0.0.copyload.i65, %i.cl
  %i.co = icmp sgt i32 %.sroa.5.0.copyload.i66, %i.ck
  %spec.select.i16.i = select i1 %i.cm, i1 %i.co, i1 %i.cn
  br i1 %spec.select.i16.i, label %.backedge.i71.backedge, label %bb.n

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i": ; preds = %.backedge.i71
  %i.cp = icmp ugt i16 %i.bq, %i.ch
  br i1 %i.cp, label %.backedge.i71.backedge, label %bb.n

.backedge.i71.backedge:                           ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i", %.split8.i72
  br label %.backedge.i71, !llvm.loop !762

bb.n:                                             ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i", %.split8.i72
  store i32 %.sroa.0.0.copyload.i65, ptr %.07.i, align 4, !tbaa !96
  %.sroa.5.0..0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %.07.i, i64 4
  store <2 x i32> %i.ce, ptr %.sroa.5.0..0..sroa_idx.i67, align 4
  %.sroa.63.0..0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %.07.i, i64 12
  store i16 %i.bq, ptr %.sroa.63.0..0..sroa_idx.i69, align 4, !tbaa !97
  %.sroa.7.0..0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %.07.i, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..0..sroa_idx.i70, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.i57, i64 10, i1 false), !tbaa.struct !246
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i57)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i60", %.split.i73
  %storemerge.i61 = getelementptr inbounds nuw i8, ptr %storemerge12.i, i64 24 ; 2 uses
  %.not.i62 = icmp eq ptr %storemerge.i61, %.020.ph
  br i1 %.not.i62, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread", label %.lr.ph.i59, !llvm.loop !763

9:                                                ; preds = %bb.g
  %10 = icmp eq i64 %.046, 0
  br i1 %10, label %bb.p, label %bb.ah

bb.p:                                             ; preds = %9
  %i.cq = icmp eq ptr %.017, %.020.ph
  br i1 %i.cq, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = add nsw i64 %i.l, -2
  %i.cs = lshr i64 %i.cr, 1                       ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_OT0_NS_15iterator_traitsISQ_E15difference_typeESQ_.exit", %bb.q
  %.01.i.i.i = phi i64 [ %i.cs, %bb.q ], [ %i.fm, %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_OT0_NS_15iterator_traitsISQ_E15difference_typeESQ_.exit" ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %.017, i64 %.01.i.i.i ; 8 uses
  %i.cu = shl nsw i64 %.01.i.i.i, 1               ; 2 uses
  %i.cv = or disjoint i64 %i.cu, 1                ; 4 uses
  %i.cw = getelementptr inbounds [24 x i8], ptr %.017, i64 %i.cv ; 9 uses
  %i.cx = add nsw i64 %i.cu, 2                    ; 2 uses
  %i.cy = icmp slt i64 %i.cx, %i.l
  br i1 %i.cy, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.db = load i16, ptr %i.da, align 2, !tbaa !97 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !97 ; 2 uses
  %i.de = icmp eq i16 %i.db, %i.dd
  br i1 %i.de, label %.split.i115, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i114"

.split.i115:                                      ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 28
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !96
  %i.dj = load i32, ptr %i.cz, align 4, !tbaa !96 ; 2 uses
  %i.dk = load i32, ptr %i.cw, align 4, !tbaa !96 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, %i.dj
  %i.dm = icmp sgt i32 %i.dk, %i.dj
  %i.dn = icmp sgt i32 %i.di, %i.dg
  %spec.select.i.i116 = select i1 %i.dl, i1 %i.dn, i1 %i.dm
  br i1 %spec.select.i.i116, label %bb.t, label %bb.u

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i114": ; preds = %bb.s
  %i.do = icmp ugt i16 %i.db, %i.dd
  br i1 %i.do, label %bb.t, label %bb.u

bb.t:                                             ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i114", %.split.i115
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i114", %.split.i115, %bb.r
  %.012.i = phi ptr [ %i.cz, %bb.t ], [ %i.cw, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i114" ], [ %i.cw, %bb.r ], [ %i.cw, %.split.i115 ] ; 6 uses
  %.0.i107 = phi i64 [ %i.cx, %bb.t ], [ %i.cv, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i114" ], [ %i.cv, %bb.r ], [ %i.cv, %.split.i115 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !97 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !97 ; 5 uses
  %i.dt = icmp eq i16 %i.dq, %i.ds
  br i1 %i.dt, label %.split16.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit29.i"

.split16.i:                                       ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !96 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !96
  %i.dy = load i32, ptr %i.ct, align 4, !tbaa !96 ; 3 uses
  %i.dz = load i32, ptr %.012.i, align 4, !tbaa !96 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, %i.dy
  %i.eb = icmp sgt i32 %i.dz, %i.dy
  %i.ec = icmp sgt i32 %i.dx, %i.dv
  %spec.select.i28.i = select i1 %i.ea, i1 %i.ec, i1 %i.eb
  br i1 %spec.select.i28.i, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_OT0_NS_15iterator_traitsISQ_E15difference_typeESQ_.exit", label %bb.v

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit29.i": ; preds = %bb.u
  %i.ed = icmp ugt i16 %i.dq, %i.ds
  br i1 %i.ed, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_OT0_NS_15iterator_traitsISQ_E15difference_typeESQ_.exit", label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit29._crit_edge.i"

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit29._crit_edge.i": ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit29.i"
  %.sroa.0.0.copyload.pre.i108 = load i32, ptr %i.ct, align 4, !tbaa !96
  %.sroa.5.0..val26.sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %.sroa.5.0.copyload.pre.i = load i32, ptr %.sroa.5.0..val26.sroa_idx.phi.trans.insert.i, align 4, !tbaa !96
  br label %bb.v

bb.v:                                             ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit29._crit_edge.i", %.split16.i
  %.sroa.5.0.copyload.i109 = phi i32 [ %.sroa.5.0.copyload.pre.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit29._crit_edge.i" ], [ %i.dv, %.split16.i ] ; 2 uses
  %.sroa.0.0.copyload.i110 = phi i32 [ %.sroa.0.0.copyload.pre.i108, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit29._crit_edge.i" ], [ %i.dy, %.split16.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i106)
  %.sroa.6.0..val26.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.ee = load i32, ptr %.sroa.6.0..val26.sroa_idx.i, align 4
  %.sroa.7.0..val26.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.i106, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..val26.sroa_idx.i, i64 10, i1 false), !tbaa.struct !246
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ct, ptr noundef nonnull align 4 dereferenceable(24) %.012.i, i64 24, i1 false), !tbaa.struct !98
  %i.ef = icmp slt i64 %i.cs, %.0.i107
  br i1 %i.ef, label %.split18._crit_edge.i, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.v, %.backedge.i113
  %.120.i = phi i64 [ %.2.i112, %.backedge.i113 ], [ %.0.i107, %bb.v ]
  %.11319.i = phi ptr [ %.214.i, %.backedge.i113 ], [ %.012.i, %bb.v ] ; 3 uses
  %i.eg = shl nsw i64 %.120.i, 1                  ; 2 uses
  %i.eh = or disjoint i64 %i.eg, 1                ; 4 uses
  %i.ei = getelementptr inbounds [24 x i8], ptr %.017, i64 %i.eh ; 9 uses
  %i.ej = add nsw i64 %i.eg, 2                    ; 2 uses
  %i.ek = icmp slt i64 %i.ej, %i.l
  br i1 %i.ek, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph.i111
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.en = load i16, ptr %i.em, align 2, !tbaa !97 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !97 ; 2 uses
  %i.eq = icmp eq i16 %i.en, %i.ep
  br i1 %i.eq, label %.split17.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit32.i"

.split17.i:                                       ; preds = %bb.w
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  %i.es = load i32, ptr %i.er, align 4, !tbaa !96
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !96
  %i.ev = load i32, ptr %i.el, align 4, !tbaa !96 ; 2 uses
  %i.ew = load i32, ptr %i.ei, align 4, !tbaa !96 ; 2 uses
  %i.ex = icmp eq i32 %i.ew, %i.ev
  %i.ey = icmp sgt i32 %i.ew, %i.ev
  %i.ez = icmp sgt i32 %i.eu, %i.es
  %spec.select.i31.i = select i1 %i.ex, i1 %i.ez, i1 %i.ey
  br i1 %spec.select.i31.i, label %bb.x, label %bb.y

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit32.i": ; preds = %bb.w
  %i.fa = icmp ugt i16 %i.en, %i.ep
  br i1 %i.fa, label %bb.x, label %bb.y

bb.x:                                             ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit32.i", %.split17.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit32.i", %.split17.i, %.lr.ph.i111
  %.214.i = phi ptr [ %i.el, %bb.x ], [ %i.ei, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit32.i" ], [ %i.ei, %.lr.ph.i111 ], [ %i.ei, %.split17.i ] ; 6 uses
  %.2.i112 = phi i64 [ %i.ej, %bb.x ], [ %i.eh, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit32.i" ], [ %i.eh, %.lr.ph.i111 ], [ %i.eh, %.split17.i ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.214.i, i64 12
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !97 ; 2 uses
  %i.fd = icmp eq i16 %i.fc, %i.ds
  br i1 %i.fd, label %.split18.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit35.i"

.split18.i:                                       ; preds = %bb.y
  %i.fe = getelementptr inbounds nuw i8, ptr %.214.i, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !96
  %i.fg = load i32, ptr %.214.i, align 4, !tbaa !96 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, %.sroa.0.0.copyload.i110
  %i.fi = icmp sgt i32 %i.fg, %.sroa.0.0.copyload.i110
  %i.fj = icmp sgt i32 %i.ff, %.sroa.5.0.copyload.i109
  %spec.select.i34.i = select i1 %i.fh, i1 %i.fj, i1 %i.fi
  br i1 %spec.select.i34.i, label %.split18._crit_edge.i, label %.backedge.i113

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit35.i": ; preds = %bb.y
  %i.fk = icmp ugt i16 %i.fc, %i.ds
  br i1 %i.fk, label %.split18._crit_edge.i, label %.backedge.i113

.backedge.i113:                                   ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit35.i", %.split18.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.11319.i, ptr noundef nonnull align 4 dereferenceable(24) %.214.i, i64 24, i1 false), !tbaa.struct !98
  %i.fl = icmp slt i64 %i.cs, %.2.i112
  br i1 %i.fl, label %.split18._crit_edge.i, label %.lr.ph.i111, !llvm.loop !764

.split18._crit_edge.i:                            ; preds = %.backedge.i113, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit35.i", %.split18.i, %bb.v
  %.113.lcssa.i = phi ptr [ %.012.i, %bb.v ], [ %.11319.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit35.i" ], [ %.214.i, %.backedge.i113 ], [ %.11319.i, %.split18.i ] ; 5 uses
  store i32 %.sroa.0.0.copyload.i110, ptr %.113.lcssa.i, align 4, !tbaa !96
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.113.lcssa.i, i64 4
  store i32 %.sroa.5.0.copyload.i109, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !96
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.113.lcssa.i, i64 8
  store i32 %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.113.lcssa.i, i64 12
  store i16 %i.ds, ptr %.sroa.63.0..sroa_idx.i, align 4, !tbaa !97
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.113.lcssa.i, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.i106, i64 10, i1 false), !tbaa.struct !246
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i106)
  br label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_OT0_NS_15iterator_traitsISQ_E15difference_typeESQ_.exit"

"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_OT0_NS_15iterator_traitsISQ_E15difference_typeESQ_.exit": ; preds = %.split16.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit29.i", %.split18._crit_edge.i
  %i.fm = add nsw i64 %.01.i.i.i, -1
  %.not.i.i.i = icmp eq i64 %.01.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.preheader.i.i.i, label %bb.r, !llvm.loop !765

.lr.ph.preheader.i.i.i:                           ; preds = %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_OT0_NS_15iterator_traitsISQ_E15difference_typeESQ_.exit"
  %i.fn = udiv exact i64 %i.k, 24
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SP_RT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i", %.lr.ph.preheader.i.i.i
  %.02.i.i.i = phi i64 [ %i.id, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SP_RT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i" ], [ %i.fn, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.0131.i.i.i = phi ptr [ %i.go, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SP_RT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i" ], [ %.020.ph, %.lr.ph.preheader.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(24) %.017, i64 24, i1 false), !tbaa.struct !98
  %i.fo = add nsw i64 %.02.i.i.i, -2
  %i.fp = lshr i64 %i.fo, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.lr.ph.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %.017, %.lr.ph.i.i.i ], [ %.14.i.i.i.i.i, %bb.ac ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %.1.i.i.i.i.i, %bb.ac ] ; 2 uses
  %i.fq = getelementptr [24 x i8], ptr %.03.i.i.i.i.i, i64 %.0.i.i.i.i.i ; 7 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 24     ; 4 uses
  %i.fs = shl nsw i64 %.0.i.i.i.i.i, 1            ; 2 uses
  %i.ft = or disjoint i64 %i.fs, 1                ; 3 uses
  %i.fu = add nsw i64 %i.fs, 2                    ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %.02.i.i.i
  br i1 %i.fv, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fw = getelementptr i8, ptr %i.fq, i64 36
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !97 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fq, i64 60
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !97 ; 2 uses
  %i.ga = icmp eq i16 %i.fx, %i.fz
  br i1 %i.ga, label %.split.i.i.i.i.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i.i.i.i.i"

.split.i.i.i.i.i:                                 ; preds = %bb.aa
  %i.gb = getelementptr i8, ptr %i.fq, i64 48
  %i.gc = getelementptr i8, ptr %i.fq, i64 52
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !96
  %i.ge = getelementptr i8, ptr %i.fq, i64 28
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !96
  %i.gg = load i32, ptr %i.gb, align 4, !tbaa !96 ; 2 uses
  %i.gh = load i32, ptr %i.fr, align 4, !tbaa !96 ; 2 uses
  %i.gi = icmp eq i32 %i.gh, %i.gg
  %i.gj = icmp sgt i32 %i.gh, %i.gg
  %i.gk = icmp sgt i32 %i.gf, %i.gd
  %spec.select.i.i.i.i.i.i = select i1 %i.gi, i1 %i.gk, i1 %i.gj
  br i1 %spec.select.i.i.i.i.i.i, label %bb.ab, label %bb.ac

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i.i.i.i.i": ; preds = %bb.aa
  %i.gl = icmp ugt i16 %i.fx, %i.fz
  br i1 %i.gl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i.i.i.i.i", %.split.i.i.i.i.i
  %i.gm = getelementptr i8, ptr %i.fq, i64 48
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i.i.i.i.i", %.split.i.i.i.i.i, %bb.z
  %.14.i.i.i.i.i = phi ptr [ %i.gm, %bb.ab ], [ %i.fr, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i.i.i.i.i" ], [ %i.fr, %bb.z ], [ %i.fr, %.split.i.i.i.i.i ] ; 14 uses
  %.1.i.i.i.i.i = phi i64 [ %i.fu, %bb.ab ], [ %i.ft, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i.i.i.i.i" ], [ %i.ft, %bb.z ], [ %i.ft, %.split.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.03.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.14.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !98
  %i.gn = icmp sgt i64 %.1.i.i.i.i.i, %i.fp
  br i1 %i.gn, label %"_ZNSt3__117__floyd_sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEET1_SQ_OT0_NS_15iterator_traitsISQ_E15difference_typeE.exit.i.i.i.i", label %bb.z, !llvm.loop !766

"_ZNSt3__117__floyd_sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEET1_SQ_OT0_NS_15iterator_traitsISQ_E15difference_typeE.exit.i.i.i.i": ; preds = %bb.ac
  %i.go = getelementptr inbounds i8, ptr %.0131.i.i.i, i64 -24 ; 4 uses
  %i.gp = icmp eq ptr %.14.i.i.i.i.i, %i.go
  br i1 %i.gp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %"_ZNSt3__117__floyd_sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEET1_SQ_OT0_NS_15iterator_traitsISQ_E15difference_typeE.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.14.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !98
  br label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SP_RT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i"

bb.ae:                                            ; preds = %"_ZNSt3__117__floyd_sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEET1_SQ_OT0_NS_15iterator_traitsISQ_E15difference_typeE.exit.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.14.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %i.go, i64 24, i1 false), !tbaa.struct !98
  %i.gq = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.go, ptr noundef nonnull align 4 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !98
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %i.gr, %i.j                     ; 2 uses
  %i.gt = icmp sgt i64 %i.gs, 24
  br i1 %i.gt, label %bb.af, label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SP_RT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i"

bb.af:                                            ; preds = %bb.ae
  %i.gu = udiv exact i64 %i.gs, 24
  %i.gv = add nsw i64 %i.gu, -2
  %i.gw = lshr i64 %i.gv, 1                       ; 3 uses
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %.017, i64 %i.gw ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !97 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 12
  %i.hb = load i16, ptr %i.ha, align 4, !tbaa !97 ; 5 uses
  %i.hc = icmp eq i16 %i.gz, %i.hb
  br i1 %i.hc, label %.split.i13.i.i.i.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i12.i.i.i.i"

.split.i13.i.i.i.i:                               ; preds = %bb.af
  %i.hd = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !96 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !96
  %i.hh = load i32, ptr %.14.i.i.i.i.i, align 4, !tbaa !96 ; 3 uses
  %i.hi = load i32, ptr %i.gx, align 4, !tbaa !96 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, %i.hh
  %i.hk = icmp sgt i32 %i.hi, %i.hh
  %i.hl = icmp sgt i32 %i.hg, %i.he
  %spec.select.i.i14.i.i.i.i = select i1 %i.hj, i1 %i.hl, i1 %i.hk
  br i1 %spec.select.i.i14.i.i.i.i, label %bb.ag, label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SP_RT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i"

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i12.i.i.i.i": ; preds = %bb.af
  %i.hm = icmp ugt i16 %i.gz, %i.hb
  br i1 %i.hm, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i.i.i.i.i", label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SP_RT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i"

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i.i.i.i.i": ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i12.i.i.i.i"
  %.sroa.0.0.copyload.pre.i.i.i.i.i = load i32, ptr %.14.i.i.i.i.i, align 4, !tbaa !96
  %.sroa.5.0..val10.sroa_idx.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 4
  %.sroa.5.0.copyload.pre.i.i.i.i.i = load i32, ptr %.sroa.5.0..val10.sroa_idx.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !96
  br label %bb.ag

bb.ag:                                            ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i.i.i.i.i", %.split.i13.i.i.i.i
  %.sroa.5.0.copyload.i.i.i.i.i = phi i32 [ %.sroa.5.0.copyload.pre.i.i.i.i.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i.i.i.i.i" ], [ %i.he, %.split.i13.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.pre.i.i.i.i.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit._crit_edge.i.i.i.i.i" ], [ %i.hh, %.split.i13.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %.sroa.6.0..val10.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 8
  %i.hn = load i32, ptr %.sroa.6.0..val10.sroa_idx.i.i.i.i.i, align 4
  %.sroa.7.0..val10.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..val10.sroa_idx.i.i.i.i.i, i64 10, i1 false), !tbaa.struct !246
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.14.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %i.gx, i64 24, i1 false), !tbaa.struct !98
  %i.ho = icmp eq i64 %i.gw, 0
  br i1 %i.ho, label %.split10._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ag, %.backedge.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.hq, %.backedge.i.i.i.i.i ], [ %i.gw, %bb.ag ]
  %.0811.i.i.i.i.i = phi ptr [ %i.hr, %.backedge.i.i.i.i.i ], [ %i.gx, %bb.ag ] ; 3 uses
  %i.hp = add nsw i64 %.012.i.i.i.i.i, -1
  %i.hq = lshr i64 %i.hp, 1                       ; 3 uses
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %.017, i64 %i.hq ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !97 ; 2 uses
  %i.hu = icmp eq i16 %i.ht, %i.hb
  br i1 %i.hu, label %.split10.i.i.i.i.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit13.i.i.i.i.i"

.split10.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !96
  %i.hx = load i32, ptr %i.hr, align 4, !tbaa !96 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, %.sroa.0.0.copyload.i.i.i.i.i
  %i.hz = icmp sgt i32 %i.hx, %.sroa.0.0.copyload.i.i.i.i.i
  %i.ia = icmp sgt i32 %i.hw, %.sroa.5.0.copyload.i.i.i.i.i
  %spec.select.i12.i.i.i.i.i = select i1 %i.hy, i1 %i.ia, i1 %i.hz
  br i1 %spec.select.i12.i.i.i.i.i, label %.backedge.i.i.i.i.i, label %.split10._crit_edge.i.i.i.i.i

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit13.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.ib = icmp ugt i16 %i.ht, %i.hb
  br i1 %i.ib, label %.backedge.i.i.i.i.i, label %.split10._crit_edge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit13.i.i.i.i.i", %.split10.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.0811.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %i.hr, i64 24, i1 false), !tbaa.struct !98
  %i.ic = icmp eq i64 %i.hq, 0
  br i1 %i.ic, label %.split10._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !767

.split10._crit_edge.i.i.i.i.i:                    ; preds = %.backedge.i.i.i.i.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit13.i.i.i.i.i", %.split10.i.i.i.i.i, %bb.ag
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.gx, %bb.ag ], [ %.0811.i.i.i.i.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit13.i.i.i.i.i" ], [ %i.hr, %.backedge.i.i.i.i.i ], [ %.0811.i.i.i.i.i, %.split10.i.i.i.i.i ] ; 5 uses
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.08.lcssa.i.i.i.i.i, align 4, !tbaa !96
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i, i64 4
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !96
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i, i64 8
  store i32 %i.hn, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 4
  %.sroa.63.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i, i64 12
  store i16 %i.hb, ptr %.sroa.63.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !97
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.i.i.i.i.i, i64 10, i1 false), !tbaa.struct !246
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  br label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SP_RT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i"

"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SP_RT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i": ; preds = %.split10._crit_edge.i.i.i.i.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i12.i.i.i.i", %.split.i13.i.i.i.i, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.id = add nsw i64 %.02.i.i.i, -1
  %i.ie = icmp sgt i64 %.02.i.i.i, 2
  br i1 %i.ie, label %.lr.ph.i.i.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread", !llvm.loop !768

bb.ah:                                            ; preds = %9
  %i.if = add nsw i64 %.046, -1                   ; 4 uses
  %i.ig = lshr i64 %i.l, 1
  %i.ih = icmp samesign ugt i64 %i.k, 3072
  %i.ii = getelementptr [24 x i8], ptr %.017, i64 %i.ig ; 7 uses
  br i1 %i.ih, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEjT1_SQ_SQ_T0_"(ptr noundef %.017, ptr noundef %i.ii, ptr noundef nonnull %i.c)
  %i.ij = getelementptr inbounds nuw i8, ptr %.017, i64 24
  %i.ik = getelementptr i8, ptr %i.ii, i64 -24    ; 2 uses
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEjT1_SQ_SQ_T0_"(ptr noundef nonnull %i.ij, ptr noundef %i.ik, ptr noundef nonnull %i.d)
  %i.il = getelementptr inbounds nuw i8, ptr %.017, i64 48
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 24 ; 2 uses
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEjT1_SQ_SQ_T0_"(ptr noundef nonnull %i.il, ptr noundef nonnull %i.im, ptr noundef nonnull %i.e)
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEjT1_SQ_SQ_T0_"(ptr noundef %i.ik, ptr noundef %i.ii, ptr noundef nonnull %i.im)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(24) %.017, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.017, ptr noundef nonnull align 4 dereferenceable(24) %i.ii, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ii, ptr noundef nonnull align 4 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEjT1_SQ_SQ_T0_"(ptr noundef %i.ii, ptr noundef %.017, ptr noundef nonnull %i.c)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %i.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.in = getelementptr inbounds i8, ptr %.017, i64 -12
  %i.io = load i16, ptr %i.in, align 2, !tbaa !97 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.017, i64 12
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !97 ; 15 uses
  %i.ir = icmp eq i16 %i.io, %i.iq
  br i1 %i.ir, label %.split24, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit78"

.split24:                                         ; preds = %bb.al
  %i.is = getelementptr inbounds i8, ptr %.017, i64 -24
  %i.it = getelementptr inbounds nuw i8, ptr %.017, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !96
  %i.iv = getelementptr inbounds i8, ptr %.017, i64 -20
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !96
  %i.ix = load i32, ptr %.017, align 4, !tbaa !96 ; 2 uses
  %i.iy = load i32, ptr %i.is, align 4, !tbaa !96 ; 2 uses
  %i.iz = icmp eq i32 %i.iy, %i.ix
  %i.ja = icmp sgt i32 %i.iy, %i.ix
  %i.jb = icmp sgt i32 %i.iw, %i.iu
  %spec.select.i77 = select i1 %i.iz, i1 %i.jb, i1 %i.ja
  br i1 %spec.select.i77, label %bb.ap, label %bb.am

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit78": ; preds = %bb.al
  %i.jc = icmp ugt i16 %i.io, %i.iq
  br i1 %i.jc, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.split24, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit78"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i)
  %.sroa.0.0.copyload.i79 = load i32, ptr %.017, align 4, !tbaa !96 ; 13 uses
  %.sroa.10.0..val11.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.017, i64 4 ; 2 uses
  %i.jd = load <2 x i32>, ptr %.sroa.10.0..val11.sroa_idx.i, align 4
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..val11.sroa_idx.i, align 4, !tbaa !96 ; 6 uses
  %.sroa.22.0..val11.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.017, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.22.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.22.0..val11.sroa_idx.i, i64 10, i1 false), !tbaa.struct !246
  %i.je = load i16, ptr %i.f, align 2, !tbaa !97  ; 3 uses
  %i.jf = icmp eq i16 %i.iq, %i.je
  br i1 %i.jf, label %.split.i88, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i80"

.split.i88:                                       ; preds = %bb.am
  %i.jg = load i32, ptr %i.h, align 4, !tbaa !96
  %i.jh = load i32, ptr %i.g, align 4, !tbaa !96  ; 2 uses
  %i.ji = icmp eq i32 %.sroa.0.0.copyload.i79, %i.jh
  %i.jj = icmp sgt i32 %.sroa.0.0.copyload.i79, %i.jh
  %i.jk = icmp sgt i32 %.sroa.10.0.copyload.i, %i.jg
  %spec.select.i.i89 = select i1 %i.ji, i1 %i.jk, i1 %i.jj
  br i1 %spec.select.i.i89, label %.preheader45.i.preheader, label %.preheader47.i

.preheader47.i:                                   ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i80", %.split.i88
  %i.jl = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 3 uses
  %i.jm = icmp ult ptr %i.jl, %.020.ph
  br i1 %i.jm, label %.lr.ph.i85, label %.critedge.i81

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i80": ; preds = %bb.am
  %i.jn = icmp ugt i16 %i.iq, %i.je
  br i1 %i.jn, label %.preheader45.i.preheader, label %.preheader47.i

.preheader45.i.preheader:                         ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i80", %.split.i88
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.i.backedge, %.preheader45.i.preheader
  %.033.i = phi ptr [ %.017, %.preheader45.i.preheader ], [ %i.jo, %.preheader45.i.backedge ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.033.i, i64 24 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.033.i, i64 36
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !97 ; 2 uses
  %i.jr = icmp eq i16 %i.iq, %i.jq
  br i1 %i.jr, label %.split37.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit14.i"

.split37.i:                                       ; preds = %.preheader45.i
  %i.js = getelementptr inbounds nuw i8, ptr %.033.i, i64 28
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !96
  %i.ju = load i32, ptr %i.jo, align 4, !tbaa !96 ; 2 uses
  %i.jv = icmp eq i32 %.sroa.0.0.copyload.i79, %i.ju
  %i.jw = icmp sgt i32 %.sroa.0.0.copyload.i79, %i.ju
  %i.jx = icmp sgt i32 %.sroa.10.0.copyload.i, %i.jt
  %spec.select.i13.i = select i1 %i.jv, i1 %i.jx, i1 %i.jw
  br i1 %spec.select.i13.i, label %.critedge.i81, label %.preheader45.i.backedge

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit14.i": ; preds = %.preheader45.i
  %i.jy = icmp ugt i16 %i.iq, %i.jq
  br i1 %i.jy, label %.critedge.i81, label %.preheader45.i.backedge

.preheader45.i.backedge:                          ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit14.i", %.split37.i
  br label %.preheader45.i, !llvm.loop !769

.lr.ph.i85:                                       ; preds = %.preheader47.i, %.backedge49.i
  %i.jz = phi ptr [ %i.kk, %.backedge49.i ], [ %i.jl, %.preheader47.i ] ; 5 uses
  %.13454.i = phi ptr [ %i.jz, %.backedge49.i ], [ %.017, %.preheader47.i ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.13454.i, i64 36
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !97 ; 2 uses
  %i.kc = icmp eq i16 %i.iq, %i.kb
  br i1 %i.kc, label %.split38.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i86"

.split38.i:                                       ; preds = %.lr.ph.i85
  %i.kd = getelementptr inbounds nuw i8, ptr %.13454.i, i64 28
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !96
  %i.kf = load i32, ptr %i.jz, align 4, !tbaa !96 ; 2 uses
  %i.kg = icmp eq i32 %.sroa.0.0.copyload.i79, %i.kf
  %i.kh = icmp sgt i32 %.sroa.0.0.copyload.i79, %i.kf
  %i.ki = icmp sgt i32 %.sroa.10.0.copyload.i, %i.ke
  %spec.select.i16.i87 = select i1 %i.kg, i1 %i.ki, i1 %i.kh
  br i1 %spec.select.i16.i87, label %.critedge.i81, label %.backedge49.i

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i86": ; preds = %.lr.ph.i85
  %i.kj = icmp ugt i16 %i.iq, %i.kb
  br i1 %i.kj, label %.critedge.i81, label %.backedge49.i

.backedge49.i:                                    ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i86", %.split38.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jz, i64 24 ; 3 uses
  %i.kl = icmp ult ptr %i.kk, %.020.ph
  br i1 %i.kl, label %.lr.ph.i85, label %.critedge.i81, !llvm.loop !770

.critedge.i81:                                    ; preds = %.backedge49.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i86", %.split38.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit14.i", %.split37.i, %.preheader47.i
  %.235.i = phi ptr [ %i.jl, %.preheader47.i ], [ %i.jo, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit14.i" ], [ %i.jo, %.split37.i ], [ %i.kk, %.backedge49.i ], [ %i.jz, %.split38.i ], [ %i.jz, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i86" ] ; 4 uses
  %i.km = icmp ult ptr %.235.i, %.020.ph
  br i1 %i.km, label %.preheader43.i, label %.loopexit.i

.preheader43.i:                                   ; preds = %.critedge.i81, %.backedge44.i
  %i.kn = phi i16 [ %.pre.i, %.backedge44.i ], [ %i.je, %.critedge.i81 ] ; 2 uses
  %.0.i84 = phi ptr [ %i.ko, %.backedge44.i ], [ %.020.ph, %.critedge.i81 ] ; 3 uses
  %i.ko = getelementptr inbounds i8, ptr %.0.i84, i64 -24 ; 4 uses
  %i.kp = icmp eq i16 %i.iq, %i.kn
  br i1 %i.kp, label %.split39.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit20.i"

.split39.i:                                       ; preds = %.preheader43.i
  %i.kq = getelementptr inbounds i8, ptr %.0.i84, i64 -20
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !96
  %i.ks = load i32, ptr %i.ko, align 4, !tbaa !96 ; 2 uses
  %i.kt = icmp eq i32 %.sroa.0.0.copyload.i79, %i.ks
  %i.ku = icmp sgt i32 %.sroa.0.0.copyload.i79, %i.ks
  %i.kv = icmp sgt i32 %.sroa.10.0.copyload.i, %i.kr
  %spec.select.i19.i = select i1 %i.kt, i1 %i.kv, i1 %i.ku
  br i1 %spec.select.i19.i, label %.backedge44.i, label %.loopexit.i

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit20.i": ; preds = %.preheader43.i
  %i.kw = icmp ugt i16 %i.iq, %i.kn
  br i1 %i.kw, label %.backedge44.i, label %.loopexit.i

.backedge44.i:                                    ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit20.i", %.split39.i
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.0.i84, i64 -36
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !97
  br label %.preheader43.i, !llvm.loop !771

.loopexit.i:                                      ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit20.i", %.split39.i, %.critedge.i81
  %.1.i = phi ptr [ %.020.ph, %.critedge.i81 ], [ %i.ko, %.split39.i ], [ %i.ko, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit20.i" ] ; 2 uses
  %i.kx = icmp ult ptr %.235.i, %.1.i
  br i1 %i.kx, label %.lr.ph59.i, label %._crit_edge.i

.lr.ph59.i:                                       ; preds = %.loopexit.i, %bb.an
  %.258.i = phi ptr [ %i.lj, %bb.an ], [ %.1.i, %.loopexit.i ] ; 3 uses
  %.33657.i = phi ptr [ %i.ky, %bb.an ], [ %.235.i, %.loopexit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %.33657.i, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.33657.i, ptr noundef nonnull align 4 dereferenceable(24) %.258.i, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.258.i, ptr noundef nonnull align 4 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.backedge42.i

.backedge42.i:                                    ; preds = %.backedge42.i.backedge, %.lr.ph59.i
  %.4.i = phi ptr [ %.33657.i, %.lr.ph59.i ], [ %i.ky, %.backedge42.i.backedge ] ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.4.i, i64 24 ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.4.i, i64 36
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !97 ; 2 uses
  %i.lb = icmp eq i16 %i.iq, %i.la
  br i1 %i.lb, label %.split40.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit23.i"

.split40.i:                                       ; preds = %.backedge42.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.4.i, i64 28
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !96
  %i.le = load i32, ptr %i.ky, align 4, !tbaa !96 ; 2 uses
  %i.lf = icmp eq i32 %.sroa.0.0.copyload.i79, %i.le
  %i.lg = icmp sgt i32 %.sroa.0.0.copyload.i79, %i.le
end_hunk_0
begin_hunk_1_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryELb0EEEvT1_SQ_T0_NS_15iterator_traitsISQ_E15difference_typeEb":bb.a

.backedge42.i103:                                 ; preds = %.backedge42.i103.backedge, %bb.ap
  %.029.i = phi ptr [ %.017, %bb.ap ], [ %i.lx, %.backedge42.i103.backedge ] ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.029.i, i64 24 ; 8 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.029.i, i64 36
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !97 ; 2 uses
  %i.ma = icmp eq i16 %i.lz, %.sroa.1411.0.copyload.i
  br i1 %i.ma, label %.split.i104, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i91"

.split.i104:                                      ; preds = %.backedge42.i103
  %i.mb = getelementptr inbounds nuw i8, ptr %.029.i, i64 28
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !96
  %i.md = load i32, ptr %i.lx, align 4, !tbaa !96 ; 2 uses
  %i.me = icmp eq i32 %i.md, %.sroa.0.0.copyload.i90
  %i.mf = icmp sgt i32 %i.md, %.sroa.0.0.copyload.i90
  %i.mg = icmp sgt i32 %i.mc, %.sroa.9.0.copyload.i
  %spec.select.i.i105 = select i1 %i.me, i1 %i.mg, i1 %i.mf
  br i1 %spec.select.i.i105, label %.backedge42.i103.backedge, label %bb.aq

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i91": ; preds = %.backedge42.i103
  %i.mh = icmp ugt i16 %i.lz, %.sroa.1411.0.copyload.i
  br i1 %i.mh, label %.backedge42.i103.backedge, label %bb.aq

.backedge42.i103.backedge:                        ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i91", %.split.i104
  br label %.backedge42.i103, !llvm.loop !775

bb.aq:                                            ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i91", %.split.i104
  %i.mi = icmp eq ptr %.017, %.029.i
  br i1 %i.mi, label %.preheader37.i, label %.preheader39.i

.preheader37.i:                                   ; preds = %bb.aq
  %i.mj = icmp ult ptr %i.lx, %.020.ph
  br i1 %i.mj, label %.lr.ph.i101, label %.critedge.i94

.lr.ph.i101:                                      ; preds = %.preheader37.i, %.lr.ph.i101.backedge
  %.046.i = phi ptr [ %i.mk, %.lr.ph.i101.backedge ], [ %.020.ph, %.preheader37.i ] ; 3 uses
  %i.mk = getelementptr inbounds i8, ptr %.046.i, i64 -24 ; 6 uses
  %i.ml = getelementptr inbounds i8, ptr %.046.i, i64 -12
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !97 ; 2 uses
  %i.mn = icmp eq i16 %i.mm, %.sroa.1411.0.copyload.i
  br i1 %i.mn, label %.split32.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit18.i"

.split32.i:                                       ; preds = %.lr.ph.i101
  %i.mo = getelementptr inbounds i8, ptr %.046.i, i64 -20
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !96
  %i.mq = load i32, ptr %i.mk, align 4, !tbaa !96 ; 2 uses
  %i.mr = icmp eq i32 %i.mq, %.sroa.0.0.copyload.i90
  %i.ms = icmp sle i32 %i.mq, %.sroa.0.0.copyload.i90
  %i.mt = icmp sle i32 %i.mp, %.sroa.9.0.copyload.i
  %spec.select.i17.i = select i1 %i.mr, i1 %i.mt, i1 %i.ms
  %.old.i = icmp ult ptr %i.lx, %i.mk
  %or.cond53.i = select i1 %spec.select.i17.i, i1 %.old.i, i1 false
  br i1 %or.cond53.i, label %.lr.ph.i101.backedge, label %.critedge.i94

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit18.i": ; preds = %.lr.ph.i101
  %i.mu = icmp ule i16 %i.mm, %.sroa.1411.0.copyload.i
  %i.mv = icmp ult ptr %i.lx, %i.mk
  %or.cond.i102 = select i1 %i.mu, i1 %i.mv, i1 false
  br i1 %or.cond.i102, label %.lr.ph.i101.backedge, label %.critedge.i94

.lr.ph.i101.backedge:                             ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit18.i", %.split32.i
  br label %.lr.ph.i101, !llvm.loop !776

.preheader39.i:                                   ; preds = %bb.aq, %.preheader39.i.backedge
  %.1.i92 = phi ptr [ %i.mw, %.preheader39.i.backedge ], [ %.020.ph, %bb.aq ] ; 3 uses
  %i.mw = getelementptr inbounds i8, ptr %.1.i92, i64 -24 ; 4 uses
  %i.mx = getelementptr inbounds i8, ptr %.1.i92, i64 -12
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !97 ; 2 uses
  %i.mz = icmp eq i16 %i.my, %.sroa.1411.0.copyload.i
  br i1 %i.mz, label %.split33.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21.i93"

.split33.i:                                       ; preds = %.preheader39.i
  %i.na = getelementptr inbounds i8, ptr %.1.i92, i64 -20
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !96
  %i.nc = load i32, ptr %i.mw, align 4, !tbaa !96 ; 2 uses
  %i.nd = icmp eq i32 %i.nc, %.sroa.0.0.copyload.i90
  %i.ne = icmp sgt i32 %i.nc, %.sroa.0.0.copyload.i90
  %i.nf = icmp sgt i32 %i.nb, %.sroa.9.0.copyload.i
  %spec.select.i20.i100 = select i1 %i.nd, i1 %i.nf, i1 %i.ne
  br i1 %spec.select.i20.i100, label %.critedge.i94, label %.preheader39.i.backedge

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21.i93": ; preds = %.preheader39.i
  %i.ng = icmp ugt i16 %i.my, %.sroa.1411.0.copyload.i
  br i1 %i.ng, label %.critedge.i94, label %.preheader39.i.backedge

.preheader39.i.backedge:                          ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21.i93", %.split33.i
  br label %.preheader39.i, !llvm.loop !777

.critedge.i94:                                    ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21.i93", %.split33.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit18.i", %.split32.i, %.preheader37.i
  %.2.i = phi ptr [ %.020.ph, %.preheader37.i ], [ %i.mk, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit18.i" ], [ %i.mk, %.split32.i ], [ %i.mw, %.split33.i ], [ %i.mw, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21.i93" ] ; 2 uses
  %i.nh = icmp ult ptr %i.lx, %.2.i               ; 2 uses
  br i1 %i.nh, label %.lr.ph51.i, label %._crit_edge.i95

.lr.ph51.i:                                       ; preds = %.critedge.i94, %bb.ar
  %.350.i = phi ptr [ %i.nt, %bb.ar ], [ %.2.i, %.critedge.i94 ] ; 3 uses
  %.13049.i = phi ptr [ %i.ni, %bb.ar ], [ %i.lx, %.critedge.i94 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(24) %.13049.i, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.13049.i, ptr noundef nonnull align 4 dereferenceable(24) %.350.i, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.350.i, ptr noundef nonnull align 4 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.backedge36.i

.backedge36.i:                                    ; preds = %.backedge36.i.backedge, %.lr.ph51.i
  %.231.i = phi ptr [ %.13049.i, %.lr.ph51.i ], [ %i.ni, %.backedge36.i.backedge ] ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.231.i, i64 24 ; 5 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.231.i, i64 36
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !97 ; 2 uses
  %i.nl = icmp eq i16 %i.nk, %.sroa.1411.0.copyload.i
  br i1 %i.nl, label %.split34.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit24.i"

.split34.i:                                       ; preds = %.backedge36.i
  %i.nm = getelementptr inbounds nuw i8, ptr %.231.i, i64 28
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !96
  %i.no = load i32, ptr %i.ni, align 4, !tbaa !96 ; 2 uses
  %i.np = icmp eq i32 %i.no, %.sroa.0.0.copyload.i90
  %i.nq = icmp sgt i32 %i.no, %.sroa.0.0.copyload.i90
  %i.nr = icmp sgt i32 %i.nn, %.sroa.9.0.copyload.i
  %spec.select.i23.i = select i1 %i.np, i1 %i.nr, i1 %i.nq
  br i1 %spec.select.i23.i, label %.backedge36.i.backedge, label %.preheader.i97.preheader

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit24.i": ; preds = %.backedge36.i
  %i.ns = icmp ugt i16 %i.nk, %.sroa.1411.0.copyload.i
  br i1 %i.ns, label %.backedge36.i.backedge, label %.preheader.i97.preheader

.backedge36.i.backedge:                           ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit24.i", %.split34.i
  br label %.backedge36.i, !llvm.loop !778

.preheader.i97.preheader:                         ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit24.i", %.split34.i
  br label %.preheader.i97

.preheader.i97:                                   ; preds = %.preheader.i97.backedge, %.preheader.i97.preheader
  %.4.i98 = phi ptr [ %.350.i, %.preheader.i97.preheader ], [ %i.nt, %.preheader.i97.backedge ] ; 3 uses
  %i.nt = getelementptr inbounds i8, ptr %.4.i98, i64 -24 ; 4 uses
  %i.nu = getelementptr inbounds i8, ptr %.4.i98, i64 -12
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !97 ; 2 uses
  %i.nw = icmp eq i16 %i.nv, %.sroa.1411.0.copyload.i
  br i1 %i.nw, label %.split35.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit27.i"

.split35.i:                                       ; preds = %.preheader.i97
  %i.nx = getelementptr inbounds i8, ptr %.4.i98, i64 -20
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !96
  %i.nz = load i32, ptr %i.nt, align 4, !tbaa !96 ; 2 uses
  %i.oa = icmp eq i32 %i.nz, %.sroa.0.0.copyload.i90
  %i.ob = icmp sgt i32 %i.nz, %.sroa.0.0.copyload.i90
  %i.oc = icmp sgt i32 %i.ny, %.sroa.9.0.copyload.i
  %spec.select.i26.i = select i1 %i.oa, i1 %i.oc, i1 %i.ob
  br i1 %spec.select.i26.i, label %bb.ar, label %.preheader.i97.backedge

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit27.i": ; preds = %.preheader.i97
  %i.od = icmp ugt i16 %i.nv, %.sroa.1411.0.copyload.i
  br i1 %i.od, label %bb.ar, label %.preheader.i97.backedge

.preheader.i97.backedge:                          ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit27.i", %.split35.i
  br label %.preheader.i97, !llvm.loop !779

bb.ar:                                            ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit27.i", %.split35.i
  %i.oe = icmp ult ptr %i.ni, %i.nt
  br i1 %i.oe, label %.lr.ph51.i, label %._crit_edge.i95, !llvm.loop !780

._crit_edge.i95:                                  ; preds = %bb.ar, %.critedge.i94
  %.130.lcssa.i = phi ptr [ %i.lx, %.critedge.i94 ], [ %i.ni, %bb.ar ] ; 7 uses
  %i.of = getelementptr inbounds i8, ptr %.130.lcssa.i, i64 -24 ; 6 uses
  %.not.i96 = icmp eq ptr %.017, %i.of
  br i1 %.not.i96, label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiEN7IconDir5EntryERZNKS3_4loadESA_SF_SH_SK_iE3$_0EENS_4pairIT0_bEESR_SR_T1_.exit", label %bb.as

bb.as:                                            ; preds = %._crit_edge.i95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.017, ptr noundef nonnull align 4 dereferenceable(24) %i.of, i64 24, i1 false), !tbaa.struct !98
  br label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiEN7IconDir5EntryERZNKS3_4loadESA_SF_SH_SK_iE3$_0EENS_4pairIT0_bEESR_SR_T1_.exit"

"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiEN7IconDir5EntryERZNKS3_4loadESA_SF_SH_SK_iE3$_0EENS_4pairIT0_bEESR_SR_T1_.exit": ; preds = %._crit_edge.i95, %bb.as
  store i32 %.sroa.0.0.copyload.i90, ptr %i.of, align 4, !tbaa !96
  %.sroa.9.0..0..sroa_idx.i = getelementptr inbounds i8, ptr %.130.lcssa.i, i64 -20
  store <2 x i32> %i.lw, ptr %.sroa.9.0..0..sroa_idx.i, align 4
  %.sroa.1411.0..0..sroa_idx.i = getelementptr inbounds i8, ptr %.130.lcssa.i, i64 -12
  store i16 %.sroa.1411.0.copyload.i, ptr %.sroa.1411.0..0..sroa_idx.i, align 4, !tbaa !97
  %.sroa.19.0..0..sroa_idx.i = getelementptr inbounds i8, ptr %.130.lcssa.i, i64 -10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.19.0..0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.19.i, i64 10, i1 false), !tbaa.struct !246
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  br i1 %i.nh, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiEN7IconDir5EntryERZNKS3_4loadESA_SF_SH_SK_iE3$_0EENS_4pairIT0_bEESR_SR_T1_.exit"
  %i.og = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEbT1_SQ_T0_"(ptr noundef %.017, ptr noundef nonnull %i.of) ; 2 uses
  %i.oh = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEbT1_SQ_T0_"(ptr noundef nonnull %.130.lcssa.i, ptr noundef %.020.ph)
  br i1 %i.oh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  br i1 %i.og, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer", !llvm.loop !781

bb.av:                                            ; preds = %bb.at
  br i1 %i.og, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit", label %bb.aw, !llvm.loop !781

bb.aw:                                            ; preds = %bb.av, %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiEN7IconDir5EntryERZNKS3_4loadESA_SF_SH_SK_iE3$_0EENS_4pairIT0_bEESR_SR_T1_.exit"
  tail call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryELb0EEEvT1_SQ_T0_NS_15iterator_traitsISQ_E15difference_typeEb"(ptr noundef %.017, ptr noundef nonnull %i.of, i64 noundef %i.if, i1 noundef zeroext %i.i)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer317.backedge"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer317.backedge": ; preds = %bb.aw, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiEN7IconDir5EntryERZNKS3_4loadESA_SF_SH_SK_iE3$_0EET0_SQ_SQ_T1_.exit"
  %.017.ph318.be = phi ptr [ %.336.lcssa.i, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiEN7IconDir5EntryERZNKS3_4loadESA_SF_SH_SK_iE3$_0EET0_SQ_SQ_T1_.exit" ], [ %.130.lcssa.i, %bb.aw ]
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.outer317", !llvm.loop !781

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit.thread": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_T0_.exit", %bb.au, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SP_RT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i", %bb.o, %bb.k, %bb.p, %bb.l, %bb.i, %bb.c, %bb.e, %bb.d, %bb.f, %.split, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #24

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSS_SS_SS_SS_SS_SR_"(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  %6 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  %7 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  %8 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  tail call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_SQ_SQ_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i16, ptr %i.a, align 2, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !97   ; 2 uses
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %.split.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i"

.split.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !96
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !96
  %i.j = load i32, ptr %3, align 4, !tbaa !96     ; 2 uses
  %i.k = load i32, ptr %4, align 4, !tbaa !96     ; 2 uses
  %i.l = icmp eq i32 %i.k, %i.j
  %i.m = icmp sgt i32 %i.k, %i.j
  %i.n = icmp sgt i32 %i.i, %i.g
  %spec.select.i.i = select i1 %i.l, i1 %i.n, i1 %i.m
  br i1 %spec.select.i.i, label %bb.b, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_SQ_SQ_SQ_T0_.exit"

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i": ; preds = %bb.a
  %i.o = icmp ugt i16 %i.b, %i.d
  br i1 %i.o, label %bb.b, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_SQ_SQ_SQ_T0_.exit"

bb.b:                                             ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i", %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.p = load i16, ptr %i.c, align 4, !tbaa !97   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !97   ; 2 uses
  %i.s = icmp eq i16 %i.p, %i.r
  br i1 %i.s, label %.split8.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit14.i"

.split8.i:                                        ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !96
  %i.x = load i32, ptr %2, align 4, !tbaa !96     ; 2 uses
  %i.y = load i32, ptr %3, align 4, !tbaa !96     ; 2 uses
  %i.z = icmp eq i32 %i.y, %i.x
  %i.aa = icmp sgt i32 %i.y, %i.x
  %i.ab = icmp sgt i32 %i.w, %i.u
  %spec.select.i13.i = select i1 %i.z, i1 %i.ab, i1 %i.aa
  br i1 %spec.select.i13.i, label %bb.c, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_SQ_SQ_SQ_T0_.exit"

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit14.i": ; preds = %bb.b
  %i.ac = icmp ugt i16 %i.p, %i.r
  br i1 %i.ac, label %bb.c, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_SQ_SQ_SQ_T0_.exit"

bb.c:                                             ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit14.i", %.split8.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ad = load i16, ptr %i.q, align 4, !tbaa !97  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !97 ; 2 uses
  %i.ag = icmp eq i16 %i.ad, %i.af
  br i1 %i.ag, label %.split9.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i"

.split9.i:                                        ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !96
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !96
  %i.al = load i32, ptr %1, align 4, !tbaa !96    ; 2 uses
  %i.am = load i32, ptr %2, align 4, !tbaa !96    ; 2 uses
  %i.an = icmp eq i32 %i.am, %i.al
  %i.ao = icmp sgt i32 %i.am, %i.al
  %i.ap = icmp sgt i32 %i.ak, %i.ai
  %spec.select.i16.i = select i1 %i.an, i1 %i.ap, i1 %i.ao
  br i1 %spec.select.i16.i, label %bb.d, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_SQ_SQ_SQ_T0_.exit"

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i": ; preds = %bb.c
  %i.aq = icmp ugt i16 %i.ad, %i.af
  br i1 %i.aq, label %bb.d, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_SQ_SQ_SQ_T0_.exit"

bb.d:                                             ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i", %.split9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ar = load i16, ptr %i.ae, align 4, !tbaa !97 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.at = load i16, ptr %i.as, align 2, !tbaa !97 ; 2 uses
  %i.au = icmp eq i16 %i.ar, %i.at
  br i1 %i.au, label %.split10.i, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit20.i"

.split10.i:                                       ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !96
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !96
  %i.az = load i32, ptr %0, align 4, !tbaa !96    ; 2 uses
  %i.ba = load i32, ptr %1, align 4, !tbaa !96    ; 2 uses
  %i.bb = icmp eq i32 %i.ba, %i.az
  %i.bc = icmp sgt i32 %i.ba, %i.az
  %i.bd = icmp sgt i32 %i.ay, %i.aw
  %spec.select.i19.i = select i1 %i.bb, i1 %i.bd, i1 %i.bc
  br i1 %spec.select.i19.i, label %bb.e, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_SQ_SQ_SQ_T0_.exit"

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit20.i": ; preds = %bb.d
  %i.be = icmp ugt i16 %i.ar, %i.at
  br i1 %i.be, label %bb.e, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_SQ_SQ_SQ_T0_.exit"

bb.e:                                             ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit20.i", %.split10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_SQ_SQ_SQ_T0_.exit"

"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEvT1_SQ_SQ_SQ_SQ_T0_.exit": ; preds = %.split.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit.i", %.split8.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit14.i", %.split9.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit17.i", %.split10.i, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit20.i", %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PZNKS3_4loadESA_SF_SH_SK_iEN7IconDir5EntryEEEjT1_SQ_SQ_T0_"(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #26 {
bb.a:
  %3 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  %4 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  %5 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  %6 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  %7 = alloca %"struct.tev::IcoImageLoader::load(istringstream &, const fs::path &, string_view, const ImageLoaderSettings &, int)::IconDir::Entry", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !97   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !97   ; 2 uses
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %.split, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit"

.split:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !96
  %i.j = load i32, ptr %0, align 4, !tbaa !96     ; 2 uses
  %i.k = load i32, ptr %1, align 4, !tbaa !96     ; 2 uses
  %i.l = icmp eq i32 %i.k, %i.j
  %i.m = icmp sgt i32 %i.k, %i.j
  %i.n = icmp sgt i32 %i.i, %i.g
  %spec.select.i = select i1 %i.l, i1 %i.n, i1 %i.m
  br i1 %spec.select.i, label %bb.e, label %bb.b

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit": ; preds = %bb.a
  %i.o = icmp ugt i16 %i.b, %i.d
  br i1 %i.o, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i16, ptr %i.p, align 2, !tbaa !97   ; 2 uses
  %i.r = icmp eq i16 %i.q, %i.b
  br i1 %i.r, label %.split8, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21"

.split8:                                          ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !96
  %i.w = load i32, ptr %1, align 4, !tbaa !96     ; 2 uses
  %i.x = load i32, ptr %2, align 4, !tbaa !96     ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.w
  %i.z = icmp sgt i32 %i.x, %i.w
  %i.aa = icmp sgt i32 %i.v, %i.t
  %spec.select.i20 = select i1 %i.y, i1 %i.aa, i1 %i.z
  br i1 %spec.select.i20, label %bb.c, label %bb.i

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21": ; preds = %bb.b
  %i.ab = icmp ugt i16 %i.q, %i.b
  br i1 %i.ab, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.split8, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clIZNKS0_4loadES8_SD_SF_SI_iEN7IconDir5EntryESM_EEDaRKT_RKT0_.exit21"
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ac = load i16, ptr %i.a, align 4, !tbaa !97  ; 2 uses
  %i.ad = load i16, ptr %i.c, align 2, !tbaa !97  ; 2 uses
end_hunk_1
