Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/MarisaDict?download=true
inline.NumInlined: 1092
inline.NumDeleted: 569
begin_hunk_0_@_ZN6opencc10MarisaDictD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN6opencc10MarisaDict14MarisaInternalEEclEPS2_.exit.i, label %_ZNKSt14default_deleteIN6marisa4TrieEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6marisa4TrieEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  tail call void @_ZN6marisa4TrieD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 8) #30
  br label %_ZNKSt14default_deleteIN6opencc10MarisaDict14MarisaInternalEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6opencc10MarisaDict14MarisaInternalEEclEPS2_.exit.i: ; preds = %_ZNKSt14default_deleteIN6marisa4TrieEEclEPS1_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #30
  br label %_ZNSt10unique_ptrIN6opencc10MarisaDict14MarisaInternalESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6opencc10MarisaDict14MarisaInternalESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6opencc10MarisaDict14MarisaInternalEEclEPS2_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 8 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6opencc10MarisaDict14MarisaInternalESt14default_deleteIS2_EED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !57
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19, !inline_history !0
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19, !inline_history !0
  br label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !59

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19
  br label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6opencc10MarisaDict14MarisaInternalESt14default_deleteIS2_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !54 ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ad, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !57
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #19, !inline_history !0
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #19, !inline_history !0
  br label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

bb.k:                                             ; preds = %bb.i
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i2 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4 = phi i32 [ %i.ag, %bb.l ], [ %i.aq, %bb.m ]
  %i.ar = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ar, label %bb.n, label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, !prof !59

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #19
  br label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5: ; preds = %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6opencc10MarisaDictD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6opencc10MarisaDictD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6opencc10MarisaDict12KeyMaxLengthEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZNK6opencc10MarisaDict18ReconstructLexiconEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6opencc10MarisaDict18ReconstructLexiconEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.marisa::Agent", align 8     ; 11 uses
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::vector.42", align 8    ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::vector", align 8      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = load atomic i8, ptr %i.b acquire, align 8, !range !60, !noundef !61
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.bg, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #28
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.g = load atomic i8, ptr %i.b monotonic, align 8, !range !60, !noundef !61
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.bf, label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %.not112 = icmp eq ptr %i.j, null
  br i1 %.not112, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store atomic i8 1, ptr %i.b release, align 8
  br label %bb.bf

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  invoke void @_ZN6marisa5AgentC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6marisa5Agent9set_queryEPKc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.3)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !62   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !66   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not192 = icmp eq ptr %i.m, %i.n
  br i1 %.not192, label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = icmp ugt i64 %i.q, 9223372036854775800
  br i1 %i.t, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #28
          to label %.noexc82 unwind label %bb.bh

.noexc82:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #29
          to label %_ZNSt12_Vector_baseISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i unwind label %bb.bh ; 4 uses

_ZNSt12_Vector_baseISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.q, i1 false), !tbaa !69
  store ptr %i.u, ptr %2, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q ; 3 uses
  store ptr %i.v, ptr %i.r, align 8, !tbaa !65
  store ptr %i.v, ptr %i.s, align 8, !tbaa !70
  br label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit

_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit: ; preds = %bb.h, %_ZNSt12_Vector_baseISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i
  %i.w = phi ptr [ %i.v, %_ZNSt12_Vector_baseISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i ], [ null, %bb.h ] ; 3 uses
  %i.x = phi ptr [ %i.u, %_ZNSt12_Vector_baseISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i ], [ null, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = ptrtoint ptr %i.x to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit
  %.093 = phi i64 [ 0, %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit ], [ %.sroa.speculated, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ] ; 2 uses
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52
  %i.am = invoke noundef zeroext i1 @_ZNK6marisa4Trie17predictive_searchERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  br i1 %i.am, label %bb.m, label %bb.ar

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !72  ; 3 uses
  %i.ao = load i32, ptr %i.aa, align 8, !tbaa !73 ; 4 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !21
  %i.aq = icmp eq ptr %i.an, null
  %i.ar = icmp ne i32 %i.ao, 0
  %or.cond.i = and i1 %i.aq, %i.ar
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #28
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !23
  %i.as = icmp ugt i32 %i.ao, 15
  br i1 %i.as, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.o
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc42:                                         ; preds = %.noexc.i
  store ptr %i.at, ptr %3, align 8, !tbaa !25
  %i.au = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.au, ptr %i.ab, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc42, %bb.o
  %i.av = phi ptr [ %i.at, %.noexc42 ], [ %i.ab, %bb.o ] ; 2 uses
  switch i32 %i.ao, label %bb.q [
    i32 1, label %bb.p
    i32 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.aw = load i8, ptr %i.an, align 1, !tbaa !26
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !26
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.an, i64 %i.ap, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  store i64 %i.ax, ptr %i.ac, align 8, !tbaa !27
  %i.ay = load ptr, ptr %3, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 0, ptr %i.az, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ba = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.bb = zext i32 %i.ba to i64                   ; 5 uses
  %.not = icmp ugt i64 %i.aj, %i.bb
  br i1 %.not, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = call ptr @__cxa_allocate_exception(i64 40) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6opencc13InvalidFormatC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN6opencc13InvalidFormatE, ptr nonnull @_ZN6opencc9ExceptionD2Ev) #28
          to label %bb.bm unwind label %bb.y

bb.v:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.w:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.x:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.aj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.n
  %lpad.loopexit.split-lp222 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.z

bb.y:                                             ; preds = %bb.u, %bb.t
  %.011 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.bh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 4 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !26
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.011, label %bb.z, label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.011, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2996 = phi { ptr, i32 } [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bc) #19
  br label %bb.ai

bb.aa:                                            ; preds = %bb.r
  %i.bn = load i64, ptr %i.ac, align 8, !tbaa !27
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.bn, i64 %.093)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !62  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !65
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !66 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3                 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.bv, %i.bb
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, i64 noundef %i.bb, i64 noundef %i.bv) #28
          to label %.noexc43 unwind label %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bb
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !74 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.42") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.ad unwind label %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.cb = invoke noundef ptr @_ZN6opencc16DictEntryFactory3NewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cc = load ptr, ptr %6, align 8, !tbaa !77    ; 3 uses
  %i.cd = load ptr, ptr %i.ae, align 8, !tbaa !78 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK6opencc10MarisaDict18ReconstructLexiconEv:bb.a
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.ae
  %i.ck = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.cc, %bb.ae ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cl = load ptr, ptr %i.af, align 8, !tbaa !80
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.co) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bb ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !74 ; 3 uses
  store ptr %i.cb, ptr %i.cp, align 8, !tbaa !74
  %.not.i.i.i.i45 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i45, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !29
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) #19, !inline_history !2
  br label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.cu = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ab
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit
  %i.cw = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.k, !llvm.loop !112

.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.cy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #19
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.ag ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.z, %bb.ah
  %.pn29.pn = phi { ptr, i32 } [ %.pn2996, %bb.z ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.ah ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.cz = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.ab
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.ai
  %i.db = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.ai, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %lpad.loopexit.split-lp222, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn29.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.x
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %i.bf, %bb.x ] ; 3 uses
  %.4 = extractvalue { ptr, i32 } %.pn29.pn.pn.pn, 1
  %i.dd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.de = icmp eq i32 %.4, %i.dd
  br i1 %i.de, label %bb.ak, label %bb.bi

bb.ak:                                            ; preds = %bb.aj
  %.420 = extractvalue { ptr, i32 } %.pn29.pn.pn.pn, 0
  %i.df = call ptr @__cxa_begin_catch(ptr %.420) #19 ; 2 uses
  %i.dg = call ptr @__cxa_allocate_exception(i64 40) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.thread

bb.al:                                            ; preds = %bb.ak
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef ptr %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.df) #19
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.dk)
          to label %bb.am unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.thread

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN6opencc13InvalidFormatC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTIN6opencc13InvalidFormatE, ptr nonnull @_ZN6opencc9ExceptionD2Ev) #28
          to label %bb.bm unwind label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.thread: ; preds = %bb.ak
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0 = phi i1 [ false, %bb.an ], [ true, %bb.am ] ; 2 uses
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dn = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.ao
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !26
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %i.ds = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.thread: ; preds = %bb.al
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.thread
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !26
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.eb = load i64, ptr %i.dt, align 8, !tbaa !26
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.ec) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %.0, label %bb.ap, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %.0, label %bb.ap, label %bb.aq

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.thread
  %.pn34.pn100.ph = phi { ptr, i32 } [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.thread ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.thread ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn34.pn100 = phi { ptr, i32 } [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %.pn34.pn100.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.dg) #19
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn34.pn99 = phi { ptr, i32 } [ %.pn34.pn100, %bb.ap ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ]
  invoke void @__cxa_end_catch()
          to label %bb.bi unwind label %bb.bl

bb.ar:                                            ; preds = %bb.l
  %i.ed = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.as unwind label %bb.bh     ; 7 uses

bb.as:                                            ; preds = %bb.ar
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store ptr %i.x, ptr %i.ed, align 8, !tbaa !66
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.w, ptr %i.eh, align 8, !tbaa !65
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %i.w, ptr %i.ei, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.ej = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %.noexc60 unwind label %bb.at  ; 5 uses

bb.at:                                            ; preds = %bb.as
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  %i.em = call ptr @__cxa_begin_catch(ptr %i.el) #19 ; 0 uses
  call void @_ZN6opencc7LexiconD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ed) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef 24) #30
  invoke void @__cxa_rethrow() #28
          to label %bb.aw unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #31
  unreachable

bb.aw:                                            ; preds = %bb.at
  unreachable

.noexc60:                                         ; preds = %bb.as
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 1, ptr %i.er, align 8, !tbaa !56
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 1, ptr %i.es, align 4, !tbaa !57
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ej, align 8, !tbaa !29
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %i.ed, ptr %i.et, align 8, !tbaa !82
  store ptr %i.ed, ptr %i.eq, align 8, !tbaa !83
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !54 ; 8 uses
  store ptr %i.ej, ptr %i.eu, align 8, !tbaa !54
  %.not.i.i.i58 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i58, label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit, label %bb.ax

bb.ax:                                            ; preds = %.noexc60
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 4 uses
  %i.ex = load atomic i64, ptr %i.ew acquire, align 8 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 4294967297
  %i.ez = trunc i64 %i.ex to i32                  ; 2 uses
  br i1 %i.ey, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.ew, align 8, !tbaa !56
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 0, ptr %i.fa, align 4, !tbaa !57
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !29
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #19, !inline_history !3
  %i.fe = load ptr, ptr %i.ev, align 8, !tbaa !29
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #19, !inline_history !3
  br label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit

bb.az:                                            ; preds = %bb.ax
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i59 = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i.i59, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fi = add nsw i32 %i.ez, -1
  store i32 %i.fi, ptr %i.ew, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.fj = atomicrmw volatile add ptr %i.ew, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i = phi i32 [ %i.ez, %bb.ba ], [ %i.fj, %bb.bb ]
  %i.fk = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fk, label %bb.bc, label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit, !prof !59

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #19
  br label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit

_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit: ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ay, %.noexc60
  %i.fl = load ptr, ptr %10, align 8, !tbaa !66   ; 5 uses
  %i.fm = load ptr, ptr %i.ee, align 8, !tbaa !65 ; 2 uses
  %.not4.i.i.i61 = icmp eq ptr %i.fl, %i.fm
  br i1 %.not4.i.i.i61, label %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i62

.lr.ph.i.i.i62:                                   ; preds = %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit, %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i63 = phi ptr [ %i.fr, %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.fl, %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit ] ; 2 uses
  %i.fn = load ptr, ptr %.05.i.i.i63, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i62
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !29
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %i.fn) #19, !inline_history !4
  br label %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i62
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i63, i64 8 ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.fr, %i.fm
  br i1 %.not.i.i.i64, label %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i62, !llvm.loop !5

_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit
  %.not.i.i1.i66 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i1.i66, label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.fs = load ptr, ptr %i.ef, align 8, !tbaa !70
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fl to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fv) #30
  br label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.bd
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.093, ptr %i.fw, align 8, !tbaa !50
  store atomic i8 1, ptr %i.b release, align 8
  %i.fx = load ptr, ptr %2, align 8, !tbaa !66    ; 5 uses
  %i.fy = load ptr, ptr %i.r, align 8, !tbaa !65  ; 2 uses
  %.not4.i.i.i67 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not4.i.i.i67, label %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i76, label %.lr.ph.i.i.i68

.lr.ph.i.i.i68:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i72
  %.05.i.i.i69 = phi ptr [ %i.gd, %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i72 ], [ %i.fx, %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.fz = load ptr, ptr %.05.i.i.i69, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i70, label %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i72, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i71

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i71: ; preds = %.lr.ph.i.i.i68
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !29
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(8) %i.fz) #19, !inline_history !4
  br label %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i72

_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i72: ; preds = %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i71, %.lr.ph.i.i.i68
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i69, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.gd, %i.fy
  br i1 %.not.i.i.i73, label %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i76, label %.lr.ph.i.i.i68, !llvm.loop !5

_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i76: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i72, %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %.not.i.i1.i77 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i1.i77, label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit78, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i76
  %i.ge = load ptr, ptr %i.eg, align 8, !tbaa !70
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.fx to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gh) #30
  br label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit78

_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit78: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i76, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZN6marisa5AgentD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit78, %bb.e
  %i.gi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #19 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.a, %bb.bf
  ret void

bb.bh:                                            ; preds = %bb.j, %_ZNKSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.ar
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.body:                                            ; preds = %bb.au
  call void @_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #19
  br label %bb.bi

bb.bi:                                            ; preds = %bb.aj, %bb.bh, %.body, %bb.aq
  %.merged38 = phi { ptr, i32 } [ %.pn34.pn99, %bb.aq ], [ %i.en, %.body ], [ %.pn29.pn.pn.pn, %bb.aj ], [ %i.gj, %bb.bh ]
  call void @_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.w
  %.merged37 = phi { ptr, i32 } [ %.merged38, %bb.bi ], [ %i.be, %bb.w ]
  call void @_ZN6marisa5AgentD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #19
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.v
  %.merged = phi { ptr, i32 } [ %.merged37, %bb.bj ], [ %i.bd, %bb.v ]
end_hunk_1
begin_hunk_2_@_ZN6opencc10MarisaDict11NewFromDictERKNS_4DictE:bb.a
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %5, align 8, !tbaa !25     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.n
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !26
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN6opencc9DictEntryESt14default_deleteISB_EEESaISF_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SB_EEEixEOS5_.exit unwind label %bb.m ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SB_EEEixEOS5_.exit: ; preds = %bb.g
  %i.ag = invoke noundef ptr @_ZN6opencc16DictEntryFactory3NewEPKNS_9DictEntryE(ptr noundef nonnull %i.t)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SB_EEEixEOS5_.exit
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !74 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i: ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #19, !inline_history !127
  br label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i
  %i.al = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.o
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.an = load i64, ptr %i.o, align 8, !tbaa !26
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke { i64, ptr } %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.i unwind label %.loopexit.split-lp102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !128

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.at = extractvalue { i64, ptr } %i.as, 0
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.at, i64 %.095114) ; 2 uses
  %i.au = add nuw i64 %.0115, 1                   ; 2 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !62    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !65
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !66 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = icmp ult i64 %i.au, %i.bc
  br i1 %i.bd, label %bb.d, label %._crit_edge, !llvm.loop !129

bb.j:                                             ; preds = %bb.d
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.k:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.n
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.k
  %i.bi = load i64, ptr %i.n, align 8, !tbaa !26
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.j
  %.pn30 = phi { ptr, i32 } [ %i.be, %bb.j ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.bf, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.body

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.m:                                             ; preds = %bb.g, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SB_EEEixEOS5_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.o
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.m
  %i.bo = load i64, ptr %i.o, align 8, !tbaa !26
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.l
  %.pn32 = phi { ptr, i32 } [ %i.bk, %bb.l ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.bl, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body

.loopexit.split-lp102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %._crit_edge
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %._crit_edge
  invoke void @_ZN6opencc10MarisaDictC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.p)
          to label %bb.o unwind label %bb.ah

bb.o:                                             ; preds = %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !87
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !54
  %i.br = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.t unwind label %bb.p       ; 5 uses

bb.p:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  %i.bu = call ptr @__cxa_begin_catch(ptr %i.bt) #19 ; 0 uses
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !29
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(112) %i.p) #19, !inline_history !6
  invoke void @__cxa_rethrow() #28
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #31
  unreachable

bb.s:                                             ; preds = %bb.p
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 1, ptr %i.cb, align 8, !tbaa !56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 1, ptr %i.cc, align 4, !tbaa !57
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6opencc10MarisaDictELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.br, align 8, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.p, ptr %i.cd, align 8, !tbaa !89
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !54
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !53
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !52
  invoke void @_ZN6marisa4Trie5buildERNS_6KeysetEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef 0)
          to label %bb.u unwind label %bb.ai

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN6marisa5AgentC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.v unwind label %bb.aj

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6marisa5Agent9set_queryEPKc(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3)
          to label %bb.w unwind label %bb.ak

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.ch = load ptr, ptr %2, align 8, !tbaa !62    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !65 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !66 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not158 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not158, label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cq = icmp ugt i64 %i.cn, 9223372036854775800
  br i1 %i.cq, label %bb.y, label %_ZNKSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #28
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc84:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.x
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #29
          to label %_ZNSt12_Vector_baseISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 %i.cn, i1 false), !tbaa !69
  store ptr %i.cr, ptr %8, align 8, !tbaa !66
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cn ; 3 uses
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !65
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !70
  br label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit

_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit: ; preds = %bb.w, %_ZNSt12_Vector_baseISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i
  %i.ct = phi ptr [ %i.cs, %_ZNSt12_Vector_baseISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i ], [ null, %bb.w ] ; 2 uses
  %i.cu = phi ptr [ %i.cr, %_ZNSt12_Vector_baseISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i ], [ null, %bb.w ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 36
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.da = load ptr, ptr %i.ce, align 8, !tbaa !53
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !52
  %i.dc = invoke noundef zeroext i1 @_ZNK6marisa4Trie17predictive_searchERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dc, label %bb.ab, label %bb.am

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.dd = load ptr, ptr %i.cv, align 8, !tbaa !72 ; 3 uses
  %i.de = load i32, ptr %i.cw, align 8, !tbaa !73 ; 4 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  store ptr %i.cx, ptr %9, align 8, !tbaa !21
  %i.dg = icmp eq ptr %i.dd, null
  %i.dh = icmp ne i32 %i.de, 0
  %or.cond.i = and i1 %i.dg, %i.dh
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #28
          to label %.noexc51 unwind label %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.df, ptr %i.a, align 8, !tbaa !23
  %i.di = icmp ugt i32 %i.de, 15
  br i1 %i.di, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ad
  %i.dj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc52 unwind label %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc52:                                         ; preds = %.noexc.i
  store ptr %i.dj, ptr %9, align 8, !tbaa !25
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.dk, ptr %i.cx, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc52, %bb.ad
  %i.dl = phi ptr [ %i.dj, %.noexc52 ], [ %i.cx, %bb.ad ] ; 2 uses
  switch i32 %i.de, label %bb.af [
    i32 1, label %bb.ae
    i32 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i
  %i.dm = load i8, ptr %i.dd, align 1, !tbaa !26
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !26
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.dd, i64 %i.df, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  store i64 %i.dn, ptr %i.cy, align 8, !tbaa !27
  %i.do = load ptr, ptr %9, align 8, !tbaa !25
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dn
  store i8 0, ptr %i.dp, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN6opencc9DictEntryESt14default_deleteISB_EEESaISF_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SB_EEEixERSH_.exit unwind label %bb.al ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SB_EEEixERSH_.exit: ; preds = %bb.ag
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !74
  %i.ds = inttoptr i64 %i.dr to ptr
  store ptr null, ptr %i.dq, align 8, !tbaa !74
  %i.dt = load i32, ptr %i.cz, align 4, !tbaa !26
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !74 ; 3 uses
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !74
  %.not.i.i.i.i54 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i54, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SB_EEEixERSH_.exit
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !29
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) #19, !inline_history !2
  br label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SB_EEEixERSH_.exit
  %i.ea = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.cx
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit
  %i.ec = load i64, ptr %i.cx, align 8, !tbaa !26
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.z, !llvm.loop !130

bb.ah:                                            ; preds = %bb.n
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 112) #30
  br label %.body

bb.ai:                                            ; preds = %bb.t
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aj:                                            ; preds = %bb.u
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ak:                                            ; preds = %bb.v
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %_ZNKSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.y, %bb.am
  %lpad.loopexit.split-lp165 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.ac
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.al:                                            ; preds = %bb.ag
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.cx
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.al
  %i.el = load i64, ptr %i.cx, align 8, !tbaa !26
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.al, %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %.pn = phi { ptr, i32 } [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ei, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.loopexit.split-lp

bb.am:                                            ; preds = %bb.aa
  %i.en = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.an:                                            ; preds = %bb.am
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %i.cu, ptr %i.en, align 8, !tbaa !66
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.ct, ptr %i.er, align 8, !tbaa !65
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr %i.ct, ptr %i.es, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.et = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %.noexc63 unwind label %bb.ao  ; 5 uses

bb.ao:                                            ; preds = %bb.an
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  %i.ew = call ptr @__cxa_begin_catch(ptr %i.ev) #19 ; 0 uses
  call void @_ZN6opencc7LexiconD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.en) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 24) #30
  invoke void @__cxa_rethrow() #28
          to label %bb.ar unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body86 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #31
  unreachable

bb.ar:                                            ; preds = %bb.ao
  unreachable

.noexc63:                                         ; preds = %bb.an
  %i.fa = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 1, ptr %i.fb, align 8, !tbaa !56
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store i32 1, ptr %i.fc, align 4, !tbaa !57
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.et, align 8, !tbaa !29
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %i.en, ptr %i.fd, align 8, !tbaa !82
  store ptr %i.en, ptr %i.fa, align 8, !tbaa !83
  %i.fe = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !54 ; 8 uses
  store ptr %i.et, ptr %i.fe, align 8, !tbaa !54
  %.not.i.i.i61 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i61, label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit, label %bb.as

bb.as:                                            ; preds = %.noexc63
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 4 uses
  %i.fh = load atomic i64, ptr %i.fg acquire, align 8 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 4294967297
  %i.fj = trunc i64 %i.fh to i32                  ; 2 uses
  br i1 %i.fi, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.fg, align 8, !tbaa !56
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i32 0, ptr %i.fk, align 4, !tbaa !57
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #19, !inline_history !3
  %i.fo = load ptr, ptr %i.ff, align 8, !tbaa !29
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #19, !inline_history !3
  br label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit

bb.au:                                            ; preds = %bb.as
  %i.fr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i62 = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i.i62, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fs = add nsw i32 %i.fj, -1
  store i32 %i.fs, ptr %i.fg, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.ft = atomicrmw volatile add ptr %i.fg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i = phi i32 [ %i.fj, %bb.av ], [ %i.ft, %bb.aw ]
  %i.fu = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fu, label %bb.ax, label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit, !prof !59

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #19
  br label %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit

_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit: ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.at, %.noexc63
  %i.fv = load ptr, ptr %10, align 8, !tbaa !66   ; 5 uses
  %i.fw = load ptr, ptr %i.eo, align 8, !tbaa !65 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fv, %i.fw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit, %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gb, %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.fv, %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit ] ; 2 uses
  %i.fx = load ptr, ptr %.05.i.i.i, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !29
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fx) #19, !inline_history !4
  br label %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.gb, %i.fw
  br i1 %.not.i.i.i64, label %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit
  %.not.i.i1.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.gc = load ptr, ptr %i.ep, align 8, !tbaa !70
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.fv to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.gf) #30
  br label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ay
  %i.gg = load ptr, ptr %0, align 8, !tbaa !87    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store i64 %.095.lcssa, ptr %i.gh, align 8, !tbaa !50
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 80
  store atomic i8 1, ptr %i.gi release, align 8
  %i.gj = load ptr, ptr %8, align 8, !tbaa !66    ; 5 uses
  %i.gk = load ptr, ptr %i.co, align 8, !tbaa !65 ; 2 uses
  %.not4.i.i.i65 = icmp eq ptr %i.gj, %i.gk
  br i1 %.not4.i.i.i65, label %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i74, label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i70
  %.05.i.i.i67 = phi ptr [ %i.gp, %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i70 ], [ %i.gj, %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.gl = load ptr, ptr %.05.i.i.i67, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i.i68 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i.i68, label %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i70, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i69

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i69: ; preds = %.lr.ph.i.i.i66
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !29
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.gl) #19, !inline_history !4
  br label %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i70

_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i70: ; preds = %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i69, %.lr.ph.i.i.i66
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.gp, %i.gk
  br i1 %.not.i.i.i71, label %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i74, label %.lr.ph.i.i.i66, !llvm.loop !5

_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i74: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i70, %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %.not.i.i1.i75 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i1.i75, label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit76, label %bb.az

bb.az:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i74
  %i.gq = load ptr, ptr %i.eq, align 8, !tbaa !70
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.gj to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gt) #30
  br label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit76

_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit76: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i74, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN6marisa5AgentD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.gu = load ptr, ptr %i.g, align 8, !tbaa !99  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN6opencc9DictEntryESt14default_deleteISA_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit76, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6opencc9DictEntryESt14default_deleteISC_EEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.gv, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6opencc9DictEntryESt14default_deleteISC_EEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i.i.i.i ], [ %i.gu, %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EED2Ev.exit76 ] ; 5 uses
  %i.gv = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i77
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !29
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %i.gy) #19, !inline_history !131
  br label %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6opencc9DictEntryEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i77
  %i.hc = load ptr, ptr %i.gw, align 8, !tbaa !25 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6opencc9DictEntryESt14default_deleteISC_EEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !26
  %i.hg = add i64 %i.hf, 1
end_hunk_2
