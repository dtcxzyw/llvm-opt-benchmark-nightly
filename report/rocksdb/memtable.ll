Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/memtable?download=true
inline.NumInlined: 3338
inline.NumDeleted: 1581
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7rocksdb8MemTableC2ERKNS_21InternalKeyComparatorERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsEPNS_18WriteBufferManagerEmj:bb.a
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 160
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.ld) #36, !inline_history !444
  br label %_ZNSt10unique_ptrIN7rocksdb11MemTableRepESt14default_deleteIS1_EED2Ev.exit95

_ZNSt10unique_ptrIN7rocksdb11MemTableRepESt14default_deleteIS1_EED2Ev.exit95: ; preds = %_ZNKSt14default_deleteIN7rocksdb11MemTableRepEEclEPS1_.exit.i94, %_ZNSt10unique_ptrIN7rocksdb11MemTableRepESt14default_deleteIS1_EED2Ev.exit, %bb.am
  %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hh, %bb.am ], [ %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN7rocksdb11MemTableRepESt14default_deleteIS1_EED2Ev.exit ], [ %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN7rocksdb11MemTableRepEEclEPS1_.exit.i94 ]
  call void @_ZN7rocksdb15ConcurrentArenaD2Ev(ptr noundef nonnull align 16 dead_on_return(2472) dereferenceable(2472) %i.bg) #36
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb11MemTableRepESt14default_deleteIS1_EED2Ev.exit95, %bb.al
  %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN7rocksdb11MemTableRepESt14default_deleteIS1_EED2Ev.exit95 ], [ %i.hg, %bb.al ]
  call void @_ZN7rocksdb12AllocTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %i.bf) #36
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ak
  %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cd ], [ %i.hf, %bb.ak ]
  call void @_ZN7rocksdb16ReadOnlyMemTableD2Ev(ptr noundef nonnull align 8 dead_on_return(7560) dereferenceable(7560) %0) #36
  resume { ptr, i32 } %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef i64 @_ZN7rocksdb5Arena17OptimizeBlockSizeEm(i64 noundef) local_unnamed_addr #6

declare void @_ZN7rocksdb12AllocTrackerC1EPNS_18WriteBufferManagerE(ptr noundef nonnull align 8 dereferenceable(18), ptr noundef) unnamed_addr #6

declare void @_ZN7rocksdb15ConcurrentArenaC1EmPNS_12AllocTrackerEm(ptr noundef nonnull align 16 dereferenceable(2472), i64 noundef, ptr noundef, i64 noundef) unnamed_addr #6

declare void @_ZN7rocksdb15SkipListFactoryC1Em(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb12ConfigurableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7rocksdb12ConfigurableE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !378  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !381  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12Configurable17RegisteredOptionsES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb12Configurable17RegisteredOptionsEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN7rocksdb12Configurable17RegisteredOptionsEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !28 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN7rocksdb12Configurable17RegisteredOptionsEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !30
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #39
  br label %_ZSt8_DestroyIN7rocksdb12Configurable17RegisteredOptionsEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb12Configurable17RegisteredOptionsEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12Configurable17RegisteredOptionsES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !382

_ZSt8_DestroyIPN7rocksdb12Configurable17RegisteredOptionsES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb12Configurable17RegisteredOptionsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !378
  br label %_ZSt8_DestroyIPN7rocksdb12Configurable17RegisteredOptionsES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb12Configurable17RegisteredOptionsES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb12Configurable17RegisteredOptionsES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb12Configurable17RegisteredOptionsES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb12Configurable17RegisteredOptionsES2_EvT_S4_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !383
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #39
  br label %_ZNSt6vectorIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EED2Ev.exit

_ZNSt6vectorIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb12Configurable17RegisteredOptionsES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  ret void
}

declare void @_ZN7rocksdb4port7RWMutexC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb4port7RWMutexESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 164703072086692425
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN7rocksdb4port7RWMutexESaIS2_EE17_S_check_init_lenEmRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #37
  unreachable

_ZNSt6vectorIN7rocksdb4port7RWMutexESaIS2_EE17_S_check_init_lenEmRKS3_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EEC2EmRKS3_.exit.thread, label %_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EEC2EmRKS3_.exit

_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EEC2EmRKS3_.exit.thread: ; preds = %_ZNSt6vectorIN7rocksdb4port7RWMutexESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZNSt6vectorIN7rocksdb4port7RWMutexESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.c = mul nuw nsw i64 %1, 56
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #38 ; 6 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !445
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !446
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !447
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EEC2EmRKS3_.exit, %_ZSt10_ConstructIN7rocksdb4port7RWMutexEJEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.i, %_ZSt10_ConstructIN7rocksdb4port7RWMutexEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EEC2EmRKS3_.exit ] ; 4 uses
  %.01013.i.i.i.i = phi i64 [ %i.h, %_ZSt10_ConstructIN7rocksdb4port7RWMutexEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EEC2EmRKS3_.exit ]
  invoke void @_ZN7rocksdb4port7RWMutexC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.014.i.i.i.i)
          to label %_ZSt10_ConstructIN7rocksdb4port7RWMutexEJEEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7rocksdb4port7RWMutexEJEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = add nsw i64 %.01013.i.i.i.i, -1          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !448

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #36 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb4port7RWMutexEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  tail call void @_ZN7rocksdb4port7RWMutexD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.05.i.i.i.i.i.i) #36
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb4port7RWMutexEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !449

_ZSt8_DestroyIPN7rocksdb4port7RWMutexEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #37
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb4port7RWMutexEEvT_S4_.exit.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #40
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb4port7RWMutexEEvT_S4_.exit.i.i.i.i
  unreachable

.loopexit:                                        ; preds = %_ZSt10_ConstructIN7rocksdb4port7RWMutexEJEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EEC2EmRKS3_.exit.thread
  %i.q = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.e, %_ZSt10_ConstructIN7rocksdb4port7RWMutexEJEEvPT_DpOT0_.exit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.i, %_ZSt10_ConstructIN7rocksdb4port7RWMutexEJEEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.q, align 8, !tbaa !446
  ret void

.body:                                            ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !445    ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !447
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #39
  br label %_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7rocksdb4port7RWMutexESaIS2_EED2Ev.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb14CoreLocalArrayISt10shared_ptrINS_33FragmentedRangeTombstoneListCacheEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !450
  %i.a = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #36
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ 3, %bb.a ], [ %i.d, %bb.b ] ; 5 uses
  %i.b = shl nuw i32 1, %storemerge
  %i.c = icmp slt i32 %i.b, %i.a
  %i.d = add nuw nsw i32 %storemerge, 1
  br i1 %i.c, label %bb.b, label %bb.c, !llvm.loop !451

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %storemerge, ptr %i.e, align 8, !tbaa !425
  %i.f = zext nneg i32 %storemerge to i64         ; 2 uses
  %i.g = icmp samesign ugt i32 %storemerge, 59
  %i.h = shl i64 16, %i.f                         ; 2 uses
  %i.i = or disjoint i64 %i.h, 8
  %i.j = select i1 %i.g, i64 -1, i64 %i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #38
          to label %bb.d unwind label %bb.l       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = shl nuw i64 1, %i.f
  store i64 %i.l, ptr %i.k, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.h, i1 false)
  %i.n = load ptr, ptr %0, align 8, !tbaa !426    ; 4 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !426
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.idx.i.i.i = shl i64 %i.p, 4                   ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZNKSt14default_deleteIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %.idx.i.i.i
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %.preheader.preheader.i.i.i
  %i.s = phi ptr [ %i.t, %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i ], [ %i.r, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !191  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.w, align 8, !tbaa !193
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !195
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #36, !inline_history !452
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #36, !inline_history !452
  br label %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !192
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.i ], [ %i.aj, %bb.j ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.k, label %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !27

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #36
  br label %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g, %.preheader.i.i.i
  %i.al = icmp eq ptr %i.t, %i.n
  br i1 %i.al, label %_ZNKSt14default_deleteIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i, label %.preheader.i.i.i

_ZNKSt14default_deleteIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %bb.e
  %i.am = or disjoint i64 %.idx.i.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.o, i64 noundef %i.am) #39
  br label %_ZNSt10unique_ptrIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

_ZNSt10unique_ptrIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i
  ret void

bb.l:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #36
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb8MemTable11ValidateKeyEPKcb(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(10624) %1, ptr noundef %2, i1 noundef zeroext %3) #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 7672
  %i.b = load i32, ptr %i.a, align 8, !tbaa !399
  tail call void @_ZN7rocksdb8MemTable19VerifyEntryChecksumEPKcjb(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %2, i32 noundef %i.b, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb8MemTable16UpdateFlushStateEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(10624) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10392 ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZNSt6atomicIN7rocksdb8MemTable14FlushStateEnumEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7512
  %i.e = load atomic i8, ptr %i.d monotonic, align 8, !range !85, !noundef !86
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN7rocksdb8MemTable14ShouldFlushNowEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10488
  %i.h = load i32, ptr %i.g, align 8, !tbaa !398  ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %i.j = load atomic i64, ptr %i.i monotonic, align 8
  %i.k = zext i32 %i.h to i64
  %.not7.i = icmp ult i64 %i.j, %i.k
  br i1 %.not7.i, label %bb.e, label %_ZN7rocksdb8MemTable14ShouldFlushNowEv.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10304
  %i.m = load atomic i64, ptr %i.l monotonic, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !376 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.o), !inline_history !453
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10112
  %i.u = load atomic i64, ptr %i.t monotonic, align 16
  %i.v = add i64 %i.u, %i.s                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10480
  store atomic i64 %i.v, ptr %i.w monotonic, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 7680
  %i.y = load i64, ptr %i.x, align 16, !tbaa !370 ; 3 uses
  %i.z = add i64 %i.y, %i.v
  %i.aa = uitofp i64 %i.z to double
  %i.ab = uitofp i64 %i.m to double
  %i.ac = uitofp i64 %i.y to double
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double 6.000000e-01, double %i.ab) ; 2 uses
  %i.ae = fcmp ogt double %i.ad, %i.aa
  br i1 %i.ae, label %_ZNSt6atomicIN7rocksdb8MemTable14FlushStateEnumEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = uitofp i64 %i.v to double
  %i.ag = fcmp olt double %i.ad, %i.af
  br i1 %i.ag, label %_ZN7rocksdb8MemTable14ShouldFlushNowEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10104
  %i.ai = load atomic i64, ptr %i.ah monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7792
  %i.ak = load i32, ptr %i.aj, align 16, !tbaa !413
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 7784
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !414
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.07.i.i.i = phi i64 [ 0, %bb.g ], [ %i.as, %bb.h ] ; 2 uses
  %.056.i.i.i = phi i64 [ 0, %bb.g ], [ %i.ar, %bb.h ]
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.07.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load atomic i64, ptr %i.ap monotonic, align 8
  %i.ar = add i64 %i.aq, %.056.i.i.i              ; 2 uses
  %i.as = add nuw i64 %.07.i.i.i, 1               ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.as, %i.al
  %i.at = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.at, label %bb.h, label %_ZN7rocksdb8MemTable14ShouldFlushNowEv.exit, !llvm.loop !415

_ZN7rocksdb8MemTable14ShouldFlushNowEv.exit:      ; preds = %bb.h
  %i.au = add i64 %i.ar, %i.ai
  %i.av = lshr i64 %i.y, 2
  %i.aw = icmp ult i64 %i.au, %i.av
  br i1 %i.aw, label %_ZN7rocksdb8MemTable14ShouldFlushNowEv.exit.thread, label %_ZNSt6atomicIN7rocksdb8MemTable14FlushStateEnumEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit

_ZN7rocksdb8MemTable14ShouldFlushNowEv.exit.thread: ; preds = %bb.f, %bb.b, %bb.d, %_ZN7rocksdb8MemTable14ShouldFlushNowEv.exit
  %i.ax = cmpxchg ptr %i.a, i32 0, i32 1 monotonic monotonic, align 4 ; 0 uses
  br label %_ZNSt6atomicIN7rocksdb8MemTable14FlushStateEnumEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit

_ZNSt6atomicIN7rocksdb8MemTable14FlushStateEnumEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit: ; preds = %_ZN7rocksdb8MemTable14ShouldFlushNowEv.exit.thread, %bb.e, %_ZN7rocksdb8MemTable14ShouldFlushNowEv.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_ZN7rocksdb12DynamicBloomC1EPNS_9AllocatorEjjmPNS_6LoggerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
