inline.NumInlined: 768
inline.NumDeleted: 385
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11OpenImageIO4v3_17ustring14total_ustringsEv:bb.a
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
define noundef range(i64 -576460752303423488, 576460752303423488) i64 @_ZN11OpenImageIO4v3_17ustring15hash_collisionsEPSt6vectorIS1_SaIS1_EE(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.x = sub i64 %i.j, %i.k
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  %i.ab = sub i64 %i.k, %i.w
  %diff.check = icmp ugt i64 %i.ab, -32
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
end_hunk_0
