Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/EventBase?download=true
inline.NumInlined: 3021
inline.NumDeleted: 1480
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5folly29RequestContextSaverScopeGuardD2Ev:bb.a

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14054 ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !14063
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !14064
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !676
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #32, !call_target !14068, !inline_history !634
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !676
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #32, !call_target !14069, !inline_history !634
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13921
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !666
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.m:                                             ; preds = %bb.k
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.l ], [ %i.ag, %bb.m ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.n, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, !prof !14070

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #32
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.n
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #56
  unreachable
}

declare void @_ZN5folly27ExecutionObserverScopeGuardC1EPN5boost9intrusive4listINS_17ExecutionObserverEJNS2_18constant_time_sizeILb0EEEEEEPvNS4_12CallbackTypeE(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5folly27ExecutionObserverScopeGuardD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #3

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN5folly12EventHandler17unregisterHandlerEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare void @_ZN5folly12EventHandler15detachEventBaseEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14054 ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !14063
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !14064
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !676
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !call_target !14068, !inline_history !620
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !676
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !call_target !14069, !inline_history !620
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13921
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !666
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !14070

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE12eraseKeyIntoIS6_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14093 ; 2 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE8findImplIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmERKT_NS8_8PrefetchE.exit.thread, label %bb.b, !prof !14070

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !14179  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 14181476777654086739
  %i.h = lshr i128 %i.g, 64
  %i.i = trunc nuw i128 %i.h to i64
  %i.j = mul i64 %i.e, -4265267296055464877
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4265267296055464877       ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = and i64 %i.m, 255
  %i.o = lshr i64 %i.l, 22                        ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1) ; 3 uses
  %i.p = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.q = or disjoint i64 %i.p, 1
  %i.r = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = and i64 %i.b, 255                        ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %notmask.i = shl nsw i64 -1, %i.u
  %i.w = xor i64 %notmask.i, -1
  %i.x = load ptr, ptr %0, align 8, !tbaa !14094
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i42 = phi i64 [ %i.v, %bb.b ], [ %i.av, %bb.e ]
  %.026.i41 = phi i64 [ %i.o, %bb.b ], [ %i.aw, %bb.e ] ; 2 uses
  %i.y = and i64 %.026.i41, %i.w
  %i.z = shl nuw nsw i64 %i.y, 7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.ab, i32 0, i32 3, i32 1)
  %i.ac = load <16 x i8>, ptr %i.aa, align 16     ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.ac, %i.t
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  %i.ag = and i32 %i.af, 16383
  %.not = icmp eq i32 %i.ag, 0
  %i.ah = extractelement <16 x i8> %i.ac, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ai = icmp ne ptr %i.aa, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ai)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.012.0 = phi i32 [ %i.as, %.critedge.i ], [ %i.af, %.preheader ] ; 4 uses
  %i.aj = icmp ne i32 %.sroa.012.0, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0, i1 true)
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = getelementptr i8, ptr %i.aa, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14179
  %i.aq = icmp eq ptr %i.d, %i.ap
  br i1 %i.aq, label %bb.f, label %.critedge.i, !prof !667

.critedge.i:                                      ; preds = %bb.d
  %i.ar = add nuw nsw i32 %.sroa.012.0, 65535
  %i.as = and i32 %i.ar, %.sroa.012.0             ; 2 uses
  %i.at = and i32 %i.as, 16382
  %.not36 = icmp eq i32 %i.at, 0
  br i1 %.not36, label %.loopexit, label %bb.d, !llvm.loop !14457

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.au = icmp eq i8 %i.ah, 0
  br i1 %i.au, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE8findImplIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmERKT_NS8_8PrefetchE.exit.thread, label %bb.e, !prof !667

bb.e:                                             ; preds = %.loopexit
  %i.av = add i64 %.024.i42, -1                   ; 2 uses
  %i.aw = add i64 %i.q, %.026.i41
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE8findImplIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmERKT_NS8_8PrefetchE.exit.thread, label %bb.c, !llvm.loop !14458

bb.f:                                             ; preds = %bb.d
  %i.ax = getelementptr i8, ptr %i.an, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.ax, i64 %i.al, i64 %i.o, i64 %.sroa.speculated.i.i.i)
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE8findImplIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmERKT_NS8_8PrefetchE.exit.thread

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE8findImplIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmERKT_NS8_8PrefetchE.exit.thread: ; preds = %.loopexit, %bb.e, %bb.f, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %.loopexit ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14093
  %i.c = add i64 %i.b, -256                       ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !14093
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  %i.f = lshr i64 %i.d, 1
  %i.g = ptrtoint ptr %1 to i64
  %i.h = or i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14177
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.c, 256
  br i1 %i.l, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.d, %bb.c
  br label %.critedge.i.i.i

bb.d:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.d
  %i.o = phi i64 [ %i.q, %bb.d ], [ %2, %bb.c ]
  %i.p = phi ptr [ %i.r, %bb.d ], [ %1, %bb.c ]
  %i.q = add i64 %i.o, -1                         ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13921
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i, !prof !14070, !llvm.loop !14459

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.n, %.critedge.i.i.i.preheader ]
  %i.u = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -128 ; 4 uses
  %i.v = load <16 x i8>, ptr %i.u, align 16, !tbaa !13921
  %i.w = icmp eq <16 x i8> %i.v, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.y, 16383
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !14070, !llvm.loop !14460

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.z = xor i16 %i.y, 16383
  %i.aa = zext nneg i16 %i.z to i32
  %i.ab = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aa, i1 true)
  %i.ac = xor i32 %i.ab, 31
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = icmp ne ptr %i.u, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = shl nuw nsw i64 %i.ad, 3
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.ah, %bb.e ], [ %i.r, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %i.ai = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = lshr i64 %i.ai, 1
  %i.al = ptrtoint ptr %.sroa.01.0.i to i64
  %i.am = or i64 %i.ak, %i.al
  store i64 %i.am, ptr %i.i, align 8, !tbaa !14043
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i
  %i.an = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -8
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %.neg.i.i.i ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %2 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13921
  %.not.i.i7 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.18) #63
  unreachable

_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit
  store i8 0, ptr %i.ap, align 1, !tbaa !13921
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 14
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !14462
  %.not.i = icmp ult i8 %i.as, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE8clearTagEm.exit.i
  %i.at = shl i64 %4, 1
  %i.au = or disjoint i64 %i.at, 1
  %i.av = load i64, ptr %i.a, align 8, !tbaa !14093
  %i.aw = and i64 %i.av, 255
  %notmask.i.i = shl nsw i64 -1, %i.aw
  %i.ax = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !14094 ; 4 uses
  %i.az = and i64 %3, %i.ax
  %i.ba = shl nuw nsw i64 %i.az, 7                ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bc = icmp eq ptr %i.bb, %i.ao
  br i1 %i.bc, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %bb.g
  %.010.lcssa.i = phi i8 [ 0, %bb.g ], [ -16, %bb.i ]
  %i.bd = phi i64 [ %i.ba, %bb.g ], [ %i.bp, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 14 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !14462
  %i.bh = add i8 %i.bg, %.010.lcssa.i
  store i8 %i.bh, ptr %i.bf, align 2, !tbaa !14462
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.bi = phi i64 [ %i.bp, %bb.i ], [ %i.ba, %bb.g ]
  %.01126.i = phi i64 [ %i.bn, %bb.i ], [ %3, %bb.g ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 15 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14463 ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bl, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bm = add i8 %i.bl, -1
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !14463
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bn = add i64 %i.au, %.01126.i                ; 2 uses
  %i.bo = and i64 %i.bn, %i.ax
  %i.bp = shl nuw nsw i64 %i.bo, 7                ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bp
  %i.br = icmp eq ptr %i.bq, %i.ao
  br i1 %i.br, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #33

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE9clearImplILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14092 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14145
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %.thread22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_9WaitNeverEEEvRjRT_j:bb.a
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.n
  %i.p = load atomic i64, ptr %i.o acquire, align 32
  %i.q = and i64 %i.p, -2
  %i.r = icmp eq i64 %i.q, %i.d
  br i1 %i.r, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add i32 %.235, 1                         ; 2 uses
  %i.t = icmp eq i32 %i.s, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %i.t, label %.critedge, label %bb.c, !llvm.loop !14483

bb.e:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.g, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 3 uses
  %.049 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.u = shl i64 %indvars.iv, 2
  %i.v = and i64 %i.u, 4294967292
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.v ; 2 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 32 ; 2 uses
  %i.y = and i64 %i.x, -2
  %i.z = icmp eq i64 %i.y, %i.d
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = cmpxchg ptr %i.w, i64 %i.x, i64 0 seq_cst seq_cst, align 8
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  %i.ac = zext i1 %i.ab to i32
  %..0 = add i32 %.049, %i.ac
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %.049, %bb.e ], [ %..0, %bb.f ] ; 2 uses
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.ad = add i64 %indvars.iv.next, 4
  %i.ae = and i64 %i.ad, 4294967292
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.ae ; 2 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 32 ; 2 uses
  %i.ah = and i64 %i.ag, -2
  %i.ai = icmp eq i64 %i.ah, %i.d
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = cmpxchg ptr %i.af, i64 %i.ag, i64 0 seq_cst seq_cst, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  %i.al = zext i1 %i.ak to i32
  %..0.1 = add i32 %.1, %i.al
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.1 = phi i32 [ %.1, %bb.g ], [ %..0.1, %bb.h ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.e, !llvm.loop !14484

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.049.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod64 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.am = shl i64 %indvars.iv.epil.init, 2
  %i.an = and i64 %i.am, 4294967292
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.an ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 32 ; 2 uses
  %i.aq = and i64 %i.ap, -2
  %i.ar = icmp eq i64 %i.aq, %i.d
  br i1 %i.ar, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.epil.preheader
  %i.as = cmpxchg ptr %i.ao, i64 %i.ap, i64 0 seq_cst seq_cst, align 8
  %i.at = extractvalue { i64, i1 } %i.as, 1
  %i.au = zext i1 %i.at to i32
  %..0.epil = add i32 %.049.epil.init, %i.au
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.j, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %.049.epil.init, %.epil.preheader ], [ %..0.epil, %bb.j ] ; 2 uses
  %.not40 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not40, label %.critedge, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.av = shl i32 %.1.lcssa, 11                   ; 2 uses
  %i.aw = atomicrmw add ptr %0, i32 %i.av seq_cst, align 4
  %i.ax = add i32 %i.aw, %i.av
  store i32 %i.ax, ptr %1, align 4, !tbaa !666
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.preheader, %._crit_edge, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_9EventBase13tryDeregisterERNS0_18EventBaseLocalBaseEE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE"(ptr noundef nonnull align 16 dereferenceable(48) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !14486
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i64 @_ZN5folly3f146detail16F14VectorMapImplImSt10unique_ptrIvPFvPvEENS_23HeterogeneousAccessHashImvEENS_26HeterogeneousAccessEqualToImvEESaISt4pairIKmS7_EESt17integral_constantIbLb1EEE18eraseUnderlyingKeyImRKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #56
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail16F14VectorMapImplImSt10unique_ptrIvPFvPvEENS_23HeterogeneousAccessHashImvEENS_26HeterogeneousAccessEqualToImvEESaISt4pairIKmS7_EESt17integral_constantIbLb1EEE18eraseUnderlyingKeyImRKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14093 ; 2 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !14043  ; 3 uses
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw i128 %i.e, 14181476777654086739
  %i.g = lshr i128 %i.f, 64
  %i.h = trunc nuw i128 %i.g to i64
  %i.i = mul i64 %i.d, -4265267296055464877
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, -4265267296055464877       ; 2 uses
  %i.l = lshr i64 %i.k, 14
  %i.m = and i64 %i.l, 255
  %i.n = lshr i64 %i.k, 22
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1) ; 2 uses
  %i.o = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.p = or disjoint i64 %i.o, 1
  %i.q = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.r = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.t = and i64 %i.b, 255                        ; 2 uses
  %i.u = shl nuw i64 1, %i.t
  %notmask.i = shl nsw i64 -1, %i.t
  %i.v = xor i64 %notmask.i, -1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14092
  %i.y = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.023.i48 = phi i64 [ %i.u, %bb.b ], [ %i.ay, %bb.e ]
  %.025.i47 = phi i64 [ %i.n, %bb.b ], [ %i.az, %bb.e ] ; 2 uses
  %i.z = and i64 %.025.i47, %i.v
  %i.aa = shl nuw nsw i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa ; 3 uses
  %i.ac = load <16 x i8>, ptr %i.ab, align 16     ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.ac, %i.s
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  %i.ag = and i32 %i.af, 4095
  %.not = icmp eq i32 %i.ag, 0
  %i.ah = extractelement <16 x i8> %i.ac, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ai = icmp ne ptr %i.ab, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ai)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.010.0 = phi i32 [ %i.av, %.critedge.i ], [ %i.af, %.preheader ] ; 4 uses
  %i.aj = icmp ne i32 %.sroa.010.0, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.010.0, i1 true)
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = getelementptr i8, ptr %i.ab, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !666
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !14043
  %i.at = icmp eq i64 %i.d, %i.as
  br i1 %i.at, label %bb.f, label %.critedge.i, !prof !667

.critedge.i:                                      ; preds = %bb.d
  %i.au = add nuw nsw i32 %.sroa.010.0, 65535
  %i.av = and i32 %i.au, %.sroa.010.0             ; 2 uses
  %i.aw = and i32 %i.av, 4094
  %.not42 = icmp eq i32 %i.aw, 0
  br i1 %.not42, label %.loopexit, label %bb.d, !llvm.loop !14487

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ax = icmp eq i8 %i.ah, 0
  br i1 %i.ax, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.e, !prof !667

bb.e:                                             ; preds = %.loopexit
  %i.ay = add i64 %.023.i48, -1                   ; 2 uses
  %i.az = add i64 %i.p, %.025.i47
  %.not.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.c, !llvm.loop !14488

bb.f:                                             ; preds = %bb.d
  %i.ba = getelementptr i8, ptr %i.an, i64 16
  tail call void @_ZN5folly3f146detail16F14VectorMapImplImSt10unique_ptrIvPFvPvEENS_23HeterogeneousAccessHashImvEENS_26HeterogeneousAccessEqualToImvEESaISt4pairIKmS7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.ba, i64 %i.al, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %.loopexit, %bb.e, %bb.a, %bb.f
  %.0 = phi i64 [ 1, %bb.f ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %.loopexit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail16F14VectorMapImplImSt10unique_ptrIvPFvPvEENS_23HeterogeneousAccessHashImvEENS_26HeterogeneousAccessEqualToImvEESaISt4pairIKmS7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.239, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !14091  ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !666    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %3, ptr %4, align 8, !tbaa !14492
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISB_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKmS8_EE_EEvSO_SQ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14046 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14046
  invoke void %i.h(ptr noundef nonnull %i.f)
          to label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #56
  unreachable

_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14093 ; 2 uses
  %i.m = lshr i64 %i.l, 8                         ; 5 uses
  %.not = icmp eq i64 %i.m, %i.c
  br i1 %.not, label %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp ne i64 %i.m, 0
  call void @llvm.assume(i1 %i.o)
  %i.p = load ptr, ptr %0, align 8, !tbaa !14091
  %i.q = and i64 %i.m, 4294967295
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14043 ; 2 uses
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw i128 %i.t, 14181476777654086739
  %i.v = lshr i128 %i.u, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = mul i64 %i.s, -4265267296055464877
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4265267296055464877       ; 2 uses
  %i.aa = lshr i64 %i.z, 14
  %i.ab = and i64 %i.aa, 255
  %i.ac = lshr i64 %i.z, 22
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1) ; 2 uses
  %i.ad = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ag = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ai = and i64 %i.l, 255
  %notmask.i = shl nsw i64 -1, %i.ai
  %i.aj = xor i64 %notmask.i, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14092
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %.025.i = phi i64 [ %i.ac, %bb.d ], [ %i.bg, %.loopexit ] ; 2 uses
  %i.am = and i64 %.025.i, %i.aj
  %i.an = shl nuw nsw i64 %i.am, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an ; 3 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16
  %i.aq = icmp eq <16 x i8> %i.ap, %i.ah
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = and i32 %i.as, 4095
  %.not45 = icmp eq i32 %i.at, 0
  br i1 %.not45, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.au = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.au)
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.024.0 = phi i32 [ %i.be, %.critedge.i ], [ %i.as, %.preheader ] ; 4 uses
  %i.av = icmp ne i32 %.sroa.024.0, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0, i1 true)
  %i.ax = shl nuw nsw i32 %i.aw, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %i.ao, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !666
  %i.bc = icmp eq i32 %i.bb, %i.n
  br i1 %i.bc, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSC_8PrefetchE.exit, label %.critedge.i, !prof !667

.critedge.i:                                      ; preds = %bb.f
  %i.bd = add nuw nsw i32 %.sroa.024.0, 65535
  %i.be = and i32 %i.bd, %.sroa.024.0             ; 2 uses
  %i.bf = and i32 %i.be, 4094
  %.not46 = icmp eq i32 %i.bf, 0
  br i1 %.not46, label %.loopexit, label %bb.f, !llvm.loop !14489

.loopexit:                                        ; preds = %.critedge.i, %bb.e
  %i.bg = add i64 %i.ae, %.025.i
  br label %bb.e, !llvm.loop !14490

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSC_8PrefetchE.exit: ; preds = %bb.f
  %i.bh = getelementptr i8, ptr %i.az, i64 16
  store i32 %i.b, ptr %i.bh, align 4, !tbaa !666
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.bj = load <2 x i64>, ptr %i.bi, align 8, !tbaa !13921
  store <2 x i64> %i.bj, ptr %i.d, align 8, !tbaa !13921
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !14046
  store i64 %i.bl, ptr %i.e, align 8, !tbaa !14046
  store ptr null, ptr %i.bk, align 8, !tbaa !14046
  br label %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit

_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit: ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSC_8PrefetchE.exit, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISB_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKmS8_EE_EEvSO_SQ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -4
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg.i.i ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !14494
  %.not = icmp ult i8 %i.d, 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !14091
  %i.f = load i32, ptr %1, align 4, !tbaa !666
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14043 ; 2 uses
  %i.j = zext i64 %i.i to i128
  %i.k = mul nuw i128 %i.j, 14181476777654086739
  %i.l = lshr i128 %i.k, 64
  %i.m = trunc nuw i128 %i.l to i64
  %i.n = mul i64 %i.i, -4265267296055464877
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -4265267296055464877       ; 2 uses
  %i.q = lshr i64 %i.p, 14
  %i.r = and i64 %i.q, 255
  %i.s = lshr i64 %i.p, 22
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.t = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.u = or disjoint i64 %i.t, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ 1, %bb.a ], [ %i.u, %bb.b ]
  %.sroa.04.0 = phi i64 [ 0, %bb.a ], [ %i.s, %bb.b ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14093
  %i.x = add i64 %i.w, -256
  store i64 %i.x, ptr %i.v, align 8, !tbaa !14093
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %2 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13921
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.18) #63
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i: ; preds = %bb.c
  store i8 0, ptr %i.y, align 1, !tbaa !13921
  %i.aa = load i8, ptr %i.c, align 2, !tbaa !14494
  %.not.i.i = icmp ult i8 %i.aa, 16
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !14093
  %i.ac = and i64 %i.ab, 255
  %notmask.i.i.i = shl nsw i64 -1, %i.ac
  %i.ad = xor i64 %notmask.i.i.i, -1              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !14092 ; 4 uses
  %i.ag = and i64 %.sroa.04.0, %i.ad
  %i.ah = shl nuw nsw i64 %i.ag, 6                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %.thread.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %bb.g, %bb.e
  %.010.lcssa.i.i = phi i8 [ 0, %bb.e ], [ -16, %bb.g ]
  %i.ak = phi i64 [ %i.ah, %bb.e ], [ %i.aw, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 14 ; 2 uses
  %i.an = load i8, ptr %i.am, align 2, !tbaa !14494
  %i.ao = add i8 %i.an, %.010.lcssa.i.i
  store i8 %i.ao, ptr %i.am, align 2, !tbaa !14494
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %i.ap = phi i64 [ %i.aw, %bb.g ], [ %i.ah, %bb.e ]
  %.01126.i.i = phi i64 [ %i.au, %bb.g ], [ %.sroa.04.0, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 15 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14495 ; 2 uses
  %.not.i17.i.i = icmp eq i8 %i.as, -2
  br i1 %.not.i17.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.at = add i8 %i.as, -1
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !14495
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.au = add i64 %.01126.i.i, %.sroa.5.0         ; 2 uses
  %i.av = and i64 %i.au, %i.ad
  %i.aw = shl nuw nsw i64 %i.av, 6                ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aw
  %i.ay = icmp eq ptr %i.ax, %i.b
  br i1 %i.ay, label %.thread.i.i, label %.lr.ph.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i, %.thread.i.i
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #37

declare ptr @event_base_new() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5folly9EventBase14getTestBackendEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.71") align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #59, !noalias !14498 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !noalias !14498
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN12_GLOBAL__N_116EventBaseBackendE, i64 16), ptr %i.a, align 8, !tbaa !676, !noalias !14498
  %i.c = invoke ptr @event_base_new()
          to label %_ZNSt10unique_ptrIN12_GLOBAL__N_120TestEventBaseBackendESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !14498

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #57, !noalias !14498
  resume { ptr, i32 } %i.d

_ZNSt10unique_ptrIN12_GLOBAL__N_120TestEventBaseBackendESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.e, align 8, !tbaa !14102, !noalias !14498
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN12_GLOBAL__N_120TestEventBaseBackendE, i64 16), ptr %i.a, align 8, !tbaa !676, !noalias !14498
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %1, ptr %i.f, align 8, !tbaa !14192, !noalias !14498
  store ptr %i.a, ptr %0, align 8, !tbaa !14103
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_116EventBaseBackendD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN12_GLOBAL__N_116EventBaseBackendE, i64 16), ptr %0, align 8, !tbaa !676
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14102
  invoke void @event_base_free(ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #56
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120TestEventBaseBackendD0Ev(ptr noundef nonnull align 8 dereferenceable(44) initializes((0, 8)) %0) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN12_GLOBAL__N_116EventBaseBackendE, i64 16), ptr %0, align 8, !tbaa !676
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14102
  invoke void @event_base_free(ptr noundef %i.b)
          to label %_ZN12_GLOBAL__N_116EventBaseBackendD2Ev.exit unwind label %bb.b, !inline_history !14112

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #56, !inline_history !14112
  unreachable

_ZN12_GLOBAL__N_116EventBaseBackendD2Ev.exit:     ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #57
  ret void
}
end_hunk_1
