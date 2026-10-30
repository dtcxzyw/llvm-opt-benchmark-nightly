Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/socket?download=true
inline.NumInlined: 209
inline.NumDeleted: 109
begin_hunk_0_@_ZN3dap6Socket6Shared10setOptionsEv:bb.a
  unreachable

_ZN3dap5RLockD2Ev.exit:                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i, %bb.f, %bb.g
  %i.z = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #18 ; 0 uses
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN3dap6Socket6SharedESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN3dap6Socket6SharedESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #18, !inline_history !83
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN3dap6Socket6SharedESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN3dap6Socket6SharedESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN3dap6Socket6SharedESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !42
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #18
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3dap6Socket6SharedD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-48, 48) (i8, ptr @_ZTVN3dap6Socket6SharedE, i64 48), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN3dap6Socket6SharedE, i64 144), ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @freeaddrinfo(ptr noundef nonnull %i.c) #18
  %.pre = load ptr, ptr %0, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pre, %bb.b ], [ getelementptr inbounds nuw inrange(-48, 48) (i8, ptr @_ZTVN3dap6Socket6SharedE, i64 48), %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(128) %0)
          to label %_ZN3dap6Socket6SharedD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #20
  unreachable

_ZN3dap6Socket6SharedD2Ev.exit:                   ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.i) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3dap6Socket6SharedD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-48, 48) (i8, ptr @_ZTVN3dap6Socket6SharedE, i64 48), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN3dap6Socket6SharedE, i64 144), ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @freeaddrinfo(ptr noundef nonnull %i.c) #18, !inline_history !52
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pre.i, %bb.b ], [ getelementptr inbounds nuw inrange(-48, 48) (i8, ptr @_ZTVN3dap6Socket6SharedE, i64 48), %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(128) %0)
          to label %_ZN3dap6Socket6SharedD1Ev.exit unwind label %bb.d, !inline_history !52

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #20, !inline_history !52
  unreachable

_ZN3dap6Socket6SharedD1Ev.exit:                   ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.i) #18, !inline_history !52
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3dap6Socket6Shared6isOpenEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 7 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN3dap5RLockC2ERNS_7RWMutexE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #19
  unreachable

_ZN3dap5RLockC2ERNS_7RWMutexE.exit:               ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 8, !tbaa !22
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.c, align 8, !tbaa !22
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3dap5RLockC2ERNS_7RWMutexE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 1, ptr %i.b, align 4, !tbaa !43
  %i.k = call i32 @getsockopt(i32 noundef range(i32 0, -1) %i.j, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #18 ; 0 uses
  %i.l = load i8, ptr %i.a, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not9 = icmp eq i8 %i.l, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3dap5RLockC2ERNS_7RWMutexE.exit
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.a = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.m = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 2 uses
  %.not.i.i.i.i.i4 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i4, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.m) #19
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.f
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i:     ; preds = %bb.e
  %i.n = load i32, ptr %i.c, align 8, !tbaa !22
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.c, align 8, !tbaa !22
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %_ZN3dap5RLockD2Ev.exit

bb.g:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %_ZN3dap5RLockD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.t) #18
  br label %_ZN3dap5RLockD2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #20
  unreachable

_ZN3dap5RLockD2Ev.exit:                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i, %bb.g, %bb.h
  %i.w = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 0 uses
  br i1 %.0.a, label %bb.q, label %bb.j

bb.j:                                             ; preds = %_ZN3dap5RLockD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %i.d, ptr %1, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 2 uses
  %.not.i.i.i.i.i5 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i5, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_system_errori(i32 noundef %i.y) #19
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6:    ; preds = %bb.j
  store i8 1, ptr %i.x, align 8, !tbaa !57
  %i.z = load i32, ptr %i.c, align 8, !tbaa !22
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !45 ; 2 uses
  br i1 %i.aa, label %bb.l, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6._crit_edge

bb.l:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i.i, %bb.l
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %.noexc.i.i unwind label %bb.m

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.af = load i32, ptr %i.c, align 8, !tbaa !22
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNSt18condition_variable4waitIZN3dap7RWMutex10lockWriterEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt18condition_variable4waitIZN3dap7RWMutex10lockWriterEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i.i: ; preds = %.noexc.i.i
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ab, align 4, !tbaa !45
  br label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6._crit_edge

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i8, ptr %i.x, align 8, !tbaa !57, !range !59, !noundef !60
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.n, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %1, align 8, !tbaa !56    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #18 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i:        ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.aj

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6._crit_edge: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6, %_ZNSt18condition_variable4waitIZN3dap7RWMutex10lockWriterEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i.i
  %i.ao = phi i32 [ %i.ai, %_ZNSt18condition_variable4waitIZN3dap7RWMutex10lockWriterEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i.i ], [ %i.ac, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  store i32 -1, ptr %i.i, align 8, !tbaa !28
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.p, label %_ZN3dap5WLockD2Ev.exit

bb.p:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aq) #18
  br label %_ZN3dap5WLockD2Ev.exit

_ZN3dap5WLockD2Ev.exit:                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6._crit_edge, %bb.p
  %i.ar = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN3dap5RLockD2Ev.exit, %_ZN3dap5WLockD2Ev.exit
  ret i1 %.0.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3dap6Socket6Shared5closeEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 7 uses
  %2 = alloca %"class.dap::WLock", align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #18 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZN3dap5RLockC2ERNS_7RWMutexE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #19
  unreachable

_ZN3dap5RLockC2ERNS_7RWMutexE.exit:               ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 8, !tbaa !22
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !22
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #18 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3dap5RLockC2ERNS_7RWMutexE.exit
  %i.i = tail call i32 @shutdown(i32 noundef %i.h, i32 noundef 2) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN3dap5RLockC2ERNS_7RWMutexE.exit, %bb.c
  %i.j = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #18 ; 2 uses
  %.not.i.i.i.i.i4 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i4, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.j) #19
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i:     ; preds = %bb.d
  %i.k = load i32, ptr %i.a, align 8, !tbaa !22
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.a, align 8, !tbaa !22
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %_ZN3dap5RLockD2Ev.exit

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !45
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %_ZN3dap5RLockD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.q) #18
  br label %_ZN3dap5RLockD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #20
  unreachable

_ZN3dap5RLockD2Ev.exit:                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i, %bb.f, %bb.g
  %i.t = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %i.a, ptr %2, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %i.b, ptr %1, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #18 ; 2 uses
  %.not.i.i.i.i.i5 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i5, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6, label %bb.i

bb.i:                                             ; preds = %_ZN3dap5RLockD2Ev.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.v) #19
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6:    ; preds = %_ZN3dap5RLockD2Ev.exit
  store i8 1, ptr %i.u, align 8, !tbaa !57
  %i.w = load i32, ptr %i.a, align 8, !tbaa !22
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %_ZN3dap5WLockC2ERNS_7RWMutexE.exit

bb.j:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i6
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !45
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i.i, %bb.j
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !22
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZNSt18condition_variable4waitIZN3dap7RWMutex10lockWriterEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt18condition_variable4waitIZN3dap7RWMutex10lockWriterEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i.i: ; preds = %.noexc.i.i
  %i.ae = load i32, ptr %i.y, align 4, !tbaa !45
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.y, align 4, !tbaa !45
  br label %_ZN3dap5WLockC2ERNS_7RWMutexE.exit

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load i8, ptr %i.u, align 8, !tbaa !57, !range !59, !noundef !60
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i

bb.l:                                             ; preds = %bb.k
end_hunk_0
