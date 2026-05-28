inline.NumInlined: 5469
inline.NumDeleted: 2421
begin_hunk_0_@_ZN6duckdb13SecretManager10AllSecretsENS_18CatalogTransactionE:bb.a
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !18
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.018.032, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !179 ; 3 uses
  %.not.i12 = icmp eq ptr %i.as, null
  br i1 %.not.i12, label %bb.j, label %_ZNK6duckdb10unique_ptrIKNS_10BaseSecretESt14default_deleteIS2_ELb1EEptEv.exit

_ZNK6duckdb10unique_ptrIKNS_10BaseSecretESt14default_deleteIS2_ELb1EEptEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.561") align 8 %i.aq, ptr noundef nonnull align 8 dereferenceable(129) %i.as)
          to label %.noexc unwind label %.body15

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  store ptr null, ptr %i.aq, align 8, !tbaa !305
  br label %.noexc

.body15:                                          ; preds = %_ZNK6duckdb10unique_ptrIKNS_10BaseSecretESt14default_deleteIS2_ELb1EEptEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ad
  br i1 %i.ay, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.body15
  call void @_ZdlPv(ptr noundef %i.ax) #31
  br label %.body

.noexc:                                           ; preds = %bb.j, %_ZNK6duckdb10unique_ptrIKNS_10BaseSecretESt14default_deleteIS2_ELb1EEptEv.exit
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !641
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store ptr %i.ba, ptr %i.d, align 8, !tbaa !641
  br label %_ZNSt6vectorIN6duckdb11SecretEntryESaIS1_EE9push_backERKS1_.exit

bb.k:                                             ; preds = %.lr.ph
  invoke void @_ZNSt6vectorIN6duckdb11SecretEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.018.032)
          to label %_ZNSt6vectorIN6duckdb11SecretEntryESaIS1_EE9push_backERKS1_.exit unwind label %bb.l

_ZNSt6vectorIN6duckdb11SecretEntryESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.018.032, i64 48 ; 2 uses
  %.not27 = icmp eq ptr %i.bb, %i.l
  br i1 %.not27, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %.noexc.i.i, %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aw, %.body15 ]
  call void @_ZNSt6vectorIN6duckdb11SecretEntryESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  br label %bb.m

bb.m:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZNSt6vectorIN6duckdb11SecretEntryESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11SecretEntryESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !639    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !641  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb11SecretEntryES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb11SecretEntryEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN6duckdb11SecretEntryEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIKN6duckdb10BaseSecretEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIKN6duckdb10BaseSecretEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %i.e) #30, !inline_history !653
  br label %_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIKN6duckdb10BaseSecretEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyIN6duckdb11SecretEntryEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #31
  br label %_ZSt8_DestroyIN6duckdb11SecretEntryEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb11SecretEntryEEvPT_.exit.i.i: ; preds = %_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb11SecretEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !643

_ZSt8_DestroyIPN6duckdb11SecretEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb11SecretEntryEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !639
  br label %_ZSt8_DestroyIPN6duckdb11SecretEntryES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb11SecretEntryES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11SecretEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.n = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb11SecretEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb11SecretEntryESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11SecretEntryES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #31
  br label %_ZNSt12_Vector_baseIN6duckdb11SecretEntryESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb11SecretEntryESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11SecretEntryES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager14AllSecretTypesEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.571") align 8 %0, ptr noundef nonnull align 8 dereferenceable(344) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.09.015 = load ptr, ptr %i.c, align 8, !tbaa !94 ; 2 uses
  %.not16 = icmp eq ptr %.sroa.09.015, null
  br i1 %.not16, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt6vectorIN6duckdb10SecretTypeESaIS1_EE9push_backERKS1_.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10SecretTypeESaIS1_EE9push_backERKS1_.exit
  %.sroa.09.017 = phi ptr [ %.sroa.09.015, %.lr.ph ], [ %.sroa.09.0, %_ZNSt6vectorIN6duckdb10SecretTypeESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !314  ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !654
  %.not.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb10SecretTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %i.g)
          to label %.noexc unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit8

.noexc:                                           ; preds = %bb.d
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !314
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store ptr %i.k, ptr %i.d, align 8, !tbaa !314
  br label %_ZNSt6vectorIN6duckdb10SecretTypeESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIN6duckdb10SecretTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(104) %i.g)
          to label %_ZNSt6vectorIN6duckdb10SecretTypeESaIS1_EE9push_backERKS1_.exit unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit8

_ZNSt6vectorIN6duckdb10SecretTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.e
  %.sroa.09.0 = load ptr, ptr %.sroa.09.017, align 8, !tbaa !94 ; 2 uses
  %.not = icmp eq ptr %.sroa.09.0, null
  br i1 %.not, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.c

_ZNSt11unique_lockISt5mutexED2Ev.exit8:           ; preds = %bb.d, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb10SecretTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager33ThrowOnSettingChangeIfInitializedEv(ptr noundef nonnull align 8 captures(none) dereferenceable(344) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !63, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager26SetEnablePersistentSecretsEb(ptr noundef nonnull align 8 captures(none) dereferenceable(344) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  tail call void @_ZN6duckdb13SecretManager33ThrowOnSettingChangeIfInitializedEv(ptr noundef nonnull align 8 dereferenceable(344) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 %i.a, ptr %i.b, align 8, !tbaa !507
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager28ResetEnablePersistentSecretsEv(ptr noundef nonnull align 8 captures(none) dereferenceable(344) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb13SecretManager33ThrowOnSettingChangeIfInitializedEv(ptr noundef nonnull align 8 dereferenceable(344) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 1, ptr %i.a, align 8, !tbaa !507
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN6duckdb13SecretManager24PersistentSecretsEnabledEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(344) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load i8, ptr %i.a, align 8, !tbaa !507, !range !63, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager17SetDefaultStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager19ResetDefaultStorageEv(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load i64, ptr %i.b, align 8, !tbaa !10
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull @.str.35, i64 noundef 10) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager14DefaultStorageB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(344) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !15
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8, !tbaa !17
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !16
  %i.i = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.i, ptr %i.c, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !18
  store i8 %i.k, ptr %i.j, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !10
  %i.n = load ptr, ptr %0, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager23SetPersistentSecretPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb13SecretManager33ThrowOnSettingChangeIfInitializedEv(ptr noundef nonnull align 8 dereferenceable(344) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager25ResetPersistentSecretPathEv(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb13SecretManager33ThrowOnSettingChangeIfInitializedEv(ptr noundef nonnull align 8 dereferenceable(344) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager20PersistentSecretPathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(344) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !15
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8, !tbaa !17
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !16
  %i.i = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.i, ptr %i.c, align 8, !tbaa !18
end_hunk_0
