inline.NumInlined: 1123
inline.NumDeleted: 565
begin_hunk_0_@_ZN8facebook5velox6memory22ArbitrationParticipantD2Ev:bb.a

bb.h:                                             ; preds = %_ZNSt10__weak_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3    ; 2 uses
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.k, label %_ZNSt23enable_shared_from_thisIN8facebook5velox6memory22ArbitrationParticipantEED2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #21, !inline_history !128
  br label %_ZNSt23enable_shared_from_thisIN8facebook5velox6memory22ArbitrationParticipantEED2Ev.exit

_ZNSt23enable_shared_from_thisIN8facebook5velox6memory22ArbitrationParticipantEED2Ev.exit: ; preds = %_ZNSt10__weak_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %.invoke
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #30
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory22ArbitrationParticipant4lockEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::optional.19") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(288) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.6", align 16 ; 9 uses
  %3 = alloca %"class.facebook::velox::memory::ScopedArbitrationParticipant", align 8 ; 6 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %5 = alloca %"class.std::shared_ptr.6", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93, !noalias !129 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !92, !alias.scope !129
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8, !noalias !129
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.06.i.i.i.i.i, 1
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i.i, i32 %i.g acq_rel monotonic, align 8, !noalias !129 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.c, !llvm.loop !132

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.b, align 8, !tbaa !92, !alias.scope !129
  br label %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.d
  %i.k = load atomic i32, ptr %i.e monotonic, align 8, !noalias !129
  %.fr.i.i.i = freeze i32 %i.k
  %.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread, label %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit

_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  store ptr null, ptr %2, align 16, !tbaa !88, !alias.scope !129
  br label %bb.e

_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !noalias !129 ; 2 uses
  store ptr %i.l, ptr %2, align 16, !tbaa !88, !alias.scope !129
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread, %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.m, align 8, !tbaa !133
  br label %bb.z

bb.f:                                             ; preds = %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93, !noalias !135 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !92, !alias.scope !135
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i6, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = load atomic i32, ptr %i.r monotonic, align 8, !noalias !135
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.06.i.i.i.i.i4 = phi i32 [ %i.s, %bb.g ], [ %i.w, %bb.i ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i5 = icmp eq i32 %.06.i.i.i.i.i4, 0
  br i1 %.not.not.not.i.not.i.i.i.i5, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i6, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = add nsw i32 %.06.i.i.i.i.i4, 1
  %i.u = cmpxchg weak ptr %i.r, i32 %.06.i.i.i.i.i4, i32 %i.t acq_rel monotonic, align 8, !noalias !135 ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  %i.w = extractvalue { i32, i1 } %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.h, !llvm.loop !132

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i6: ; preds = %bb.h, %bb.f
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #21, !noalias !135 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.x, align 8, !tbaa !96, !noalias !135
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i6
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %1, align 8, !tbaa !138, !noalias !135
  store ptr %i.y, ptr %4, align 8, !tbaa !139, !alias.scope !135
  %i.z = load <2 x ptr>, ptr %2, align 16, !tbaa !108
  store ptr null, ptr %i.b, align 8, !tbaa !92
  store <2 x ptr> %i.z, ptr %5, align 16, !tbaa !108
  store ptr null, ptr %2, align 16, !tbaa !88
  invoke void @_ZN8facebook5velox6memory28ScopedArbitrationParticipantC1ESt10shared_ptrINS1_22ArbitrationParticipantEES3_INS1_10MemoryPoolEE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %_ZN8facebook5velox6memory28ScopedArbitrationParticipantD2Ev.exit unwind label %bb.x

_ZN8facebook5velox6memory28ScopedArbitrationParticipantD2Ev.exit: ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load <4 x ptr>, ptr %3, align 8, !tbaa !108
  store <4 x ptr> %i.ab, ptr %0, align 8, !tbaa !108
  store <4 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ac, align 8, !tbaa !133
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !92 ; 8 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox6memory28ScopedArbitrationParticipantD2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ad, align 8, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !143
  %i.ai = load ptr, ptr %.pre, align 8, !tbaa !96
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #21, !inline_history !144
  %i.al = load ptr, ptr %.pre, align 8, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #21, !inline_history !144
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i9 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i9, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.n ], [ %i.aq, %bb.o ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.p, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #21
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN8facebook5velox6memory28ScopedArbitrationParticipantD2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !92  ; 8 uses
  %.not.i.i10 = icmp eq ptr %i.as, null
  br i1 %.not.i.i10, label %_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.at, align 8, !tbaa !141
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !143
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !96
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #21, !inline_history !145
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #21, !inline_history !145
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i11 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i11, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

bb.u:                                             ; preds = %bb.s
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i13 = phi i32 [ %i.aw, %bb.t ], [ %i.bg, %bb.u ]
  %i.bh = icmp eq i32 %.0.i.i.i.i13, 1
  br i1 %i.bh, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #21
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.z

bb.w:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i6
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.x ], [ %i.bi, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.e
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !92  ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.bl, align 8, !tbaa !141
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !143
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !96
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #21, !inline_history !144
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !96
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #21, !inline_history !144
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18

bb.ac:                                            ; preds = %bb.aa
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i15 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i15, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

bb.ae:                                            ; preds = %bb.ac
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i17 = phi i32 [ %i.bo, %bb.ad ], [ %i.by, %bb.ae ]
  %i.bz = icmp eq i32 %.0.i.i.i.i17, 1
  br i1 %i.bz, label %bb.af, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18, !prof !29

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #21
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox6memory28ScopedArbitrationParticipantD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !143
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !144
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !144
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !141
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !143
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !145
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !145
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !143
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !146
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !146
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !143
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !146
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !146
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK8facebook5velox6memory22ArbitrationParticipant15maxGrowCapacityEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.88", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(264) %i.b) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !98   ; 3 uses
  %.not = icmp ugt i64 %i.f, %i.h
  br i1 %.not, label %bb.b, label %bb.e, !prof !29

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21, !noalias !147
  store i64 %i.f, ptr %1, align 16, !tbaa !24, !noalias !147
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.h, ptr %i.i, align 16, !tbaa !24, !alias.scope !150, !noalias !147
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.4, i64 11, i64 67, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21, !noalias !147
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory22ArbitrationParticipant15maxGrowCapacityEvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.4) #28
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !24
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.a
  %i.p = sub nuw i64 %i.h, %i.f
  ret i64 %i.p
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK8facebook5velox6memory22ArbitrationParticipant15minGrowCapacityEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(264) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.f)
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(264) %i.b)
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(264) %i.h)
  %i.m = icmp ne i64 %i.l, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i1 [ false, %bb.a ], [ %i.m, %bb.b ]
  ret i1 %i.n
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK8facebook5velox6memory22ArbitrationParticipant23reclaimableFreeCapacityEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(264) %i.b), !inline_history !153
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(264) %i.g), !inline_history !153 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6memory22ArbitrationParticipant17maxShrinkCapacityEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !96
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 256
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(264) %i.p), !inline_history !154
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.i, label %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.thread.i

_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.i: ; preds = %bb.b
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !96
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(264) %i.v), !inline_history !154
  %.not11.i = icmp eq i64 %i.z, 0
  br i1 %.not11.i, label %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.thread.i, label %_ZNK8facebook5velox6memory22ArbitrationParticipant17maxShrinkCapacityEv.exit

_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.thread.i: ; preds = %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.i, %bb.b
  %i.aa = uitofp i64 %i.f to double
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !95  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !27
  %i.ae = fmul double %i.ad, %i.aa
  %i.af = fptoui double %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !106
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.af)
  %.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %.sroa.speculated.i)
  br label %_ZNK8facebook5velox6memory22ArbitrationParticipant17maxShrinkCapacityEv.exit

_ZNK8facebook5velox6memory22ArbitrationParticipant17maxShrinkCapacityEv.exit: ; preds = %bb.a, %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.i, %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.thread.i
  %.1.i = phi i64 [ %.0.i, %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.thread.i ], [ %i.k, %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.i ], [ %i.k, %bb.a ]
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !94  ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !96
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 256
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(264) %i.ai), !inline_history !155
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.i4, label %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.thread.i1

_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.i4: ; preds = %_ZNK8facebook5velox6memory22ArbitrationParticipant17maxShrinkCapacityEv.exit
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !94  ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(264) %i.ao), !inline_history !155
  %.not.i5 = icmp eq i64 %i.as, 0
  br i1 %.not.i5, label %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.thread.i1, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.i4
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !94  ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !96
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(264) %i.at), !inline_history !156
  br label %_ZNK8facebook5velox6memory22ArbitrationParticipant22maxReclaimableCapacityEv.exit

_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.thread.i1: ; preds = %_ZNK8facebook5velox6memory22ArbitrationParticipant12inactivePoolEv.exit.i4, %_ZNK8facebook5velox6memory22ArbitrationParticipant17maxShrinkCapacityEv.exit
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !94  ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 216
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(264) %i.ay), !inline_history !156
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12VeloxPromiseIN5folly4UnitEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

._crit_edge.i.i:                                  ; preds = %.noexc9, %bb.a
  %i.u = phi ptr [ %i.t, %.noexc9 ], [ %i.l, %bb.a ] ; 3 uses
  switch i64 %i.o, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.m, align 1, !tbaa !24
  store i8 %i.v, ptr %i.u, align 1, !tbaa !24
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.o, ptr %i.w, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o
  store i8 0, ptr %i.x, align 1, !tbaa !24
  %i.y = load i64, ptr %i.n, align 8, !tbaa !23
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.59, i32 noundef 33, i32 noundef 1)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.60, i64 noundef 57)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.n

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %i.ad, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !18  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.l
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !24
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.m ]
  call void @_ZN5folly7PromiseINS_4UnitEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly10SemiFutureINS_4UnitEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !178
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !178    ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly7futures6detail10FutureBaseINS_4UnitEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #21
  br label %_ZN5folly7futures6detail10FutureBaseINS_4UnitEED2Ev.exit

_ZN5folly7futures6detail10FutureBaseINS_4UnitEED2Ev.exit: ; preds = %bb.b, %bb.c
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNR5folly10SemiFutureINS_4UnitEE4waitEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::deque.92", align 8     ; 4 uses
  %2 = alloca %class.anon.143, align 8            ; 4 uses
  %3 = alloca %class.anon.105, align 8            ; 4 uses
  %4 = alloca %"class.folly::Promise", align 8    ; 6 uses
  %5 = alloca %"class.folly::SemiFuture", align 8 ; 5 uses
  %6 = alloca %class.anon.89, align 8             ; 8 uses
  %7 = alloca %"class.folly::ExecutorKeepAlive", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !178    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7getCoreEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #18
  unreachable

_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7getCoreEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !216
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE19getDeferredExecutorEv.exit, label %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE19getDeferredExecutorEv.exit.thread

_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE19getDeferredExecutorEv.exit: ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7getCoreEv.exit.i
  %i.e = tail call noundef ptr @_ZNK5folly7futures6detail19KeepAliveOrDeferred19getDeferredExecutorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE19getDeferredExecutorEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE19getDeferredExecutorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29 ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.h, align 16, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE, ptr %i.i, align 16, !tbaa !208
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr null, ptr %i.j, align 8, !tbaa !210
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i8 1, ptr %i.k, align 16, !tbaa !211
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 81
  store i8 2, ptr %i.l, align 1, !tbaa !214
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 82
  store i8 0, ptr %i.m, align 2, !tbaa !214
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !216
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreINS_4UnitEEE, i64 16), ptr %i.g, align 16, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.g, ptr %5, align 8, !tbaa !178, !alias.scope !219
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i8 0, ptr %4, align 8, !tbaa !206
  store i8 1, ptr %6, align 8, !tbaa !197
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !207
  store ptr %i.g, ptr %i.p, align 8, !tbaa !203
  invoke void @_ZN5folly7futures6detail10FutureBaseINS_4UnitEE12setCallback_IZNRS_10SemiFutureIS3_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSD_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 1)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !203  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i18, label %_ZZNR5folly10SemiFutureINS_4UnitEE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %6, align 8, !tbaa !197, !range !198, !noundef !202
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.q) #21
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !203
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.q, %bb.e ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.t)
          to label %_ZZNR5folly10SemiFutureINS_4UnitEE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

_ZZNR5folly10SemiFutureINS_4UnitEE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit: ; preds = %bb.d, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.w = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29
          to label %.noexc19 unwind label %bb.n   ; 17 uses

.noexc19:                                         ; preds = %_ZZNR5folly10SemiFutureINS_4UnitEE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5folly7futures6detail12WaitExecutorE, i64 16), ptr %i.w, align 8, !tbaa !96, !noalias !222
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.x, i8 0, i64 80, i1 false), !noalias !222
  invoke void @_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(92) %i.x, i64 noundef 0)
          to label %_ZNK5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEE4copyEv.exit unwind label %bb.i, !noalias !222

bb.i:                                             ; preds = %.noexc19
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 120) #27, !noalias !222
  br label %bb.z

_ZNK5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEE4copyEv.exit: ; preds = %.noexc19
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store i8 0, ptr %i.z, align 8, !tbaa !225, !noalias !222
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store i32 0, ptr %i.aa, align 8, !tbaa !234, !noalias !222
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  store i64 0, ptr %i.ab, align 8, !tbaa !236, !noalias !222
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store i64 1, ptr %i.ac, align 8, !tbaa !236, !noalias !222
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !96, !noalias !238
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !238
  %i.ah = call noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !noalias !238, !inline_history !243
  %not..i.i = xor i1 %i.ah, true
  %i.ai = zext i1 %not..i.i to i64
  %spec.select.i.i = or disjoint i64 %i.ad, %i.ai
  store i64 %spec.select.i.i, ptr %7, align 8, !tbaa !244
  invoke void @_ZN5folly7futures6detail16DeferredExecutor11setExecutorENS_17ExecutorKeepAliveINS_8ExecutorEEEb(ptr noundef nonnull align 16 dereferenceable(112) %i.e, ptr noundef nonnull %7, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNK5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEE4copyEv.exit
  %i.aj = load i64, ptr %7, align 8, !tbaa !244   ; 2 uses
  %i.ak = and i64 %i.aj, -4                       ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %.not.i.i20 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i20, label %.lr.ph, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %7, align 8, !tbaa !106
  %i.am = and i64 %i.aj, 3
  %.not3.i.i = icmp eq i64 %i.am, 0
  br i1 %.not3.i.i, label %bb.l, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !96
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #21, !inline_history !246
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k, %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.ar = call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.g) #21
  br i1 %i.ar, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph, %_ZN5folly7futures6detail12WaitExecutor5driveEv.exit
  invoke void @_ZN5folly6fibers5Baton4waitEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %.noexc26 unwind label %.loopexit

.noexc26:                                         ; preds = %.lr.ph61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.w, ptr %3, align 8, !tbaa !247
  invoke void @_ZN5folly6fibers16runInMainContextIZNS_7futures6detail12WaitExecutor5driveEvEUlvE_EENS_13invoke_detail6traitsIT_E6resultIEEOS8_(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5folly7futures6detail12WaitExecutor5driveEv.exit unwind label %.loopexit

_ZN5folly7futures6detail12WaitExecutor5driveEv.exit: ; preds = %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.as = call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.g) #21
  br i1 %i.as, label %._crit_edge, label %.lr.ph61

bb.m:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNR5folly10SemiFutureINS_4UnitEE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.z

bb.n:                                             ; preds = %_ZZNR5folly10SemiFutureINS_4UnitEE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %_ZNK5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEE4copyEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aw = load i64, ptr %7, align 8, !tbaa !244   ; 2 uses
  %i.ax = and i64 %i.aw, -4                       ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %.not.i.i28 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i28, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 0, ptr %7, align 8, !tbaa !106
  %i.az = and i64 %i.aw, 3
  %.not3.i.i29 = icmp eq i64 %i.az, 0
  br i1 %.not3.i.i29, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !96
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #21, !inline_history !246
  br label %bb.y

.loopexit:                                        ; preds = %.lr.ph61, %.noexc26
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

._crit_edge:                                      ; preds = %_ZN5folly7futures6detail12WaitExecutor5driveEv.exit, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %i.w, ptr %2, align 8, !tbaa !250
  invoke void @_ZZN5folly7futures6detail12WaitExecutor6detachEvENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.std::deque.92") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %._crit_edge
  call void @_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bd = load ptr, ptr %0, align 8, !tbaa !178   ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZN5folly7futures6detail10FutureBaseINS_4UnitEE6detachEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.bd) #21
  store ptr null, ptr %0, align 8, !tbaa !178
  br label %_ZN5folly7futures6detail10FutureBaseINS_4UnitEE6detachEv.exit

_ZN5folly7futures6detail10FutureBaseINS_4UnitEE6detachEv.exit: ; preds = %bb.r, %bb.s
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseINS_4UnitEE6detachEv.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !178   ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i35, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.be) #21
  store ptr null, ptr %0, align 8, !tbaa !178
  br label %bb.w

bb.v:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseINS_4UnitEE6detachEv.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #30
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u
  store ptr %i.g, ptr %0, align 8, !tbaa !178
  %i.bh = load ptr, ptr %i.w, align 8, !tbaa !96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !252
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly7PromiseINS_4UnitEED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #30
  unreachable

_ZN5folly7PromiseINS_4UnitEED2Ev.exit:            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.aa

bb.y:                                             ; preds = %bb.o, %bb.p, %bb.q, %.loopexit.split-lp, %.loopexit
  %.pn11 = phi { ptr, i32 } [ %i.av, %bb.p ], [ %i.av, %bb.o ], [ %i.av, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bm = load ptr, ptr %i.w, align 8, !tbaa !96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !252
  br label %bb.z

bb.z:                                             ; preds = %bb.m, %bb.y, %bb.n, %bb.i
  %.pn11.pn.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.y, %bb.i ], [ %i.au, %bb.n ], [ %.pn11, %bb.y ]
  call void @_ZN5folly10SemiFutureINS_4UnitEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN5folly7PromiseINS_4UnitEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn11.pn.pn

_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE19getDeferredExecutorEv.exit.thread: ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7getCoreEv.exit.i, %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE19getDeferredExecutorEv.exit
  tail call void @_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE19getDeferredExecutorEv.exit.thread, %_ZN5folly7PromiseINS_4UnitEED2Ev.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory22ArbitrationParticipant17finishArbitrationEPNS1_20ArbitrationOperationE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Try", align 8        ; 9 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.146", align 16 ; 5 uses
  %4 = alloca %"class.facebook::velox::VeloxPromise", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i8 0, ptr %4, align 8, !tbaa !197, !alias.scope !253
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !203, !alias.scope !253
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !193, !alias.scope !253
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.d, align 8, !tbaa !23, !alias.scope !253
  store i8 0, ptr %i.c, align 8, !tbaa !24, !alias.scope !253
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.f) #28
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %.not = icmp eq ptr %1, %i.h
  br i1 %.not, label %bb.i, label %bb.c, !prof !125

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !256
  store ptr %1, ptr %3, align 16, !tbaa !24, !noalias !256
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.h, ptr %i.i, align 16, !tbaa !24, !noalias !256
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.4, i64 11, i64 238, ptr nonnull %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !256
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory22ArbitrationParticipant17finishArbitrationEPNS1_20ArbitrationOperationEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.4) #28
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.p = load i64, ptr %i.n, align 8, !tbaa !24
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.g ], [ %i.l, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #21 ; 0 uses
  br label %.body

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !126
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !126  ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN8facebook5velox12VeloxPromiseIN5folly4UnitEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.x) #21 ; 0 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !126, !noalias !259 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !185
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !124
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !262
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %.not.i = icmp eq ptr %i.z, %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @_ZN8facebook5velox12VeloxPromiseIN5folly4UnitEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ae) #21
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !263
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  br label %_ZNSt5dequeIN8facebook5velox6memory22ArbitrationParticipant6WaitOpESaIS4_EE9pop_frontEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !264
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef 504) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !116
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !265
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !118 ; 3 uses
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !266
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 504
  store ptr %i.an, ptr %i.ab, align 8, !tbaa !267
  br label %_ZNSt5dequeIN8facebook5velox6memory22ArbitrationParticipant6WaitOpESaIS4_EE9pop_frontEv.exit

_ZNSt5dequeIN8facebook5velox6memory22ArbitrationParticipant6WaitOpESaIS4_EE9pop_frontEv.exit: ; preds = %bb.k, %bb.l
  %storemerge.i = phi ptr [ %i.ag, %bb.k ], [ %i.am, %bb.l ]
  store ptr %storemerge.i, ptr %i.t, align 8, !tbaa !263
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  store ptr null, ptr %i.g, align 8, !tbaa !124
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt5dequeIN8facebook5velox6memory22ArbitrationParticipant6WaitOpESaIS4_EE9pop_frontEv.exit
  %i.ao = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #21 ; 0 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !203
  %.not15 = icmp eq ptr %i.ap, null
  br i1 %.not15, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 0, ptr %2, align 8, !tbaa !268
  invoke void @_ZN5folly7PromiseINS_4UnitEE6setTryEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aq = load i32, ptr %2, align 8, !tbaa !268
  %cond.i.i = icmp eq i32 %i.aq, 1
  br i1 %cond.i.i, label %bb.q, label %_ZN5folly7PromiseINS_4UnitEE8setValueIS1_EENSt9enable_ifIXsr3std7is_sameIS1_T_EE5valueEvE4typeEv.exit, !prof !271

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !272
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN5folly7PromiseINS_4UnitEE8setValueIS1_EENSt9enable_ifIXsr3std7is_sameIS1_T_EE5valueEvE4typeEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #21
  br label %_ZN5folly7PromiseINS_4UnitEE8setValueIS1_EENSt9enable_ifIXsr3std7is_sameIS1_T_EE5valueEvE4typeEv.exit

bb.s:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load i32, ptr %2, align 8, !tbaa !268
  %cond.i2.i = icmp eq i32 %i.au, 1
  br i1 %cond.i2.i, label %bb.t, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit4.i, !prof !271

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !272
  %.not.i.i.i3.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i3.i, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit4.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #21
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit4.i

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit4.i:  ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body

_ZN5folly7PromiseINS_4UnitEE8setValueIS1_EENSt9enable_ifIXsr3std7is_sameIS1_T_EE5valueEvE4typeEv.exit: ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.v

bb.v:                                             ; preds = %_ZN5folly7PromiseINS_4UnitEE8setValueIS1_EENSt9enable_ifIXsr3std7is_sameIS1_T_EE5valueEvE4typeEv.exit, %bb.n
  call void @_ZN8facebook5velox12VeloxPromiseIN5folly4UnitEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #21
end_hunk_1
begin_hunk_2_@_ZNSt5dequeIN8facebook5velox6memory22ArbitrationParticipant6WaitOpESaIS4_EE17_M_reallocate_mapEmb:bb.a
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN8facebook5velox6memory22ArbitrationParticipant6WaitOpES6_ET0_T_S8_S7_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !118
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !118
  br label %_ZSt4copyIPPN8facebook5velox6memory22ArbitrationParticipant6WaitOpES6_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN8facebook5velox6memory22ArbitrationParticipant6WaitOpESaIS4_EE15_M_allocate_mapEm.exit, !prof !29

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt11_Deque_baseIN8facebook5velox6memory22ArbitrationParticipant6WaitOpESaIS4_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #29 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !125

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN8facebook5velox6memory22ArbitrationParticipant6WaitOpESaIS4_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN8facebook5velox6memory22ArbitrationParticipant6WaitOpES6_ET0_T_S8_S7_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN8facebook5velox6memory22ArbitrationParticipant6WaitOpESaIS4_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPN8facebook5velox6memory22ArbitrationParticipant6WaitOpES6_ET0_T_S8_S7_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !118
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !118
  br label %_ZSt4copyIPPN8facebook5velox6memory22ArbitrationParticipant6WaitOpES6_ET0_T_S8_S7_.exit24

_ZSt4copyIPPN8facebook5velox6memory22ArbitrationParticipant6WaitOpES6_ET0_T_S8_S7_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !115
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #27
  store ptr %i.aq, ptr %0, align 8, !tbaa !115
  store i64 %i.am, ptr %i.k, align 8, !tbaa !121
  br label %_ZSt4copyIPPN8facebook5velox6memory22ArbitrationParticipant6WaitOpES6_ET0_T_S8_S7_.exit

_ZSt4copyIPPN8facebook5velox6memory22ArbitrationParticipant6WaitOpES6_ET0_T_S8_S7_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN8facebook5velox6memory22ArbitrationParticipant6WaitOpES6_ET0_T_S8_S7_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN8facebook5velox6memory22ArbitrationParticipant6WaitOpES6_ET0_T_S8_S7_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !265
  %i.be = load ptr, ptr %.0, align 8, !tbaa !118  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !266
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 504
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !267
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !265
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !118 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !266
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 504
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !267
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7futures6detail10FutureBaseINS_4UnitEE12setCallback_IZNRS_10SemiFutureIS3_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSD_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Function", align 16  ; 11 uses
  %4 = alloca %"class.std::shared_ptr.57", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.57") align 8 %4)
  %i.a = load ptr, ptr %0, align 8, !tbaa !178    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load atomic i8, ptr %i.b acquire, align 1
  %i.d = and i8 %i.c, 108
  %.not1.i.i = icmp eq i8 %i.d, 0
  br i1 %.not1.i.i, label %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE16throwIfContinuedEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN5folly6detail16throw_exception_INS_22FutureAlreadyContinuedEJEEEvDpT0_() #18
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE16throwIfContinuedEv.exit.i: ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !178    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly7futures6detail10FutureBaseINS_4UnitEE7getCoreEv.exit.i

bb.d:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE16throwIfContinuedEv.exit.i
  invoke void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #18
          to label %.noexc4 unwind label %bb.p

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZN5folly7futures6detail10FutureBaseINS_4UnitEE7getCoreEv.exit.i: ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE16throwIfContinuedEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.f = load i8, ptr %1, align 8, !tbaa !206, !range !198, !noundef !202
  store i8 0, ptr %1, align 8, !tbaa !206
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !207
  store ptr null, ptr %i.g, align 8, !tbaa !207
  store ptr null, ptr %3, align 16, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store i8 %i.f, ptr %3, align 16, !tbaa !197
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.h, ptr %i.k, align 8, !tbaa !203
  store ptr @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreINS_4UnitEE11setCallbackIZNRS_10SemiFutureIS6_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSG_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESE_PNS_17exception_wrapperEE_Lb1ELb0EvJSO_SE_SQ_EEET2_DpT3_RNS1_4DataE, ptr %i.i, align 16, !tbaa !208
  store ptr @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreINS_4UnitEE11setCallbackIZNRS_10SemiFutureIS7_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSH_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESF_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataESV_, ptr %i.j, align 8, !tbaa !210
  invoke void @_ZN5folly7futures6detail8CoreBase12setCallback_EONS_8FunctionIFvRS2_ONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEEEOSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationE(ptr noundef nonnull align 16 dereferenceable(160) %i.e, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseINS_4UnitEE7getCoreEv.exit.i
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !210  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef i64 %i.l(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #21, !inline_history !365 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseINS_4UnitEE7getCoreEv.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !210  ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i5.i.i, label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call noundef i64 %i.o(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #21, !inline_history !365 ; 0 uses
  br label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i

_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

bb.i:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !92   ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.s, align 8, !tbaa !141
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !143
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #21, !inline_history !366
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #21, !inline_history !366
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i6 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.m ], [ %i.af, %bb.n ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.o, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #21
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.p:                                             ; preds = %bb.d, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.n, %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i ]
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZNR5folly10SemiFutureINS_4UnitEE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly7PromiseINS_4UnitEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !197, !range !198, !noundef !202
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #21
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %.pre.i.i, %bb.c ], [ %i.b, %bb.b ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %_ZN5folly7PromiseINS_4UnitEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #30
  unreachable

_ZN5folly7PromiseINS_4UnitEED2Ev.exit:            ; preds = %bb.a, %bb.d
  ret void
}

declare void @_ZN5folly7futures6detail16DeferredExecutor11setExecutorENS_17ExecutorKeepAliveINS_8ExecutorEEEb(ptr noundef nonnull align 16 dereferenceable(112), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly7PromiseINS_4UnitEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5folly7PromiseINS_4UnitEE6detachEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !197, !range !198, !noundef !202
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #21
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %_ZN5folly7PromiseINS_4UnitEE6detachEv.exit unwind label %bb.e

_ZN5folly7PromiseINS_4UnitEE6detachEv.exit:       ; preds = %bb.d, %bb.a
  ret void

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::Promise", align 8    ; 6 uses
  %2 = alloca %"class.folly::SemiFuture", align 8 ; 6 uses
  %3 = alloca %"class.folly::fibers::Baton", align 8 ; 6 uses
  %4 = alloca %class.anon.144, align 8            ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !178    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7isReadyEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #18
  unreachable

_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7isReadyEv.exit: ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.a) #21
  br i1 %i.b, label %bb.m, label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7isReadyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.e, align 16, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE, ptr %i.f, align 16, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr null, ptr %i.g, align 8, !tbaa !210
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i8 1, ptr %i.h, align 16, !tbaa !211
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 81
  store i8 2, ptr %i.i, align 1, !tbaa !214
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 82
  store i8 0, ptr %i.j, align 2, !tbaa !214
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i32 0, ptr %i.k, align 8, !tbaa !216
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreINS_4UnitEEE, i64 16), ptr %i.d, align 16, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %i.d, ptr %2, align 8, !tbaa !178, !alias.scope !367
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i64 0, ptr %3, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %3, ptr %4, align 8, !tbaa !370
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !206
  store i8 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !207
  store ptr %i.d, ptr %i.n, align 8, !tbaa !203
  invoke void @_ZN5folly7futures6detail10FutureBaseINS_4UnitEE12setCallback_IZNS1_8waitImplINS_10SemiFutureIS3_EES3_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EEE_EEvOS9_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !203  ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i12, label %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.m, align 8, !tbaa !197, !range !198, !noundef !202
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.o) #21
  %.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !203
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.o, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.r)
          to label %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #30
  unreachable

_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev.exit: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.u = load ptr, ptr %0, align 8, !tbaa !178
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef %i.u)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !178    ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i13, label %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.v) #21
  store ptr null, ptr %0, align 8, !tbaa !178
  br label %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit

bb.j:                                             ; preds = %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #30
  unreachable

_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit:     ; preds = %bb.h, %bb.i
  store ptr null, ptr %2, align 8, !tbaa !207
  store ptr %i.d, ptr %0, align 8, !tbaa !178
  invoke void @_ZN5folly6fibers5Baton4waitEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly7PromiseINS_4UnitEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #30
  unreachable

_ZN5folly7PromiseINS_4UnitEED2Ev.exit:            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7isReadyEv.exit, %_ZN5folly7PromiseINS_4UnitEED2Ev.exit
  ret void

bb.n:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.p

bb.o:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.aa, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN5folly10SemiFutureINS_4UnitEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN5folly7PromiseINS_4UnitEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::FutureInvalid", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.55)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly13FutureInvalidE, i64 16), ptr %0, align 8, !tbaa !96
  invoke void @_ZN5folly15throw_exceptionINS_13FutureInvalidEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_13FutureInvalidEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 2 uses
  tail call void @_ZN5folly13FutureInvalidC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly13FutureInvalidE, ptr nonnull @_ZNSt11logic_errorD2Ev) #28
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly13FutureInvalidC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly13FutureInvalidE, i64 16), ptr %0, align 8, !tbaa !96
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly13FutureInvalidD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly13FutureInvalid4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr @.str.67
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK5folly7futures6detail19KeepAliveOrDeferred19getDeferredExecutorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #12

declare void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.57") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !143
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !146
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !146
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_22FutureAlreadyContinuedEJEEEvDpT0_() local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::FutureAlreadyContinued", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.55)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly22FutureAlreadyContinuedE, i64 16), ptr %0, align 8, !tbaa !96
  invoke void @_ZN5folly15throw_exceptionINS_22FutureAlreadyContinuedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_22FutureAlreadyContinuedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 2 uses
  tail call void @_ZN5folly22FutureAlreadyContinuedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly22FutureAlreadyContinuedE, ptr nonnull @_ZNSt11logic_errorD2Ev) #28
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly22FutureAlreadyContinuedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly22FutureAlreadyContinuedE, i64 16), ptr %0, align 8, !tbaa !96
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly22FutureAlreadyContinuedD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly22FutureAlreadyContinued4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr @.str.68
}

declare void @_ZN5folly7futures6detail8CoreBase12setCallback_EONS_8FunctionIFvRS2_ONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEEEOSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationE(ptr noundef nonnull align 16 dereferenceable(136), ptr noundef nonnull align 16 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreINS_4UnitEE11setCallbackIZNRS_10SemiFutureIS6_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSG_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESE_PNS_17exception_wrapperEE_Lb1ELb0EvJSO_SE_SQ_EEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(48) %3) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNRS_10SemiFutureIS3_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSD_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESB_PNS_17exception_wrapperEE_clESL_SB_SN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !372
  store i32 2, ptr %i.a, align 8, !tbaa !372
  %cond.i.i.i.i = icmp eq i32 %i.b, 1
  br i1 %cond.i.i.i.i, label %bb.c, label %_ZN5folly3TryINS_4UnitEE16emplaceExceptionIJNS_17exception_wrapperEEEERS4_DpOT_.exit.i.i, !prof !271

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !272
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly3TryINS_4UnitEE16emplaceExceptionIJNS_17exception_wrapperEEEERS4_DpOT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #21
  br label %_ZN5folly3TryINS_4UnitEE16emplaceExceptionIJNS_17exception_wrapperEEEERS4_DpOT_.exit.i.i

_ZN5folly3TryINS_4UnitEE16emplaceExceptionIJNS_17exception_wrapperEEEERS4_DpOT_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.f = load i64, ptr %2, align 8, !noalias !373
  store i64 %i.f, ptr %i.e, align 16, !alias.scope !373
  store i64 0, ptr %2, align 8, !noalias !373
  store i32 1, ptr %i.a, align 8, !tbaa !268
  br label %_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNRS_10SemiFutureIS3_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSD_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESB_PNS_17exception_wrapperEE_clESL_SB_SN_.exit

_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNRS_10SemiFutureIS3_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSD_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESB_PNS_17exception_wrapperEE_clESL_SB_SN_.exit: ; preds = %bb.a, %_ZN5folly3TryINS_4UnitEE16emplaceExceptionIJNS_17exception_wrapperEEEERS4_DpOT_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN5folly7PromiseINS_4UnitEE6setTryEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreINS_4UnitEE11setCallbackIZNRS_10SemiFutureIS7_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSH_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESF_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataESV_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNRS_10SemiFutureIS3_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSD_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESB_PNS_17exception_wrapperEE_D2Ev.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !206, !range !198, !noundef !202
  store i8 0, ptr %1, align 1, !tbaa !206
  store i8 %i.a, ptr %2, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207
  store ptr null, ptr %i.c, align 8, !tbaa !207
  store ptr %i.d, ptr %i.b, align 8, !tbaa !203
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !203  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNRS_10SemiFutureIS3_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSD_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESB_PNS_17exception_wrapperEE_D2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %1, align 8, !tbaa !197, !range !198, !noundef !202
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.f) #21
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !203
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.f, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.i)
          to label %_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNRS_10SemiFutureIS3_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSD_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESB_PNS_17exception_wrapperEE_D2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #30
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @abort() #30
  unreachable

_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNRS_10SemiFutureIS3_E4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSD_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESB_PNS_17exception_wrapperEE_D2Ev.exit: ; preds = %bb.f, %bb.c, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7PromiseINS_4UnitEE6setTryEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::ExecutorKeepAlive", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_14PromiseInvalidEJEEEvDpT0_() #18
  unreachable

_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i:   ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #21
  br i1 %i.c, label %bb.c, label %_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit

bb.c:                                             ; preds = %_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i
  tail call void @_ZN5folly6detail16throw_exception_INS_23PromiseAlreadySatisfiedEJEEEvDpT0_() #18
  unreachable

_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit: ; preds = %_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !203  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i64 0, ptr %2, align 8, !tbaa !244
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = load i32, ptr %1, align 8, !tbaa !268    ; 2 uses
  store i32 %i.f, ptr %i.e, align 8, !tbaa !268
  %cond.i.i.i.i = icmp eq i32 %i.f, 1
  br i1 %cond.i.i.i.i, label %bb.d, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

bb.d:                                             ; preds = %_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit
end_hunk_2
begin_hunk_3_@_ZZN5folly7futures6detail12WaitExecutor6detachEvENKUlvE_clEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.i = or disjoint i32 %i.f, 128
  %i.j = cmpxchg ptr %i.d, i32 %i.f, i32 %i.i seq_cst seq_cst, align 4, !noalias !521 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !386

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = extractvalue { i32, i1 } %i.j, 0
  store i32 %i.l, ptr %i.b, align 4, !noalias !521
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.m = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !521 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21, !noalias !521
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !521
  store i8 1, ptr %i.e, align 8, !tbaa !385, !alias.scope !521
  %i.n = load ptr, ptr %3, align 8, !tbaa !382    ; 4 uses
  %.not.i.i = icmp eq ptr %i.n, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -88
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %.neg.i.i ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store i8 1, ptr %i.p, align 8, !tbaa !225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 0)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !395
  %.not.i.i4 = icmp eq ptr %i.q, null
  br i1 %.not.i.i4, label %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EEC2EOS5_.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load <4 x ptr>, ptr %i.r, align 8, !tbaa !108
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.u = load <4 x ptr>, ptr %i.s, align 8, !tbaa !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false), !tbaa.struct !494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !494
  store <4 x ptr> %i.t, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !108
  store <4 x ptr> %i.u, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EEC2EOS5_.exit

_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EEC2EOS5_.exit: ; preds = %bb.d, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.v = atomicrmw and ptr %i.n, i32 -401 seq_cst, align 4 ; 2 uses
  %i.w = and i32 %i.v, -401
  store i32 %i.w, ptr %i.a, align 4, !tbaa !3
  %i.x = and i32 %i.v, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.e, !prof !125

bb.e:                                             ; preds = %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EEC2EOS5_.exit
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #30
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EEC2EOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.g:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7futures6detail10FutureBaseINS_4UnitEE12setCallback_IZNS1_8waitImplINS_10SemiFutureIS3_EES3_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EEE_EEvOS9_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Function", align 16  ; 11 uses
  %4 = alloca %"class.std::shared_ptr.57", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.57") align 8 %4)
  %i.a = load ptr, ptr %0, align 8, !tbaa !178    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load atomic i8, ptr %i.b acquire, align 1
  %i.d = and i8 %i.c, 108
  %.not1.i.i = icmp eq i8 %i.d, 0
  br i1 %.not1.i.i, label %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE16throwIfContinuedEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN5folly6detail16throw_exception_INS_22FutureAlreadyContinuedEJEEEvDpT0_() #18
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE16throwIfContinuedEv.exit.i: ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !178    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly7futures6detail10FutureBaseINS_4UnitEE7getCoreEv.exit.i

bb.d:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE16throwIfContinuedEv.exit.i
  invoke void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #18
          to label %.noexc4 unwind label %bb.p

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZN5folly7futures6detail10FutureBaseINS_4UnitEE7getCoreEv.exit.i: ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE16throwIfContinuedEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.f = load ptr, ptr %1, align 8, !tbaa !524, !nonnull !202, !align !329
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !206, !range !198, !noundef !202
  store i8 0, ptr %i.g, align 8, !tbaa !206
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207
  store ptr null, ptr %i.i, align 8, !tbaa !207
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr %i.f, ptr %3, align 16, !tbaa !370
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.h, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.j, ptr %i.n, align 16, !tbaa !203
  store ptr @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreINS_4UnitEE11setCallbackIZNS4_8waitImplINS_10SemiFutureIS6_EES6_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS6_EEE_EEvOSC_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESH_PNS_17exception_wrapperEE_Lb1ELb0EvJST_SH_SV_EEET2_DpT3_RNS1_4DataE, ptr %i.k, align 16, !tbaa !208
  store ptr @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreINS_4UnitEE11setCallbackIZNS5_8waitImplINS_10SemiFutureIS7_EES7_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS7_EEE_EEvOSD_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESI_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataES10_, ptr %i.l, align 8, !tbaa !210
  invoke void @_ZN5folly7futures6detail8CoreBase12setCallback_EONS_8FunctionIFvRS2_ONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEEEOSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationE(ptr noundef nonnull align 16 dereferenceable(160) %i.e, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseINS_4UnitEE7getCoreEv.exit.i
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !210  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call noundef i64 %i.o(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #21, !inline_history !526 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseINS_4UnitEE7getCoreEv.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !210  ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i5.i.i, label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call noundef i64 %i.r(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #21, !inline_history !526 ; 0 uses
  br label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i

_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

bb.i:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !92   ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.v, align 8, !tbaa !141
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !143
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !366
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !366
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i6 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.m ], [ %i.ai, %bb.n ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.o, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.p:                                             ; preds = %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %i.q, %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i ]
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly7PromiseINS_4UnitEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !197, !range !198, !noundef !202
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #21
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre.i.i, %bb.c ], [ %i.b, %bb.b ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.f)
          to label %_ZN5folly7PromiseINS_4UnitEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #30
  unreachable

_ZN5folly7PromiseINS_4UnitEED2Ev.exit:            ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreINS_4UnitEE11setCallbackIZNS4_8waitImplINS_10SemiFutureIS6_EES6_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS6_EEE_EEvOSC_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESH_PNS_17exception_wrapperEE_Lb1ELb0EvJST_SH_SV_EEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(48) %3) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNS1_8waitImplINS_10SemiFutureIS3_EES3_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EEE_EEvOS9_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESE_PNS_17exception_wrapperEE_clESQ_SE_SS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !372
  store i32 2, ptr %i.a, align 8, !tbaa !372
  %cond.i.i.i.i = icmp eq i32 %i.b, 1
  br i1 %cond.i.i.i.i, label %bb.c, label %_ZN5folly3TryINS_4UnitEE16emplaceExceptionIJNS_17exception_wrapperEEEERS4_DpOT_.exit.i.i, !prof !271

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !272
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly3TryINS_4UnitEE16emplaceExceptionIJNS_17exception_wrapperEEEERS4_DpOT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #21
  br label %_ZN5folly3TryINS_4UnitEE16emplaceExceptionIJNS_17exception_wrapperEEEERS4_DpOT_.exit.i.i

_ZN5folly3TryINS_4UnitEE16emplaceExceptionIJNS_17exception_wrapperEEEERS4_DpOT_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.f = load i64, ptr %2, align 8, !noalias !527
  store i64 %i.f, ptr %i.e, align 16, !alias.scope !527
  store i64 0, ptr %2, align 8, !noalias !527
  store i32 1, ptr %i.a, align 8, !tbaa !268
  br label %_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNS1_8waitImplINS_10SemiFutureIS3_EES3_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EEE_EEvOS9_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESE_PNS_17exception_wrapperEE_clESQ_SE_SS_.exit

_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNS1_8waitImplINS_10SemiFutureIS3_EES3_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EEE_EEvOS9_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESE_PNS_17exception_wrapperEE_clESQ_SE_SS_.exit: ; preds = %bb.a, %_ZN5folly3TryINS_4UnitEE16emplaceExceptionIJNS_17exception_wrapperEEEERS4_DpOT_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN5folly7PromiseINS_4UnitEE6setTryEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  %i.i = load ptr, ptr %3, align 16, !tbaa !524, !nonnull !202, !align !329
  tail call void @_ZN5folly6fibers5Baton4postEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreINS_4UnitEE11setCallbackIZNS5_8waitImplINS_10SemiFutureIS7_EES7_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS7_EEE_EEvOSD_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESI_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataES10_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNS1_8waitImplINS_10SemiFutureIS3_EES3_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EEE_EEvOS9_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESE_PNS_17exception_wrapperEE_D2Ev.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !524, !nonnull !202, !align !329
  store ptr %i.a, ptr %2, align 8, !tbaa !370
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !206, !range !198, !noundef !202
  store i8 0, ptr %i.c, align 8, !tbaa !206
  store i8 %i.d, ptr %i.b, align 8, !tbaa !197
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !207
  store ptr null, ptr %i.f, align 8, !tbaa !207
  store ptr %i.g, ptr %i.e, align 8, !tbaa !203
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !203  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNS1_8waitImplINS_10SemiFutureIS3_EES3_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EEE_EEvOS9_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESE_PNS_17exception_wrapperEE_D2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !197, !range !198, !noundef !202
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.i) #21
  %.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !203
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.i, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.m)
          to label %_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNS1_8waitImplINS_10SemiFutureIS3_EES3_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EEE_EEvOS9_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESE_PNS_17exception_wrapperEE_D2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #30
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @abort() #30
  unreachable

_ZZN5folly7futures6detail4CoreINS_4UnitEE11setCallbackIZNS1_8waitImplINS_10SemiFutureIS3_EES3_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EEE_EEvOS9_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESE_PNS_17exception_wrapperEE_D2Ev.exit: ; preds = %bb.f, %bb.c, %bb.a
  ret i64 0
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_clocklock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_3
