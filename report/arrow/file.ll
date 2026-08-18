inline.NumInlined: 2014
inline.NumDeleted: 789
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZThn24_N5arrow2io16MemoryMappedFile5WriteEPKvl:bb.a
  tail call void @_ZN5arrow2io16MemoryMappedFile5WriteEPKvl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16MemoryMappedFile6ResizeEl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %5 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !215, !noalias !382
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load atomic i32, ptr %i.e seq_cst, align 4, !noalias !382
  %.not.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit20.thread

_ZN5arrow6StatusD2Ev.exit20.thread:               ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(33) @.str.8)
  %.pr = load ptr, ptr %3, align 8, !tbaa !62     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.g = icmp eq ptr %.pr, null
  br i1 %i.g, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit20.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !203  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !215
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %4, align 8, !tbaa !385
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i8 0, ptr %i.l, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.m, ptr %5, align 8, !tbaa !385
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i8 0, ptr %i.n, align 8, !tbaa !388
  invoke void @_ZSt4lockISt11unique_lockISt5mutexES2_JEEvRT_RT0_DpRT1_(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(9) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !203
  invoke void @_ZN5arrow2io16MemoryMappedFile9MemoryMap6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(120) %i.o, i64 noundef %2)
          to label %_ZN5arrow6StatusD2Ev.exit22 unwind label %bb.e

_ZN5arrow6StatusD2Ev.exit22:                      ; preds = %bb.c
  %i.p = load ptr, ptr %6, align 8, !tbaa !62     ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN5arrow6StatusD2Ev.exit26, label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.j

_ZN5arrow6StatusD2Ev.exit26:                      ; preds = %_ZN5arrow6StatusD2Ev.exit22
  store ptr null, ptr %0, align 8, !tbaa !62, !alias.scope !389
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit22, %_ZN5arrow6StatusD2Ev.exit26
  %i.t = load i8, ptr %i.n, align 8, !tbaa !388, !range !75, !noundef !76
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.f:                                             ; preds = %.critedge
  %i.v = load ptr, ptr %5, align 8, !tbaa !385    ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.v, null
  br i1 %.not.i.i27, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.critedge, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.x = load i8, ptr %i.l, align 8, !tbaa !388, !range !75, !noundef !76
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %_ZNSt11unique_lockISt5mutexED2Ev.exit29

bb.h:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.z = load ptr, ptr %4, align 8, !tbaa !385    ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.z, null
  br i1 %.not.i.i28, label %_ZNSt11unique_lockISt5mutexED2Ev.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit29

_ZNSt11unique_lockISt5mutexED2Ev.exit29:          ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.o

bb.j:                                             ; preds = %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.r, %bb.d ]
  %i.ab = load i8, ptr %i.n, align 8, !tbaa !388, !range !75, !noundef !76
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %_ZNSt11unique_lockISt5mutexED2Ev.exit31

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %5, align 8, !tbaa !385   ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i30, label %_ZNSt11unique_lockISt5mutexED2Ev.exit31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit31

_ZNSt11unique_lockISt5mutexED2Ev.exit31:          ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.af = load i8, ptr %i.l, align 8, !tbaa !388, !range !75, !noundef !76
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit33

bb.m:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit31
  %i.ah = load ptr, ptr %4, align 8, !tbaa !385   ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i32, label %_ZNSt11unique_lockISt5mutexED2Ev.exit33, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit33

_ZNSt11unique_lockISt5mutexED2Ev.exit33:          ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit31, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn.pn

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt11unique_lockISt5mutexED2Ev.exit29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt4lockISt11unique_lockISt5mutexES2_JEEvRT_RT0_DpRT1_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [2 x %"class.std::unique_lock.216"], align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %0, ptr %2, align 16, !tbaa !392
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !395
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.b, align 16, !tbaa !392
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.c, align 8, !tbaa !395
  br label %bb.b

bb.b:                                             ; preds = %bb.r, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.2111, %bb.r ]   ; 4 uses
  %i.d = zext nneg i32 %.0 to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !392 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !385  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !388, !range !75, !noundef !76
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #29 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockIS_ISt5mutexEE4lockEv.exit, label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.m = phi i32 [ 35, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ %i.l, %bb.e ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.m) #33
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt11unique_lockIS_ISt5mutexEE4lockEv.exit:     ; preds = %bb.e
  store i8 1, ptr %i.i, align 8, !tbaa !388
  store i8 1, ptr %i.g, align 8, !tbaa !395
  %3 = and i32 %.0, 1
  %i.n = xor i32 %3, 1                            ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !392 ; 3 uses
  %.not.i40 = icmp eq ptr %i.q, null
  br i1 %.not.i40, label %split86.invoke, label %bb.g

bb.f:                                             ; preds = %.invoke
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.g:                                             ; preds = %_ZNSt11unique_lockIS_ISt5mutexEE4lockEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !395, !range !75, !noundef !76
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %split86.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !385  ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.v, null
  br i1 %.not.i.i41, label %split86.invoke, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !388, !range !75, !noundef !76
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %split86.invoke, label %bb.j

split86.invoke:                                   ; preds = %bb.i, %bb.h, %bb.g, %_ZNSt11unique_lockIS_ISt5mutexEE4lockEv.exit
  %i.z = phi i32 [ 1, %bb.h ], [ 35, %bb.g ], [ 1, %_ZNSt11unique_lockIS_ISt5mutexEE4lockEv.exit ], [ 35, %bb.i ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.z) #33
          to label %split86.cont unwind label %bb.k

split86.cont:                                     ; preds = %split86.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #29
  %.not.i.i.i42 = icmp eq i32 %i.aa, 0            ; 2 uses
  %i.ab = zext i1 %.not.i.i.i42 to i8             ; 2 uses
  store i8 %i.ab, ptr %i.w, align 8, !tbaa !388
  store i8 %i.ab, ptr %i.s, align 8, !tbaa !395
  br i1 %.not.i.i.i42, label %bb.r, label %.preheader57

.preheader57:                                     ; preds = %bb.j
  %4 = and i32 %.0, 1
  %i.ac = zext nneg i32 %4 to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %.promoted = load i8, ptr %i.ae, align 8, !tbaa !395
  %i.af = trunc nuw i8 %.promoted to i1
  br i1 %i.af, label %bb.l, label %split89.invoke

bb.k:                                             ; preds = %split86.invoke
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %.preheader57
  %i.ah = load ptr, ptr %i.ad, align 16, !tbaa !392 ; 3 uses
  %.not.i47 = icmp eq ptr %i.ah, null
  br i1 %.not.i47, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !388, !range !75, !noundef !76
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.n, label %split89.invoke

split89.invoke:                                   ; preds = %bb.m, %.preheader57
  %storemerge = phi i8 [ 0, %.preheader57 ], [ 1, %bb.m ]
  store i8 %storemerge, ptr %i.ae, align 8
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #33
          to label %split89.cont unwind label %bb.p

split89.cont:                                     ; preds = %split89.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !385 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.al, null
  br i1 %.not.i.i48, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.al) #29 ; 0 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !388
  br label %bb.q

bb.p:                                             ; preds = %split89.invoke
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.lcssa69 = phi i8 [ 1, %bb.l ], [ 0, %bb.o ], [ 0, %bb.n ]
  store i8 %.lcssa69, ptr %i.ae, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.q
  %.2111 = phi i32 [ %i.n, %bb.q ], [ %.0, %bb.j ] ; 2 uses
  %i.ao = zext nneg i32 %.2111 to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !395, !range !75, !noundef !76
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit.1, label %bb.b, !llvm.loop !396

_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit.1:      ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.s:                                             ; preds = %bb.k, %bb.p, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.an, %bb.p ], [ %i.ag, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.au = load i8, ptr %i.at, align 8, !tbaa !395, !range !75, !noundef !76
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.t, label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !388, !range !75, !noundef !76
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #33
          to label %.noexc1.i54 unwind label %bb.x

.noexc1.i54:                                      ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.az = load ptr, ptr %1, align 8, !tbaa !385   ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i55, label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.az) #29 ; 0 uses
  store i8 0, ptr %i.aw, align 8, !tbaa !388
  br label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56

bb.x:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #32
  unreachable

_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56:      ; preds = %bb.s, %bb.v, %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !395, !range !75, !noundef !76
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.y, label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56.1

bb.y:                                             ; preds = %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !388, !range !75, !noundef !76
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.z, label %bb.u

bb.z:                                             ; preds = %bb.y
  %i.bj = load ptr, ptr %0, align 8, !tbaa !385   ; 2 uses
  %.not.i.i.i55.1 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i55.1, label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56.1, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bj) #29 ; 0 uses
  store i8 0, ptr %i.bg, align 8, !tbaa !388
  br label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56.1

_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56.1:    ; preds = %bb.aa, %bb.z, %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16MemoryMappedFile9MemoryMap6ResizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.std::shared_ptr.51", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !129
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !215  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !305
  %.not46 = icmp eq i32 %i.g, 0
  br i1 %.not46, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA36_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(36) @.str.21)
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !238  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !397
  %.not = icmp eq i64 %i.i, %i.k
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status8FromArgsIJRA35_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(35) @.str.22)
  br label %bb.ak

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39   ; 9 uses
  %.not.i.i = icmp eq ptr %i.n, null              ; 2 uses
  br i1 %.not.i.i, label %_ZNKSt12__shared_ptrIN5arrow2io16MemoryMappedFile9MemoryMap6RegionELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread, label %_ZNKSt12__shared_ptrIN5arrow2io16MemoryMappedFile9MemoryMap6RegionELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit

_ZNKSt12__shared_ptrIN5arrow2io16MemoryMappedFile9MemoryMap6RegionELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load atomic i32, ptr %i.o monotonic, align 8
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %_ZNKSt12__shared_ptrIN5arrow2io16MemoryMappedFile9MemoryMap6RegionELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread

bb.f:                                             ; preds = %_ZNKSt12__shared_ptrIN5arrow2io16MemoryMappedFile9MemoryMap6RegionELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit
  tail call void @_ZN5arrow6Status8FromArgsIJRA56_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(56) @.str.23)
  br label %bb.ak

_ZNKSt12__shared_ptrIN5arrow2io16MemoryMappedFile9MemoryMap6RegionELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread: ; preds = %bb.e, %_ZNKSt12__shared_ptrIN5arrow2io16MemoryMappedFile9MemoryMap6RegionELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit
  %i.r = icmp eq i64 %2, 0
  %i.s = icmp sgt i64 %i.i, 0                     ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZNKSt12__shared_ptrIN5arrow2io16MemoryMappedFile9MemoryMap6RegionELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread
  br i1 %i.s, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !42
end_hunk_0
