Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_exception_safety_test?download=true
inline.NumInlined: 38847
inline.NumDeleted: 10073
loop-unroll.NumCompletelyUnrolled: 444
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 449
begin_hunk_0_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE0EEELm4ESaIS6_EE6InsertINS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEESC_PKS6_T_m:bb.a
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.l) ; 7 uses
  %i.o = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.o, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i, !prof !125

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc44 unwind label %bb.w

.noexc44:                                         ; preds = %bb.e
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31
          to label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit unwind label %bb.w ; 9 uses

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 4 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.loopexit138, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit, %bb.h
  %.sroa.0135.0 = phi ptr [ %i.y, %bb.h ], [ %2, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit ] ; 2 uses
  %.013.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.013.i.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0135.0)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.s, i64 noundef %.013.i.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0135.0, i64 4
  %i.z = add nuw i64 %.013.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %3
  br i1 %exitcond.not.i.i, label %.loopexit138, label %.lr.ph.i.i, !llvm.loop !17

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #32
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable

.loopexit138:                                     ; preds = %bb.h, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit
  store ptr %i.s, ptr %4, align 8, !tbaa !147
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.ac, align 8, !tbaa !57
  %.not.i.i46 = icmp eq ptr %1, %.sink2.i
  br i1 %.not.i.i46, label %.loopexit, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %.loopexit138, %bb.m
  %.sroa.0111.0 = phi ptr [ %i.ai, %bb.m ], [ %.sink2.i, %.loopexit138 ] ; 2 uses
  %.013.i.i50 = phi i64 [ %i.aj, %bb.m ], [ 0, %.loopexit138 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.013.i.i50
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0111.0)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i49
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.r, i64 noundef %.013.i.i50)
  invoke void @__cxa_rethrow() #29
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i49
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0111.0, i64 4 ; 2 uses
  %i.aj = add nuw i64 %.013.i.i50, 1              ; 2 uses
  %exitcond.not.i.i51 = icmp eq i64 %i.aj, %i.j
  br i1 %exitcond.not.i.i51, label %.loopexit, label %.lr.ph.i.i49, !llvm.loop !17

bb.n:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #32
  unreachable

bb.o:                                             ; preds = %bb.k
  unreachable

.loopexit:                                        ; preds = %bb.m, %.loopexit138
  %.sroa.0111.1 = phi ptr [ %.sink2.i, %.loopexit138 ], [ %i.ai, %bb.m ]
  store ptr %i.r, ptr %5, align 8, !tbaa !147
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.j, ptr %i.am, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k ; 2 uses
  %i.ao = sub i64 %.sink1.i, %i.j
  %.not.i = icmp eq i64 %.sink1.i, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %bb.r
  %.sroa.0111.2 = phi ptr [ %i.au, %bb.r ], [ %.sroa.0111.1, %.loopexit ] ; 2 uses
  %.013.i = phi i64 [ %i.av, %bb.r ], [ 0, %.loopexit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.013.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0111.2)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #27 ; 0 uses
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.an, i64 noundef %.013.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.t unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0111.2, i64 4
  %i.av = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %i.ao
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !17

bb.s:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #32
  unreachable

bb.t:                                             ; preds = %bb.p
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit: ; preds = %bb.r, %.loopexit
  %.not.i57174 = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i57174, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i: ; preds = %.lr.ph
  %.not.i57 = icmp eq i64 %i.ay, 0
  br i1 %.not.i57, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph, !llvm.loop !3

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i
  %.0.i175 = phi i64 [ %i.ay, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i ], [ %.sink1.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit ]
  %i.ay = add nsw i64 %.0.i175, -1                ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.ay
  invoke void @_ZN7testing19exceptions_internal18ConstructorTracker16ObjectDestructedEPv(ptr noundef nonnull align 4 dereferenceable(4) %i.az)
          to label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i unwind label %bb.u, !llvm.loop !3

bb.u:                                             ; preds = %.lr.ph
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #32
  unreachable

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge: ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit
  %i.bc = load i64, ptr %0, align 8, !tbaa !57
  %i.bd = trunc i64 %i.bc to i1
  br i1 %i.bd, label %bb.v, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit

bb.v:                                             ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.bf = load i64, ptr %i.e, align 8, !tbaa !60
  %i.bg = shl i64 %i.bf, 2
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit: ; preds = %bb.v, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  store ptr %i.r, ptr %i.c, align 8, !tbaa !60
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !60
  %i.bh = shl nuw i64 %i.l, 1
  %i.bi = or disjoint i64 %i.bh, 1
  store i64 %i.bi, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.aj

bb.w:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i, %bb.e, %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.w, %bb.q, %bb.l
  %.sroa.0113.0 = phi ptr [ %i.r, %bb.g ], [ %i.r, %bb.l ], [ null, %bb.w ], [ %i.r, %bb.q ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.speculated.i, %bb.g ], [ %.sroa.speculated.i, %bb.l ], [ 0, %bb.w ], [ %.sroa.speculated.i, %bb.q ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.ah, %bb.l ], [ %i.bj, %bb.w ], [ %i.at, %bb.q ] ; 2 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.not.i66 = icmp eq ptr %.sroa.0113.0, null
  br i1 %.not.i66, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit67, label %bb.x

bb.x:                                             ; preds = %.body
  %i.bk = shl nuw nsw i64 %.sroa.9.0, 2
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0113.0, i64 noundef %i.bk) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit67

bb.y:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink1.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %.sroa.speculated ; 4 uses
  %i.bm = sub i64 %i.l, %.sroa.speculated         ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink2.i, i64 %i.i ; 4 uses
  %i.bo = sub nuw i64 %.sroa.speculated, %i.k
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bm ; 2 uses
  %i.bq = sub i64 %3, %i.bm
  %.not.i.i68 = icmp eq i64 %i.l, %.sroa.speculated ; 2 uses
  br i1 %.not.i.i68, label %.loopexit140, label %.lr.ph.i.i71.preheader

.lr.ph.i.i71.preheader:                           ; preds = %bb.y
  %i.br = sub i64 %.sroa.speculated, %3
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.br
  br label %.lr.ph.i.i71

.lr.ph.i.i71:                                     ; preds = %.lr.ph.i.i71.preheader, %bb.ab
  %.sroa.0109.0 = phi ptr [ %i.by, %bb.ab ], [ %i.bs, %.lr.ph.i.i71.preheader ] ; 2 uses
  %.013.i.i72 = phi i64 [ %i.bz, %bb.ab ], [ 0, %.lr.ph.i.i71.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.013.i.i72
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0109.0)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i71
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = tail call ptr @__cxa_begin_catch(ptr %i.bv) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.bl, i64 noundef %.013.i.i72)
  invoke void @__cxa_rethrow() #29
          to label %bb.ad unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body74 unwind label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i71
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0109.0, i64 4
  %i.bz = add nuw i64 %.013.i.i72, 1              ; 2 uses
  %exitcond.not.i.i73 = icmp eq i64 %i.bz, %i.bm
  br i1 %exitcond.not.i.i73, label %.loopexit140, label %.lr.ph.i.i71, !llvm.loop !17

bb.ac:                                            ; preds = %bb.aa
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #32
  unreachable

bb.ad:                                            ; preds = %bb.z
  unreachable

.loopexit140:                                     ; preds = %bb.ab, %bb.y
  store ptr %i.bl, ptr %6, align 8, !tbaa !147
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bm, ptr %i.cc, align 8, !tbaa !57
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.g
  %i.cg = ashr exact i64 %i.cf, 2                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit140, %.noexc77
  %.010.i.i.i.i.i = phi i64 [ %i.cl, %.noexc77 ], [ %i.cg, %.loopexit140 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ci, %.noexc77 ], [ %i.bl, %.loopexit140 ]
  %.078.i.i.i.i.i = phi ptr [ %i.cj, %.noexc77 ], [ %i.cd, %.loopexit140 ]
  %i.ci = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 3 uses
  store i32 938550620, ptr %i.ci, align 4, !tbaa !136
  invoke void @_ZN7testing19exceptions_internal10MaybeThrowESt17basic_string_viewIcSt11char_traitsIcEEb(i64 126, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing13ThrowingValueILNS_8TypeSpecE0EEaSEOS2_, i1 noundef zeroext false)
          to label %.noexc77 unwind label %.loopexit.split-lp

.noexc77:                                         ; preds = %.lr.ph.i.i.i.i.i
  %i.cj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !136
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !136
  %i.cl = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cm = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit, !llvm.loop !41

_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit: ; preds = %.noexc77, %.loopexit140
  br i1 %.not.i.i68, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit, %.noexc83
  %.sroa.0135.1 = phi ptr [ %i.cp, %.noexc83 ], [ %2, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.05.i = phi i64 [ %i.cq, %.noexc83 ], [ 0, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.05.i ; 2 uses
  store i32 938550620, ptr %i.cn, align 4, !tbaa !136
  invoke void @_ZN7testing19exceptions_internal10MaybeThrowESt17basic_string_viewIcSt11char_traitsIcEEb(i64 126, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing13ThrowingValueILNS_8TypeSpecE0EEaSEOS2_, i1 noundef zeroext false)
          to label %.noexc83 unwind label %.loopexit139

.noexc83:                                         ; preds = %.lr.ph.i81
  %i.co = load i32, ptr %.sroa.0135.1, align 4, !tbaa !136
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !136
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0135.1, i64 4 ; 2 uses
  %i.cq = add nuw i64 %.05.i, 1                   ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %i.cq, %i.bm
  br i1 %exitcond.not.i82, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i81, !llvm.loop !23

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit: ; preds = %.noexc83, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit
  %.sroa.0135.2 = phi ptr [ %2, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit ], [ %i.cp, %.noexc83 ]
  %.not.i84 = icmp eq i64 %3, %i.bm
  br i1 %.not.i84, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit97, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit, %bb.ag
  %.sroa.0135.3 = phi ptr [ %i.cw, %bb.ag ], [ %.sroa.0135.2, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit ] ; 2 uses
  %.013.i88 = phi i64 [ %i.cx, %bb.ag ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.013.i88
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.cr, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0135.3)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i87
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  %i.cu = tail call ptr @__cxa_begin_catch(ptr %i.ct) #27 ; 0 uses
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.bp, i64 noundef %.013.i88)
  invoke void @__cxa_rethrow() #29
          to label %bb.ai unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body74 unwind label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i87
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0135.3, i64 4
  %i.cx = add nuw i64 %.013.i88, 1                ; 2 uses
  %exitcond.not.i89 = icmp eq i64 %i.cx, %i.bq
  br i1 %exitcond.not.i89, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit97, label %.lr.ph.i87, !llvm.loop !17

bb.ah:                                            ; preds = %bb.af
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  tail call void @__clang_call_terminate(ptr %i.cz) #32
  unreachable

bb.ai:                                            ; preds = %bb.ae
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit97: ; preds = %bb.ag, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit
  %i.da = shl i64 %3, 1
  %i.db = load i64, ptr %0, align 8, !tbaa !57
  %i.dc = add i64 %i.db, %i.da
  store i64 %i.dc, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aj

.loopexit139:                                     ; preds = %.lr.ph.i81
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.loopexit.split-lp:                               ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.body74:                                          ; preds = %.loopexit139, %.loopexit.split-lp, %bb.af, %bb.aa
  %eh.lpad-body75 = phi { ptr, i32 } [ %i.bx, %bb.aa ], [ %i.cv, %bb.af ], [ %lpad.loopexit, %.loopexit139 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit67

bb.aj:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit97, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit
  %.0 = phi ptr [ %i.s, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit ], [ %i.bn, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit97 ]
  ret ptr %.0
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvPN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EEEEZN12_GLOBAL__N_123OneSizeTest_Insert_TestINSB_10TestParamsIS8_JLm8EEEEE8TestBodyEvEUlS9_E_E9_M_invokeERKSt9_Any_dataOS9_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #32
  unreachable

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit6.i.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  invoke void @_ZN7testing19exceptions_internal18ConstructorTracker16ObjectDestructedEPv(ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit4.i.i.i unwind label %bb.h

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  invoke void @_ZN7testing19exceptions_internal18ConstructorTracker16ObjectDestructedEPv(ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZSt10__invoke_rIvRZN12_GLOBAL__N_123OneSizeTest_Insert_TestINS0_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS6_8TypeSpecE2EEELm4ESaIS9_EEEJLm8EEEEE8TestBodyEvEUlPSB_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #32
  unreachable

bb.h:                                             ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit6.i.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #32
  unreachable

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit4.i.i.i: ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit6.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.i

_ZSt10__invoke_rIvRZN12_GLOBAL__N_123OneSizeTest_Insert_TestINS0_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS6_8TypeSpecE2EEELm4ESaIS9_EEEJLm8EEEEE8TestBodyEvEUlPSB_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EEEEZN12_GLOBAL__N_123OneSizeTest_Insert_TestINSB_10TestParamsIS8_JLm8EEEEE8TestBodyEvEUlS9_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123OneSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123OneSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123OneSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123OneSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN12_GLOBAL__N_123OneSizeTest_Insert_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE2EEELm4ESaIS8_EEEJLm8EEEEE8TestBodyEvEUlPSA_E_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !111
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123OneSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123OneSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123OneSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE6InsertINS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEESC_PKS6_T_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::inlined_vector_internal::ConstructionTransaction.758", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20260526::inlined_vector_internal::ConstructionTransaction.758", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !57, !noalias !2710 ; 2 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !2710
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !2710
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 11 uses
  %.sink.i = select i1 %i.b, i64 %i.f, i64 4      ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 6 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = ptrtoint ptr %.sink2.i to i64            ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 4 uses
  %i.k = add i64 %i.j, %3                         ; 4 uses
  %i.l = add i64 %.sink1.i, %3                    ; 6 uses
  %i.m = icmp ugt i64 %i.l, %.sink.i
  br i1 %i.m, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.n = shl i64 %.sink.i, 1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.l) ; 4 uses
  %i.o = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.o, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i, !prof !125

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit63

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc44 unwind label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit63

.noexc44:                                         ; preds = %bb.e
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31
          to label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit unwind label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit63 ; 4 uses

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 2 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.loopexit126, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit, %.lr.ph.i.i
  %.sroa.0124.0 = phi ptr [ %i.u, %.lr.ph.i.i ], [ %2, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit ] ; 2 uses
  %.012.i.i = phi i64 [ %i.v, %.lr.ph.i.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.012.i.i
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0124.0) #27
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0124.0, i64 4
  %i.v = add nuw i64 %.012.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.v, %3
  br i1 %exitcond.not.i.i, label %.loopexit126, label %.lr.ph.i.i, !llvm.loop !18

.loopexit126:                                     ; preds = %.lr.ph.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit
  %.not.i.i46 = icmp eq ptr %1, %.sink2.i
  br i1 %.not.i.i46, label %.loopexit, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %.loopexit126, %.lr.ph.i.i49
  %.sroa.0100.0 = phi ptr [ %i.x, %.lr.ph.i.i49 ], [ %.sink2.i, %.loopexit126 ] ; 2 uses
  %.012.i.i50 = phi i64 [ %i.y, %.lr.ph.i.i49 ], [ 0, %.loopexit126 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.012.i.i50
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0100.0) #27
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0100.0, i64 4 ; 2 uses
  %i.y = add nuw i64 %.012.i.i50, 1               ; 2 uses
  %exitcond.not.i.i51 = icmp eq i64 %i.y, %i.j
  br i1 %exitcond.not.i.i51, label %.loopexit, label %.lr.ph.i.i49, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph.i.i49, %.loopexit126
  %.sroa.0100.1 = phi ptr [ %.sink2.i, %.loopexit126 ], [ %i.x, %.lr.ph.i.i49 ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k
  %i.aa = sub i64 %.sink1.i, %i.j
  %.not.i = icmp eq i64 %.sink1.i, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph.i
  %.sroa.0100.2 = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.0100.1, %.loopexit ] ; 2 uses
  %.012.i = phi i64 [ %i.ad, %.lr.ph.i ], [ 0, %.loopexit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.012.i
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0100.2) #27
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0100.2, i64 4
  %i.ad = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %i.aa
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !18

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit: ; preds = %.lr.ph.i, %.loopexit
  %.not.i53135 = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i53135, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i: ; preds = %.lr.ph
  %.not.i53 = icmp eq i64 %i.ae, 0
  br i1 %.not.i53, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph, !llvm.loop !5

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i
  %.0.i136 = phi i64 [ %i.ae, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i ], [ %.sink1.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit ]
  %i.ae = add nsw i64 %.0.i136, -1                ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.ae
  invoke void @_ZN7testing19exceptions_internal18ConstructorTracker16ObjectDestructedEPv(ptr noundef nonnull align 4 dereferenceable(4) %i.af)
          to label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i unwind label %bb.f, !llvm.loop !5

bb.f:                                             ; preds = %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #32
  unreachable

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge: ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit
  %i.ai = load i64, ptr %0, align 8, !tbaa !57
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit

bb.g:                                             ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.al = load i64, ptr %i.e, align 8, !tbaa !60
  %i.am = shl i64 %i.al, 2
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.am) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit: ; preds = %bb.g, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  store ptr %i.r, ptr %i.c, align 8, !tbaa !60
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !60
  %i.an = shl nuw i64 %i.l, 1
  %i.ao = or disjoint i64 %i.an, 1
  store i64 %i.ao, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.i

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit63: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i, %bb.e, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.ap

bb.h:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink1.i) ; 7 uses
  %i.aq = getelementptr [4 x i8], ptr %.sink2.i, i64 %.sroa.speculated ; 6 uses
  %i.ar = sub i64 %i.l, %.sroa.speculated         ; 8 uses
  %i.as = getelementptr i8, ptr %.sink2.i, i64 %i.i ; 5 uses
  %i.at = sub nuw i64 %.sroa.speculated, %i.k
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ar
  %i.av = sub i64 %3, %i.ar
  %.not.i.i64 = icmp eq i64 %i.l, %.sroa.speculated ; 2 uses
  br i1 %.not.i.i64, label %.loopexit127, label %.lr.ph.i.i67.preheader

.lr.ph.i.i67.preheader:                           ; preds = %bb.h
  %i.aw = sub i64 %.sroa.speculated, %3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.aw
  br label %.lr.ph.i.i67

.lr.ph.i.i67:                                     ; preds = %.lr.ph.i.i67.preheader, %.lr.ph.i.i67
  %.sroa.098.0 = phi ptr [ %i.az, %.lr.ph.i.i67 ], [ %i.ax, %.lr.ph.i.i67.preheader ] ; 2 uses
  %.012.i.i68 = phi i64 [ %i.ba, %.lr.ph.i.i67 ], [ 0, %.lr.ph.i.i67.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.012.i.i68
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.098.0) #27
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.098.0, i64 4
  %i.ba = add nuw i64 %.012.i.i68, 1              ; 2 uses
  %exitcond.not.i.i69 = icmp eq i64 %i.ba, %i.ar
  br i1 %exitcond.not.i.i69, label %.loopexit127, label %.lr.ph.i.i67, !llvm.loop !18

.loopexit127:                                     ; preds = %.lr.ph.i.i67, %bb.h
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at ; 6 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.g                     ; 3 uses
  %i.be = ashr exact i64 %i.bd, 2                 ; 7 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.loopexit127
  %min.iters.check = icmp ult i64 %i.be, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader164, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bg = shl i64 %.sroa.speculated, 2            ; 2 uses
  %i.bh = sub i64 %i.bg, %i.bd
  %scevgep = getelementptr i8, ptr %.sink2.i, i64 %i.bh
  %i.bi = add i64 %i.bg, %i.g
  %i.bj = add i64 %i.bd, %i.h
  %i.bk = shl i64 %i.k, 2
  %i.bl = add i64 %i.bj, %i.bk
  %i.bm = sub i64 %i.bi, %i.bl
  %scevgep137 = getelementptr i8, ptr %.sink2.i, i64 %i.bm
  %bound0 = icmp ult ptr %scevgep, %i.bb
  %bound1 = icmp ult ptr %scevgep137, %i.aq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader164, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %i.bn = and i64 %i.be, 7
  %i.bo = mul i64 %n.vec, -4                      ; 2 uses
  %i.bp = getelementptr i8, ptr %i.aq, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bb, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.br ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.bb, i64 %i.br ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  store <4 x i32> splat (i32 938550620), ptr %i.bs, align 4, !tbaa !140, !alias.scope !2711, !noalias !2712
  store <4 x i32> splat (i32 938550620), ptr %i.bt, align 4, !tbaa !140, !alias.scope !2711, !noalias !2712
  %i.bu = getelementptr inbounds i8, ptr %next.gep138, i64 -16
  %i.bv = getelementptr inbounds i8, ptr %next.gep138, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !140, !alias.scope !2712
  %wide.load139 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !140, !alias.scope !2712
  store <4 x i32> %wide.load, ptr %i.bs, align 4, !tbaa !140, !alias.scope !2711, !noalias !2712
  store <4 x i32> %wide.load139, ptr %i.bt, align 4, !tbaa !140, !alias.scope !2711, !noalias !2712
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !2703

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i.preheader164

.lr.ph.i.i.i.i.i.preheader164:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.i.ph = phi i64 [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.078.i.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader164, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader164 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader164 ]
  %.078.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader164 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 3 uses
  store i32 938550620, ptr %i.by, align 4, !tbaa !140
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !140
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !140
  %i.ca = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cb = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit, !llvm.loop !2704

_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.loopexit127
  br i1 %.not.i.i64, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit
  %min.iters.check149 = icmp ult i64 %i.ar, 20
  br i1 %min.iters.check149, label %.lr.ph.i72.preheader162, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i72.preheader
  %i.cc = shl i64 %i.l, 2                         ; 2 uses
  %i.cd = add i64 %i.cc, %i.g
  %i.ce = shl i64 %.sroa.speculated, 2            ; 2 uses
  %i.cf = add i64 %i.ce, %i.h
  %i.cg = sub i64 %i.cd, %i.cf
  %scevgep143 = getelementptr i8, ptr %.sink2.i, i64 %i.cg
  %i.ch = sub i64 %i.cc, %i.ce
  %scevgep144 = getelementptr i8, ptr %2, i64 %i.ch
  %bound0145 = icmp ult ptr %1, %scevgep144
  %bound1146 = icmp ult ptr %2, %scevgep143
  %found.conflict147 = and i1 %bound0145, %bound1146
  br i1 %found.conflict147, label %.lr.ph.i72.preheader162, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck142
  %n.vec151 = and i64 %i.ar, -8                   ; 4 uses
  %i.ci = shl i64 %n.vec151, 2
  %i.cj = getelementptr i8, ptr %2, i64 %i.ci     ; 2 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next157, %vector.body152 ] ; 3 uses
  %i.ck = shl i64 %index153, 2
  %next.gep154 = getelementptr i8, ptr %2, i64 %i.ck ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index153 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  store <4 x i32> splat (i32 938550620), ptr %i.cl, align 4, !tbaa !140, !alias.scope !2713, !noalias !2714
  store <4 x i32> splat (i32 938550620), ptr %i.cm, align 4, !tbaa !140, !alias.scope !2713, !noalias !2714
  %i.cn = getelementptr i8, ptr %next.gep154, i64 16
  %wide.load155 = load <4 x i32>, ptr %next.gep154, align 4, !tbaa !140, !alias.scope !2714
  %wide.load156 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !140, !alias.scope !2714
  store <4 x i32> %wide.load155, ptr %i.cl, align 4, !tbaa !140, !alias.scope !2713, !noalias !2714
  store <4 x i32> %wide.load156, ptr %i.cm, align 4, !tbaa !140, !alias.scope !2713, !noalias !2714
  %index.next157 = add nuw i64 %index153, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next157, %n.vec151
  br i1 %i.co, label %middle.block158, label %vector.body152, !llvm.loop !2708

middle.block158:                                  ; preds = %vector.body152
  %cmp.n159 = icmp eq i64 %i.ar, %n.vec151
  br i1 %cmp.n159, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i72.preheader162

.lr.ph.i72.preheader162:                          ; preds = %vector.memcheck142, %.lr.ph.i72.preheader, %middle.block158
  %.ph = phi ptr [ %2, %vector.memcheck142 ], [ %2, %.lr.ph.i72.preheader ], [ %i.cj, %middle.block158 ]
  %.05.i.ph = phi i64 [ 0, %vector.memcheck142 ], [ 0, %.lr.ph.i72.preheader ], [ %n.vec151, %middle.block158 ]
  br label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.lr.ph.i72.preheader162, %.lr.ph.i72
  %i.cp = phi ptr [ %i.cs, %.lr.ph.i72 ], [ %.ph, %.lr.ph.i72.preheader162 ] ; 2 uses
  %.05.i = phi i64 [ %i.ct, %.lr.ph.i72 ], [ %.05.i.ph, %.lr.ph.i72.preheader162 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.05.i ; 2 uses
  store i32 938550620, ptr %i.cq, align 4, !tbaa !140
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !140
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !140
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %i.ct = add nuw i64 %.05.i, 1                   ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.ct, %i.ar
  br i1 %exitcond.not.i73, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i72, !llvm.loop !2709

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit: ; preds = %.lr.ph.i72, %middle.block158, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit
  %.sroa.0124.1 = phi ptr [ %2, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit ], [ %i.cj, %middle.block158 ], [ %i.cs, %.lr.ph.i72 ]
  %.not.i74 = icmp eq i64 %3, %i.ar
  br i1 %.not.i74, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit86, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit, %.lr.ph.i77
  %.sroa.0124.2 = phi ptr [ %i.cv, %.lr.ph.i77 ], [ %.sroa.0124.1, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit ] ; 2 uses
  %.012.i78 = phi i64 [ %i.cw, %.lr.ph.i77 ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.012.i78
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.cu, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0124.2) #27
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0124.2, i64 4
  %i.cw = add nuw i64 %.012.i78, 1                ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %i.cw, %i.av
  br i1 %exitcond.not.i79, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit86, label %.lr.ph.i77, !llvm.loop !18

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit86: ; preds = %.lr.ph.i77, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit
  %i.cx = shl i64 %3, 1
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE0EEELm4ESaIS6_EE6InsertINS1_16CopyValueAdapterIS7_EEEEPS6_PKS6_T_m:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.n = shl i64 %.sink.i, 1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.l) ; 7 uses
  %i.o = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.o, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i, !prof !125

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc44 unwind label %bb.v

.noexc44:                                         ; preds = %bb.e
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31
          to label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit unwind label %bb.v ; 9 uses

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 4 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.loopexit130, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit, %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE13ConstructNextERS7_PS6_.exit.i.i
  %.013.i.i = phi i64 [ %i.y, %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE13ConstructNextERS7_PS6_.exit.i.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.013.i.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE13ConstructNextERS7_PS6_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.s, i64 noundef %.013.i.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.h

_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE13ConstructNextERS7_PS6_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.y = add nuw i64 %.013.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %3
  br i1 %exitcond.not.i.i, label %.loopexit130, label %.lr.ph.i.i, !llvm.loop !11

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #32
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

.loopexit130:                                     ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE13ConstructNextERS7_PS6_.exit.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit
  store ptr %i.s, ptr %4, align 8, !tbaa !147
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.ab, align 8, !tbaa !57
  %.not.i.i46 = icmp eq ptr %1, %.sink2.i
  br i1 %.not.i.i46, label %.loopexit, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %.loopexit130, %bb.l
  %.sroa.0103.0 = phi ptr [ %i.ah, %bb.l ], [ %.sink2.i, %.loopexit130 ] ; 2 uses
  %.013.i.i48 = phi i64 [ %i.ai, %bb.l ], [ 0, %.loopexit130 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.013.i.i48
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0103.0)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i47
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.ae) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.r, i64 noundef %.013.i.i48)
  invoke void @__cxa_rethrow() #29
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i47
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0103.0, i64 4 ; 2 uses
  %i.ai = add nuw i64 %.013.i.i48, 1              ; 2 uses
  %exitcond.not.i.i49 = icmp eq i64 %i.ai, %i.j
  br i1 %exitcond.not.i.i49, label %.loopexit, label %.lr.ph.i.i47, !llvm.loop !17

bb.m:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #32
  unreachable

bb.n:                                             ; preds = %bb.j
  unreachable

.loopexit:                                        ; preds = %bb.l, %.loopexit130
  %.sroa.0103.1 = phi ptr [ %.sink2.i, %.loopexit130 ], [ %i.ah, %bb.l ]
  store ptr %i.r, ptr %5, align 8, !tbaa !147
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.j, ptr %i.al, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k ; 2 uses
  %i.an = sub i64 %.sink1.i, %i.j
  %.not.i = icmp eq i64 %.sink1.i, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %bb.q
  %.sroa.0103.2 = phi ptr [ %i.at, %bb.q ], [ %.sroa.0103.1, %.loopexit ] ; 2 uses
  %.013.i = phi i64 [ %i.au, %bb.q ], [ 0, %.loopexit ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.013.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0103.2)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.aq) #27 ; 0 uses
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.am, i64 noundef %.013.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.s unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.r

bb.q:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0103.2, i64 4
  %i.au = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %i.an
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !17

bb.r:                                             ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #32
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit: ; preds = %bb.q, %.loopexit
  %.not.i54162 = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i54162, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i: ; preds = %.lr.ph
  %.not.i54 = icmp eq i64 %i.ax, 0
  br i1 %.not.i54, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph, !llvm.loop !3

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i
  %.0.i163 = phi i64 [ %i.ax, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i ], [ %.sink1.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit ]
  %i.ax = add nsw i64 %.0.i163, -1                ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.ax
  invoke void @_ZN7testing19exceptions_internal18ConstructorTracker16ObjectDestructedEPv(ptr noundef nonnull align 4 dereferenceable(4) %i.ay)
          to label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i unwind label %bb.t, !llvm.loop !3

bb.t:                                             ; preds = %.lr.ph
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #32
  unreachable

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge: ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit
  %i.bb = load i64, ptr %0, align 8, !tbaa !57
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %bb.u, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit

bb.u:                                             ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.be = load i64, ptr %i.e, align 8, !tbaa !60
  %i.bf = shl i64 %i.be, 2
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bf) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit: ; preds = %bb.u, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  store ptr %i.r, ptr %i.c, align 8, !tbaa !60
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !60
  %i.bg = shl nuw i64 %i.l, 1
  %i.bh = or disjoint i64 %i.bg, 1
  store i64 %i.bh, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ah

bb.v:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i, %bb.e, %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.v, %bb.p, %bb.k
  %.sroa.0105.0 = phi ptr [ %i.r, %bb.g ], [ %i.r, %bb.k ], [ null, %bb.v ], [ %i.r, %bb.p ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.speculated.i, %bb.g ], [ %.sroa.speculated.i, %bb.k ], [ 0, %bb.v ], [ %.sroa.speculated.i, %bb.p ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.ag, %bb.k ], [ %i.bi, %bb.v ], [ %i.as, %bb.p ] ; 2 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.not.i63 = icmp eq ptr %.sroa.0105.0, null
  br i1 %.not.i63, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit64, label %bb.w

bb.w:                                             ; preds = %.body
  %i.bj = shl nuw nsw i64 %.sroa.9.0, 2
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0, i64 noundef %i.bj) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit64

bb.x:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink1.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %.sroa.speculated ; 4 uses
  %i.bl = sub i64 %i.l, %.sroa.speculated         ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink2.i, i64 %i.i ; 4 uses
  %i.bn = sub nuw i64 %.sroa.speculated, %i.k
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bl ; 2 uses
  %i.bp = sub i64 %3, %i.bl
  %.not.i.i65 = icmp eq i64 %i.l, %.sroa.speculated ; 2 uses
  br i1 %.not.i.i65, label %.loopexit132, label %.lr.ph.i.i68.preheader

.lr.ph.i.i68.preheader:                           ; preds = %bb.x
  %i.bq = sub i64 %.sroa.speculated, %3
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.bq
  br label %.lr.ph.i.i68

.lr.ph.i.i68:                                     ; preds = %.lr.ph.i.i68.preheader, %bb.aa
  %.sroa.0101.0 = phi ptr [ %i.bx, %bb.aa ], [ %i.br, %.lr.ph.i.i68.preheader ] ; 2 uses
  %.013.i.i69 = phi i64 [ %i.by, %bb.aa ], [ 0, %.lr.ph.i.i68.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.013.i.i69
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.bs, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0101.0)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i68
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  %i.bv = tail call ptr @__cxa_begin_catch(ptr %i.bu) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.bk, i64 noundef %.013.i.i69)
  invoke void @__cxa_rethrow() #29
          to label %bb.ac unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body71 unwind label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i68
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0101.0, i64 4
  %i.by = add nuw i64 %.013.i.i69, 1              ; 2 uses
  %exitcond.not.i.i70 = icmp eq i64 %i.by, %i.bl
  br i1 %exitcond.not.i.i70, label %.loopexit132, label %.lr.ph.i.i68, !llvm.loop !17

bb.ab:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #32
  unreachable

bb.ac:                                            ; preds = %bb.y
  unreachable

.loopexit132:                                     ; preds = %bb.aa, %bb.x
  store ptr %i.bk, ptr %6, align 8, !tbaa !147
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bl, ptr %i.cb, align 8, !tbaa !57
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.g
  %i.cf = ashr exact i64 %i.ce, 2                 ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit132, %.noexc74
  %.010.i.i.i.i.i = phi i64 [ %i.ck, %.noexc74 ], [ %i.cf, %.loopexit132 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ch, %.noexc74 ], [ %i.bk, %.loopexit132 ]
  %.078.i.i.i.i.i = phi ptr [ %i.ci, %.noexc74 ], [ %i.cc, %.loopexit132 ]
  %i.ch = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 3 uses
  store i32 938550620, ptr %i.ch, align 4, !tbaa !136
  invoke void @_ZN7testing19exceptions_internal10MaybeThrowESt17basic_string_viewIcSt11char_traitsIcEEb(i64 126, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing13ThrowingValueILNS_8TypeSpecE0EEaSEOS2_, i1 noundef zeroext false)
          to label %.noexc74 unwind label %.loopexit.split-lp

.noexc74:                                         ; preds = %.lr.ph.i.i.i.i.i
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !136
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !136
  %i.ck = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cl = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit, !llvm.loop !41

_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit: ; preds = %.noexc74, %.loopexit132
  br i1 %.not.i.i65, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_16CopyValueAdapterIS7_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSC_9size_typeE.exit, label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit, %.noexc78
  %.05.i = phi i64 [ %i.co, %.noexc78 ], [ 0, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.05.i ; 2 uses
  store i32 938550620, ptr %i.cm, align 4, !tbaa !136
  invoke void @_ZN7testing19exceptions_internal10MaybeThrowESt17basic_string_viewIcSt11char_traitsIcEEb(i64 131, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing13ThrowingValueILNS_8TypeSpecE0EEaSERKS2_, i1 noundef zeroext false)
          to label %.noexc78 unwind label %.loopexit131

.noexc78:                                         ; preds = %.lr.ph.i76
  %i.cn = load i32, ptr %2, align 4, !tbaa !136
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !136
  %i.co = add nuw i64 %.05.i, 1                   ; 2 uses
  %exitcond.not.i77 = icmp eq i64 %i.co, %i.bl
  br i1 %exitcond.not.i77, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_16CopyValueAdapterIS7_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSC_9size_typeE.exit, label %.lr.ph.i76, !llvm.loop !24

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_16CopyValueAdapterIS7_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSC_9size_typeE.exit: ; preds = %.noexc78, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit
  %.not.i79 = icmp eq i64 %3, %i.bl
  br i1 %.not.i79, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit89, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_16CopyValueAdapterIS7_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSC_9size_typeE.exit, %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE13ConstructNextERS7_PS6_.exit.i
  %.013.i81 = phi i64 [ %i.cu, %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE13ConstructNextERS7_PS6_.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_16CopyValueAdapterIS7_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSC_9size_typeE.exit ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.013.i81
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.cp, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE13ConstructNextERS7_PS6_.exit.i unwind label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i80
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  %i.cs = tail call ptr @__cxa_begin_catch(ptr %i.cr) #27 ; 0 uses
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.bo, i64 noundef %.013.i81)
  invoke void @__cxa_rethrow() #29
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body71 unwind label %bb.af

_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE13ConstructNextERS7_PS6_.exit.i: ; preds = %.lr.ph.i80
  %i.cu = add nuw i64 %.013.i81, 1                ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %i.cu, %i.bp
  br i1 %exitcond.not.i82, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit89, label %.lr.ph.i80, !llvm.loop !11

bb.af:                                            ; preds = %bb.ae
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  tail call void @__clang_call_terminate(ptr %i.cw) #32
  unreachable

bb.ag:                                            ; preds = %bb.ad
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit89: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE13ConstructNextERS7_PS6_.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_16CopyValueAdapterIS7_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSC_9size_typeE.exit
  %i.cx = shl i64 %3, 1
  %i.cy = load i64, ptr %0, align 8, !tbaa !57
  %i.cz = add i64 %i.cy, %i.cx
  store i64 %i.cz, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ah

.loopexit131:                                     ; preds = %.lr.ph.i76
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.loopexit.split-lp:                               ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.body71:                                          ; preds = %.loopexit131, %.loopexit.split-lp, %bb.ae, %bb.z
  %eh.lpad-body72 = phi { ptr, i32 } [ %i.bw, %bb.z ], [ %i.ct, %bb.ae ], [ %lpad.loopexit, %.loopexit131 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit64

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit89, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit
  %.0 = phi ptr [ %i.s, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit ], [ %i.bm, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit89 ]
  ret ptr %.0

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit64: ; preds = %bb.w, %.body, %.body71
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body72, %.body71 ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.w ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE0EEELm4ESaIS6_EE6InsertINS1_20IteratorValueAdapterIS7_PKS6_EEEEPS6_SC_T_m:bb.a
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.l) ; 7 uses
  %i.o = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.o, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i, !prof !125

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc44 unwind label %bb.w

.noexc44:                                         ; preds = %bb.e
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31
          to label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit unwind label %bb.w ; 9 uses

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 4 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.loopexit136, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit, %bb.h
  %.sroa.0133.0 = phi ptr [ %i.y, %bb.h ], [ %2, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit ] ; 2 uses
  %.013.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.013.i.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0133.0)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.s, i64 noundef %.013.i.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0133.0, i64 4
  %i.z = add nuw i64 %.013.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %3
  br i1 %exitcond.not.i.i, label %.loopexit136, label %.lr.ph.i.i, !llvm.loop !13

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #32
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable

.loopexit136:                                     ; preds = %bb.h, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit
  store ptr %i.s, ptr %4, align 8, !tbaa !147
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.ac, align 8, !tbaa !57
  %.not.i.i46 = icmp eq ptr %1, %.sink2.i
  br i1 %.not.i.i46, label %.loopexit, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %.loopexit136, %bb.m
  %.sroa.0109.0 = phi ptr [ %i.ai, %bb.m ], [ %.sink2.i, %.loopexit136 ] ; 2 uses
  %.013.i.i50 = phi i64 [ %i.aj, %bb.m ], [ 0, %.loopexit136 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.013.i.i50
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0109.0)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i49
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.r, i64 noundef %.013.i.i50)
  invoke void @__cxa_rethrow() #29
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i49
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0109.0, i64 4 ; 2 uses
  %i.aj = add nuw i64 %.013.i.i50, 1              ; 2 uses
  %exitcond.not.i.i51 = icmp eq i64 %i.aj, %i.j
  br i1 %exitcond.not.i.i51, label %.loopexit, label %.lr.ph.i.i49, !llvm.loop !17

bb.n:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #32
  unreachable

bb.o:                                             ; preds = %bb.k
  unreachable

.loopexit:                                        ; preds = %bb.m, %.loopexit136
  %.sroa.0109.1 = phi ptr [ %.sink2.i, %.loopexit136 ], [ %i.ai, %bb.m ]
  store ptr %i.r, ptr %5, align 8, !tbaa !147
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.j, ptr %i.am, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k ; 2 uses
  %i.ao = sub i64 %.sink1.i, %i.j
  %.not.i = icmp eq i64 %.sink1.i, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %bb.r
  %.sroa.0109.2 = phi ptr [ %i.au, %bb.r ], [ %.sroa.0109.1, %.loopexit ] ; 2 uses
  %.013.i = phi i64 [ %i.av, %bb.r ], [ 0, %.loopexit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.013.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0109.2)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #27 ; 0 uses
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.an, i64 noundef %.013.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.t unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0109.2, i64 4
  %i.av = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %i.ao
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !17

bb.s:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #32
  unreachable

bb.t:                                             ; preds = %bb.p
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit: ; preds = %bb.r, %.loopexit
  %.not.i56172 = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i56172, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i: ; preds = %.lr.ph
  %.not.i56 = icmp eq i64 %i.ay, 0
  br i1 %.not.i56, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph, !llvm.loop !3

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i
  %.0.i173 = phi i64 [ %i.ay, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i ], [ %.sink1.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit ]
  %i.ay = add nsw i64 %.0.i173, -1                ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.ay
  invoke void @_ZN7testing19exceptions_internal18ConstructorTracker16ObjectDestructedEPv(ptr noundef nonnull align 4 dereferenceable(4) %i.az)
          to label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i unwind label %bb.u, !llvm.loop !3

bb.u:                                             ; preds = %.lr.ph
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #32
  unreachable

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge: ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit
  %i.bc = load i64, ptr %0, align 8, !tbaa !57
  %i.bd = trunc i64 %i.bc to i1
  br i1 %i.bd, label %bb.v, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit

bb.v:                                             ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.bf = load i64, ptr %i.e, align 8, !tbaa !60
  %i.bg = shl i64 %i.bf, 2
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit: ; preds = %bb.v, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  store ptr %i.r, ptr %i.c, align 8, !tbaa !60
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !60
  %i.bh = shl nuw i64 %i.l, 1
  %i.bi = or disjoint i64 %i.bh, 1
  store i64 %i.bi, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.aj

bb.w:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i, %bb.e, %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.w, %bb.q, %bb.l
  %.sroa.0111.0 = phi ptr [ %i.r, %bb.g ], [ %i.r, %bb.l ], [ null, %bb.w ], [ %i.r, %bb.q ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.speculated.i, %bb.g ], [ %.sroa.speculated.i, %bb.l ], [ 0, %bb.w ], [ %.sroa.speculated.i, %bb.q ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.ah, %bb.l ], [ %i.bj, %bb.w ], [ %i.at, %bb.q ] ; 2 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.not.i65 = icmp eq ptr %.sroa.0111.0, null
  br i1 %.not.i65, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit66, label %bb.x

bb.x:                                             ; preds = %.body
  %i.bk = shl nuw nsw i64 %.sroa.9.0, 2
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0, i64 noundef %i.bk) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit66

bb.y:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink1.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %.sroa.speculated ; 4 uses
  %i.bm = sub i64 %i.l, %.sroa.speculated         ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink2.i, i64 %i.i ; 4 uses
  %i.bo = sub nuw i64 %.sroa.speculated, %i.k
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bm ; 2 uses
  %i.bq = sub i64 %3, %i.bm
  %.not.i.i67 = icmp eq i64 %i.l, %.sroa.speculated ; 2 uses
  br i1 %.not.i.i67, label %.loopexit138, label %.lr.ph.i.i70.preheader

.lr.ph.i.i70.preheader:                           ; preds = %bb.y
  %i.br = sub i64 %.sroa.speculated, %3
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.br
  br label %.lr.ph.i.i70

.lr.ph.i.i70:                                     ; preds = %.lr.ph.i.i70.preheader, %bb.ab
  %.sroa.0107.0 = phi ptr [ %i.by, %bb.ab ], [ %i.bs, %.lr.ph.i.i70.preheader ] ; 2 uses
  %.013.i.i71 = phi i64 [ %i.bz, %bb.ab ], [ 0, %.lr.ph.i.i70.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.013.i.i71
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0107.0)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i70
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = tail call ptr @__cxa_begin_catch(ptr %i.bv) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.bl, i64 noundef %.013.i.i71)
  invoke void @__cxa_rethrow() #29
          to label %bb.ad unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body73 unwind label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i70
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0107.0, i64 4
  %i.bz = add nuw i64 %.013.i.i71, 1              ; 2 uses
  %exitcond.not.i.i72 = icmp eq i64 %i.bz, %i.bm
  br i1 %exitcond.not.i.i72, label %.loopexit138, label %.lr.ph.i.i70, !llvm.loop !17

bb.ac:                                            ; preds = %bb.aa
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #32
  unreachable

bb.ad:                                            ; preds = %bb.z
  unreachable

.loopexit138:                                     ; preds = %bb.ab, %bb.y
  store ptr %i.bl, ptr %6, align 8, !tbaa !147
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bm, ptr %i.cc, align 8, !tbaa !57
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.g
  %i.cg = ashr exact i64 %i.cf, 2                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit138, %.noexc76
  %.010.i.i.i.i.i = phi i64 [ %i.cl, %.noexc76 ], [ %i.cg, %.loopexit138 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ci, %.noexc76 ], [ %i.bl, %.loopexit138 ]
  %.078.i.i.i.i.i = phi ptr [ %i.cj, %.noexc76 ], [ %i.cd, %.loopexit138 ]
  %i.ci = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 3 uses
  store i32 938550620, ptr %i.ci, align 4, !tbaa !136
  invoke void @_ZN7testing19exceptions_internal10MaybeThrowESt17basic_string_viewIcSt11char_traitsIcEEb(i64 126, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing13ThrowingValueILNS_8TypeSpecE0EEaSEOS2_, i1 noundef zeroext false)
          to label %.noexc76 unwind label %.loopexit.split-lp

.noexc76:                                         ; preds = %.lr.ph.i.i.i.i.i
  %i.cj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !136
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !136
  %i.cl = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cm = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit, !llvm.loop !41

_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit: ; preds = %.noexc76, %.loopexit138
  br i1 %.not.i.i67, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit, %.noexc82
  %.sroa.0133.1 = phi ptr [ %i.cp, %.noexc82 ], [ %2, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.05.i = phi i64 [ %i.cq, %.noexc82 ], [ 0, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.05.i ; 2 uses
  store i32 938550620, ptr %i.cn, align 4, !tbaa !136
  invoke void @_ZN7testing19exceptions_internal10MaybeThrowESt17basic_string_viewIcSt11char_traitsIcEEb(i64 131, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing13ThrowingValueILNS_8TypeSpecE0EEaSERKS2_, i1 noundef zeroext false)
          to label %.noexc82 unwind label %.loopexit137

.noexc82:                                         ; preds = %.lr.ph.i80
  %i.co = load i32, ptr %.sroa.0133.1, align 4, !tbaa !136
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !136
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0133.1, i64 4 ; 2 uses
  %i.cq = add nuw i64 %.05.i, 1                   ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %i.cq, %i.bm
  br i1 %exitcond.not.i81, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit, label %.lr.ph.i80, !llvm.loop !22

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit: ; preds = %.noexc82, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit
  %.sroa.0133.2 = phi ptr [ %2, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit ], [ %i.cp, %.noexc82 ]
  %.not.i83 = icmp eq i64 %3, %i.bm
  br i1 %.not.i83, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit95, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit, %bb.ag
  %.sroa.0133.3 = phi ptr [ %i.cw, %bb.ag ], [ %.sroa.0133.2, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit ] ; 2 uses
  %.013.i87 = phi i64 [ %i.cx, %bb.ag ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.013.i87
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.cr, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0133.3)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i86
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  %i.cu = tail call ptr @__cxa_begin_catch(ptr %i.ct) #27 ; 0 uses
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.bp, i64 noundef %.013.i87)
  invoke void @__cxa_rethrow() #29
          to label %bb.ai unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body73 unwind label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i86
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0133.3, i64 4
  %i.cx = add nuw i64 %.013.i87, 1                ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %i.cx, %i.bq
  br i1 %exitcond.not.i88, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit95, label %.lr.ph.i86, !llvm.loop !13

bb.ah:                                            ; preds = %bb.af
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  tail call void @__clang_call_terminate(ptr %i.cz) #32
  unreachable

bb.ai:                                            ; preds = %bb.ae
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit95: ; preds = %bb.ag, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit
  %i.da = shl i64 %3, 1
  %i.db = load i64, ptr %0, align 8, !tbaa !57
  %i.dc = add i64 %i.db, %i.da
  store i64 %i.dc, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aj

.loopexit137:                                     ; preds = %.lr.ph.i80
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.loopexit.split-lp:                               ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.body73:                                          ; preds = %.loopexit137, %.loopexit.split-lp, %bb.af, %bb.aa
  %eh.lpad-body74 = phi { ptr, i32 } [ %i.bx, %bb.aa ], [ %i.cv, %bb.af ], [ %lpad.loopexit, %.loopexit137 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit66

bb.aj:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit95, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit
  %.0 = phi ptr [ %i.s, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit ], [ %i.bn, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit95 ]
  ret ptr %.0
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE0EEELm4ESaIS6_EE6InsertINS1_20IteratorValueAdapterIS7_PS6_EEEESB_PKS6_T_m:bb.a
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.l) ; 7 uses
  %i.o = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.o, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i, !prof !125

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc44 unwind label %bb.w

.noexc44:                                         ; preds = %bb.e
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31
          to label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit unwind label %bb.w ; 9 uses

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 4 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.loopexit136, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit, %bb.h
  %.sroa.0133.0 = phi ptr [ %i.y, %bb.h ], [ %2, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit ] ; 2 uses
  %.013.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.013.i.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0133.0)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.s, i64 noundef %.013.i.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0133.0, i64 4
  %i.z = add nuw i64 %.013.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %3
  br i1 %exitcond.not.i.i, label %.loopexit136, label %.lr.ph.i.i, !llvm.loop !15

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #32
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable

.loopexit136:                                     ; preds = %bb.h, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEE8AllocateEm.exit
  store ptr %i.s, ptr %4, align 8, !tbaa !147
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.ac, align 8, !tbaa !57
  %.not.i.i46 = icmp eq ptr %1, %.sink2.i
  br i1 %.not.i.i46, label %.loopexit, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %.loopexit136, %bb.m
  %.sroa.0109.0 = phi ptr [ %i.ai, %bb.m ], [ %.sink2.i, %.loopexit136 ] ; 2 uses
  %.013.i.i50 = phi i64 [ %i.aj, %bb.m ], [ 0, %.loopexit136 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.013.i.i50
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0109.0)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i49
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.r, i64 noundef %.013.i.i50)
  invoke void @__cxa_rethrow() #29
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i49
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0109.0, i64 4 ; 2 uses
  %i.aj = add nuw i64 %.013.i.i50, 1              ; 2 uses
  %exitcond.not.i.i51 = icmp eq i64 %i.aj, %i.j
  br i1 %exitcond.not.i.i51, label %.loopexit, label %.lr.ph.i.i49, !llvm.loop !17

bb.n:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #32
  unreachable

bb.o:                                             ; preds = %bb.k
  unreachable

.loopexit:                                        ; preds = %bb.m, %.loopexit136
  %.sroa.0109.1 = phi ptr [ %.sink2.i, %.loopexit136 ], [ %i.ai, %bb.m ]
  store ptr %i.r, ptr %5, align 8, !tbaa !147
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.j, ptr %i.am, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k ; 2 uses
  %i.ao = sub i64 %.sink1.i, %i.j
  %.not.i = icmp eq i64 %.sink1.i, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %bb.r
  %.sroa.0109.2 = phi ptr [ %i.au, %bb.r ], [ %.sroa.0109.1, %.loopexit ] ; 2 uses
  %.013.i = phi i64 [ %i.av, %bb.r ], [ 0, %.loopexit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.013.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0109.2)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #27 ; 0 uses
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.an, i64 noundef %.013.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.t unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0109.2, i64 4
  %i.av = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %i.ao
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !17

bb.s:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #32
  unreachable

bb.t:                                             ; preds = %bb.p
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit: ; preds = %bb.r, %.loopexit
  %.not.i56172 = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i56172, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i: ; preds = %.lr.ph
  %.not.i56 = icmp eq i64 %i.ay, 0
  br i1 %.not.i56, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph, !llvm.loop !3

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i
  %.0.i173 = phi i64 [ %i.ay, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i ], [ %.sink1.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit ]
  %i.ay = add nsw i64 %.0.i173, -1                ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.ay
  invoke void @_ZN7testing19exceptions_internal18ConstructorTracker16ObjectDestructedEPv(ptr noundef nonnull align 4 dereferenceable(4) %i.az)
          to label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i unwind label %bb.u, !llvm.loop !3

bb.u:                                             ; preds = %.lr.ph
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #32
  unreachable

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge: ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit
  %i.bc = load i64, ptr %0, align 8, !tbaa !57
  %i.bd = trunc i64 %i.bc to i1
  br i1 %i.bd, label %bb.v, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit

bb.v:                                             ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.bf = load i64, ptr %i.e, align 8, !tbaa !60
  %i.bg = shl i64 %i.bf, 2
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit: ; preds = %bb.v, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  store ptr %i.r, ptr %i.c, align 8, !tbaa !60
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !60
  %i.bh = shl nuw i64 %i.l, 1
  %i.bi = or disjoint i64 %i.bh, 1
  store i64 %i.bi, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.aj

bb.w:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE8AllocateERS7_m.exit.i, %bb.e, %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.w, %bb.q, %bb.l
  %.sroa.0111.0 = phi ptr [ %i.r, %bb.g ], [ %i.r, %bb.l ], [ null, %bb.w ], [ %i.r, %bb.q ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.speculated.i, %bb.g ], [ %.sroa.speculated.i, %bb.l ], [ 0, %bb.w ], [ %.sroa.speculated.i, %bb.q ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.ah, %bb.l ], [ %i.bj, %bb.w ], [ %i.at, %bb.q ] ; 2 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.not.i65 = icmp eq ptr %.sroa.0111.0, null
  br i1 %.not.i65, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit66, label %bb.x

bb.x:                                             ; preds = %.body
  %i.bk = shl nuw nsw i64 %.sroa.9.0, 2
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0, i64 noundef %i.bk) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit66

bb.y:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink1.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %.sroa.speculated ; 4 uses
  %i.bm = sub i64 %i.l, %.sroa.speculated         ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink2.i, i64 %i.i ; 4 uses
  %i.bo = sub nuw i64 %.sroa.speculated, %i.k
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bm ; 2 uses
  %i.bq = sub i64 %3, %i.bm
  %.not.i.i67 = icmp eq i64 %i.l, %.sroa.speculated ; 2 uses
  br i1 %.not.i.i67, label %.loopexit138, label %.lr.ph.i.i70.preheader

.lr.ph.i.i70.preheader:                           ; preds = %bb.y
  %i.br = sub i64 %.sroa.speculated, %3
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.br
  br label %.lr.ph.i.i70

.lr.ph.i.i70:                                     ; preds = %.lr.ph.i.i70.preheader, %bb.ab
  %.sroa.0107.0 = phi ptr [ %i.by, %bb.ab ], [ %i.bs, %.lr.ph.i.i70.preheader ] ; 2 uses
  %.013.i.i71 = phi i64 [ %i.bz, %bb.ab ], [ 0, %.lr.ph.i.i70.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.013.i.i71
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0107.0)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i70
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = tail call ptr @__cxa_begin_catch(ptr %i.bv) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.bl, i64 noundef %.013.i.i71)
  invoke void @__cxa_rethrow() #29
          to label %bb.ad unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body73 unwind label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i70
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0107.0, i64 4
  %i.bz = add nuw i64 %.013.i.i71, 1              ; 2 uses
  %exitcond.not.i.i72 = icmp eq i64 %i.bz, %i.bm
  br i1 %exitcond.not.i.i72, label %.loopexit138, label %.lr.ph.i.i70, !llvm.loop !17

bb.ac:                                            ; preds = %bb.aa
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #32
  unreachable

bb.ad:                                            ; preds = %bb.z
  unreachable

.loopexit138:                                     ; preds = %bb.ab, %bb.y
  store ptr %i.bl, ptr %6, align 8, !tbaa !147
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bm, ptr %i.cc, align 8, !tbaa !57
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.g
  %i.cg = ashr exact i64 %i.cf, 2                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit138, %.noexc76
  %.010.i.i.i.i.i = phi i64 [ %i.cl, %.noexc76 ], [ %i.cg, %.loopexit138 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ci, %.noexc76 ], [ %i.bl, %.loopexit138 ]
  %.078.i.i.i.i.i = phi ptr [ %i.cj, %.noexc76 ], [ %i.cd, %.loopexit138 ]
  %i.ci = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 3 uses
  store i32 938550620, ptr %i.ci, align 4, !tbaa !136
  invoke void @_ZN7testing19exceptions_internal10MaybeThrowESt17basic_string_viewIcSt11char_traitsIcEEb(i64 126, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing13ThrowingValueILNS_8TypeSpecE0EEaSEOS2_, i1 noundef zeroext false)
          to label %.noexc76 unwind label %.loopexit.split-lp

.noexc76:                                         ; preds = %.lr.ph.i.i.i.i.i
  %i.cj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !136
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !136
  %i.cl = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cm = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit, !llvm.loop !41

_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit: ; preds = %.noexc76, %.loopexit138
  br i1 %.not.i.i67, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit, %.noexc82
  %.sroa.0133.1 = phi ptr [ %i.cp, %.noexc82 ], [ %2, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.05.i = phi i64 [ %i.cq, %.noexc82 ], [ 0, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.05.i ; 2 uses
  store i32 938550620, ptr %i.cn, align 4, !tbaa !136
  invoke void @_ZN7testing19exceptions_internal10MaybeThrowESt17basic_string_viewIcSt11char_traitsIcEEb(i64 131, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing13ThrowingValueILNS_8TypeSpecE0EEaSERKS2_, i1 noundef zeroext false)
          to label %.noexc82 unwind label %.loopexit137

.noexc82:                                         ; preds = %.lr.ph.i80
  %i.co = load i32, ptr %.sroa.0133.1, align 4, !tbaa !136
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !136
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0133.1, i64 4 ; 2 uses
  %i.cq = add nuw i64 %.05.i, 1                   ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %i.cq, %i.bm
  br i1 %exitcond.not.i81, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit, label %.lr.ph.i80, !llvm.loop !25

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit: ; preds = %.noexc82, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit
  %.sroa.0133.2 = phi ptr [ %2, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE0EEES4_ET0_T_S6_S5_.exit ], [ %i.cp, %.noexc82 ]
  %.not.i83 = icmp eq i64 %3, %i.bm
  br i1 %.not.i83, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit95, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit, %bb.ag
  %.sroa.0133.3 = phi ptr [ %i.cw, %bb.ag ], [ %.sroa.0133.2, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit ] ; 2 uses
  %.013.i87 = phi i64 [ %i.cx, %bb.ag ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.013.i87
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE0EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.cr, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0133.3)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i86
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  %i.cu = tail call ptr @__cxa_begin_catch(ptr %i.ct) #27 ; 0 uses
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.bp, i64 noundef %.013.i87)
  invoke void @__cxa_rethrow() #29
          to label %bb.ai unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body73 unwind label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i86
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0133.3, i64 4
  %i.cx = add nuw i64 %.013.i87, 1                ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %i.cx, %i.bq
  br i1 %exitcond.not.i88, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit95, label %.lr.ph.i86, !llvm.loop !15

bb.ah:                                            ; preds = %bb.af
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  tail call void @__clang_call_terminate(ptr %i.cz) #32
  unreachable

bb.ai:                                            ; preds = %bb.ae
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit95: ; preds = %bb.ag, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit
  %i.da = shl i64 %3, 1
  %i.db = load i64, ptr %0, align 8, !tbaa !57
  %i.dc = add i64 %i.db, %i.da
  store i64 %i.dc, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aj

.loopexit137:                                     ; preds = %.lr.ph.i80
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.loopexit.split-lp:                               ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.body73:                                          ; preds = %.loopexit137, %.loopexit.split-lp, %bb.af, %bb.aa
  %eh.lpad-body74 = phi { ptr, i32 } [ %i.bx, %bb.aa ], [ %i.cv, %bb.af ], [ %lpad.loopexit, %.loopexit137 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit66

bb.aj:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit95, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit
  %.0 = phi ptr [ %i.s, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit ], [ %i.bn, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE0EEEEED2Ev.exit95 ]
  ret ptr %.0
end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFvPN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EEEEZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINSB_10TestParamsIS8_JLm8ELm8EEEEE8TestBodyEvEUlS9_E_E9_M_invokeERKSt9_Any_dataOS9_:bb.a
  unreachable

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit4.i.i.i: ; preds = %.body.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_ZSt10__invoke_rIvRZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS0_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS6_8TypeSpecE2EEELm4ESaIS9_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSB_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EEEEZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINSB_10TestParamsIS8_JLm8ELm8EEEEE8TestBodyEvEUlS9_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE2EEELm4ESaIS8_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSA_E_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !111
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE6InsertINS1_16CopyValueAdapterIS7_EEEEPS6_PKS6_T_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::inlined_vector_internal::ConstructionTransaction.758", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::inlined_vector_internal::ConstructionTransaction.758", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20260526::inlined_vector_internal::ConstructionTransaction.758", align 8 ; 6 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !57, !noalias !3142 ; 2 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !3142
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !3142
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 10 uses
  %.sink.i = select i1 %i.b, i64 %i.f, i64 4      ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 6 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = ptrtoint ptr %.sink2.i to i64            ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 4 uses
  %i.k = add i64 %i.j, %3                         ; 4 uses
  %i.l = add i64 %.sink1.i, %3                    ; 5 uses
  %i.m = icmp ugt i64 %i.l, %.sink.i
  br i1 %i.m, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.n = shl i64 %.sink.i, 1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.l) ; 5 uses
  %i.o = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.o, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i, !prof !125

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc44 unwind label %bb.l

.noexc44:                                         ; preds = %bb.e
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31
          to label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit unwind label %bb.l ; 5 uses

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 4 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.loopexit121, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit, %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i
  %.013.i.i = phi i64 [ %i.y, %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.013.i.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.s, i64 noundef %.013.i.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.h

_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.y = add nuw i64 %.013.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %3
  br i1 %exitcond.not.i.i, label %.loopexit121, label %.lr.ph.i.i, !llvm.loop !12

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #32
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

.loopexit121:                                     ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit
  store ptr %i.s, ptr %4, align 8, !tbaa !152
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.ab, align 8, !tbaa !57
  %.not.i.i46 = icmp eq ptr %1, %.sink2.i
  br i1 %.not.i.i46, label %.loopexit, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %.loopexit121, %.lr.ph.i.i47
  %.sroa.094.0 = phi ptr [ %i.ad, %.lr.ph.i.i47 ], [ %.sink2.i, %.loopexit121 ] ; 2 uses
  %.012.i.i = phi i64 [ %i.ae, %.lr.ph.i.i47 ], [ 0, %.loopexit121 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.012.i.i
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.094.0) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.094.0, i64 4 ; 2 uses
  %i.ae = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i48 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i.i48, label %.loopexit, label %.lr.ph.i.i47, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph.i.i47, %.loopexit121
  %.sroa.094.1 = phi ptr [ %.sink2.i, %.loopexit121 ], [ %i.ad, %.lr.ph.i.i47 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k
  %i.ag = sub i64 %.sink1.i, %i.j
  %.not.i = icmp eq i64 %.sink1.i, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph.i
  %.sroa.094.2 = phi ptr [ %i.ai, %.lr.ph.i ], [ %.sroa.094.1, %.loopexit ] ; 2 uses
  %.012.i = phi i64 [ %i.aj, %.lr.ph.i ], [ 0, %.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.012.i
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.094.2) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.094.2, i64 4
  %i.aj = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.ag
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !18

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit: ; preds = %.lr.ph.i, %.loopexit
  %.not.i49137 = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i49137, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i: ; preds = %.lr.ph
  %.not.i49 = icmp eq i64 %i.ak, 0
  br i1 %.not.i49, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph, !llvm.loop !5

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i
  %.0.i138 = phi i64 [ %i.ak, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i ], [ %.sink1.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit ]
  %i.ak = add nsw i64 %.0.i138, -1                ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.ak
  invoke void @_ZN7testing19exceptions_internal18ConstructorTracker16ObjectDestructedEPv(ptr noundef nonnull align 4 dereferenceable(4) %i.al)
          to label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i unwind label %bb.j, !llvm.loop !5

bb.j:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #32
  unreachable

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge: ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit
  %i.ao = load i64, ptr %0, align 8, !tbaa !57
  %i.ap = trunc i64 %i.ao to i1
  br i1 %i.ap, label %bb.k, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit

bb.k:                                             ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.ar = load i64, ptr %i.e, align 8, !tbaa !60
  %i.as = shl i64 %i.ar, 2
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.as) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit: ; preds = %bb.k, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  store ptr %i.r, ptr %i.c, align 8, !tbaa !60
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !60
  %i.at = shl nuw i64 %i.l, 1
  %i.au = or disjoint i64 %i.at, 1
  store i64 %i.au, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.t

bb.l:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i, %bb.e, %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.g
  %.sroa.096.0 = phi ptr [ null, %bb.l ], [ %i.r, %bb.g ] ; 2 uses
  %.sroa.9.0 = phi i64 [ 0, %bb.l ], [ %.sroa.speculated.i, %bb.g ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.l ], [ %i.x, %bb.g ] ; 2 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.not.i58 = icmp eq ptr %.sroa.096.0, null
  br i1 %.not.i58, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit59, label %bb.m

bb.m:                                             ; preds = %.body
  %i.aw = shl nuw nsw i64 %.sroa.9.0, 2
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.0, i64 noundef %i.aw) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit59

bb.n:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink1.i) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ax = getelementptr [4 x i8], ptr %.sink2.i, i64 %.sroa.speculated ; 7 uses
  %i.ay = sub i64 %i.l, %.sroa.speculated         ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sink2.i, i64 %i.i ; 4 uses
  %i.ba = sub nuw i64 %.sroa.speculated, %i.k
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ay ; 2 uses
  %i.bc = sub i64 %3, %i.ay
  %.not.i.i60 = icmp eq i64 %i.l, %.sroa.speculated ; 2 uses
  br i1 %.not.i.i60, label %.loopexit122, label %.lr.ph.i.i63.preheader

.lr.ph.i.i63.preheader:                           ; preds = %bb.n
  %i.bd = sub i64 %.sroa.speculated, %3
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.bd
  br label %.lr.ph.i.i63

.lr.ph.i.i63:                                     ; preds = %.lr.ph.i.i63.preheader, %.lr.ph.i.i63
  %.sroa.092.0 = phi ptr [ %i.bg, %.lr.ph.i.i63 ], [ %i.be, %.lr.ph.i.i63.preheader ] ; 2 uses
  %.012.i.i64 = phi i64 [ %i.bh, %.lr.ph.i.i63 ], [ 0, %.lr.ph.i.i63.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.012.i.i64
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.092.0) #27
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.092.0, i64 4
  %i.bh = add nuw i64 %.012.i.i64, 1              ; 2 uses
  %exitcond.not.i.i65 = icmp eq i64 %i.bh, %i.ay
  br i1 %exitcond.not.i.i65, label %.loopexit122, label %.lr.ph.i.i63, !llvm.loop !18

.loopexit122:                                     ; preds = %.lr.ph.i.i63, %bb.n
  store ptr %i.ax, ptr %6, align 8, !tbaa !152
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ay, ptr %i.bi, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba ; 6 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.g                     ; 3 uses
  %i.bm = ashr exact i64 %i.bl, 2                 ; 7 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.loopexit122
  %min.iters.check = icmp ult i64 %i.bm, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader146, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bo = shl i64 %.sroa.speculated, 2            ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bl
  %scevgep = getelementptr i8, ptr %.sink2.i, i64 %i.bp
  %i.bq = add i64 %i.bo, %i.g
  %i.br = add i64 %i.bl, %i.h
  %i.bs = shl i64 %i.k, 2
  %i.bt = add i64 %i.br, %i.bs
  %i.bu = sub i64 %i.bq, %i.bt
  %scevgep139 = getelementptr i8, ptr %.sink2.i, i64 %i.bu
  %bound0 = icmp ult ptr %scevgep, %i.bj
  %bound1 = icmp ult ptr %scevgep139, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader146, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bm, 9223372036854775800     ; 3 uses
  %i.bv = and i64 %i.bm, 7
  %i.bw = mul i64 %n.vec, -4                      ; 2 uses
  %i.bx = getelementptr i8, ptr %i.ax, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bj, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bz ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.bj, i64 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  store <4 x i32> splat (i32 938550620), ptr %i.ca, align 4, !tbaa !140, !alias.scope !3143, !noalias !3144
  store <4 x i32> splat (i32 938550620), ptr %i.cb, align 4, !tbaa !140, !alias.scope !3143, !noalias !3144
  %i.cc = getelementptr inbounds i8, ptr %next.gep140, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep140, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !140, !alias.scope !3144
  %wide.load141 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !140, !alias.scope !3144
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !140, !alias.scope !3143, !noalias !3144
  store <4 x i32> %wide.load141, ptr %i.cb, align 4, !tbaa !140, !alias.scope !3143, !noalias !3144
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !3140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i.preheader146

.lr.ph.i.i.i.i.i.preheader146:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.i.ph = phi i64 [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  %.078.i.i.i.i.i.ph = phi ptr [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader146, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader146 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader146 ]
  %.078.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader146 ]
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 3 uses
  store i32 938550620, ptr %i.cg, align 4, !tbaa !140
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !140
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !140
  %i.ci = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cj = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit, !llvm.loop !3141

_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.loopexit122
  br i1 %.not.i.i60, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_16CopyValueAdapterIS7_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSC_9size_typeE.exit, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit, %.noexc70
  %.05.i = phi i64 [ %i.cm, %.noexc70 ], [ 0, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.05.i ; 2 uses
  store i32 938550620, ptr %i.ck, align 4, !tbaa !140
  invoke void @_ZN7testing19exceptions_internal10MaybeThrowESt17basic_string_viewIcSt11char_traitsIcEEb(i64 157, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing13ThrowingValueILNS_8TypeSpecE2EEaSERKS2_, i1 noundef zeroext false)
          to label %.noexc70 unwind label %bb.s

.noexc70:                                         ; preds = %.lr.ph.i68
  %i.cl = load i32, ptr %2, align 4, !tbaa !140
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !140
  %i.cm = add nuw i64 %.05.i, 1                   ; 2 uses
  %exitcond.not.i69 = icmp eq i64 %i.cm, %i.ay
  br i1 %exitcond.not.i69, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_16CopyValueAdapterIS7_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSC_9size_typeE.exit, label %.lr.ph.i68, !llvm.loop !30

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_16CopyValueAdapterIS7_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSC_9size_typeE.exit: ; preds = %.noexc70, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit
  %.not.i71 = icmp eq i64 %3, %i.ay
  br i1 %.not.i71, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit80, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_16CopyValueAdapterIS7_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSC_9size_typeE.exit, %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i
  %.013.i = phi i64 [ %i.cs, %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_16CopyValueAdapterIS7_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSC_9size_typeE.exit ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.013.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.cn, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i unwind label %bb.o

bb.o:                                             ; preds = %.lr.ph.i72
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  %i.cq = tail call ptr @__cxa_begin_catch(ptr %i.cp) #27 ; 0 uses
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.bb, i64 noundef %.013.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body74 unwind label %bb.q

_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i: ; preds = %.lr.ph.i72
  %i.cs = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.cs, %i.bc
  br i1 %exitcond.not.i73, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit80, label %.lr.ph.i72, !llvm.loop !12

bb.q:                                             ; preds = %bb.p
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  tail call void @__clang_call_terminate(ptr %i.cu) #32
  unreachable

bb.r:                                             ; preds = %bb.o
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit80: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE13ConstructNextERS7_PS6_.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_16CopyValueAdapterIS7_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSC_9size_typeE.exit
  %i.cv = shl i64 %3, 1
  %i.cw = load i64, ptr %0, align 8, !tbaa !57
  %i.cx = add i64 %i.cw, %i.cv
  store i64 %i.cx, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i68
end_hunk_5
begin_hunk_6_@_ZNSt17_Function_handlerIFvPN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EEEEZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINSB_10TestParamsIS8_JLm8ELm8EEEEE8TestBodyEvEUlS9_E2_E9_M_invokeERKSt9_Any_dataOS9_:bb.a
_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit12.7.i.i.i: ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit12.6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.p

_ZSt10__invoke_rIvRZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS0_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS6_8TypeSpecE2EEELm4ESaIS9_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSB_E2_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit: ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EEEEZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINSB_10TestParamsIS8_JLm8ELm8EEEEE8TestBodyEvEUlS9_E2_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E2_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E2_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E2_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E2_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE2EEELm4ESaIS8_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSA_E2_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !111
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E2_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E2_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E2_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE6InsertINS1_20IteratorValueAdapterIS7_PKS6_EEEEPS6_SC_T_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::inlined_vector_internal::ConstructionTransaction.758", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::inlined_vector_internal::ConstructionTransaction.758", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20260526::inlined_vector_internal::ConstructionTransaction.758", align 8 ; 6 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !57, !noalias !3152 ; 2 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !3152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !3152
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 10 uses
  %.sink.i = select i1 %i.b, i64 %i.f, i64 4      ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 6 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = ptrtoint ptr %.sink2.i to i64            ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 4 uses
  %i.k = add i64 %i.j, %3                         ; 4 uses
  %i.l = add i64 %.sink1.i, %3                    ; 5 uses
  %i.m = icmp ugt i64 %i.l, %.sink.i
  br i1 %i.m, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.n = shl i64 %.sink.i, 1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.l) ; 5 uses
  %i.o = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.o, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i, !prof !125

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc44 unwind label %bb.m

.noexc44:                                         ; preds = %bb.e
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31
          to label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit unwind label %bb.m ; 5 uses

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 4 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.loopexit127, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit, %bb.h
  %.sroa.0124.0 = phi ptr [ %i.y, %bb.h ], [ %2, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit ] ; 2 uses
  %.013.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.013.i.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0124.0)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.s, i64 noundef %.013.i.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0124.0, i64 4
  %i.z = add nuw i64 %.013.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %3
  br i1 %exitcond.not.i.i, label %.loopexit127, label %.lr.ph.i.i, !llvm.loop !14

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #32
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable

.loopexit127:                                     ; preds = %bb.h, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit
  store ptr %i.s, ptr %4, align 8, !tbaa !152
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.ac, align 8, !tbaa !57
  %.not.i.i46 = icmp eq ptr %1, %.sink2.i
  br i1 %.not.i.i46, label %.loopexit, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %.loopexit127, %.lr.ph.i.i49
  %.sroa.0100.0 = phi ptr [ %i.ae, %.lr.ph.i.i49 ], [ %.sink2.i, %.loopexit127 ] ; 2 uses
  %.012.i.i = phi i64 [ %i.af, %.lr.ph.i.i49 ], [ 0, %.loopexit127 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.012.i.i
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0100.0) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0100.0, i64 4 ; 2 uses
  %i.af = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i50 = icmp eq i64 %i.af, %i.j
  br i1 %exitcond.not.i.i50, label %.loopexit, label %.lr.ph.i.i49, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph.i.i49, %.loopexit127
  %.sroa.0100.1 = phi ptr [ %.sink2.i, %.loopexit127 ], [ %i.ae, %.lr.ph.i.i49 ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k
  %i.ah = sub i64 %.sink1.i, %i.j
  %.not.i = icmp eq i64 %.sink1.i, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph.i
  %.sroa.0100.2 = phi ptr [ %i.aj, %.lr.ph.i ], [ %.sroa.0100.1, %.loopexit ] ; 2 uses
  %.012.i = phi i64 [ %i.ak, %.lr.ph.i ], [ 0, %.loopexit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.012.i
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0100.2) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0100.2, i64 4
  %i.ak = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ak, %i.ah
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !18

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit: ; preds = %.lr.ph.i, %.loopexit
  %.not.i51147 = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i51147, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i: ; preds = %.lr.ph
  %.not.i51 = icmp eq i64 %i.al, 0
  br i1 %.not.i51, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph, !llvm.loop !5

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i
  %.0.i148 = phi i64 [ %i.al, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i ], [ %.sink1.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit ]
  %i.al = add nsw i64 %.0.i148, -1                ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.al
  invoke void @_ZN7testing19exceptions_internal18ConstructorTracker16ObjectDestructedEPv(ptr noundef nonnull align 4 dereferenceable(4) %i.am)
          to label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i unwind label %bb.k, !llvm.loop !5

bb.k:                                             ; preds = %.lr.ph
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #32
  unreachable

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge: ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit
  %i.ap = load i64, ptr %0, align 8, !tbaa !57
  %i.aq = trunc i64 %i.ap to i1
  br i1 %i.aq, label %bb.l, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit

bb.l:                                             ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.as = load i64, ptr %i.e, align 8, !tbaa !60
  %i.at = shl i64 %i.as, 2
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.at) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit: ; preds = %bb.l, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  store ptr %i.r, ptr %i.c, align 8, !tbaa !60
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !60
  %i.au = shl nuw i64 %i.l, 1
  %i.av = or disjoint i64 %i.au, 1
  store i64 %i.av, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.v

bb.m:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i, %bb.e, %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.g
  %.sroa.0102.0 = phi ptr [ null, %bb.m ], [ %i.r, %bb.g ] ; 2 uses
  %.sroa.9.0 = phi i64 [ 0, %bb.m ], [ %.sroa.speculated.i, %bb.g ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.m ], [ %i.x, %bb.g ] ; 2 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.not.i60 = icmp eq ptr %.sroa.0102.0, null
  br i1 %.not.i60, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit61, label %bb.n

bb.n:                                             ; preds = %.body
  %i.ax = shl nuw nsw i64 %.sroa.9.0, 2
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0, i64 noundef %i.ax) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit61

bb.o:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink1.i) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ay = getelementptr [4 x i8], ptr %.sink2.i, i64 %.sroa.speculated ; 7 uses
  %i.az = sub i64 %i.l, %.sroa.speculated         ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink2.i, i64 %i.i ; 4 uses
  %i.bb = sub nuw i64 %.sroa.speculated, %i.k
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.az ; 2 uses
  %i.bd = sub i64 %3, %i.az
  %.not.i.i62 = icmp eq i64 %i.l, %.sroa.speculated ; 2 uses
  br i1 %.not.i.i62, label %.loopexit128, label %.lr.ph.i.i65.preheader

.lr.ph.i.i65.preheader:                           ; preds = %bb.o
  %i.be = sub i64 %.sroa.speculated, %3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.be
  br label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.lr.ph.i.i65.preheader, %.lr.ph.i.i65
  %.sroa.098.0 = phi ptr [ %i.bh, %.lr.ph.i.i65 ], [ %i.bf, %.lr.ph.i.i65.preheader ] ; 2 uses
  %.012.i.i66 = phi i64 [ %i.bi, %.lr.ph.i.i65 ], [ 0, %.lr.ph.i.i65.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.012.i.i66
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.098.0) #27
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.098.0, i64 4
  %i.bi = add nuw i64 %.012.i.i66, 1              ; 2 uses
  %exitcond.not.i.i67 = icmp eq i64 %i.bi, %i.az
  br i1 %exitcond.not.i.i67, label %.loopexit128, label %.lr.ph.i.i65, !llvm.loop !18

.loopexit128:                                     ; preds = %.lr.ph.i.i65, %bb.o
  store ptr %i.ay, ptr %6, align 8, !tbaa !152
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.az, ptr %i.bj, align 8, !tbaa !57
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb ; 6 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.g                     ; 3 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 7 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.loopexit128
  %min.iters.check = icmp ult i64 %i.bn, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader157, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bp = shl i64 %.sroa.speculated, 2            ; 2 uses
  %i.bq = sub i64 %i.bp, %i.bm
  %scevgep = getelementptr i8, ptr %.sink2.i, i64 %i.bq
  %i.br = add i64 %i.bp, %i.g
  %i.bs = add i64 %i.bm, %i.h
  %i.bt = shl i64 %i.k, 2
  %i.bu = add i64 %i.bs, %i.bt
  %i.bv = sub i64 %i.br, %i.bu
  %scevgep149 = getelementptr i8, ptr %.sink2.i, i64 %i.bv
  %bound0 = icmp ult ptr %scevgep, %i.bk
  %bound1 = icmp ult ptr %scevgep149, %i.ay
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader157, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 9223372036854775800     ; 3 uses
  %i.bw = and i64 %i.bn, 7
  %i.bx = mul i64 %n.vec, -4                      ; 2 uses
  %i.by = getelementptr i8, ptr %i.ay, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.bk, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.ca ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.bk, i64 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  store <4 x i32> splat (i32 938550620), ptr %i.cb, align 4, !tbaa !140, !alias.scope !3153, !noalias !3154
  store <4 x i32> splat (i32 938550620), ptr %i.cc, align 4, !tbaa !140, !alias.scope !3153, !noalias !3154
  %i.cd = getelementptr inbounds i8, ptr %next.gep150, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep150, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cd, align 4, !tbaa !140, !alias.scope !3154
  %wide.load151 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !140, !alias.scope !3154
  store <4 x i32> %wide.load, ptr %i.cb, align 4, !tbaa !140, !alias.scope !3153, !noalias !3154
  store <4 x i32> %wide.load151, ptr %i.cc, align 4, !tbaa !140, !alias.scope !3153, !noalias !3154
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !3150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i.preheader157

.lr.ph.i.i.i.i.i.preheader157:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.i.ph = phi i64 [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.078.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader157, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader157 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader157 ]
  %.078.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader157 ]
  %i.cg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 3 uses
  store i32 938550620, ptr %i.ch, align 4, !tbaa !140
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !140
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !140
  %i.cj = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ck = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit, !llvm.loop !3151

_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.loopexit128
  br i1 %.not.i.i62, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit, %.noexc74
  %.sroa.0124.1 = phi ptr [ %i.cn, %.noexc74 ], [ %2, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.05.i = phi i64 [ %i.co, %.noexc74 ], [ 0, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.05.i ; 2 uses
  store i32 938550620, ptr %i.cl, align 4, !tbaa !140
  invoke void @_ZN7testing19exceptions_internal10MaybeThrowESt17basic_string_viewIcSt11char_traitsIcEEb(i64 157, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing13ThrowingValueILNS_8TypeSpecE2EEaSERKS2_, i1 noundef zeroext false)
          to label %.noexc74 unwind label %bb.u

.noexc74:                                         ; preds = %.lr.ph.i72
  %i.cm = load i32, ptr %.sroa.0124.1, align 4, !tbaa !140
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !140
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0124.1, i64 4 ; 2 uses
  %i.co = add nuw i64 %.05.i, 1                   ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.co, %i.az
  br i1 %exitcond.not.i73, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit, label %.lr.ph.i72, !llvm.loop !29

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit: ; preds = %.noexc74, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit
  %.sroa.0124.2 = phi ptr [ %2, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit ], [ %i.cn, %.noexc74 ]
  %.not.i75 = icmp eq i64 %3, %i.az
  br i1 %.not.i75, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit86, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit, %bb.r
  %.sroa.0124.3 = phi ptr [ %i.cu, %bb.r ], [ %.sroa.0124.2, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit ] ; 2 uses
  %.013.i = phi i64 [ %i.cv, %bb.r ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.013.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.cp, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0124.3)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %.lr.ph.i78
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  %i.cs = tail call ptr @__cxa_begin_catch(ptr %i.cr) #27 ; 0 uses
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.bc, i64 noundef %.013.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.t unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body80 unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph.i78
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0124.3, i64 4
  %i.cv = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %i.cv, %i.bd
  br i1 %exitcond.not.i79, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit86, label %.lr.ph.i78, !llvm.loop !14

bb.s:                                             ; preds = %bb.q
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  tail call void @__clang_call_terminate(ptr %i.cx) #32
  unreachable

bb.t:                                             ; preds = %bb.p
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit86: ; preds = %bb.r, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PKS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit
  %i.cy = shl i64 %3, 1
  %i.cz = load i64, ptr %0, align 8, !tbaa !57
  %i.da = add i64 %i.cz, %i.cy
end_hunk_6
begin_hunk_7_@_ZNSt17_Function_handlerIFvPN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EEEEZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINSB_10TestParamsIS8_JLm8ELm8EEEEE8TestBodyEvEUlS9_E5_E9_M_invokeERKSt9_Any_dataOS9_:bb.a
  %.pn.i.i.i = phi { ptr, i32 } [ %i.n, %bb.k ], [ %lpad.thr_comm.i.i.i, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn.i.i.i

_ZSt10__invoke_rIvRZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS0_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS6_8TypeSpecE2EEELm4ESaIS9_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSB_E5_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit: ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.6.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EEEEZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINSB_10TestParamsIS8_JLm8ELm8EEEEE8TestBodyEvEUlS9_E5_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E5_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E5_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E5_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E5_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS5_8TypeSpecE2EEELm4ESaIS8_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSA_E5_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !111
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E5_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E5_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123TwoSizeTest_Insert_TestINS1_10TestParamsIN4absl12lts_2026052613InlinedVectorIN7testing13ThrowingValueILNS7_8TypeSpecE2EEELm4ESaISA_EEEJLm8ELm8EEEEE8TestBodyEvEUlPSC_E5_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN7testing13ThrowingValueILNS3_8TypeSpecE2EEELm4ESaIS6_EE6InsertINS1_20IteratorValueAdapterIS7_PS6_EEEESB_PKS6_T_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::inlined_vector_internal::ConstructionTransaction.758", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::inlined_vector_internal::ConstructionTransaction.758", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20260526::inlined_vector_internal::ConstructionTransaction.758", align 8 ; 6 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !57, !noalias !3162 ; 2 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !3162
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !3162
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 10 uses
  %.sink.i = select i1 %i.b, i64 %i.f, i64 4      ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 6 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = ptrtoint ptr %.sink2.i to i64            ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 4 uses
  %i.k = add i64 %i.j, %3                         ; 4 uses
  %i.l = add i64 %.sink1.i, %3                    ; 5 uses
  %i.m = icmp ugt i64 %i.l, %.sink.i
  br i1 %i.m, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.n = shl i64 %.sink.i, 1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.l) ; 5 uses
  %i.o = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.o, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i, !prof !125

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc44 unwind label %bb.m

.noexc44:                                         ; preds = %bb.e
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31
          to label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit unwind label %bb.m ; 5 uses

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 4 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.loopexit127, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit, %bb.h
  %.sroa.0124.0 = phi ptr [ %i.y, %bb.h ], [ %2, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit ] ; 2 uses
  %.013.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.013.i.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0124.0)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #27 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.s, i64 noundef %.013.i.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0124.0, i64 4
  %i.z = add nuw i64 %.013.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %3
  br i1 %exitcond.not.i.i, label %.loopexit127, label %.lr.ph.i.i, !llvm.loop !16

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #32
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable

.loopexit127:                                     ; preds = %bb.h, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEE8AllocateEm.exit
  store ptr %i.s, ptr %4, align 8, !tbaa !152
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.ac, align 8, !tbaa !57
  %.not.i.i46 = icmp eq ptr %1, %.sink2.i
  br i1 %.not.i.i46, label %.loopexit, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %.loopexit127, %.lr.ph.i.i49
  %.sroa.0100.0 = phi ptr [ %i.ae, %.lr.ph.i.i49 ], [ %.sink2.i, %.loopexit127 ] ; 2 uses
  %.012.i.i = phi i64 [ %i.af, %.lr.ph.i.i49 ], [ 0, %.loopexit127 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.012.i.i
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0100.0) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0100.0, i64 4 ; 2 uses
  %i.af = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i50 = icmp eq i64 %i.af, %i.j
  br i1 %exitcond.not.i.i50, label %.loopexit, label %.lr.ph.i.i49, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph.i.i49, %.loopexit127
  %.sroa.0100.1 = phi ptr [ %.sink2.i, %.loopexit127 ], [ %i.ae, %.lr.ph.i.i49 ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k
  %i.ah = sub i64 %.sink1.i, %i.j
  %.not.i = icmp eq i64 %.sink1.i, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph.i
  %.sroa.0100.2 = phi ptr [ %i.aj, %.lr.ph.i ], [ %.sroa.0100.1, %.loopexit ] ; 2 uses
  %.012.i = phi i64 [ %i.ak, %.lr.ph.i ], [ 0, %.loopexit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.012.i
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0100.2) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0100.2, i64 4
  %i.ak = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ak, %i.ah
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !18

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit: ; preds = %.lr.ph.i, %.loopexit
  %.not.i51147 = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i51147, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i: ; preds = %.lr.ph
  %.not.i51 = icmp eq i64 %i.al, 0
  br i1 %.not.i51, label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge, label %.lr.ph, !llvm.loop !5

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i
  %.0.i148 = phi i64 [ %i.al, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i ], [ %.sink1.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit ]
  %i.al = add nsw i64 %.0.i148, -1                ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.al
  invoke void @_ZN7testing19exceptions_internal18ConstructorTracker16ObjectDestructedEPv(ptr noundef nonnull align 4 dereferenceable(4) %i.am)
          to label %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i unwind label %bb.k, !llvm.loop !5

bb.k:                                             ; preds = %.lr.ph
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #32
  unreachable

_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge: ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_St13move_iteratorIPS6_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISE_E7pointerERT0_NSJ_9size_typeE.exit
  %i.ap = load i64, ptr %0, align 8, !tbaa !57
  %i.aq = trunc i64 %i.ap to i1
  br i1 %i.aq, label %bb.l, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit

bb.l:                                             ; preds = %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.as = load i64, ptr %i.e, align 8, !tbaa !60
  %i.at = shl i64 %i.as, 2
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.at) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit: ; preds = %bb.l, %_ZN7testing19exceptions_internal13TrackedObjectD2Ev.exit.i._crit_edge
  store ptr %i.r, ptr %i.c, align 8, !tbaa !60
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !60
  %i.au = shl nuw i64 %i.l, 1
  %i.av = or disjoint i64 %i.au, 1
  store i64 %i.av, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.v

bb.m:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE8AllocateERS7_m.exit.i, %bb.e, %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.g
  %.sroa.0102.0 = phi ptr [ null, %bb.m ], [ %i.r, %bb.g ] ; 2 uses
  %.sroa.9.0 = phi i64 [ 0, %bb.m ], [ %.sroa.speculated.i, %bb.g ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.m ], [ %i.x, %bb.g ] ; 2 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.not.i60 = icmp eq ptr %.sroa.0102.0, null
  br i1 %.not.i60, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit61, label %bb.n

bb.n:                                             ; preds = %.body
  %i.ax = shl nuw nsw i64 %.sroa.9.0, 2
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0, i64 noundef %i.ax) #28
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit61

bb.o:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink1.i) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ay = getelementptr [4 x i8], ptr %.sink2.i, i64 %.sroa.speculated ; 7 uses
  %i.az = sub i64 %i.l, %.sroa.speculated         ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink2.i, i64 %i.i ; 4 uses
  %i.bb = sub nuw i64 %.sroa.speculated, %i.k
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.az ; 2 uses
  %i.bd = sub i64 %3, %i.az
  %.not.i.i62 = icmp eq i64 %i.l, %.sroa.speculated ; 2 uses
  br i1 %.not.i.i62, label %.loopexit128, label %.lr.ph.i.i65.preheader

.lr.ph.i.i65.preheader:                           ; preds = %bb.o
  %i.be = sub i64 %.sroa.speculated, %3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.be
  br label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.lr.ph.i.i65.preheader, %.lr.ph.i.i65
  %.sroa.098.0 = phi ptr [ %i.bh, %.lr.ph.i.i65 ], [ %i.bf, %.lr.ph.i.i65.preheader ] ; 2 uses
  %.012.i.i66 = phi i64 [ %i.bi, %.lr.ph.i.i65 ], [ 0, %.lr.ph.i.i65.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.012.i.i66
  tail call void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2EOS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.098.0) #27
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.098.0, i64 4
  %i.bi = add nuw i64 %.012.i.i66, 1              ; 2 uses
  %exitcond.not.i.i67 = icmp eq i64 %i.bi, %i.az
  br i1 %exitcond.not.i.i67, label %.loopexit128, label %.lr.ph.i.i65, !llvm.loop !18

.loopexit128:                                     ; preds = %.lr.ph.i.i65, %bb.o
  store ptr %i.ay, ptr %6, align 8, !tbaa !152
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.az, ptr %i.bj, align 8, !tbaa !57
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb ; 6 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.g                     ; 3 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 7 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.loopexit128
  %min.iters.check = icmp ult i64 %i.bn, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader157, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bp = shl i64 %.sroa.speculated, 2            ; 2 uses
  %i.bq = sub i64 %i.bp, %i.bm
  %scevgep = getelementptr i8, ptr %.sink2.i, i64 %i.bq
  %i.br = add i64 %i.bp, %i.g
  %i.bs = add i64 %i.bm, %i.h
  %i.bt = shl i64 %i.k, 2
  %i.bu = add i64 %i.bs, %i.bt
  %i.bv = sub i64 %i.br, %i.bu
  %scevgep149 = getelementptr i8, ptr %.sink2.i, i64 %i.bv
  %bound0 = icmp ult ptr %scevgep, %i.bk
  %bound1 = icmp ult ptr %scevgep149, %i.ay
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader157, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 9223372036854775800     ; 3 uses
  %i.bw = and i64 %i.bn, 7
  %i.bx = mul i64 %n.vec, -4                      ; 2 uses
  %i.by = getelementptr i8, ptr %i.ay, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.bk, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.ca ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.bk, i64 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  store <4 x i32> splat (i32 938550620), ptr %i.cb, align 4, !tbaa !140, !alias.scope !3163, !noalias !3164
  store <4 x i32> splat (i32 938550620), ptr %i.cc, align 4, !tbaa !140, !alias.scope !3163, !noalias !3164
  %i.cd = getelementptr inbounds i8, ptr %next.gep150, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep150, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cd, align 4, !tbaa !140, !alias.scope !3164
  %wide.load151 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !140, !alias.scope !3164
  store <4 x i32> %wide.load, ptr %i.cb, align 4, !tbaa !140, !alias.scope !3163, !noalias !3164
  store <4 x i32> %wide.load151, ptr %i.cc, align 4, !tbaa !140, !alias.scope !3163, !noalias !3164
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !3160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i.preheader157

.lr.ph.i.i.i.i.i.preheader157:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.i.ph = phi i64 [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.078.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader157, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader157 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader157 ]
  %.078.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader157 ]
  %i.cg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 3 uses
  store i32 938550620, ptr %i.ch, align 4, !tbaa !140
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !140
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !140
  %i.cj = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ck = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit, !llvm.loop !3161

_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.loopexit128
  br i1 %.not.i.i62, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit, %.noexc74
  %.sroa.0124.1 = phi ptr [ %i.cn, %.noexc74 ], [ %2, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.05.i = phi i64 [ %i.co, %.noexc74 ], [ 0, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.05.i ; 2 uses
  store i32 938550620, ptr %i.cl, align 4, !tbaa !140
  invoke void @_ZN7testing19exceptions_internal10MaybeThrowESt17basic_string_viewIcSt11char_traitsIcEEb(i64 157, ptr nonnull @__PRETTY_FUNCTION__._ZN7testing13ThrowingValueILNS_8TypeSpecE2EEaSERKS2_, i1 noundef zeroext false)
          to label %.noexc74 unwind label %bb.u

.noexc74:                                         ; preds = %.lr.ph.i72
  %i.cm = load i32, ptr %.sroa.0124.1, align 4, !tbaa !140
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !140
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0124.1, i64 4 ; 2 uses
  %i.co = add nuw i64 %.05.i, 1                   ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.co, %i.az
  br i1 %exitcond.not.i73, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit, label %.lr.ph.i72, !llvm.loop !31

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit: ; preds = %.noexc74, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit
  %.sroa.0124.2 = phi ptr [ %2, %_ZSt13move_backwardIPN7testing13ThrowingValueILNS0_8TypeSpecE2EEES4_ET0_T_S6_S5_.exit ], [ %i.cn, %.noexc74 ]
  %.not.i75 = icmp eq i64 %3, %i.az
  br i1 %.not.i75, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit86, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit, %bb.r
  %.sroa.0124.3 = phi ptr [ %i.cu, %bb.r ], [ %.sroa.0124.2, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit ] ; 2 uses
  %.013.i = phi i64 [ %i.cv, %bb.r ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.013.i
  invoke void @_ZN7testing13ThrowingValueILNS_8TypeSpecE2EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(4) %i.cp, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0124.3)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %.lr.ph.i78
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  %i.cs = tail call ptr @__cxa_begin_catch(ptr %i.cr) #27 ; 0 uses
  tail call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEELb0EE15DestroyElementsERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.bc, i64 noundef %.013.i)
  invoke void @__cxa_rethrow() #29
          to label %bb.t unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body80 unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph.i78
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0124.3, i64 4
  %i.cv = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %i.cv, %i.bd
  br i1 %exitcond.not.i79, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit86, label %.lr.ph.i78, !llvm.loop !16

bb.s:                                             ; preds = %bb.q
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  tail call void @__clang_call_terminate(ptr %i.cx) #32
  unreachable

bb.t:                                             ; preds = %bb.p
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEEED2Ev.exit86: ; preds = %bb.r, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN7testing13ThrowingValueILNS3_8TypeSpecE2EEEENS1_20IteratorValueAdapterIS7_PS6_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit
  %i.cy = shl i64 %3, 1
  %i.cz = load i64, ptr %0, align 8, !tbaa !57
  %i.da = add i64 %i.cz, %i.cy
end_hunk_7
