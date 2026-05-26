inline.NumInlined: 768
inline.NumDeleted: 385
begin_hunk_0_@_ZN11OpenImageIO4v3_17ustring14total_ustringsEv:bb.a
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEvE5table) #24
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11OpenImageIO4v3_112UstringTableC2Ev(ptr noundef nonnull align 64 dereferenceable(262144) @_ZZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEvE5table)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEvE5table) #24
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader

_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader: ; preds = %bb.a, %bb.b, %bb.d
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEvE5table) #24
  resume { ptr, i32 } %i.d

_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit: ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader, %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE15get_num_entriesEv.exit.i
  %.011.i = phi i64 [ %i.y, %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE15get_num_entriesEv.exit.i ], [ 0, %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader ]
  %.09.idx10.i = phi i64 [ %.09.add.i, %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE15get_num_entriesEv.exit.i ], [ 0, %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader ] ; 2 uses
  %.09.ptr.i = getelementptr inbounds nuw i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEvE5table, i64 %.09.idx10.i ; 7 uses
  %i.e = atomicrmw add ptr %.09.ptr.i, i32 1 acquire, align 4
  %i.f = and i32 %i.e, 1073741824
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE15get_num_entriesEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit
  %i.g = atomicrmw sub ptr %.09.ptr.i, i32 1 seq_cst, align 4
  %i.h = add i32 %i.g, 1073741823
  %i.i = and i32 %i.h, 1073741823                 ; 2 uses
  %i.j = add nuw nsw i32 %i.i, 1
  %i.k = cmpxchg weak ptr %.09.ptr.i, i32 %i.i, i32 %i.j acquire acquire, align 4
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE15get_num_entriesEv.exit.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.f, %bb.i
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.i ], [ 1, %bb.f ] ; 5 uses
  %.not.i.i.i.i.i = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.m = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.g ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !43
  %i.n = add nuw nsw i32 %.03.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.n, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !44

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g
  %i.o = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.p = tail call noundef i32 @sched_yield() #24 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.h ], [ %i.o, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.q = load atomic i32, ptr %.09.ptr.i seq_cst, align 64
  %i.r = and i32 %i.q, 1073741823                 ; 2 uses
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = cmpxchg weak ptr %.09.ptr.i, i32 %i.r, i32 %i.s acquire acquire, align 4
  %i.u = extractvalue { i32, i1 } %i.t, 1
  br i1 %i.u, label %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE15get_num_entriesEv.exit.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !71

_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE15get_num_entriesEv.exit.i: ; preds = %bb.i, %bb.f, %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.09.ptr.i, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !95
  %i.x = atomicrmw sub ptr %.09.ptr.i, i32 1 release, align 4 ; 0 uses
  %i.y = add i64 %i.w, %.011.i                    ; 2 uses
  %.09.add.i = add nuw nsw i64 %.09.idx10.i, 64   ; 2 uses
  %.not.i1 = icmp eq i64 %.09.add.i, 262144
  br i1 %.not.i1, label %_ZN11OpenImageIO4v3_112UstringTable15get_num_entriesEv.exit, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit

_ZN11OpenImageIO4v3_112UstringTable15get_num_entriesEv.exit: ; preds = %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE15get_num_entriesEv.exit.i
  ret i64 %i.y
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11OpenImageIO4v3_17ustring6memoryEv() local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEvE5table acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEvE5table) #24
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11OpenImageIO4v3_112UstringTableC2Ev(ptr noundef nonnull align 64 dereferenceable(262144) @_ZZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEvE5table)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEvE5table) #24
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader

_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader: ; preds = %bb.a, %bb.b, %bb.d
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEvE5table) #24
  resume { ptr, i32 } %i.d

_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit: ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader, %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE16get_memory_usageEv.exit.i
  %.011.i = phi i64 [ %i.y, %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE16get_memory_usageEv.exit.i ], [ 0, %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader ]
  %.09.idx10.i = phi i64 [ %.09.add.i, %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE16get_memory_usageEv.exit.i ], [ 0, %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit.preheader ] ; 2 uses
  %.09.ptr.i = getelementptr inbounds nuw i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEvE5table, i64 %.09.idx10.i ; 7 uses
  %i.e = atomicrmw add ptr %.09.ptr.i, i32 1 acquire, align 4
  %i.f = and i32 %i.e, 1073741824
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE16get_memory_usageEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit
  %i.g = atomicrmw sub ptr %.09.ptr.i, i32 1 seq_cst, align 4
  %i.h = add i32 %i.g, 1073741823
  %i.i = and i32 %i.h, 1073741823                 ; 2 uses
  %i.j = add nuw nsw i32 %i.i, 1
  %i.k = cmpxchg weak ptr %.09.ptr.i, i32 %i.i, i32 %i.j acquire acquire, align 4
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE16get_memory_usageEv.exit.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.f, %bb.i
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.i ], [ 1, %bb.f ] ; 5 uses
  %.not.i.i.i.i.i = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.m = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.g ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !43
  %i.n = add nuw nsw i32 %.03.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.n, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !44

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g
  %i.o = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.p = tail call noundef i32 @sched_yield() #24 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.h ], [ %i.o, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.q = load atomic i32, ptr %.09.ptr.i seq_cst, align 64
  %i.r = and i32 %i.q, 1073741823                 ; 2 uses
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = cmpxchg weak ptr %.09.ptr.i, i32 %i.r, i32 %i.s acquire acquire, align 4
  %i.u = extractvalue { i32, i1 } %i.t, 1
  br i1 %i.u, label %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE16get_memory_usageEv.exit.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !71

_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE16get_memory_usageEv.exit.i: ; preds = %bb.i, %bb.f, %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.09.ptr.i, i64 48
  %i.w = load i64, ptr %i.v, align 16, !tbaa !96
  %i.x = atomicrmw sub ptr %.09.ptr.i, i32 1 release, align 4 ; 0 uses
  %i.y = add i64 %i.w, %.011.i                    ; 2 uses
  %.09.add.i = add nuw nsw i64 %.09.idx10.i, 64   ; 2 uses
  %.not.i1 = icmp eq i64 %.09.add.i, 262144
  br i1 %.not.i1, label %_ZN11OpenImageIO4v3_112UstringTable16get_memory_usageEv.exit, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_113ustring_tableEv.exit

_ZN11OpenImageIO4v3_112UstringTable16get_memory_usageEv.exit: ; preds = %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE16get_memory_usageEv.exit.i
  ret i64 %i.y
}

declare void @_ZN11OpenImageIO4v3_17Strutil9memformatB5cxx11Exi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define noundef range(i64 -576460752303423488, 576460752303423488) i64 @_ZN11OpenImageIO4v3_17ustring15hash_collisionsEPSt6vectorIS1_SaIS1_EE(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN11OpenImageIO4v3_112_GLOBAL__N_115collision_mutexE) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  %.pre18 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_119all_hash_collisionsE, i64 8), align 8, !tbaa !97 ; 5 uses
  %.pre20 = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_119all_hash_collisionsE, align 8, !tbaa !97 ; 3 uses
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.not1214 = icmp eq ptr %.pre20, %.pre18
  br i1 %.not1214, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !98
  %.pre16 = load ptr, ptr %i.c, align 8, !tbaa !101
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %i.d = phi ptr [ %.pre16, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ] ; 5 uses
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ] ; 3 uses
  %.sroa.07.015 = phi ptr [ %.pre20, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.07.015, align 8, !tbaa !59 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = ptrtoint ptr %i.f to i64
  store i64 %i.g, ptr %i.e, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !98
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !102    ; 7 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.g, label %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28
          to label %.noexc4 unwind label %.loopexit13 ; 8 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %i.f to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !27
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc4
  %i.w = ptrtoaddr ptr %i.t to i64
  %i.x = add i64 %i.j, -8
  %i.y = sub i64 %i.x, %i.k                       ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  %i.ab = sub i64 %i.w, %i.k
  %diff.check = icmp ult i64 %i.ab, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.af ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.i, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.ag = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !27, !alias.scope !106, !noalias !103
  %wide.load28 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !27, !alias.scope !106, !noalias !103
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !27, !alias.scope !103, !noalias !106
  store <2 x i64> %wide.load28, ptr %i.ah, align 8, !tbaa !27, !alias.scope !103, !noalias !106
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.preheader30:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader30 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !27, !alias.scope !106, !noalias !103
  store i64 %i.aj, ptr %.012.i.i.i.i.i, align 8, !tbaa !27, !alias.scope !103, !noalias !106
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !111

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc4
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.t, %.noexc4 ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #23
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !102
  store ptr %i.am, ptr %i.b, align 8, !tbaa !98
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r ; 2 uses
  store ptr %i.an, ptr %i.c, align 8, !tbaa !101
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.e
  %i.ao = phi ptr [ %i.an, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.d, %bb.e ]
  %i.ap = phi ptr [ %i.am, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.h, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 16 ; 2 uses
  %.not12 = icmp eq ptr %i.aq, %.pre18
  br i1 %.not12, label %.loopexit.loopexit, label %bb.d

.loopexit13:                                      ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit13
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit13 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ar = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN11OpenImageIO4v3_112_GLOBAL__N_115collision_mutexE) #24 ; 0 uses
  resume { ptr, i32 } %lpad.phi

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %.pre17 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_119all_hash_collisionsE, i64 8), align 8, !tbaa !58
  %.pre19 = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_119all_hash_collisionsE, align 8, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.as = phi ptr [ %.pre19, %.loopexit.loopexit ], [ %.pre18, %bb.c ], [ %.pre20, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.at = phi ptr [ %.pre17, %.loopexit.loopexit ], [ %.pre18, %bb.c ], [ %.pre18, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4
  %i.ay = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN11OpenImageIO4v3_112_GLOBAL__N_115collision_mutexE) #24 ; 0 uses
  ret i64 %i.ax
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.13() #9 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112UstringTableC2Ev(ptr noundef nonnull align 64 dereferenceable(262144) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.idx = phi i64 [ 0, %bb.a ], [ %.add, %bb.b ]  ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 7 uses
  store i32 0, ptr %.ptr, align 64, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %.ptr, i64 8
  store i64 255, ptr %i.a, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %.ptr, i64 16
  %i.c = tail call noalias dereferenceable_or_null(2048) ptr @calloc(i64 noundef 256, i64 noundef 8) #30
  store ptr %i.c, ptr %i.b, align 16, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %.ptr, i64 24
  store i64 0, ptr %i.d, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %.ptr, i64 32
  %i.f = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #31
  store ptr %i.f, ptr %i.e, align 32, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %.ptr, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw i8, ptr %.ptr, i64 48
  store i64 6208, ptr %i.h, align 16, !tbaa !96
  %.add = add nuw nsw i64 %.idx, 64               ; 2 uses
  %i.i = icmp eq i64 %.add, 262144
  br i1 %i.i, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN11OpenImageIO4v3_18farmhash10farmhashxo6Hash64EPKcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp ult i64 %1, 33
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 17
  br i1 %i.b, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %1, 7
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = shl nuw nsw i64 %1, 1
  %i.e = add nuw nsw i64 %i.d, -7286425919675154353 ; 5 uses
  %i.f = load i64, ptr %0, align 1
  %i.g = add i64 %i.f, -7286425919675154353       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 1              ; 3 uses
  %i.k = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 27)
  %i.l = mul i64 %i.k, %i.e
  %i.m = add i64 %i.l, %i.g
  %i.n = tail call i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 39)
  %i.o = add i64 %i.n, %i.j
  %i.p = mul i64 %i.o, %i.e                       ; 2 uses
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, %i.e                       ; 2 uses
  %i.s = lshr i64 %i.r, 47
  %i.t = xor i64 %i.p, %i.s
  %i.u = xor i64 %i.t, %i.r
  %i.v = mul i64 %i.u, %i.e                       ; 2 uses
  %i.w = lshr i64 %i.v, 47
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, %i.e
  br label %_ZN11OpenImageIO4v3_18farmhash10farmhashna12HashLen0to16EPKcm.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp samesign ugt i64 %1, 3
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = shl nuw nsw i64 %1, 1
  %i.ab = add nuw nsw i64 %i.aa, -7286425919675154353 ; 3 uses
  %i.ac = load i32, ptr %0, align 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = or disjoint i64 %i.ae, %1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = xor i64 %i.af, %i.aj
  %i.al = mul i64 %i.ak, %i.ab                    ; 2 uses
  %i.am = lshr i64 %i.al, 47
  %i.an = xor i64 %i.am, %i.aj
  %i.ao = xor i64 %i.an, %i.al
  %i.ap = mul i64 %i.ao, %i.ab                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 47
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, %i.ab
  br label %_ZN11OpenImageIO4v3_18farmhash10farmhashna12HashLen0to16EPKcm.exit

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18farmhash10farmhashna12HashLen0to16EPKcm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load i8, ptr %0, align 1, !tbaa !20
  %i.au = lshr i64 %1, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %i.ax = getelementptr i8, ptr %0, i64 %1
  %i.ay = getelementptr i8, ptr %i.ax, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !20
  %i.ba = zext i8 %i.at to i64
  %i.bb = zext i8 %i.aw to i64
  %i.bc = shl nuw nsw i64 %i.bb, 8
  %i.bd = or disjoint i64 %i.bc, %i.ba
  %i.be = zext i8 %i.az to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = or disjoint i64 %i.bf, %1
  %i.bh = mul i64 %i.bd, -7286425919675154353
  %i.bi = mul i64 %i.bg, -4348849565147123417
  %i.bj = xor i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 47
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = mul i64 %i.bl, -7286425919675154353
  br label %_ZN11OpenImageIO4v3_18farmhash10farmhashna12HashLen0to16EPKcm.exit

bb.i:                                             ; preds = %bb.b
  %i.bn = shl nuw nsw i64 %1, 1
  %i.bo = add nuw nsw i64 %i.bn, -7286425919675154353 ; 4 uses
  %i.bp = load i64, ptr %0, align 1
  %i.bq = mul i64 %i.bp, -5435081209227447693     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i64, ptr %i.br, align 1            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.bv = load i64, ptr %i.bu, align 1
  %i.bw = mul i64 %i.bv, %i.bo                    ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 -16
  %i.by = load i64, ptr %i.bx, align 1
  %i.bz = mul i64 %i.by, -7286425919675154353
  %i.ca = add i64 %i.bq, %i.bs                    ; 2 uses
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 21)
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 34)
  %i.cd = add i64 %i.cc, %i.cb
  %i.ce = add i64 %i.cd, %i.bz
  %i.cf = add i64 %i.bs, -7286425919675154353     ; 2 uses
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 46)
  %i.ch = add i64 %i.cg, %i.bq
  %i.ci = add i64 %i.ch, %i.bw                    ; 2 uses
  %i.cj = xor i64 %i.ce, %i.ci
  %i.ck = mul i64 %i.cj, %i.bo                    ; 2 uses
  %i.cl = lshr i64 %i.ck, 47
  %i.cm = xor i64 %i.ci, %i.cl
  %i.cn = xor i64 %i.cm, %i.ck
  %i.co = mul i64 %i.cn, %i.bo                    ; 2 uses
  %i.cp = lshr i64 %i.co, 47
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = mul i64 %i.cq, %i.bo
  br label %_ZN11OpenImageIO4v3_18farmhash10farmhashna12HashLen0to16EPKcm.exit

bb.j:                                             ; preds = %bb.a
  %i.cs = icmp ult i64 %1, 65
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ct = shl nuw nsw i64 %1, 1
  %i.cu = add nuw nsw i64 %i.ct, -7286425919675154383 ; 5 uses
  %i.cv = load i64, ptr %0, align 1
  %i.cw = mul i64 %i.cv, -5435081209227447693     ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i64, ptr %i.cx, align 1            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.da = load i64, ptr %i.cz, align 1
  %i.db = mul i64 %i.da, -7286425919675154383     ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load i64, ptr %i.dc, align 1
  %i.de = mul i64 %i.dd, -7286425919675154353
  %i.df = add i64 %i.cw, %i.cy                    ; 2 uses
  %i.dg = tail call i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 21)
  %i.dh = tail call i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 34)
  %i.di = add i64 %i.dh, %i.dg
  %i.dj = add i64 %i.di, %i.de
  %i.dk = add i64 %i.cy, -7286425919675154353     ; 2 uses
  %i.dl = tail call i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 46)
  %i.dm = add i64 %i.dl, %i.cw
  %i.dn = add i64 %i.dm, %i.db                    ; 2 uses
  %i.do = xor i64 %i.dj, %i.dn
  %i.dp = mul i64 %i.do, -7286425919675154383     ; 2 uses
  %i.dq = lshr i64 %i.dp, 47
  %i.dr = xor i64 %i.dn, %i.dq
  %i.ds = xor i64 %i.dr, %i.dp
  %i.dt = mul i64 %i.ds, -7286425919675154383     ; 2 uses
  %i.du = lshr i64 %i.dt, 47
  %i.dv = xor i64 %i.du, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -32
  %i.dy = load i64, ptr %i.dx, align 1
  %i.dz = mul i64 %i.dy, -5435081209227447693     ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dw, i64 -24
  %i.eb = load i64, ptr %i.ea, align 1            ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %i.ed = load i64, ptr %i.ec, align 1
  %i.ee = mul i64 %i.ed, %i.cu                    ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %i.dw, i64 -16
  %i.eg = load i64, ptr %i.ef, align 1
  %i.eh = mul i64 %i.eg, -7286425919675154353
  %i.ei = add i64 %i.dz, %i.eb                    ; 2 uses
  %i.ej = tail call i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 21)
  %i.ek = tail call i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 34)
  %i.el = add i64 %i.ek, %i.ej
  %i.em = add i64 %i.el, %i.eh
  %i.en = add i64 %i.eb, -7286425919675154353     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18farmhash10farmhashna6Hash64EPKcm:bb.a

bb.h:                                             ; preds = %bb.g
  %i.at = load i8, ptr %0, align 1, !tbaa !20
  %i.au = lshr i64 %1, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %i.ax = getelementptr i8, ptr %0, i64 %1
  %i.ay = getelementptr i8, ptr %i.ax, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !20
  %i.ba = zext i8 %i.at to i64
  %i.bb = zext i8 %i.aw to i64
  %i.bc = shl nuw nsw i64 %i.bb, 8
  %i.bd = or disjoint i64 %i.bc, %i.ba
  %i.be = zext i8 %i.az to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = or disjoint i64 %i.bf, %1
  %i.bh = mul i64 %i.bd, -7286425919675154353
  %i.bi = mul i64 %i.bg, -4348849565147123417
  %i.bj = xor i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 47
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = mul i64 %i.bl, -7286425919675154353
  br label %_ZN11OpenImageIO4v3_18farmhash10farmhashna12HashLen0to16EPKcm.exit

bb.i:                                             ; preds = %bb.b
  %i.bn = shl nuw nsw i64 %1, 1
  %i.bo = add nuw nsw i64 %i.bn, -7286425919675154353 ; 4 uses
  %i.bp = load i64, ptr %0, align 1
  %i.bq = mul i64 %i.bp, -5435081209227447693     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i64, ptr %i.br, align 1            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.bv = load i64, ptr %i.bu, align 1
  %i.bw = mul i64 %i.bv, %i.bo                    ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 -16
  %i.by = load i64, ptr %i.bx, align 1
  %i.bz = mul i64 %i.by, -7286425919675154353
  %i.ca = add i64 %i.bq, %i.bs                    ; 2 uses
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 21)
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 34)
  %i.cd = add i64 %i.cc, %i.cb
  %i.ce = add i64 %i.cd, %i.bz
  %i.cf = add i64 %i.bs, -7286425919675154353     ; 2 uses
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 46)
  %i.ch = add i64 %i.cg, %i.bq
  %i.ci = add i64 %i.ch, %i.bw                    ; 2 uses
  %i.cj = xor i64 %i.ce, %i.ci
  %i.ck = mul i64 %i.cj, %i.bo                    ; 2 uses
  %i.cl = lshr i64 %i.ck, 47
  %i.cm = xor i64 %i.ci, %i.cl
  %i.cn = xor i64 %i.cm, %i.ck
  %i.co = mul i64 %i.cn, %i.bo                    ; 2 uses
  %i.cp = lshr i64 %i.co, 47
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = mul i64 %i.cq, %i.bo
  br label %_ZN11OpenImageIO4v3_18farmhash10farmhashna12HashLen0to16EPKcm.exit

bb.j:                                             ; preds = %bb.a
  %i.cs = icmp ult i64 %1, 65
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ct = shl nuw nsw i64 %1, 1
  %i.cu = add nuw nsw i64 %i.ct, -7286425919675154353 ; 10 uses
  %i.cv = load i64, ptr %0, align 1
  %i.cw = mul i64 %i.cv, -7286425919675154353     ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i64, ptr %i.cx, align 1            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %i.db = load i64, ptr %i.da, align 1
  %i.dc = mul i64 %i.db, %i.cu                    ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 -16
  %i.de = load i64, ptr %i.dd, align 1
  %i.df = mul i64 %i.de, -7286425919675154353
  %i.dg = add i64 %i.cw, %i.cy                    ; 2 uses
  %i.dh = tail call i64 @llvm.fshl.i64(i64 %i.dg, i64 %i.dg, i64 21)
  %i.di = tail call i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 34)
  %i.dj = add i64 %i.di, %i.dh
  %i.dk = add i64 %i.dj, %i.df                    ; 2 uses
  %i.dl = add i64 %i.cy, -7286425919675154353     ; 2 uses
  %i.dm = tail call i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 46)
  %i.dn = add i64 %i.dm, %i.cw
  %i.do = add i64 %i.dn, %i.dc                    ; 2 uses
  %i.dp = xor i64 %i.dk, %i.do
  %i.dq = mul i64 %i.dp, %i.cu                    ; 2 uses
  %i.dr = lshr i64 %i.dq, 47
  %i.ds = xor i64 %i.do, %i.dr
  %i.dt = xor i64 %i.ds, %i.dq
  %i.du = mul i64 %i.dt, %i.cu                    ; 2 uses
  %i.dv = lshr i64 %i.du, 47
  %i.dw = xor i64 %i.dv, %i.du
  %i.dx = mul i64 %i.dw, %i.cu
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = load i64, ptr %i.dy, align 1
  %i.ea = mul i64 %i.dz, %i.cu                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load i64, ptr %i.eb, align 1            ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.cz, i64 -32
  %i.ee = load i64, ptr %i.ed, align 1
  %i.ef = add i64 %i.dk, %i.ee
  %i.eg = mul i64 %i.ef, %i.cu                    ; 3 uses
  %i.eh = getelementptr inbounds i8, ptr %i.cz, i64 -24
  %i.ei = load i64, ptr %i.eh, align 1
  %i.ej = add i64 %i.dx, %i.ei
  %i.ek = mul i64 %i.ej, %i.cu
  %i.el = add i64 %i.ea, %i.ec                    ; 2 uses
  %i.em = tail call i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 21)
  %i.en = tail call i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 34)
  %i.eo = add i64 %i.en, %i.em
  %i.ep = add i64 %i.eo, %i.ek
  %i.eq = add i64 %i.ec, %i.cw                    ; 2 uses
  %i.er = tail call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 46)
  %i.es = add i64 %i.er, %i.ea
  %i.et = add i64 %i.es, %i.eg                    ; 2 uses
  %i.eu = xor i64 %i.ep, %i.et
  %i.ev = mul i64 %i.eu, %i.cu                    ; 2 uses
  %i.ew = lshr i64 %i.ev, 47
  %i.ex = xor i64 %i.et, %i.ew
  %i.ey = xor i64 %i.ex, %i.ev
  %i.ez = mul i64 %i.ey, %i.cu                    ; 2 uses
  %i.fa = lshr i64 %i.ez, 47
  %i.fb = xor i64 %i.fa, %i.ez
  %i.fc = mul i64 %i.fb, %i.cu
  br label %_ZN11OpenImageIO4v3_18farmhash10farmhashna12HashLen0to16EPKcm.exit

bb.l:                                             ; preds = %bb.j
  %i.fd = load i64, ptr %0, align 1
  %i.fe = add i64 %i.fd, 95310865018149119
  %i.ff = add i64 %1, -1                          ; 2 uses
  %i.fg = and i64 %i.ff, -64
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 %i.fg ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.13.0 = phi i64 [ 0, %bb.l ], [ %i.hj, %bb.m ] ; 2 uses
  %.sroa.068.0 = phi i64 [ 0, %bb.l ], [ %i.hh, %bb.m ] ; 2 uses
  %.sroa.082.0 = phi i64 [ 0, %bb.l ], [ %i.gr, %bb.m ] ; 2 uses
  %.sroa.11.0 = phi i64 [ 0, %bb.l ], [ %i.gt, %bb.m ] ; 2 uses
  %.0110 = phi i64 [ 1390051526045402406, %bb.l ], [ %i.fv, %bb.m ]
  %.0109 = phi i64 [ %i.fe, %bb.l ], [ %i.gc, %bb.m ]
  %.055 = phi i64 [ 2480279821605975764, %bb.l ], [ %i.fz, %bb.m ] ; 2 uses
  %.054 = phi ptr [ %0, %bb.l ], [ %i.hk, %bb.m ] ; 9 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.054, i64 8
  %i.fj = load i64, ptr %i.fi, align 1            ; 2 uses
  %i.fk = add i64 %.0109, %.sroa.082.0
  %i.fl = add i64 %i.fk, %.055
  %i.fm = add i64 %i.fl, %i.fj                    ; 2 uses
  %i.fn = tail call i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 27)
  %i.fo = mul i64 %i.fn, -5435081209227447693
  %i.fp = add i64 %.055, %.sroa.11.0
  %i.fq = getelementptr inbounds nuw i8, ptr %.054, i64 48
  %i.fr = load i64, ptr %i.fq, align 1            ; 2 uses
  %i.fs = add i64 %i.fp, %i.fr                    ; 2 uses
  %i.ft = tail call i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 22)
  %i.fu = mul i64 %i.ft, -5435081209227447693
  %i.fv = xor i64 %i.fo, %.sroa.13.0              ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.054, i64 40
  %i.fx = load i64, ptr %i.fw, align 1            ; 2 uses
  %i.fy = add i64 %i.fx, %.sroa.082.0
  %i.fz = add i64 %i.fy, %i.fu                    ; 4 uses
  %i.ga = add i64 %.0110, %.sroa.068.0            ; 2 uses
  %i.gb = tail call i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 31)
  %i.gc = mul i64 %i.gb, -5435081209227447693     ; 3 uses
  %i.gd = mul i64 %.sroa.11.0, -5435081209227447693
  %i.ge = add i64 %i.fv, %.sroa.068.0
  %i.gf = load i64, ptr %.054, align 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.054, i64 16
  %i.gh = load i64, ptr %i.gg, align 1            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.054, i64 24
  %i.gj = load i64, ptr %i.gi, align 1            ; 2 uses
  %i.gk = add i64 %i.gf, %i.gd                    ; 3 uses
  %i.gl = add i64 %i.ge, %i.gk
  %i.gm = add i64 %i.gl, %i.gj                    ; 2 uses
  %i.gn = tail call i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 43)
  %i.go = add i64 %i.gk, %i.fj
  %i.gp = add i64 %i.go, %i.gh                    ; 3 uses
  %i.gq = tail call i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 20)
  %i.gr = add i64 %i.gp, %i.gj                    ; 2 uses
  %i.gs = add i64 %i.gq, %i.gk
  %i.gt = add i64 %i.gs, %i.gn                    ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %i.gv = add i64 %i.gc, %.sroa.13.0
  %i.gw = add i64 %i.fz, %i.gh
  %i.gx = load i64, ptr %i.gu, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.054, i64 56
  %i.gz = load i64, ptr %i.gy, align 1            ; 2 uses
  %i.ha = add i64 %i.gv, %i.gx                    ; 3 uses
  %i.hb = add i64 %i.gw, %i.ha
  %i.hc = add i64 %i.hb, %i.gz                    ; 2 uses
  %i.hd = tail call i64 @llvm.fshl.i64(i64 %i.hc, i64 %i.hc, i64 43)
  %i.he = add i64 %i.ha, %i.fx
  %i.hf = add i64 %i.he, %i.fr                    ; 3 uses
  %i.hg = tail call i64 @llvm.fshl.i64(i64 %i.hf, i64 %i.hf, i64 20)
  %i.hh = add i64 %i.hf, %i.gz                    ; 2 uses
  %i.hi = add i64 %i.hg, %i.ha
  %i.hj = add i64 %i.hi, %i.hd                    ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.054, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.hk, %i.fh
  br i1 %.not, label %bb.n, label %bb.m, !llvm.loop !114

bb.n:                                             ; preds = %bb.m
  %i.hl = and i64 %i.ff, 63                       ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.hl ; 8 uses
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -63
  %i.ho = shl i64 %i.fv, 1
  %i.hp = and i64 %i.ho, 510
  %i.hq = add nuw nsw i64 %i.hp, -5435081209227447693 ; 13 uses
  %i.hr = add i64 %i.hh, %i.hl                    ; 2 uses
  %i.hs = add i64 %i.hr, %i.gr                    ; 3 uses
  %i.ht = add i64 %i.hs, %i.hr                    ; 2 uses
  %i.hu = add i64 %i.fz, %i.gc
  %i.hv = add i64 %i.hu, %i.hs
  %i.hw = getelementptr inbounds i8, ptr %i.hm, i64 -55
  %i.hx = load i64, ptr %i.hw, align 1            ; 2 uses
  %i.hy = add i64 %i.hv, %i.hx                    ; 2 uses
  %i.hz = tail call i64 @llvm.fshl.i64(i64 %i.hy, i64 %i.hy, i64 27)
  %i.ia = mul i64 %i.hz, %i.hq
  %i.ib = add i64 %i.gt, %i.fz
  %i.ic = getelementptr inbounds i8, ptr %i.hm, i64 -15
  %i.id = load i64, ptr %i.ic, align 1            ; 2 uses
  %i.ie = add i64 %i.ib, %i.id                    ; 2 uses
  %i.if = tail call i64 @llvm.fshl.i64(i64 %i.ie, i64 %i.ie, i64 22)
  %i.ig = mul i64 %i.if, %i.hq
  %i.ih = mul i64 %i.hj, 9
  %i.ii = xor i64 %i.ia, %i.ih                    ; 2 uses
  %i.ij = mul i64 %i.hs, 9
  %i.ik = getelementptr inbounds i8, ptr %i.hm, i64 -23
  %i.il = load i64, ptr %i.ik, align 1            ; 2 uses
  %i.im = add i64 %i.il, %i.ij
  %i.in = add i64 %i.im, %i.ig                    ; 3 uses
  %i.io = add i64 %i.ht, %i.fv                    ; 2 uses
  %i.ip = tail call i64 @llvm.fshl.i64(i64 %i.io, i64 %i.io, i64 31) ; 2 uses
  %i.iq = mul i64 %i.ip, %i.hq
  %i.ir = mul i64 %i.gt, %i.hq
  %i.is = add i64 %i.ii, %i.ht
  %i.it = load i64, ptr %i.hn, align 1
  %i.iu = getelementptr inbounds i8, ptr %i.hm, i64 -47
  %i.iv = load i64, ptr %i.iu, align 1            ; 2 uses
  %i.iw = getelementptr inbounds i8, ptr %i.hm, i64 -39
  %i.ix = load i64, ptr %i.iw, align 1            ; 2 uses
  %i.iy = add i64 %i.it, %i.ir                    ; 3 uses
  %i.iz = add i64 %i.is, %i.iy
  %i.ja = add i64 %i.iz, %i.ix                    ; 2 uses
  %i.jb = tail call i64 @llvm.fshl.i64(i64 %i.ja, i64 %i.ja, i64 43)
  %i.jc = add i64 %i.iy, %i.hx
  %i.jd = add i64 %i.jc, %i.iv                    ; 3 uses
  %i.je = tail call i64 @llvm.fshl.i64(i64 %i.jd, i64 %i.jd, i64 20)
  %i.jf = add i64 %i.jd, %i.ix
  %i.jg = add i64 %i.je, %i.iy
  %i.jh = add i64 %i.jg, %i.jb
  %i.ji = getelementptr inbounds i8, ptr %i.hm, i64 -31
  %i.jj = add i64 %i.iq, %i.hj
  %i.jk = add i64 %i.iv, %i.in
  %i.jl = load i64, ptr %i.ji, align 1
  %i.jm = getelementptr inbounds i8, ptr %i.hm, i64 -7
  %i.jn = load i64, ptr %i.jm, align 1            ; 2 uses
  %i.jo = add i64 %i.jj, %i.jl                    ; 3 uses
  %i.jp = add i64 %i.jk, %i.jo
  %i.jq = add i64 %i.jp, %i.jn                    ; 2 uses
  %i.jr = tail call i64 @llvm.fshl.i64(i64 %i.jq, i64 %i.jq, i64 43)
  %i.js = add i64 %i.jo, %i.il
  %i.jt = add i64 %i.js, %i.id                    ; 3 uses
  %i.ju = tail call i64 @llvm.fshl.i64(i64 %i.jt, i64 %i.jt, i64 20)
  %i.jv = add i64 %i.jt, %i.jn                    ; 2 uses
  %i.jw = add i64 %i.ju, %i.jo
  %i.jx = add i64 %i.jw, %i.jr                    ; 2 uses
  %i.jy = xor i64 %i.jv, %i.jf
  %i.jz = mul i64 %i.jy, %i.hq                    ; 2 uses
  %i.ka = lshr i64 %i.jz, 47
  %i.kb = xor i64 %i.jv, %i.ka
  %i.kc = xor i64 %i.kb, %i.jz
  %i.kd = mul i64 %i.kc, %i.hq                    ; 2 uses
  %i.ke = lshr i64 %i.kd, 47
  %i.kf = xor i64 %i.ke, %i.kd
  %i.kg = mul i64 %i.kf, %i.hq
  %i.kh = lshr i64 %i.in, 47
  %i.ki = xor i64 %i.kh, %i.in
  %i.kj = mul i64 %i.ki, -4348849565147123417
  %i.kk = add i64 %i.kj, %i.ii
  %i.kl = add i64 %i.kk, %i.kg
  %i.km = xor i64 %i.jx, %i.jh
  %i.kn = mul i64 %i.km, %i.hq                    ; 2 uses
  %i.ko = lshr i64 %i.kn, 47
  %i.kp = xor i64 %i.jx, %i.ko
  %i.kq = xor i64 %i.kp, %i.kn
  %i.kr = mul i64 %i.kq, %i.hq                    ; 2 uses
  %i.ks = lshr i64 %i.kr, 47
  %i.kt = xor i64 %i.ks, %i.kr
  %i.ku = add i64 %i.kt, %i.ip
  %i.kv = mul i64 %i.ku, %i.hq                    ; 2 uses
  %i.kw = xor i64 %i.kv, %i.kl
  %i.kx = mul i64 %i.kw, %i.hq                    ; 2 uses
  %i.ky = lshr i64 %i.kx, 47
  %i.kz = xor i64 %i.kv, %i.ky
  %i.la = xor i64 %i.kz, %i.kx
  %i.lb = mul i64 %i.la, %i.hq                    ; 2 uses
  %i.lc = lshr i64 %i.lb, 47
  %i.ld = xor i64 %i.lc, %i.lb
  %i.le = mul i64 %i.ld, %i.hq
  br label %_ZN11OpenImageIO4v3_18farmhash10farmhashna12HashLen0to16EPKcm.exit

_ZN11OpenImageIO4v3_18farmhash10farmhashna12HashLen0to16EPKcm.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.n, %bb.k, %bb.i
  %.0 = phi i64 [ %i.le, %bb.n ], [ %i.cr, %bb.i ], [ %i.fc, %bb.k ], [ %i.y, %bb.d ], [ %i.as, %bb.f ], [ %i.bm, %bb.h ], [ -7286425919675154353, %bb.g ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN11OpenImageIO4v3_18farmhash10farmhashuo15Hash64WithSeedsEPKcmmm(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp ult i64 %1, 65
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_ZN11OpenImageIO4v3_18farmhash10farmhashna6Hash64EPKcm(ptr noundef %0, i64 noundef %1)
  %i.c = sub i64 %i.b, %2
  %i.d = xor i64 %i.c, %3
  %i.e = mul i64 %i.d, -7070675565921424023       ; 2 uses
  %i.f = lshr i64 %i.e, 47
  %i.g = xor i64 %3, %i.f
  %i.h = xor i64 %i.g, %i.e
  %i.i = mul i64 %i.h, -7070675565921424023       ; 2 uses
  %i.j = lshr i64 %i.i, 47
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -7070675565921424023
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = mul i64 %3, -7286425919675154353
  %i.n = add i64 %i.m, 113                        ; 2 uses
  %i.o = mul i64 %i.n, -7286425919675154353       ; 2 uses
  %i.p = lshr i64 %i.o, 47
  %i.q = xor i64 %i.p, %i.o
  %i.r = mul i64 %i.q, -7286425919675154353       ; 2 uses
  %i.s = sub i64 %2, %i.r                         ; 2 uses
  %i.t = mul i64 %2, -7286425919675154353
  %i.u = and i64 %i.s, 130
  %i.v = add nuw nsw i64 %i.u, -7286425919675154353 ; 8 uses
  %i.w = add i64 %1, -1                           ; 2 uses
  %i.x = and i64 %i.w, -64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.17.0 = phi i64 [ 0, %bb.c ], [ %i.bz, %bb.d ]
  %.sroa.078.0 = phi i64 [ 0, %bb.c ], [ %i.bt, %bb.d ]
  %.sroa.092.0 = phi i64 [ %2, %bb.c ], [ %i.br, %bb.d ]
  %.sroa.17100.0 = phi i64 [ %3, %bb.c ], [ %i.bs, %bb.d ]
  %.0135 = phi i64 [ %i.r, %bb.c ], [ %i.az, %bb.d ]
  %.0134 = phi i64 [ %i.n, %bb.c ], [ %i.bp, %bb.d ]
  %.0133 = phi i64 [ %i.s, %bb.c ], [ %i.bj, %bb.d ]
  %.068 = phi i64 [ %i.t, %bb.c ], [ %i.by, %bb.d ]
  %.067 = phi ptr [ %0, %bb.c ], [ %i.ca, %bb.d ] ; 9 uses
  %i.z = load i64, ptr %.067, align 1             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.ab = load i64, ptr %i.aa, align 1            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.067, i64 16
  %i.ad = load i64, ptr %i.ac, align 1            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.067, i64 24
  %i.af = load i64, ptr %i.ae, align 1            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.067, i64 32
  %i.ah = load i64, ptr %i.ag, align 1            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.067, i64 40
  %i.aj = load i64, ptr %i.ai, align 1            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.067, i64 48
  %i.al = load i64, ptr %i.ak, align 1            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.067, i64 56
  %i.an = load i64, ptr %i.am, align 1            ; 2 uses
  %i.ao = add i64 %i.z, %.068
  %i.ap = add i64 %i.ao, %i.ab                    ; 2 uses
  %i.aq = add i64 %i.ad, %.0134                   ; 2 uses
  %i.ar = add i64 %i.af, %.0135
  %i.as = add i64 %i.ah, %.sroa.092.0             ; 2 uses
  %i.at = add i64 %i.ab, %.sroa.17100.0
  %i.au = add i64 %i.at, %i.aj                    ; 2 uses
  %i.av = add i64 %i.al, %.sroa.078.0
  %i.aw = add i64 %i.an, %.sroa.17.0              ; 2 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 38)
  %i.ay = mul i64 %i.ax, 9                        ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 35) ; 2 uses
  %i.ba = mul i64 %i.ar, %i.v                     ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 31)
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 34)
  %i.bd = xor i64 %i.av, %i.ay
  %i.be = mul i64 %i.bd, 9
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bg = add i64 %i.aw, %i.bf                    ; 2 uses
  %i.bh = mul i64 %i.bg, 9
  %i.bi = add i64 %i.al, %i.z
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = add i64 %i.bb, %i.ad                    ; 2 uses
  %i.bl = add i64 %i.bc, %i.af
  %i.bm = add i64 %i.be, %i.ah                    ; 2 uses
  %i.bn = add i64 %i.ay, %i.ab                    ; 2 uses
  %i.bo = add i64 %i.an, %.0133
  %i.bp = add i64 %i.bo, %i.bk                    ; 4 uses
  %i.bq = sub i64 %i.bn, %i.bp                    ; 2 uses
  %i.br = add i64 %i.bq, %i.bk                    ; 3 uses
  %i.bs = add i64 %i.bl, %i.bm                    ; 4 uses
  %i.bt = add i64 %i.bs, %i.bm                    ; 2 uses
  %i.bu = add i64 %i.al, %i.aj
  %i.bv = add i64 %i.bu, %i.aw
  %i.bw = add i64 %i.bv, %i.bg
  %i.bx = add i64 %i.bw, %i.bq                    ; 3 uses
  %i.by = add i64 %i.bx, %i.bn                    ; 2 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 30) ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.067, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.ca, %i.y
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !115

bb.e:                                             ; preds = %bb.d
  %i.cb = and i64 %i.w, 63                        ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cb ; 8 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -63
  %i.ce = mul i64 %i.bj, 9
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 36) ; 2 uses
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 44) ; 2 uses
  %i.ch = add i64 %i.bt, %i.cb                    ; 2 uses
  %i.ci = add i64 %i.ce, %i.bp                    ; 2 uses
  %i.cj = add i64 %i.ci, %i.bp                    ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cc, i64 -55
  %i.cl = load i64, ptr %i.ck, align 1            ; 2 uses
  %i.cm = sub i64 %i.cg, %i.by
  %i.cn = add i64 %i.cm, %i.cj
  %i.co = add i64 %i.cn, %i.cl                    ; 2 uses
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 27)
  %i.cq = mul i64 %i.cp, %i.v
  %i.cr = getelementptr inbounds i8, ptr %i.cc, i64 -15
  %i.cs = load i64, ptr %i.cr, align 1            ; 2 uses
  %i.ct = xor i64 %i.cf, %i.cs
  %i.cu = xor i64 %i.ct, %i.cj                    ; 2 uses
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 22)
  %i.cw = mul i64 %i.cv, %i.v
  %i.cx = mul i64 %i.bz, 9
  %i.cy = xor i64 %i.cq, %i.cx                    ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cc, i64 -23
  %i.da = load i64, ptr %i.cz, align 1            ; 2 uses
  %i.db = add i64 %i.da, %i.cg
  %i.dc = add i64 %i.db, %i.cw                    ; 3 uses
  %i.dd = add i64 %i.ch, %i.az                    ; 2 uses
  %i.de = tail call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 31) ; 2 uses
  %i.df = mul i64 %i.de, %i.v                     ; 2 uses
  %i.dg = mul i64 %i.cf, %i.v
  %i.dh = load i64, ptr %i.cd, align 1
  %i.di = getelementptr inbounds i8, ptr %i.cc, i64 -47
  %i.dj = load i64, ptr %i.di, align 1            ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.cc, i64 -39
  %i.dl = load i64, ptr %i.dk, align 1
  %i.dm = add i64 %i.dh, %i.dg                    ; 3 uses
  %i.dn = add i64 %i.dl, %i.cy                    ; 2 uses
  %i.do = add i64 %i.dn, %i.ch
  %i.dp = add i64 %i.do, %i.dm                    ; 2 uses
  %i.dq = tail call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 43)
  %i.dr = add i64 %i.dm, %i.cl
  %i.ds = add i64 %i.dr, %i.dj                    ; 3 uses
  %i.dt = tail call i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 20)
  %i.du = getelementptr inbounds i8, ptr %i.cc, i64 -31
  %i.dv = add i64 %i.df, %i.bz
  %i.dw = add i64 %i.dj, %i.dc
  %i.dx = load i64, ptr %i.du, align 1
  %i.dy = getelementptr inbounds i8, ptr %i.cc, i64 -7
  %i.dz = load i64, ptr %i.dy, align 1            ; 2 uses
  %i.ea = add i64 %i.dv, %i.dx                    ; 3 uses
  %i.eb = add i64 %i.dw, %i.ea
  %i.ec = add i64 %i.eb, %i.dz                    ; 2 uses
  %i.ed = tail call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 43)
  %i.ee = add i64 %i.ea, %i.da
  %i.ef = add i64 %i.ee, %i.cs                    ; 3 uses
  %i.eg = tail call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 20)
  %i.eh = add i64 %i.ef, %i.dz
  %i.ei = add i64 %i.dn, %i.ds
  %i.ej = xor i64 %i.eh, %i.dc                    ; 2 uses
  %i.ek = xor i64 %i.ej, %i.ei
  %i.el = mul i64 %i.ek, %i.v                     ; 2 uses
  %i.em = lshr i64 %i.el, 47
  %i.en = xor i64 %i.ej, %i.em
  %i.eo = xor i64 %i.en, %i.el
  %i.ep = mul i64 %i.eo, %i.v                     ; 2 uses
  %i.eq = lshr i64 %i.ep, 47
  %i.er = xor i64 %i.eq, %i.ep
  %i.es = add i64 %i.er, %i.de
  %i.et = mul i64 %i.es, %i.v
  %i.eu = sub i64 %i.et, %i.ci
  %i.ev = add i64 %i.dc, %i.dm
  %i.ew = add i64 %i.ev, %i.dt
  %i.ex = add i64 %i.ew, %i.dq
  %i.ey = add i64 %i.ea, %i.df
  %i.ez = add i64 %i.ey, %i.eg
  %i.fa = add i64 %i.ez, %i.ed                    ; 2 uses
  %i.fb = xor i64 %i.fa, %i.ex
  %i.fc = mul i64 %i.fb, -7286425919675154353     ; 2 uses
  %i.fd = lshr i64 %i.fc, 47
  %i.fe = xor i64 %i.fa, %i.fd
  %i.ff = xor i64 %i.fe, %i.fc
  %i.fg = mul i64 %i.ff, -7286425919675154353     ; 2 uses
  %i.fh = tail call i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 34)
  %i.fi = mul i64 %i.fh, -7286425919675154353
  %i.fj = xor i64 %i.fi, %i.cy                    ; 2 uses
  %i.fk = xor i64 %i.fj, %i.eu
  %i.fl = mul i64 %i.fk, -7286425919675154353     ; 2 uses
  %i.fm = lshr i64 %i.fl, 47
  %i.fn = xor i64 %i.fj, %i.fm
  %i.fo = xor i64 %i.fn, %i.fl
  %i.fp = mul i64 %i.fo, -7286425919675154353     ; 2 uses
  %i.fq = tail call i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 33)
  %i.fr = mul i64 %i.fq, -7286425919675154353
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi i64 [ %i.l, %bb.b ], [ %i.fr, %bb.e ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE6lookupENS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull align 64 dereferenceable(56) %0, ptr noundef dead_on_return %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw add ptr %0, i32 1 acquire, align 4
  %i.b = and i32 %i.a, 1073741824
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %0, i32 1 seq_cst, align 4
  %i.d = add i32 %i.c, 1073741823
  %i.e = and i32 %i.d, 1073741823                 ; 2 uses
  %i.f = add nuw nsw i32 %i.e, 1
  %i.g = cmpxchg weak ptr %0, i32 %i.e, i32 %i.f acquire acquire, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i: ; preds = %bb.b, %bb.e
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i, %bb.e ], [ 1, %bb.b ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.0.i.i, 16
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.i = icmp sgt i32 %.sroa.0.0.i.i, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.j, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !43
  %i.j = add nuw nsw i32 %.03.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.j, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.c
  %i.k = shl nsw i32 %.sroa.0.0.i.i, 1
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.l = tail call noundef i32 @sched_yield() #24 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.d ], [ %i.k, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.m = load atomic i32, ptr %0 seq_cst, align 64
  %i.n = and i32 %i.m, 1073741823                 ; 2 uses
  %i.o = add nuw nsw i32 %i.n, 1
  %i.p = cmpxchg weak ptr %0, i32 %i.n, i32 %i.o acquire acquire, align 4
  %i.q = extractvalue { i32, i1 } %i.p, 1
  br i1 %i.q, label %_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i, !llvm.loop !71

_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !72   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !77  ; 2 uses
  %.01114 = and i64 %2, %i.s                      ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.01114
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %i.z = phi ptr [ %i.w, %.lr.ph ], [ %i.an, %bb.i ] ; 3 uses
  %.01116 = phi i64 [ %.01114, %.lr.ph ], [ %.011, %bb.i ]
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %bb.i ]
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !12
  %i.ab = icmp eq i64 %i.aa, %2
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23 ; 2 uses
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !21
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !24
  %i.ai = tail call i32 @strncmp(ptr noundef nonnull %i.ag, ptr noundef %i.ah, i64 noundef %i.ad) #26
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ak = add i64 %.015, 1                        ; 2 uses
  %i.al = add i64 %i.ak, %.01116
  %.011 = and i64 %i.al, %i.s                     ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.011
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !78 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %._crit_edge, label %bb.f, !llvm.loop !116

._crit_edge:                                      ; preds = %bb.i, %bb.h, %_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit
  %.012 = phi ptr [ null, %_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit ], [ %i.ag, %bb.h ], [ null, %bb.i ]
  %i.ap = atomicrmw sub ptr %0, i32 1 release, align 4 ; 0 uses
  ret ptr %.012
}

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_124unordered_map_concurrentImPKcNS0_8identityImEESt8equal_toImELm256ESt13unordered_mapImS3_S5_S7_SaISt4pairIKmS3_EEEED2Ev(ptr noundef nonnull align 64 dead_on_return(16448) dereferenceable(16448) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentImPKcNS0_8identityImEESt8equal_toImELm256ESt13unordered_mapImS3_S5_S7_SaISt4pairIKmS3_EEEE3BinD2Ev.exit, %bb.a
  %.idx = phi i64 [ 16448, %bb.a ], [ %.add, %_ZN11OpenImageIO4v3_124unordered_map_concurrentImPKcNS0_8identityImEESt8equal_toImELm256ESt13unordered_mapImS3_S5_S7_SaISt4pairIKmS3_EEEE3BinD2Ev.exit ]
  %.add = add nsw i64 %.idx, -64                  ; 3 uses
  %.ptr1 = getelementptr inbounds i8, ptr %0, i64 %.add ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.ptr1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.ptr1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #23
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !118

_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %.ptr1, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 16, !tbaa !41
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.ptr1, i64 56
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentImPKcNS0_8identityImEESt8equal_toImELm256ESt13unordered_mapImS3_S5_S7_SaISt4pairIKmS3_EEEE3BinD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 16, !tbaa !41
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentImPKcNS0_8identityImEESt8equal_toImELm256ESt13unordered_mapImS3_S5_S7_SaISt4pairIKmS3_EEEE3BinD2Ev.exit

_ZN11OpenImageIO4v3_124unordered_map_concurrentImPKcNS0_8identityImEESt8equal_toImELm256ESt13unordered_mapImS3_S5_S7_SaISt4pairIKmS3_EEEE3BinD2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.c
  %i.n = icmp eq i64 %.add, 64
  br i1 %i.n, label %bb.d, label %bb.b

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentImPKcNS0_8identityImEESt8equal_toImELm256ESt13unordered_mapImS3_S5_S7_SaISt4pairIKmS3_EEEE3BinD2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE6insertENS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull align 64 dereferenceable(56) %0, ptr noundef dead_on_return %1, i64 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.a = cmpxchg weak ptr %0, i32 0, i32 1073741824 acquire acquire, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i: ; preds = %bb.a, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i ], [ 1, %bb.a ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.0.i.i, 16
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.c = icmp sgt i32 %.sroa.0.0.i.i, 0
  br i1 %i.c, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.d, %.lr.ph.i.i.i.i ], [ 0, %bb.b ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !43
  %i.d = add nuw nsw i32 %.03.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.d, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.e = shl nsw i32 %.sroa.0.0.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.f = tail call noundef i32 @sched_yield() #24 ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.c, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.c ], [ %i.e, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.g = cmpxchg weak ptr %0, i32 0, i32 1073741824 acquire acquire, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i, !llvm.loop !45

_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !77  ; 2 uses
  %.01725 = and i64 %2, %i.j                      ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.01725
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %i.q = phi ptr [ %i.n, %.lr.ph ], [ %i.ad, %bb.g ] ; 3 uses
  %.01727 = phi i64 [ %.01725, %.lr.ph ], [ %.017, %bb.g ]
  %.01826 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.g ]
  %i.r = load i64, ptr %i.q, align 8, !tbaa !12
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !23   ; 2 uses
  %i.v = load i64, ptr %i.p, align 8, !tbaa !21
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24
  %i.z = tail call i32 @strncmp(ptr noundef nonnull %i.x, ptr noundef %i.y, i64 noundef %i.u) #26
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aa = add i64 %.01826, 1                      ; 2 uses
  %i.ab = add i64 %.01727, %i.aa
  %.017 = and i64 %i.ab, %i.j                     ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %._crit_edge, label %bb.d, !llvm.loop !119

._crit_edge:                                      ; preds = %bb.g, %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %.017.lcssa = phi i64 [ %.01725, %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit ], [ %.017, %bb.g ]
  %i.af = load ptr, ptr %1, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ai = add i64 %i.ah, 72                       ; 2 uses
  %i.aj = and i64 %i.ai, -8                       ; 4 uses
  %i.ak = icmp ugt i64 %i.ai, 4095
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = load i64, ptr %i.al, align 16, !tbaa !96
  %i.an = add i64 %i.am, %i.aj
  store i64 %i.an, ptr %i.al, align 16, !tbaa !96
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.aj) #31
  br label %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE10pool_allocEm.exit.i

bb.i:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !113 ; 2 uses
  %i.ar = add i64 %i.aq, %i.aj
  %i.as = icmp ugt i64 %i.ar, 4096
  br i1 %i.as, label %bb.j, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 32, !tbaa !112
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = load i64, ptr %i.at, align 16, !tbaa !96
  %i.av = add i64 %i.au, 4096
  store i64 %i.av, ptr %i.at, align 16, !tbaa !96
  %i.aw = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #31 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aw, ptr %i.ax, align 32, !tbaa !112
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %i.ay = phi i64 [ %i.aq, %._crit_edge.i.i ], [ 0, %bb.j ] ; 2 uses
  %i.az = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.aw, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  %i.bb = add i64 %i.ay, %i.aj
  store i64 %i.bb, ptr %i.ap, align 8, !tbaa !113
  br label %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE10pool_allocEm.exit.i

_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE10pool_allocEm.exit.i: ; preds = %bb.k, %bb.h
  %.0.i.i = phi ptr [ %i.ao, %bb.h ], [ %i.ba, %bb.k ] ; 3 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.bc, align 8, !tbaa !21
  invoke void @_ZN11OpenImageIO4v3_17ustring8TableRepC1ENS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull align 8 dereferenceable(60) %.0.i.i, ptr noundef nonnull dead_on_return %3, i64 noundef %2)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE10pool_allocEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bd = load ptr, ptr %i.k, align 16, !tbaa !77 ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.017.lcssa
  store ptr %.0.i.i, ptr %i.be, align 8, !tbaa !78
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !95
  %i.bh = add i64 %i.bg, 1                        ; 4 uses
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !95
  %i.bi = shl i64 %i.bh, 1
  %i.bj = load i64, ptr %i.i, align 8, !tbaa !72  ; 3 uses
  %i.bk = icmp ugt i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bl = shl i64 %i.bj, 1                        ; 2 uses
  %i.bm = or disjoint i64 %i.bl, 1                ; 3 uses
  %i.bn = shl i64 %i.bj, 3
  %i.bo = add i64 %i.bn, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 16, !tbaa !96
  %i.br = add i64 %i.bo, %i.bq
  store i64 %i.br, ptr %i.bp, align 16, !tbaa !96
  %i.bs = add i64 %i.bl, 2
  %i.bt = call noalias ptr @calloc(i64 noundef %i.bs, i64 noundef 8) #30 ; 4 uses
  %.not25.i = icmp eq i64 %i.bh, 0
  br i1 %.not25.i, label %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE4growEv.exit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.m, %bb.o
  %.01927.i = phi i64 [ %i.ci, %bb.o ], [ 0, %bb.m ] ; 2 uses
  %.02026.i = phi i64 [ %.1.i, %bb.o ], [ %i.bh, %bb.m ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.01927.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !78 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph29.i
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !12
  %.01822.i = and i64 %i.bx, %i.bm                ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.01822.i
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !78
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.01824.i = phi i64 [ %.018.i, %.lr.ph.i ], [ %.01822.i, %bb.n ]
  %.023.i = phi i64 [ %i.cb, %.lr.ph.i ], [ 0, %bb.n ]
  %i.cb = add i64 %.023.i, 1                      ; 2 uses
  %i.cc = add i64 %i.cb, %.01824.i
  %.018.i = and i64 %i.cc, %i.bm                  ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.018.i
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !78
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !120

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.018.lcssa.i = phi i64 [ %.01822.i, %bb.n ], [ %.018.i, %.lr.ph.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.018.lcssa.i
  store ptr %i.bv, ptr %i.cg, align 8, !tbaa !78
  %i.ch = add i64 %.02026.i, -1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %.lr.ph29.i
  %.1.i = phi i64 [ %.02026.i, %.lr.ph29.i ], [ %i.ch, %._crit_edge.i ] ; 2 uses
  %i.ci = add i64 %.01927.i, 1
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE4growEv.exit, label %.lr.ph29.i, !llvm.loop !121

_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE4growEv.exit: ; preds = %bb.o, %bb.m
  call void @free(ptr noundef nonnull %i.bd) #24
  store ptr %i.bt, ptr %i.k, align 16, !tbaa !77
  store i64 %i.bm, ptr %i.i, align 8, !tbaa !72
  br label %bb.q

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE10pool_allocEm.exit.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = atomicrmw sub ptr %0, i32 1073741824 release, align 4 ; 0 uses
  resume { ptr, i32 } %i.cj

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_111TableRepMapILj256ELj4096EE4growEv.exit, %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.q
  %.0 = phi ptr [ %i.cl, %bb.q ], [ %i.x, %bb.f ]
  %i.cm = atomicrmw sub ptr %0, i32 1073741824 release, align 4 ; 0 uses
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_RKS3_EEES0_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 6 uses
  store ptr null, ptr %i.a, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %1, align 8, !tbaa !28     ; 7 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %2, align 8, !tbaa !27
  store ptr %i.e, ptr %i.d, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %.not.not = icmp eq i64 %i.g, 0
  br i1 %.not.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %i.j = urem i64 %i.c, %i.i                      ; 5 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %.critedge28, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.035.0.in = phi ptr [ %i.n, %bb.b ], [ %.sroa.035.0, %bb.d ]
  %.sroa.035.0 = load ptr, ptr %.sroa.035.0.in, align 8, !tbaa !50 ; 4 uses
  %.not = icmp eq ptr %.sroa.035.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.035.0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  %i.q = icmp eq i64 %i.c, %i.p
  br i1 %i.q, label %_ZNKSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %bb.c, !llvm.loop !123

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41
  %i.t = urem i64 %i.c, %i.s
  br label %.critedge28

bb.f:                                             ; preds = %.thread
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !50   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !28
  %i.x = icmp eq i64 %i.c, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.y = icmp eq i64 %i.c, %i.ab
  br i1 %i.y, label %_ZNKSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i, !llvm.loop !53

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.z, %bb.g ], [ %i.u, %bb.f ]
  %i.z = load ptr, ptr %.020.i.i, align 8, !tbaa !50 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.z, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %i.ac = urem i64 %i.ab, %i.i
  %.not19.i.i = icmp eq i64 %i.ac, %i.j
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !53

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge28, !llvm.loop !53

.critedge28:                                      ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread
  %i.ad = phi i64 [ %i.t, %bb.e ], [ %i.j, %.thread ], [ %i.j, %..loopexit_crit_edge21.i.i ], [ %i.j, %.lr.ph.i.i ]
  %i.ae = invoke ptr @_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30

_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30: ; preds = %.critedge28
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #23
  resume { ptr, i32 } %i.af

_ZNKSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.043.0.ph = phi ptr [ %.sroa.035.0, %bb.d ], [ %i.u, %bb.f ], [ %i.z, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #23
  br label %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNKSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  %.sroa.444.056 = phi i8 [ 0, %_ZNKSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit ], [ 1, %.critedge28 ]
  %.sroa.043.054 = phi ptr [ %.sroa.043.0.ph, %_ZNKSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit ], [ %i.ae, %.critedge28 ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.043.054, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.444.056, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #24 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !124
  invoke void @__cxa_rethrow() #27
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #29
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !41
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  store ptr %i.w, ptr %3, align 8, !tbaa !50
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !52
  store ptr %3, ptr %i.x, align 8, !tbaa !50
  br label %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !117
  store ptr %i.z, ptr %3, align 8, !tbaa !50
  store ptr %3, ptr %i.y, align 8, !tbaa !117
  %i.aa = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !41
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !52
  br label %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit

_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !46
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !46
  ret ptr %3
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #18

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !125

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !126
  br label %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPKcELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !125

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPKcELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPKcELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPKcELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !117
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !50  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !117
  store ptr %i.o, ptr %.031, align 8, !tbaa !50
  store ptr %.031, ptr %i.g, align 8, !tbaa !117
  store ptr %i.g, ptr %i.m, align 8, !tbaa !52
  %i.p = load ptr, ptr %.031, align 8, !tbaa !50
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !52
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !50
  store ptr %i.r, ptr %.031, align 8, !tbaa !50
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !52
  store ptr %.031, ptr %i.s, align 8, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !127

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !41
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #23
  br label %_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !41
  store ptr %.0.i, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_ustring.cpp() #19 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_17ustring16empty_std_stringB5cxx11E, i64 16), ptr @_ZN11OpenImageIO4v3_17ustring16empty_std_stringB5cxx11E, align 8, !tbaa !18
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_17ustring16empty_std_stringB5cxx11E, i64 8), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_17ustring16empty_std_stringB5cxx11E, i64 16), align 8, !tbaa !20
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN11OpenImageIO4v3_17ustring16empty_std_stringB5cxx11E, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11OpenImageIO4v3_112_GLOBAL__N_119all_hash_collisionsE, i8 0, i64 24, i1 false)
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorISt4pairIPKcmESaIS3_EED2Ev, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_119all_hash_collisionsE, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr @.str, ptr %0, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !21
  %i.d = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %0)
  store ptr %i.d, ptr @_ZN11OpenImageIO4v3_13pvtL30ustring_force_make_unique_callE, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { cold nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind allocsize(0,1) }
attributes #31 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt12_Vector_baseISt4pairIPKcmESaIS3_EE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"p1 _ZTSSt4pairIPKcmE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !9, i64 16}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN11OpenImageIO4v3_17ustring8TableRepE", !14, i64 0, !15, i64 8, !14, i64 40, !14, i64 48, !4, i64 56}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !14, i64 8, !5, i64 16}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!17 = !{!"p1 omnipotent char", !10, i64 0}
!18 = !{!16, !17, i64 0}
!19 = !{!15, !14, i64 8}
!20 = !{!5, !5, i64 0}
!21 = !{!22, !14, i64 8}
!22 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !17, i64 0, !14, i64 8}
!23 = !{!13, !14, i64 40}
!24 = !{!22, !17, i64 0}
!25 = !{!15, !17, i64 0}
!26 = !{!"branch_weights", i32 1, i32 1048575}
!27 = !{!17, !17, i64 0}
!28 = !{!14, !14, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!32, !4, i64 0}
!32 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSSt10_HashtableImSt4pairIKmPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toImEN11OpenImageIO4v3_18identityImEENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !35, i64 0, !14, i64 8, !37, i64 16, !14, i64 24, !39, i64 32, !38, i64 48}
!35 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !36, i64 0}
!36 = !{!"any p2 pointer", !10, i64 0}
!37 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !38, i64 0}
!38 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!39 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !40, i64 0, !14, i64 8}
!40 = !{!"float", !5, i64 0}
!41 = !{!34, !14, i64 8}
!42 = !{!39, !40, i64 0}
!43 = !{i64 6607088}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = !{!34, !14, i64 24}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN11OpenImageIO4v3_124unordered_map_concurrentImPKcNS0_8identityImEESt8equal_toImELm256ESt13unordered_mapImS3_S5_S7_SaISt4pairIKmS3_EEEE4findERSA_b: argument 0"}
!49 = distinct !{!49, !"_ZN11OpenImageIO4v3_124unordered_map_concurrentImPKcNS0_8identityImEESt8equal_toImELm256ESt13unordered_mapImS3_S5_S7_SaISt4pairIKmS3_EEEE4findERSA_b"}
!50 = !{!37, !38, i64 0}
!51 = distinct !{!51, !30}
!52 = !{!38, !38, i64 0}
!53 = distinct !{!53, !30}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!56 = !{!57, !17, i64 8}
!57 = !{!"_ZTSSt4pairIKmPKcE", !14, i64 0, !17, i64 8}
!58 = !{!8, !9, i64 8}
!59 = !{!60, !17, i64 0}
!60 = !{!"_ZTSSt4pairIPKcmE", !17, i64 0, !14, i64 8}
!61 = !{!60, !14, i64 8}
!62 = !{!63, !65}
!63 = distinct !{!63, !64, !"_ZSt19__relocate_object_aISt4pairIPKcmES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!64 = distinct !{!64, !"_ZSt19__relocate_object_aISt4pairIPKcmES3_SaIS3_EEvPT_PT0_RT1_"}
!65 = distinct !{!65, !64, !"_ZSt19__relocate_object_aISt4pairIPKcmES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!66 = distinct !{!66, !30}
!67 = !{!68, !70}
!68 = distinct !{!68, !69, !"_ZSt19__relocate_object_aISt4pairIPKcmES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!69 = distinct !{!69, !"_ZSt19__relocate_object_aISt4pairIPKcmES3_SaIS3_EEvPT_PT0_RT1_"}
!70 = distinct !{!70, !69, !"_ZSt19__relocate_object_aISt4pairIPKcmES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!71 = distinct !{!71, !30}
!72 = !{!73, !14, i64 8}
!73 = !{!"_ZTSN11OpenImageIO4v3_111TableRepMapILj256ELj4096EEE", !74, i64 0, !14, i64 8, !76, i64 16, !14, i64 24, !17, i64 32, !14, i64 40, !14, i64 48}
!74 = !{!"_ZTSN11OpenImageIO4v3_113spin_rw_mutexE", !75, i64 0}
!75 = !{!"_ZTSSt6atomicIiE", !32, i64 0}
!76 = !{!"p2 _ZTSN11OpenImageIO4v3_17ustring8TableRepE", !36, i64 0}
!77 = !{!73, !76, i64 16}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 _ZTSN11OpenImageIO4v3_17ustring8TableRepE", !10, i64 0}
!80 = distinct !{!80, !30}
!81 = !{!82, !82, i64 0}
!82 = !{!"vtable pointer", !6, i64 0}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!85 = distinct !{!85, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!88 = distinct !{!88, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!89 = !{!87, !84}
!90 = !{!91, !17, i64 40}
!91 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !92, i64 56}
!92 = !{!"_ZTSSt6locale", !93, i64 0}
!93 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!94 = !{!91, !17, i64 32}
!95 = !{!73, !14, i64 24}
!96 = !{!73, !14, i64 48}
!97 = !{!9, !9, i64 0}
!98 = !{!99, !100, i64 8}
!99 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE17_Vector_impl_dataE", !100, i64 0, !100, i64 8, !100, i64 16}
!100 = !{!"p1 _ZTSN11OpenImageIO4v3_17ustringE", !10, i64 0}
!101 = !{!99, !100, i64 16}
!102 = !{!99, !100, i64 0}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZSt19__relocate_object_aIN11OpenImageIO4v3_17ustringES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!105 = distinct !{!105, !"_ZSt19__relocate_object_aIN11OpenImageIO4v3_17ustringES2_SaIS2_EEvPT_PT0_RT1_"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_ZSt19__relocate_object_aIN11OpenImageIO4v3_17ustringES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!108 = distinct !{!108, !30, !109, !110}
!109 = !{!"llvm.loop.isvectorized", i32 1}
!110 = !{!"llvm.loop.unroll.runtime.disable"}
!111 = distinct !{!111, !30, !109}
!112 = !{!73, !17, i64 32}
!113 = !{!73, !14, i64 40}
!114 = distinct !{!114, !30}
!115 = distinct !{!115, !30}
!116 = distinct !{!116, !30}
!117 = !{!34, !38, i64 16}
!118 = distinct !{!118, !30}
!119 = distinct !{!119, !30}
!120 = distinct !{!120, !30}
!121 = distinct !{!121, !30}
!122 = !{!57, !14, i64 0}
!123 = distinct !{!123, !30}
!124 = !{!39, !14, i64 8}
!125 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!126 = !{!34, !38, i64 48}
!127 = distinct !{!127, !30}
!128 = !{!129, !17, i64 0}
!129 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !17, i64 0}
end_hunk_1
