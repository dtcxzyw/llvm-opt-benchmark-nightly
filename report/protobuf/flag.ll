inline.NumInlined: 600
inline.NumDeleted: 245
begin_hunk_0_@_ZNK4absl12lts_2025051214flags_internal12SequenceLock7TryReadEPvPKSt6atomicImEm:bb.a
  %i.d = icmp ugt i64 %3, 7
  br i1 %i.d, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.e = add i64 %3, -8                           ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.014.i.prol = phi ptr [ %i.j, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ] ; 2 uses
  %.01013.i.prol = phi ptr [ %i.i, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.01112.i.prol = phi i64 [ %i.k, %.lr.ph.i.prol ], [ %3, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.h = load atomic i64, ptr %.014.i.prol monotonic, align 8
  store i64 %i.h, ptr %.01013.i.prol, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.01013.i.prol, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.014.i.prol, i64 8 ; 3 uses
  %i.k = add i64 %.01112.i.prol, -8               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !126

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.014.i.unr = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.01013.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.i, %.lr.ph.i.prol ]
  %.01112.i.unr = phi i64 [ %3, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %.lcssa18.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.i, %.lr.ph.i.prol ]
  %.lcssa17.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %i.l = icmp ult i64 %i.e, 56
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.014.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.014.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01013.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01013.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01112.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %.01112.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.m = load atomic i64, ptr %.014.i monotonic, align 8
  store i64 %i.m, ptr %.01013.i, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.01013.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  %i.p = load atomic i64, ptr %i.o monotonic, align 8
  store i64 %i.p, ptr %i.n, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.01013.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.014.i, i64 16
  %i.s = load atomic i64, ptr %i.r monotonic, align 8
  store i64 %i.s, ptr %i.q, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.01013.i, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i, i64 24
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  store i64 %i.v, ptr %i.t, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.01013.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.014.i, i64 32
  %i.y = load atomic i64, ptr %i.x monotonic, align 8
  store i64 %i.y, ptr %i.w, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.01013.i, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i, i64 40
  %i.ab = load atomic i64, ptr %i.aa monotonic, align 8
  store i64 %i.ab, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.01013.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i, i64 48
  %i.ae = load atomic i64, ptr %i.ad monotonic, align 8
  store i64 %i.ae, ptr %i.ac, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.01013.i, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i, i64 56
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 8
  store i64 %i.ah, ptr %i.af, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.01013.i, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.i, i64 64 ; 2 uses
  %i.ak = add i64 %.01112.i, -64                  ; 3 uses
  %i.al = icmp ugt i64 %i.ak, 7
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !101

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.011.lcssa.i = phi i64 [ %3, %bb.b ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %.010.lcssa.i = phi ptr [ %1, %bb.b ], [ %.lcssa18.unr, %.lr.ph.i.prol.loopexit ], [ %i.ai, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.lcssa17.unr, %.lr.ph.i.prol.loopexit ], [ %i.aj, %.lr.ph.i ]
  %.not.i = icmp eq i64 %.011.lcssa.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051214flags_internal12SequenceLock21RelaxedCopyFromAtomicEPvPKSt6atomicImEm.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = load atomic i64, ptr %.0.lcssa.i monotonic, align 8
  store i64 %i.am, ptr %i.a, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.010.lcssa.i, ptr nonnull align 8 %i.a, i64 %.011.lcssa.i, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4absl12lts_2025051214flags_internal12SequenceLock21RelaxedCopyFromAtomicEPvPKSt6atomicImEm.exit

_ZN4absl12lts_2025051214flags_internal12SequenceLock21RelaxedCopyFromAtomicEPvPKSt6atomicImEm.exit: ; preds = %._crit_edge.i, %bb.c
  fence acquire
  %i.an = load atomic i64, ptr %0 monotonic, align 8
  %i.ao = icmp eq i64 %i.b, %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4absl12lts_2025051214flags_internal12SequenceLock21RelaxedCopyFromAtomicEPvPKSt6atomicImEm.exit
  %.0 = phi i1 [ %i.ao, %_ZN4absl12lts_2025051214flags_internal12SequenceLock21RelaxedCopyFromAtomicEPvPKSt6atomicImEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal8FlagImpl12RestoreStateERKNS1_9FlagStateE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 ptrtoint (ptr @_ZN4absl12lts_2025051214flags_internal8FlagImpl4InitEv to i64), ptr %i.a, align 8, !tbaa !24
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %0, ptr %i.b, align 8, !tbaa !43
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %.not.i.i = icmp eq i32 %i.d, 221
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !122
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = sdiv i64 %i.i, 2
  %i.k = icmp ne i64 %i.g, %i.j                   ; 2 uses
  br i1 %i.k, label %.invoke, label %bb.g

bb.d:                                             ; preds = %.invoke
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.d
  resume { ptr, i32 } %i.l

.invoke:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 4
  %switch.not.not = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %switch.not.not, ptr %i.r, ptr %i.s
  invoke void @_ZN4absl12lts_2025051214flags_internal8FlagImpl10StoreValueEPKvNS1_11ValueSourceE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.t, i32 noundef 1)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %.invoke
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !117, !range !128, !noundef !120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 3 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = shl nuw nsw i8 %i.v, 2
  %i.z = and i8 %i.x, -5
  %i.aa = or disjoint i8 %i.z, %i.y               ; 2 uses
  store i8 %i.aa, ptr %i.w, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !121, !range !128, !noundef !120
  %i.ad = shl nuw nsw i8 %i.ac, 3
  %i.ae = and i8 %i.aa, -9
  %i.af = or disjoint i8 %i.ae, %i.ad
  store i8 %i.af, ptr %i.w, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit8 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #24
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit8:       ; preds = %bb.g
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl8TryParseESt17basic_string_viewIcSt11char_traitsIcEERNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2, ptr %3, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [7 x %"class.std::basic_string_view"], align 8 ; 17 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 16  ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.b = load i8, ptr %i.a, align 1, !noalias !129
  %i.c = and i8 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25, !noalias !129 ; 5 uses
  switch i8 %i.c, label %bb.d [
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24, !noalias !129
  %i.h = tail call noundef ptr %i.e(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null), !noalias !129, !inline_history !132 ; 2 uses
  %i.i = tail call noundef ptr %i.e(i32 noundef 3, ptr noundef %i.g, ptr noundef %i.h, ptr noundef null), !noalias !129, !inline_history !133 ; 0 uses
  br label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr %i.e(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null), !noalias !129, !inline_history !134 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24, !noalias !129
  tail call void %i.l(ptr noundef %i.j), !noalias !129, !inline_history !86
  br label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = tail call noundef ptr %i.e(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null), !noalias !129, !inline_history !132 ; 2 uses
  %i.o = tail call noundef ptr %i.e(i32 noundef 3, ptr noundef nonnull %i.m, ptr noundef %i.n, ptr noundef null), !noalias !129, !inline_history !133 ; 0 uses
  br label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv.exit

_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !25, !noalias !129
  call void @_ZN4absl12lts_2025051214flags_internal15DynValueDeleterC1EPFPvNS1_6FlagOpEPKvS3_S3_E(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %.0.i, ptr %i.q, align 8, !tbaa !60, !alias.scope !129
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.r, ptr %8, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !82
  store i8 0, ptr %i.r, align 8, !tbaa !24
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %2, ptr %6, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.u, align 8
  %i.v = invoke noundef ptr %i.t(i32 noundef 7, ptr noundef nonnull %6, ptr noundef %.0.i, ptr noundef nonnull %8)
          to label %bb.e unwind label %bb.n, !inline_history !135

bb.e:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv.exit
  %.not = icmp eq ptr %i.v, null
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %.not, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.s, align 8, !tbaa !82   ; 2 uses
  %i.x = icmp eq i64 %i.w, 0                      ; 2 uses
  %i.y = select i1 %i.x, ptr @.str.3, ptr @.str.4
  %i.z = select i1 %i.x, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !136
  store i64 15, ptr %5, align 8, !noalias !136
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.5, ptr %i.ad, align 8, !noalias !136
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.ae, align 8, !noalias !136
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %i.af, align 8, !noalias !136
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 22, ptr %i.ag, align 8, !noalias !136
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.6, ptr %i.ah, align 8, !noalias !136
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.ac, ptr %i.ai, align 8, !noalias !136
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.ab, ptr %i.aj, align 8, !noalias !136
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.ak, align 8, !noalias !136
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr @.str.7, ptr %i.al, align 8, !noalias !136
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %i.z, ptr %i.am, align 8, !noalias !136
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %i.y, ptr %i.an, align 8, !noalias !136
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ap = load ptr, ptr %8, align 8, !tbaa !52, !noalias !136
  store i64 %i.w, ptr %i.ao, align 8, !noalias !136
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.ap, ptr %i.aq, align 8, !noalias !136
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull %5, i64 7)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !136
  %i.ar = load ptr, ptr %4, align 8, !tbaa !52    ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  %i.au = load ptr, ptr %9, align 8, !tbaa !52    ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.aw = icmp eq ptr %i.au, %i.av                ; 2 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.aw, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.aw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !82 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  switch i64 %i.ay, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !24
  store i8 %i.ba, ptr %i.ar, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.au, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !82 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !82
  %i.bd = load ptr, ptr %4, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !24
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.au, ptr %4, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !tbaa !24
  store <2 x i64> %i.bh, ptr %i.bf, align 8, !tbaa !24
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bi = load i64, ptr %i.as, align 8, !tbaa !24
  store ptr %i.au, ptr %4, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !tbaa !24
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ar, ptr %9, align 8, !tbaa !52
  store i64 %i.bi, ptr %i.av, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.av, ptr %9, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %10 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ar, %bb.k ], [ %i.av, %bb.l ]
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !82
  store i8 0, ptr %10, align 1, !tbaa !24
  %i.bn = load ptr, ptr %9, align 8, !tbaa !52    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !24
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @_ZN4absl12lts_2025051214flags_internal15DynValueDeleterC1EPFPvNS1_6FlagOpEPKvS3_S3_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null)
          to label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEEC2IS3_vEEDn.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #24
  unreachable

_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEEC2IS3_vEEDn.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !60
  br label %bb.q

bb.n:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.o:                                             ; preds = %bb.f
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.u

bb.p:                                             ; preds = %bb.e
  %i.bx = load <2 x i64>, ptr %7, align 16, !tbaa !65
  store <2 x i64> %i.bx, ptr %0, align 8, !tbaa !65
  store ptr null, ptr %i.q, align 8, !tbaa !65
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEEC2IS3_vEEDn.exit
  %i.by = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.r
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.q
  %i.ca = load i64, ptr %i.r, align 8, !tbaa !24
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.cc = load ptr, ptr %i.q, align 8, !tbaa !65  ; 2 uses
  %.not.i20 = icmp eq ptr %i.cc, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.cd = load ptr, ptr %7, align 16, !tbaa !18   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = invoke noundef ptr %i.cd(i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.cc, ptr noundef null)
          to label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit unwind label %bb.t, !inline_history !90 ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #24
  unreachable

_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void

bb.u:                                             ; preds = %bb.o, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.o ], [ %i.bv, %bb.n ]
  %i.ci = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.r
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.u
  %i.ck = load i64, ptr %i.r, align 8, !tbaa !24
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 ptrtoint (ptr @_ZN4absl12lts_2025051214flags_internal8FlagImpl4InitEv to i64), ptr %i.a, align 8, !tbaa !24
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %0, ptr %i.b, align 8, !tbaa !43
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %.not.i.i = icmp eq i32 %i.e, 221
  br i1 %.not.i.i, label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit

_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i8, ptr %i.g, align 8
  %i.i = lshr i8 %i.h, 1
  %i.j = and i8 %i.i, 3
  switch i8 %i.j, label %default.unreachable14 [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.c:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = call noundef ptr %i.l(i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null), !inline_history !37
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = load atomic i64, ptr %i.o acquire, align 8
  store i64 %i.p, ptr %i.c, align 8, !tbaa !49
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.r = call noundef ptr %i.q(i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef null), !inline_history !36
  %i.s = ptrtoint ptr %i.r to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %i.c, i64 %i.s, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit7

bb.d:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  call void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl22ReadSequenceLockedDataEPv(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1)
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit7

bb.e:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = invoke noundef ptr %i.u(i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.f unwind label %bb.j, !inline_history !97

bb.f:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 3 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.aa = and i64 %i.y, -4
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = invoke noundef ptr %i.z(i32 noundef 3, ptr noundef %i.ab, ptr noundef %1, ptr noundef null)
          to label %bb.g unwind label %bb.j, !inline_history !139 ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = and i64 %i.y, 3
  %or.cond.not = icmp eq i64 %i.ad, 1
  br i1 %or.cond.not, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.af = invoke noundef ptr %i.ae(i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.i unwind label %bb.j, !inline_history !97

bb.i:                                             ; preds = %bb.h
  %i.ag = or disjoint i64 %i.y, 2
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  store atomic i64 %i.ag, ptr %i.ai release, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #24
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.j
  resume { ptr, i32 } %i.aj

bb.l:                                             ; preds = %bb.i, %bb.g
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit7 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #24
  unreachable

default.unreachable14:                            ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit7:       ; preds = %bb.l, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK4absl12lts_2025051214flags_internal8FlagImpl11ReadOneWordEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 ptrtoint (ptr @_ZN4absl12lts_2025051214flags_internal8FlagImpl4InitEv to i64), ptr %i.a, align 8, !tbaa !24
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %0, ptr %i.b, align 8, !tbaa !43
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %.not.i.i = icmp eq i32 %i.d, 221
  br i1 %.not.i.i, label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit

_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = call noundef ptr %i.f(i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null), !inline_history !37
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load atomic i64, ptr %i.i acquire, align 8
  ret i64 %i.j
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051214flags_internal8FlagImpl11ReadOneBoolEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 ptrtoint (ptr @_ZN4absl12lts_2025051214flags_internal8FlagImpl4InitEv to i64), ptr %i.a, align 8, !tbaa !24
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %0, ptr %i.b, align 8, !tbaa !43
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %.not.i.i = icmp eq i32 %i.d, 221
  br i1 %.not.i.i, label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit

_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = call noundef ptr %i.f(i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null), !inline_history !37
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load atomic i64, ptr %i.i acquire, align 8
  %i.k = trunc i64 %i.j to i1
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051214flags_internal8FlagImpl5WriteEPKv(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %4 = alloca %"struct.absl::lts_20250512::flags_internal::DynValueDeleter", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 ptrtoint (ptr @_ZN4absl12lts_2025051214flags_internal8FlagImpl4InitEv to i64), ptr %i.a, align 8, !tbaa !24
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %0, ptr %i.b, align 8, !tbaa !43
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %.not.i.i = icmp eq i32 %i.d, 221
  br i1 %.not.i.i, label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit

_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = invoke noundef ptr %i.g(i32 noundef 5, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.c unwind label %bb.j, !inline_history !46 ; 6 uses

bb.c:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  %i.i = insertelement <8 x ptr> poison, ptr %i.h, i64 0
  %i.j = shufflevector <8 x ptr> %i.i, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.k = icmp eq <8 x ptr> %i.j, <ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIbE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIsE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagItE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIiE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIjE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIlE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagImE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIxE9kDummyVarE>
  %i.l = icmp eq ptr %i.h, @_ZN4absl12lts_2025051213base_internal11FastTypeTagIyE9kDummyVarE
  %i.m = icmp eq ptr %i.h, @_ZN4absl12lts_2025051213base_internal11FastTypeTagIdE9kDummyVarE
  %i.n = icmp eq ptr %i.h, @_ZN4absl12lts_2025051213base_internal11FastTypeTagIfE9kDummyVarE
  %i.o = icmp eq ptr %i.h, @_ZN4absl12lts_2025051213base_internal11FastTypeTagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9kDummyVarE
  %i.p = icmp eq ptr %i.h, @_ZN4absl12lts_2025051213base_internal11FastTypeTagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE9kDummyVarE
  %i.q = bitcast <8 x i1> %i.k to i8
  %i.r = icmp ne i8 %i.q, 0
  %op.rdx = or i1 %i.r, %i.l
  %op.rdx60 = or i1 %i.m, %i.n
  %op.rdx61 = or i1 %i.o, %i.p
  %op.rdx62 = or i1 %op.rdx, %op.rdx60
  %op.rdx63 = or i1 %op.rdx62, %op.rdx61
  br i1 %op.rdx63, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.t = invoke noundef ptr %i.s(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.noexc unwind label %bb.k, !inline_history !113 ; 3 uses

.noexc:                                           ; preds = %bb.d
  %i.u = invoke noundef ptr %i.s(i32 noundef 3, ptr noundef %1, ptr noundef %i.t, ptr noundef null)
          to label %_ZN4absl12lts_2025051214flags_internal5CloneEPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit unwind label %bb.k, !inline_history !113 ; 0 uses

_ZN4absl12lts_2025051214flags_internal5CloneEPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !25
  invoke void @_ZN4absl12lts_2025051214flags_internal15DynValueDeleterC1EPFPvNS1_6FlagOpEPKvS3_S3_E(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.v)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN4absl12lts_2025051214flags_internal5CloneEPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit
  %i.w = load i64, ptr %4, align 8, !tbaa !65
  store i64 %i.w, ptr %3, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.x, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !82
  store i8 0, ptr %i.y, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !81, !alias.scope !140
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !82, !alias.scope !140
  store i8 0, ptr %i.ab, align 8, !tbaa !24, !alias.scope !140
  %i.ad = invoke noundef ptr %i.aa(i32 noundef 8, ptr noundef %1, ptr noundef nonnull align 8 %6, ptr noundef null)
          to label %_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !52, !alias.scope !140 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ab
  br i1 %i.ag, label %.body, label %.body.sink.split

_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit: ; preds = %bb.e
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.ai = load ptr, ptr %6, align 8, !tbaa !52
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %i.aj, ptr %2, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = invoke noundef ptr %i.ah(i32 noundef 7, ptr noundef nonnull %2, ptr noundef %i.t, ptr noundef nonnull %5)
          to label %bb.g unwind label %bb.m, !inline_history !135

bb.g:                                             ; preds = %_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit
  %.not = icmp eq ptr %i.al, null
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %.not, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i64 21, ptr %8, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.8, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48 ; 2 uses
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #23
  store i64 %i.ap, ptr %9, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ao, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i64 19, ptr %10, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.9, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ar = load ptr, ptr %6, align 8, !tbaa !52
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !82
  store i64 %i.as, ptr %11, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ar, ptr %i.at, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.au = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.au(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 608, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit unwind label %bb.o, !inline_history !51

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit: ; preds = %bb.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !52    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.p

bb.j:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, %bb.v
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.k:                                             ; preds = %.noexc, %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %_ZN4absl12lts_2025051214flags_internal5CloneEPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.u

bb.m:                                             ; preds = %_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.n:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.o:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !52    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.o
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !24
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.n
  %.pn = phi { ptr, i32 } [ %i.be, %bb.n ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bf, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.t

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %i.bl = load ptr, ptr %6, align 8, !tbaa !52    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ab
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.p
  %i.bn = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bp = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.y
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.br = load i64, ptr %i.y, align 8, !tbaa !24
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bt = load ptr, ptr %i.x, align 8, !tbaa !65  ; 2 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.bu = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = invoke noundef ptr %i.bu(i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.bt, ptr noundef null)
          to label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit unwind label %bb.s, !inline_history !90 ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #24
  unreachable

_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.v

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.bd, %bb.m ] ; 2 uses
  %i.bz = load ptr, ptr %6, align 8, !tbaa !52    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.ab
  br i1 %i.ca, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.t, %bb.f
  %.sink = phi ptr [ %i.af, %bb.f ], [ %i.bz, %bb.t ]
  %.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %.pn.pn.pn.pn, %bb.t ]
  %i.cb = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cc) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.t, %bb.f
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %.pn.pn.pn.pn, %bb.t ], [ %.pn.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.cd = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.y
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %.body
  %i.cf = load i64, ptr %i.y, align 8, !tbaa !24
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  br label %bb.u

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051214flags_internal8FlagImpl9ParseFromESt17basic_string_viewIcSt11char_traitsIcEENS1_15FlagSettingModeENS1_11ValueSourceERNSt7__cxx1112basic_stringIcS5_SaIcEEE:bb.a
bb.v:                                             ; preds = %bb.u
  %i.ab = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit47, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ad = invoke noundef ptr %i.ab(i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.aa, ptr noundef null)
          to label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit47 unwind label %bb.x, !inline_history !90 ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #24
  unreachable

_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit47: ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.an

bb.y:                                             ; preds = %bb.t, %bb.r
  %.pn37 = phi { ptr, i32 } [ %i.z, %bb.t ], [ %i.y, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ap

bb.z:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl8TryParseESt17basic_string_viewIcSt11char_traitsIcEERNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65 ; 4 uses
  %.not59 = icmp eq ptr %i.ah, null
  br i1 %.not59, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit56, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ac:                                            ; preds = %bb.aa
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 1             ; 3 uses
  %i.al = and i8 %i.ak, 3
  %i.am = icmp eq i8 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  br i1 %i.am, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEE5resetEPv.exit, label %bb.ae

_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEE5resetEPv.exit: ; preds = %bb.ac
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  store ptr %i.ah, ptr %i.an, align 8, !tbaa !24
  br label %bb.af

bb.ad:                                            ; preds = %bb.ag
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #23
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  store ptr %i.ah, ptr %i.an, align 8, !tbaa !24
  %i.aq = and i8 %i.ak, -4                        ; 2 uses
  store i8 %i.aq, ptr %i.aj, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEE5resetEPv.exit
  %i.ar = phi i8 [ %i.ak, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEE5resetEPv.exit ], [ %i.aq, %bb.ae ]
  %.sink = phi ptr [ %i.ao, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEE5resetEPv.exit ], [ null, %bb.ae ] ; 2 uses
  store ptr %.sink, ptr %i.ag, align 8, !tbaa !65
  %i.as = and i8 %i.ar, 4
  %.not = icmp eq i8 %i.as, 0
  br i1 %.not, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4absl12lts_2025051214flags_internal8FlagImpl10StoreValueEPKvNS1_11ValueSourceE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.ah, i32 noundef %4)
          to label %bb.ah unwind label %bb.ad

bb.ah:                                            ; preds = %bb.ag
  %i.at = load i8, ptr %i.aj, align 1
  %i.au = and i8 %i.at, -5
  store i8 %i.au, ptr %i.aj, align 1
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !65
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ah
  %i.av = phi ptr [ %.sink, %bb.af ], [ %.pre, %bb.ah ] ; 2 uses
  %.not.i49 = icmp eq ptr %i.av, null
  br i1 %.not.i49, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit50, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aw = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit50, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ay = invoke noundef ptr %i.aw(i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.av, ptr noundef null)
          to label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit50 unwind label %bb.al, !inline_history !90 ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #24
  unreachable

_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit50: ; preds = %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.an

bb.am:                                            ; preds = %bb.ad, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.ad ], [ %i.ai, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ap

_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit52: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.an

_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit54: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.an

_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit56: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.an

bb.an:                                            ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit47, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit50, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit56, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit54, %bb.o, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit52
  %.3 = phi i1 [ true, %bb.o ], [ false, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit56 ], [ false, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit52 ], [ false, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit54 ], [ true, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit50 ], [ true, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit47 ], [ true, %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit ], [ true, %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #24
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.an
  ret i1 %.3

bb.ap:                                            ; preds = %bb.am, %bb.y, %bb.n
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.n ], [ %.pn37, %bb.y ], [ %.pn, %bb.am ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit57 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #24
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit57:      ; preds = %bb.ap
  resume { ptr, i32 } %.pn39.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl33CheckDefaultValueParsingRoundtripEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl12DefaultValueB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 ptrtoint (ptr @_ZN4absl12lts_2025051214flags_internal8FlagImpl4InitEv to i64), ptr %i.a, align 8, !tbaa !24
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %0, ptr %i.b, align 8, !tbaa !43
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %.not.i.i = icmp eq i32 %i.d, 221
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.l

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.g = load i8, ptr %i.f, align 1, !noalias !143
  %i.h = and i8 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25, !noalias !143 ; 5 uses
  switch i8 %i.h, label %bb.f [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24, !noalias !143
  %i.m = invoke noundef ptr %i.j(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.noexc19 unwind label %bb.m, !inline_history !86 ; 2 uses

.noexc19:                                         ; preds = %bb.d
  %i.n = invoke noundef ptr %i.j(i32 noundef 3, ptr noundef %i.l, ptr noundef %i.m, ptr noundef null)
          to label %.noexc20 unwind label %bb.m, !inline_history !86 ; 0 uses

bb.e:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.o = invoke noundef ptr %i.j(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.noexc21 unwind label %bb.m, !inline_history !86 ; 2 uses

.noexc21:                                         ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24, !noalias !143
  invoke void %i.q(ptr noundef %i.o)
          to label %.noexc20 unwind label %bb.m, !inline_history !86

bb.f:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.r = invoke noundef ptr %i.j(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.noexc23 unwind label %bb.m, !inline_history !86 ; 2 uses

.noexc23:                                         ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = invoke noundef ptr %i.j(i32 noundef 3, ptr noundef nonnull %i.s, ptr noundef %i.r, ptr noundef null)
          to label %.noexc20 unwind label %bb.m, !inline_history !86 ; 0 uses

.noexc20:                                         ; preds = %.noexc23, %.noexc21, %.noexc19
  %.0.i = phi ptr [ %i.o, %.noexc21 ], [ %i.m, %.noexc19 ], [ %i.r, %.noexc23 ] ; 2 uses
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !25, !noalias !143
  invoke void @_ZN4absl12lts_2025051214flags_internal15DynValueDeleterC1EPFPvNS1_6FlagOpEPKvS3_S3_E(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.u)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %.noexc20
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %.0.i, ptr %i.v, align 8, !tbaa !60, !alias.scope !143
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !82
  store i8 0, ptr %i.w, align 8, !tbaa !24
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.z = load ptr, ptr %2, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %i.ab, ptr %1, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.z, ptr %i.ac, align 8
  %i.ad = invoke noundef ptr %i.y(i32 noundef 7, ptr noundef nonnull %1, ptr noundef %.0.i, ptr noundef nonnull %4)
          to label %bb.h unwind label %bb.n, !inline_history !135

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %i.ad, null
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br i1 %.not, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 5, ptr %6, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.10, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !48 ; 2 uses
  %i.ah = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #23
  store i64 %i.ah, ptr %7, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ag, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i64 7, ptr %8, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.11, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl8FilenameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %10, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !82
  store i64 %i.al, ptr %9, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.aj, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i64 33, ptr %11, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.12, ptr %i.an, align 8
  invoke void @_ZN4absl12lts_202505126StrCatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA30_cS7_EEES7_RKNS0_8AlphaNumESB_SB_SB_SB_DpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(30) @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ao = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.ao(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 694, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit unwind label %bb.q, !inline_history !51

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit: ; preds = %bb.k
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #23
  unreachable

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit42

bb.m:                                             ; preds = %.noexc20, %.noexc23, %bb.f, %.noexc21, %bb.e, %.noexc19, %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.n:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.o:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.p:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.at, %bb.p ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.au, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ba = load ptr, ptr %10, align 8, !tbaa !52   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !24
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.w
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.r
  %i.bh = load i64, ptr %i.w, align 8, !tbaa !24
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !65  ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.bk = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = invoke noundef ptr %i.bk(i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.bj, ptr noundef null)
          to label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit unwind label %bb.u, !inline_history !90 ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #24
  unreachable

_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #24
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit
  %i.br = load ptr, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !24
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.n
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.ar, %bb.n ]
  %i.bw = load ptr, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.w
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.w
  %i.by = load i64, ptr %i.w, align 8, !tbaa !24
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.aq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit42 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #24
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit42:      ; preds = %bb.x, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %.pn.pn.pn.pn.pn.pn, %bb.x ]
  %i.cc = load ptr, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit42
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !24
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_202505126StrCatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA30_cS7_EEES7_RKNS0_8AlphaNumESB_SB_SB_SB_DpRKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(30) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca [8 x %"class.std::basic_string_view"], align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i, ptr %9, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.0.0.copyload.i8 = load i64, ptr %2, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i10 = load ptr, ptr %.sroa.2.0..sroa_idx.i9, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i8, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %.sroa.2.0.copyload.i10, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.0.0.copyload.i13 = load i64, ptr %3, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i15 = load ptr, ptr %.sroa.2.0..sroa_idx.i14, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i13, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %.sroa.2.0.copyload.i15, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.sroa.0.0.copyload.i18 = load i64, ptr %4, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i20 = load ptr, ptr %.sroa.2.0..sroa_idx.i19, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i18, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %.sroa.2.0.copyload.i20, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 64
  %.sroa.0.0.copyload.i23 = load i64, ptr %5, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i25 = load ptr, ptr %.sroa.2.0..sroa_idx.i24, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i23, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 72
  store ptr %.sroa.2.0.copyload.i25, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.k = load ptr, ptr %6, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !82
  store i64 %i.m, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #23
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 104
  store ptr %7, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.s = load ptr, ptr %8, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !82
  store i64 %i.u, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 120
  store ptr %i.s, ptr %i.v, align 8
  call void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %9, i64 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051214flags_internal8FlagImpl18ValidateInputValueESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 %1, ptr %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 ptrtoint (ptr @_ZN4absl12lts_2025051214flags_internal8FlagImpl4InitEv to i64), ptr %i.a, align 8, !tbaa !24
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %0, ptr %i.b, align 8, !tbaa !43
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %.not.i.i = icmp eq i32 %i.d, 221
  br i1 %.not.i.i, label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit

_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.g = load i8, ptr %i.f, align 1, !noalias !146
  %i.h = and i8 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25, !noalias !146 ; 5 uses
  switch i8 %i.h, label %bb.e [
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

bb.c:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24, !noalias !146
  %i.m = invoke noundef ptr %i.j(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.noexc unwind label %bb.l, !inline_history !86 ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.n = invoke noundef ptr %i.j(i32 noundef 3, ptr noundef %i.l, ptr noundef %i.m, ptr noundef null)
          to label %.noexc6 unwind label %bb.l, !inline_history !86 ; 0 uses

bb.d:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  %i.o = invoke noundef ptr %i.j(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.noexc7 unwind label %bb.l, !inline_history !86 ; 2 uses

.noexc7:                                          ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24, !noalias !146
  invoke void %i.q(ptr noundef %i.o)
          to label %.noexc6 unwind label %bb.l, !inline_history !86

bb.e:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  %i.r = invoke noundef ptr %i.j(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.noexc9 unwind label %bb.l, !inline_history !86 ; 2 uses

.noexc9:                                          ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = invoke noundef ptr %i.j(i32 noundef 3, ptr noundef nonnull %i.s, ptr noundef %i.r, ptr noundef null)
          to label %.noexc6 unwind label %bb.l, !inline_history !86 ; 0 uses

.noexc6:                                          ; preds = %.noexc9, %.noexc7, %.noexc
  %.0.i = phi ptr [ %i.o, %.noexc7 ], [ %i.m, %.noexc ], [ %i.r, %.noexc9 ] ; 2 uses
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !25, !noalias !146
  invoke void @_ZN4absl12lts_2025051214flags_internal15DynValueDeleterC1EPFPvNS1_6FlagOpEPKvS3_S3_E(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.u)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %.noexc6
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.0.i, ptr %i.v, align 8, !tbaa !60, !alias.scope !146
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !82
  store i8 0, ptr %i.w, align 8, !tbaa !24
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %1, ptr %3, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.z, align 8
  %i.aa = invoke noundef ptr %i.y(i32 noundef 7, ptr noundef nonnull %3, ptr noundef %.0.i, ptr noundef nonnull %5)
          to label %bb.g unwind label %bb.m, !inline_history !135

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ab = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.w
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !24
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !65  ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = invoke noundef ptr %i.ag(i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.af, ptr noundef null)
          to label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit unwind label %bb.j, !inline_history !90 ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #24
  unreachable

_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #24
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit
  %i.an = icmp ne ptr %i.aa, null
  ret i1 %i.an

bb.l:                                             ; preds = %.noexc6, %.noexc9, %bb.e, %.noexc7, %bb.d, %.noexc, %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.w
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.m
  %i.as = load i64, ptr %i.w, align 8, !tbaa !24
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.ao, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit16 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #24
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit16:      ; preds = %bb.n
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZNK4absl12lts_2025051215CommandLineFlag9IsRetiredEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #14

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare void @_ZN4absl12lts_202505125Mutex10ReaderLockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = cmpxchg ptr %0, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef %1)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %_ZN4absl12lts_2025051213base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread: ; preds = %bb.a, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !43
  %.unpack.i.i.i = load i64, ptr %2, align 8, !tbaa !24 ; 3 uses
  %.elt2.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.unpack3.i.i.i = load i64, ptr %.elt2.i.i.i, align 8, !tbaa !24
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %.unpack3.i.i.i ; 2 uses
  %i.g = and i64 %.unpack.i.i.i, 1
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.i = getelementptr i8, ptr %i.h, i64 %.unpack.i.i.i
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load ptr, ptr %i.j, align 8, !nosanitize !120
  br label %_ZSt8__invokeIMN4absl12lts_2025051214flags_internal8FlagImplEFvvEJPS3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS8_DpOS9_.exit.i

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  %i.l = inttoptr i64 %.unpack.i.i.i to ptr
  br label %_ZSt8__invokeIMN4absl12lts_2025051214flags_internal8FlagImplEFvvEJPS3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS8_DpOS9_.exit.i

_ZSt8__invokeIMN4absl12lts_2025051214flags_internal8FlagImplEFvvEJPS3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS8_DpOS9_.exit.i: ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(88) %i.f), !inline_history !149
  %i.n = atomicrmw xchg ptr %0, i32 221 release, align 4
  %i.o = icmp eq i32 %i.n, 94570706
  br i1 %i.o, label %bb.d, label %_ZN4absl12lts_2025051213base_internal12SpinLockWakeEPSt6atomicIjEb.exit

bb.d:                                             ; preds = %_ZSt8__invokeIMN4absl12lts_2025051214flags_internal8FlagImplEFvvEJPS3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS8_DpOS9_.exit.i
  tail call void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %_ZN4absl12lts_2025051213base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZN4absl12lts_2025051213base_internal12SpinLockWakeEPSt6atomicIjEb.exit: ; preds = %bb.d, %_ZSt8__invokeIMN4absl12lts_2025051214flags_internal8FlagImplEFvvEJPS3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS8_DpOS9_.exit.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  ret void
}

declare noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @AbslInternalSpinLockWake_lts_20250512(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2025051214flags_internal18FlagStateInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051214flags_internal9FlagStateD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4absl12lts_2025051214flags_internal9FlagStateE, i64 16), ptr %0, align 8, !tbaa !105
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150, !nonnull !120, !align !151 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 4
  %switch.not = icmp eq i8 %i.e, 0
  br i1 %switch.not, label %_ZN4absl12lts_2025051214flags_internal6DeleteEPFPvNS1_6FlagOpEPKvS2_S2_ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.j = invoke noundef ptr %i.g(i32 noundef 1, ptr noundef null, ptr noundef %i.i, ptr noundef null)
          to label %_ZN4absl12lts_2025051214flags_internal6DeleteEPFPvNS1_6FlagOpEPKvS2_S2_ES2_.exit unwind label %bb.c, !inline_history !20 ; 0 uses

_ZN4absl12lts_2025051214flags_internal6DeleteEPFPvNS1_6FlagOpEPKvS2_S2_ES2_.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl12lts_2025051214flags_internal18FlagStateInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  ret void

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051214flags_internal9FlagStateD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4absl12lts_2025051214flags_internal9FlagStateE, i64 16), ptr %0, align 8, !tbaa !105
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150, !nonnull !120, !align !151 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 4
  %switch.not.i = icmp eq i8 %i.e, 0
  br i1 %switch.not.i, label %_ZN4absl12lts_2025051214flags_internal9FlagStateD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.j = invoke noundef ptr %i.g(i32 noundef 1, ptr noundef null, ptr noundef %i.i, ptr noundef null)
          to label %_ZN4absl12lts_2025051214flags_internal9FlagStateD2Ev.exit unwind label %bb.c, !inline_history !152 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #24, !inline_history !153
  unreachable

_ZN4absl12lts_2025051214flags_internal9FlagStateD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl12lts_2025051214flags_internal18FlagStateInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #23, !inline_history !153
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4absl12lts_2025051214flags_internal9FlagState7RestoreEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150, !nonnull !120, !align !151
  %i.c = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal8FlagImpl12RestoreStateERKNS1_9FlagStateE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0)
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 23, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.16, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !150, !nonnull !120, !align !151 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #23
  store i64 %i.h, ptr %3, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i64 5, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.17, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl12CurrentValueB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.e)
  %i.j = load ptr, ptr %6, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82
  store i64 %i.l, ptr %5, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.n(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 147, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit unwind label %bb.f, !inline_history !51

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !24
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !24
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  ret void

bb.e:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !52    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.z, %bb.f ]
  %i.af = load ptr, ptr %6, align 8, !tbaa !52    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !24
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSSt13__atomic_baseIlE", !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTSSt6vectorIPvSaIS0_EE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !16, i64 8}
!15 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"any p2 pointer", !13, i64 0}
!17 = !{!15, !16, i64 0}
!18 = !{!19, !13, i64 0}
!19 = !{!"_ZTSN4absl12lts_2025051214flags_internal15DynValueDeleterE", !13, i64 0}
!20 = distinct !{null}
!21 = !{!22, !13, i64 0}
!22 = !{!"_ZTSN4absl12lts_2025051214flags_internal13MaskedPointerE", !13, i64 0}
!23 = distinct !{null}
!24 = !{!5, !5, i64 0}
!25 = !{!26, !13, i64 32}
!26 = !{!"_ZTSN4absl12lts_2025051214flags_internal8FlagImplE", !27, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !13, i64 32, !5, i64 40, !5, i64 48, !5, i64 48, !5, i64 49, !29, i64 49, !29, i64 49, !30, i64 52, !33, i64 56, !35, i64 64, !5, i64 72, !5, i64 80}
!27 = !{!"_ZTSN4absl12lts_2025051215CommandLineFlagE"}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"bool", !5, i64 0}
!30 = !{!"_ZTSN4absl12lts_202505129once_flagE", !31, i64 0}
!31 = !{!"_ZTSSt6atomicIjE", !32, i64 0}
!32 = !{!"_ZTSSt13__atomic_baseIjE", !4, i64 0}
!33 = !{!"_ZTSN4absl12lts_2025051214flags_internal12SequenceLockE", !34, i64 0}
!34 = !{!"_ZTSSt6atomicIlE", !9, i64 0}
!35 = !{!"p1 _ZTSN4absl12lts_2025051214flags_internal12FlagCallbackE", !13, i64 0}
!36 = distinct !{null}
!37 = distinct !{ptr @_ZNK4absl12lts_2025051214flags_internal8FlagImpl12OneWordValueEv, null, null}
!38 = distinct !{ptr @_ZNK4absl12lts_2025051214flags_internal8FlagImpl17AtomicBufferValueEv, null, null}
!39 = distinct !{ptr @_ZNK4absl12lts_2025051214flags_internal8FlagImpl10PtrStorageEv, null, null}
!40 = distinct !{null, null}
!41 = distinct !{null, null}
!42 = distinct !{null, null}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTSN4absl12lts_2025051214flags_internal8FlagImplE", !13, i64 0}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = distinct !{null}
!47 = distinct !{null}
!48 = !{!26, !28, i64 8}
!49 = !{!10, !10, i64 0}
!50 = !{!28, !28, i64 0}
!51 = distinct !{null}
!52 = !{!53, !28, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !54, i64 0, !10, i64 8, !5, i64 16}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!55 = !{!56, !28, i64 8}
!56 = !{!"_ZTSSt9type_info", !28, i64 8}
!57 = distinct !{null, null}
!58 = distinct !{null, null}
!59 = distinct !{null}
!60 = !{!61, !13, i64 0}
!61 = !{!"_ZTSSt10_Head_baseILm0EPvLb0EE", !13, i64 0}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!15, !16, i64 16}
!65 = !{!13, !13, i64 0}
!66 = distinct !{ptr @_ZN4absl12lts_2025051214flags_internal13MaskedPointer3SetEPFPvNS1_6FlagOpEPKvS3_S3_ES6_b, null}
!67 = !{!26, !35, i64 64}
!68 = !{!69, !13, i64 0}
!69 = !{!"_ZTSN4absl12lts_2025051214flags_internal12FlagCallbackE", !13, i64 0, !70, i64 8}
!70 = !{!"_ZTSN4absl12lts_202505125MutexE", !34, i64 0}
!71 = !{!26, !28, i64 16}
!72 = !{!26, !28, i64 24}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEclES7_: argument 0"}
!75 = distinct !{!75, !"_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEclES7_"}
!76 = !{!77, !13, i64 16}
!77 = !{!"_ZTSSt14_Function_base", !5, i64 0, !13, i64 16}
!78 = !{!79, !13, i64 24}
!79 = !{!"_ZTSSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEE", !77, i64 0, !13, i64 24}
!80 = distinct !{null}
!81 = !{!54, !28, i64 0}
!82 = !{!53, !10, i64 8}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv: argument 0"}
!85 = distinct !{!85, !"_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv"}
!86 = !{ptr @_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_: argument 0"}
!89 = distinct !{!89, !"_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_"}
!90 = !{ptr @_ZNK4absl12lts_2025051214flags_internal15DynValueDeleterclEPv}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_: argument 0"}
!93 = distinct !{!93, !"_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_: argument 0"}
!96 = distinct !{!96, !"_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_"}
!97 = !{ptr @_ZNK4absl12lts_2025051214flags_internal8FlagImpl10PtrStorageEv}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_: argument 0"}
!100 = distinct !{!100, !"_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_"}
!101 = distinct !{!101, !63}
!102 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!103 = !{ptr @_ZNK4absl12lts_2025051214flags_internal8FlagImpl17AtomicBufferValueEv}
!104 = !{ptr @_ZNK4absl12lts_2025051214flags_internal8FlagImpl12OneWordValueEv}
!105 = !{!106, !106, i64 0}
!106 = !{!"vtable pointer", !6, i64 0}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZSt11make_uniqueIN4absl12lts_2025051214flags_internal9FlagStateEJRNS2_8FlagImplElRbS6_lEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!109 = distinct !{!109, !"_ZSt11make_uniqueIN4absl12lts_2025051214flags_internal9FlagStateEJRNS2_8FlagImplElRbS6_lEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZSt11make_uniqueIN4absl12lts_2025051214flags_internal9FlagStateEJRNS2_8FlagImplERPvRbS8_lEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!112 = distinct !{!112, !"_ZSt11make_uniqueIN4absl12lts_2025051214flags_internal9FlagStateEJRNS2_8FlagImplERPvRbS8_lEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!113 = distinct !{null}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZSt11make_uniqueIN4absl12lts_2025051214flags_internal9FlagStateEJRNS2_8FlagImplEPvRbS7_lEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!116 = distinct !{!116, !"_ZSt11make_uniqueIN4absl12lts_2025051214flags_internal9FlagStateEJRNS2_8FlagImplEPvRbS7_lEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!117 = !{!118, !29, i64 24}
!118 = !{!"_ZTSN4absl12lts_2025051214flags_internal9FlagStateE", !119, i64 0, !44, i64 8, !5, i64 16, !29, i64 24, !29, i64 25, !10, i64 32}
!119 = !{!"_ZTSN4absl12lts_2025051214flags_internal18FlagStateInterfaceE"}
!120 = !{}
!121 = !{!118, !29, i64 25}
!122 = !{!118, !10, i64 32}
!123 = !{!124, !125, i64 0}
!124 = !{!"_ZTSSt10_Head_baseILm0EPN4absl12lts_2025051214flags_internal18FlagStateInterfaceELb0EE", !125, i64 0}
!125 = !{!"p1 _ZTSN4absl12lts_2025051214flags_internal18FlagStateInterfaceE", !13, i64 0}
!126 = distinct !{!126, !127}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{i8 0, i8 2}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv: argument 0"}
!131 = distinct !{!131, !"_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv"}
!132 = distinct !{ptr @_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv, null, null}
!133 = distinct !{ptr @_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv, null, null}
!134 = distinct !{ptr @_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv, null}
!135 = distinct !{null}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN4absl12lts_202505126StrCatIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEEEES9_RKNS0_8AlphaNumESC_SC_SC_SC_DpRKT_: argument 0"}
!138 = distinct !{!138, !"_ZN4absl12lts_202505126StrCatIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEEEES9_RKNS0_8AlphaNumESC_SC_SC_SC_DpRKT_"}
!139 = distinct !{null}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_: argument 0"}
!142 = distinct !{!142, !"_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv: argument 0"}
!145 = distinct !{!145, !"_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv: argument 0"}
!148 = distinct !{!148, !"_ZNK4absl12lts_2025051214flags_internal8FlagImpl13MakeInitValueEv"}
!149 = distinct !{null}
!150 = !{!118, !44, i64 8}
!151 = !{i64 8}
!152 = distinct !{ptr @_ZN4absl12lts_2025051214flags_internal9FlagStateD2Ev, null}
!153 = !{ptr @_ZN4absl12lts_2025051214flags_internal9FlagStateD2Ev}
end_hunk_1
