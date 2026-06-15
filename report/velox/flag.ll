inline.NumInlined: 516
inline.NumDeleted: 212
begin_hunk_0_@_ZNK4absl12lts_2024011614flags_internal12SequenceLock7TryReadEPvPKSt6atomicImEm:bb.a
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !115

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
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !90

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.011.lcssa.i = phi i64 [ %3, %bb.b ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %.010.lcssa.i = phi ptr [ %1, %bb.b ], [ %.lcssa18.unr, %.lr.ph.i.prol.loopexit ], [ %i.ai, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.lcssa17.unr, %.lr.ph.i.prol.loopexit ], [ %i.aj, %.lr.ph.i ]
  %.not.i = icmp eq i64 %.011.lcssa.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011614flags_internal12SequenceLock21RelaxedCopyFromAtomicEPvPKSt6atomicImEm.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = load atomic i64, ptr %.0.lcssa.i monotonic, align 8
  store i64 %i.am, ptr %i.a, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.010.lcssa.i, ptr nonnull align 8 %i.a, i64 %.011.lcssa.i, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4absl12lts_2024011614flags_internal12SequenceLock21RelaxedCopyFromAtomicEPvPKSt6atomicImEm.exit

_ZN4absl12lts_2024011614flags_internal12SequenceLock21RelaxedCopyFromAtomicEPvPKSt6atomicImEm.exit: ; preds = %._crit_edge.i, %bb.c
  fence acquire
  %i.an = load atomic i64, ptr %0 monotonic, align 8
  %i.ao = icmp eq i64 %i.b, %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4absl12lts_2024011614flags_internal12SequenceLock21RelaxedCopyFromAtomicEPvPKSt6atomicImEm.exit
  %.0 = phi i1 [ %i.ao, %_ZN4absl12lts_2024011614flags_internal12SequenceLock21RelaxedCopyFromAtomicEPvPKSt6atomicImEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011614flags_internal8FlagImpl12RestoreStateERKNS1_9FlagStateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 ptrtoint (ptr @_ZN4absl12lts_2024011614flags_internal8FlagImpl4InitEv to i64), ptr %i.a, align 8, !tbaa !14
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %0, ptr %i.b, align 8, !tbaa !33
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %.not.i.i = icmp eq i32 %i.d, 221
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2024011613base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = sdiv i64 %i.i, 2
  %i.k = icmp ne i64 %i.g, %i.j                   ; 2 uses
  br i1 %i.k, label %.invoke, label %bb.g

bb.d:                                             ; preds = %.invoke
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #22
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit:        ; preds = %bb.d
  resume { ptr, i32 } %i.l

.invoke:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 4
  %switch.not.not = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %switch.not.not, ptr %i.r, ptr %i.s
  invoke void @_ZN4absl12lts_2024011614flags_internal8FlagImpl10StoreValueEPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.t)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %.invoke
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !106, !range !117, !noundef !109
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 3 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = shl nuw nsw i8 %i.v, 2
  %i.z = and i8 %i.x, -5
  %i.aa = or disjoint i8 %i.z, %i.y               ; 2 uses
  store i8 %i.aa, ptr %i.w, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !110, !range !117, !noundef !109
  %i.ad = shl nuw nsw i8 %i.ac, 3
  %i.ae = and i8 %i.aa, -9
  %i.af = or disjoint i8 %i.ae, %i.ad
  store i8 %i.af, ptr %i.w, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit8 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #22
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit8:       ; preds = %bb.g
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_2024011614flags_internal8FlagImpl8TryParseESt17basic_string_viewIcSt11char_traitsIcEERNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %2, ptr %3, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [7 x %"class.std::basic_string_view"], align 8 ; 17 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 16  ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.b = load i8, ptr %i.a, align 1, !noalias !118
  %i.c = and i8 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15, !noalias !118 ; 5 uses
  switch i8 %i.c, label %bb.d [
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14, !noalias !118
  %i.h = tail call noundef ptr %i.e(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null), !noalias !118, !inline_history !121 ; 2 uses
  %i.i = tail call noundef ptr %i.e(i32 noundef 3, ptr noundef %i.g, ptr noundef %i.h, ptr noundef null), !noalias !118, !inline_history !122 ; 0 uses
  br label %_ZNK4absl12lts_2024011614flags_internal8FlagImpl13MakeInitValueEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr %i.e(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null), !noalias !118, !inline_history !123 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14, !noalias !118
  tail call void %i.l(ptr noundef %i.j), !noalias !118, !inline_history !74
  br label %_ZNK4absl12lts_2024011614flags_internal8FlagImpl13MakeInitValueEv.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = tail call noundef ptr %i.e(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null), !noalias !118, !inline_history !121 ; 2 uses
  %i.o = tail call noundef ptr %i.e(i32 noundef 3, ptr noundef nonnull %i.m, ptr noundef %i.n, ptr noundef null), !noalias !118, !inline_history !122 ; 0 uses
  br label %_ZNK4absl12lts_2024011614flags_internal8FlagImpl13MakeInitValueEv.exit

_ZNK4absl12lts_2024011614flags_internal8FlagImpl13MakeInitValueEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !15, !noalias !118
  call void @_ZN4absl12lts_2024011614flags_internal15DynValueDeleterC1EPFPvNS1_6FlagOpEPKvS3_S3_E(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %.0.i, ptr %i.q, align 8, !tbaa !50, !alias.scope !118
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.r, ptr %8, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !70
  store i8 0, ptr %i.r, align 8, !tbaa !14
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %2, ptr %6, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.u, align 8
  %i.v = invoke noundef ptr %i.t(i32 noundef 7, ptr noundef nonnull %6, ptr noundef %.0.i, ptr noundef nonnull %8)
          to label %bb.e unwind label %bb.n, !inline_history !124

bb.e:                                             ; preds = %_ZNK4absl12lts_2024011614flags_internal8FlagImpl13MakeInitValueEv.exit
  %.not = icmp eq ptr %i.v, null
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %.not, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.s, align 8, !tbaa !70   ; 2 uses
  %i.x = icmp eq i64 %i.w, 0                      ; 2 uses
  %i.y = select i1 %i.x, ptr @.str.3, ptr @.str.4
  %i.z = select i1 %i.x, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38 ; 2 uses
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !125
  store i64 15, ptr %5, align 8, !noalias !125
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.5, ptr %i.ad, align 8, !noalias !125
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.ae, align 8, !noalias !125
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %i.af, align 8, !noalias !125
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 22, ptr %i.ag, align 8, !noalias !125
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.6, ptr %i.ah, align 8, !noalias !125
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.ac, ptr %i.ai, align 8, !noalias !125
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.ab, ptr %i.aj, align 8, !noalias !125
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.ak, align 8, !noalias !125
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr @.str.7, ptr %i.al, align 8, !noalias !125
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %i.z, ptr %i.am, align 8, !noalias !125
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %i.y, ptr %i.an, align 8, !noalias !125
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ap = load ptr, ptr %8, align 8, !tbaa !42, !noalias !125
  store i64 %i.w, ptr %i.ao, align 8, !noalias !125
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.ap, ptr %i.aq, align 8, !noalias !125
  invoke void @_ZN4absl12lts_2024011616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull %5, i64 7)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !125
  %i.ar = load ptr, ptr %4, align 8, !tbaa !42    ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  %i.au = load ptr, ptr %9, align 8, !tbaa !42    ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.aw = icmp eq ptr %i.au, %i.av                ; 2 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.aw, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.aw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !70 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  switch i64 %i.ay, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !14
  store i8 %i.ba, ptr %i.ar, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.au, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !70 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !70
  %i.bd = load ptr, ptr %4, align 8, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !14
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.au, ptr %4, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !tbaa !14
  store <2 x i64> %i.bh, ptr %i.bf, align 8, !tbaa !14
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bi = load i64, ptr %i.as, align 8, !tbaa !14
  store ptr %i.au, ptr %4, align 8, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !tbaa !14
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ar, ptr %9, align 8, !tbaa !42
  store i64 %i.bi, ptr %i.av, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.av, ptr %9, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %10 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ar, %bb.k ], [ %i.av, %bb.l ]
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !70
  store i8 0, ptr %10, align 1, !tbaa !14
  %i.bn = load ptr, ptr %9, align 8, !tbaa !42    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !14
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @_ZN4absl12lts_2024011614flags_internal15DynValueDeleterC1EPFPvNS1_6FlagOpEPKvS3_S3_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null)
          to label %_ZNSt10unique_ptrIvN4absl12lts_2024011614flags_internal15DynValueDeleterEEC2IS3_vEEDn.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #22
  unreachable

_ZNSt10unique_ptrIvN4absl12lts_2024011614flags_internal15DynValueDeleterEEC2IS3_vEEDn.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !50
  br label %bb.q

bb.n:                                             ; preds = %_ZNK4absl12lts_2024011614flags_internal8FlagImpl13MakeInitValueEv.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.o:                                             ; preds = %bb.f
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.u

bb.p:                                             ; preds = %bb.e
  %i.bx = load <2 x i64>, ptr %7, align 16, !tbaa !78
  store <2 x i64> %i.bx, ptr %0, align 8, !tbaa !78
  store ptr null, ptr %i.q, align 8, !tbaa !78
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIvN4absl12lts_2024011614flags_internal15DynValueDeleterEEC2IS3_vEEDn.exit
  %i.by = load ptr, ptr %8, align 8, !tbaa !42    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.r
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.q
  %i.ca = load i64, ptr %i.r, align 8, !tbaa !14
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.cc = load ptr, ptr %i.q, align 8, !tbaa !78  ; 2 uses
  %.not.i20 = icmp eq ptr %i.cc, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIvN4absl12lts_2024011614flags_internal15DynValueDeleterEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.cd = load ptr, ptr %7, align 16, !tbaa !7    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZNSt10unique_ptrIvN4absl12lts_2024011614flags_internal15DynValueDeleterEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = invoke noundef ptr %i.cd(i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.cc, ptr noundef null)
          to label %_ZNSt10unique_ptrIvN4absl12lts_2024011614flags_internal15DynValueDeleterEED2Ev.exit unwind label %bb.t, !inline_history !79 ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #22
  unreachable

_ZNSt10unique_ptrIvN4absl12lts_2024011614flags_internal15DynValueDeleterEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void

bb.u:                                             ; preds = %bb.o, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.o ], [ %i.bv, %bb.n ]
  %i.ci = load ptr, ptr %8, align 8, !tbaa !42    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.r
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.u
  %i.ck = load i64, ptr %i.r, align 8, !tbaa !14
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZNSt10unique_ptrIvN4absl12lts_2024011614flags_internal15DynValueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_2024011614flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 ptrtoint (ptr @_ZN4absl12lts_2024011614flags_internal8FlagImpl4InitEv to i64), ptr %i.a, align 8, !tbaa !14
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %0, ptr %i.b, align 8, !tbaa !33
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %.not.i.i = icmp eq i32 %i.e, 221
  br i1 %.not.i.i, label %_ZNK4absl12lts_2024011614flags_internal8FlagImpl9DataGuardEv.exit, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2024011613base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK4absl12lts_2024011614flags_internal8FlagImpl9DataGuardEv.exit

_ZNK4absl12lts_2024011614flags_internal8FlagImpl9DataGuardEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i8, ptr %i.g, align 8
  %i.i = lshr i8 %i.h, 1
  %i.j = and i8 %i.i, 3
  switch i8 %i.j, label %default.unreachable8 [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.c:                                             ; preds = %_ZNK4absl12lts_2024011614flags_internal8FlagImpl9DataGuardEv.exit, %_ZNK4absl12lts_2024011614flags_internal8FlagImpl9DataGuardEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = call noundef ptr %i.l(i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null), !inline_history !27
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = load atomic i64, ptr %i.o acquire, align 8
  store i64 %i.p, ptr %i.c, align 8, !tbaa !39
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.r = call noundef ptr %i.q(i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef null), !inline_history !26
  %i.s = ptrtoint ptr %i.r to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %i.c, i64 %i.s, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4absl12lts_202401169MutexLockD2Ev.exit

bb.d:                                             ; preds = %_ZNK4absl12lts_2024011614flags_internal8FlagImpl9DataGuardEv.exit
  call void @_ZNK4absl12lts_2024011614flags_internal8FlagImpl22ReadSequenceLockedDataEPv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1)
  br label %_ZN4absl12lts_202401169MutexLockD2Ev.exit

bb.e:                                             ; preds = %_ZNK4absl12lts_2024011614flags_internal8FlagImpl9DataGuardEv.exit
  call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 2 uses
  %i.v = invoke noundef ptr %i.u(i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.f unwind label %bb.h, !inline_history !86

bb.f:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = invoke noundef ptr %i.u(i32 noundef 3, ptr noundef nonnull %i.x, ptr noundef %1, ptr noundef null)
          to label %_ZN4absl12lts_2024011614flags_internal13CopyConstructEPFPvNS1_6FlagOpEPKvS2_S2_ES5_S2_.exit unwind label %bb.h, !inline_history !128 ; 0 uses

_ZN4absl12lts_2024011614flags_internal13CopyConstructEPFPvNS1_6FlagOpEPKvS2_S2_ES5_S2_.exit: ; preds = %bb.f
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2024011614flags_internal13CopyConstructEPFPvNS1_6FlagOpEPKvS2_S2_ES5_S2_.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #22
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit6 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #22
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit6:       ; preds = %bb.h
  resume { ptr, i32 } %i.ab

default.unreachable8:                             ; preds = %_ZNK4absl12lts_2024011614flags_internal8FlagImpl9DataGuardEv.exit
  unreachable
end_hunk_0
