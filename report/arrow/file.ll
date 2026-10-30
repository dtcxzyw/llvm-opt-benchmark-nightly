Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/file?download=true
inline.NumInlined: 2014
inline.NumDeleted: 789
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5arrow2io16MemoryMappedFile6ResizeEl:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.g = icmp eq ptr %.pr, null
  br i1 %i.g, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit20.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !137
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %4, align 8, !tbaa !167
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i8 0, ptr %i.l, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.m, ptr %5, align 8, !tbaa !167
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i8 0, ptr %i.n, align 8, !tbaa !168
  invoke void @_ZSt4lockISt11unique_lockISt5mutexES2_JEEvRT_RT0_DpRT1_(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(9) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !132
  invoke void @_ZN5arrow2io16MemoryMappedFile9MemoryMap6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(120) %i.o, i64 noundef %2)
          to label %_ZN5arrow6StatusD2Ev.exit22 unwind label %bb.e

_ZN5arrow6StatusD2Ev.exit22:                      ; preds = %bb.c
  %i.p = load ptr, ptr %6, align 8, !tbaa !79     ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !79
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
  store ptr null, ptr %0, align 8, !tbaa !79, !alias.scope !442
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit22, %_ZN5arrow6StatusD2Ev.exit26
  %i.t = load i8, ptr %i.n, align 8, !tbaa !168, !range !90, !noundef !91
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.f:                                             ; preds = %.critedge
  %i.v = load ptr, ptr %5, align 8, !tbaa !167    ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.v, null
  br i1 %.not.i.i27, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.critedge, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.x = load i8, ptr %i.l, align 8, !tbaa !168, !range !90, !noundef !91
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %_ZNSt11unique_lockISt5mutexED2Ev.exit29

bb.h:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.z = load ptr, ptr %4, align 8, !tbaa !167    ; 2 uses
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
  %i.ab = load i8, ptr %i.n, align 8, !tbaa !168, !range !90, !noundef !91
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %_ZNSt11unique_lockISt5mutexED2Ev.exit31

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %5, align 8, !tbaa !167   ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i30, label %_ZNSt11unique_lockISt5mutexED2Ev.exit31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit31

_ZNSt11unique_lockISt5mutexED2Ev.exit31:          ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.af = load i8, ptr %i.l, align 8, !tbaa !168, !range !90, !noundef !91
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit33

bb.m:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit31
  %i.ah = load ptr, ptr %4, align 8, !tbaa !167   ; 2 uses
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
  store ptr %0, ptr %2, align 16, !tbaa !446
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !447
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.b, align 16, !tbaa !446
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.c, align 8, !tbaa !447
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %.030 = phi i32 [ 0, %bb.a ], [ %.2110, %bb.p ] ; 4 uses
  %i.d = zext nneg i32 %.030 to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !446 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %split89.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !167  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %split89.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !168, !range !90, !noundef !91
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %split89.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #29 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockIS_ISt5mutexEE4lockEv.exit, label %split89.invoke

_ZNSt11unique_lockIS_ISt5mutexEE4lockEv.exit:     ; preds = %bb.e
  store i8 1, ptr %i.i, align 8, !tbaa !168
  store i8 1, ptr %i.g, align 8, !tbaa !447
  %i.m = xor i32 %.030, 1                         ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !446 ; 3 uses
  %.not.i40 = icmp eq ptr %i.p, null
  br i1 %.not.i40, label %split89.invoke, label %bb.f

bb.f:                                             ; preds = %_ZNSt11unique_lockIS_ISt5mutexEE4lockEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !447, !range !90, !noundef !91
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %split89.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !167  ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.t, null
  br i1 %.not.i.i41, label %split89.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !168, !range !90, !noundef !91
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %split89.invoke, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #29
  %.not.i.i.i42 = icmp eq i32 %i.x, 0             ; 2 uses
  %i.y = zext i1 %.not.i.i.i42 to i8              ; 2 uses
  store i8 %i.y, ptr %i.u, align 8, !tbaa !168
  store i8 %i.y, ptr %i.q, align 8, !tbaa !447
  br i1 %.not.i.i.i42, label %bb.p, label %.preheader57

.preheader57:                                     ; preds = %bb.i
  %i.z = zext nneg i32 %.030 to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %.promoted = load i8, ptr %i.ab, align 8, !tbaa !447
  %i.ac = trunc nuw i8 %.promoted to i1
  br i1 %i.ac, label %bb.j, label %split89.invoke

bb.j:                                             ; preds = %.preheader57
  %i.ad = load ptr, ptr %i.aa, align 16, !tbaa !446 ; 3 uses
  %.not.i47 = icmp eq ptr %i.ad, null
  br i1 %.not.i47, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !168, !range !90, !noundef !91
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %split89.invoke.sink.split

split89.invoke.sink.split:                        ; preds = %bb.k
  store i8 1, ptr %i.ab, align 8
  br label %split89.invoke

split89.invoke:                                   ; preds = %.preheader57, %bb.h, %bb.g, %bb.f, %_ZNSt11unique_lockIS_ISt5mutexEE4lockEv.exit, %bb.e, %bb.d, %bb.c, %bb.b, %split89.invoke.sink.split
  %3 = phi i32 [ 1, %split89.invoke.sink.split ], [ 35, %bb.h ], [ 1, %bb.g ], [ 35, %bb.f ], [ 1, %_ZNSt11unique_lockIS_ISt5mutexEE4lockEv.exit ], [ %i.l, %bb.e ], [ 35, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %.preheader57 ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %3) #33
          to label %split89.cont unwind label %bb.n

split89.cont:                                     ; preds = %split89.invoke
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !167 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i48, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #29 ; 0 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !168
  br label %bb.o

bb.n:                                             ; preds = %split89.invoke
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !447, !range !90, !noundef !91
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.q, label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.j
  %.lcssa69 = phi i8 [ 1, %bb.j ], [ 0, %bb.m ], [ 0, %bb.l ]
  store i8 %.lcssa69, ptr %i.ab, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o
  %.2110 = phi i32 [ %i.m, %bb.o ], [ %.030, %bb.i ] ; 2 uses
  %i.an = zext nneg i32 %.2110 to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !447, !range !90, !noundef !91
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit.1, label %bb.b, !llvm.loop !443

_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit.1:      ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.q:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !168, !range !90, !noundef !91
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #33
          to label %.noexc1.i54 unwind label %bb.u

.noexc1.i54:                                      ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %1, align 8, !tbaa !167   ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i55, label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.av) #29 ; 0 uses
  store i8 0, ptr %i.as, align 8, !tbaa !168
  br label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56

bb.u:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #32
  unreachable

_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56:      ; preds = %bb.n, %bb.s, %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !447, !range !90, !noundef !91
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.v, label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56.1

bb.v:                                             ; preds = %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !168, !range !90, !noundef !91
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.w, label %bb.r

bb.w:                                             ; preds = %bb.v
  %i.bf = load ptr, ptr %0, align 8, !tbaa !167   ; 2 uses
  %.not.i.i.i55.1 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i55.1, label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56.1, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bf) #29 ; 0 uses
  store i8 0, ptr %i.bc, align 8, !tbaa !168
  br label %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56.1

_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56.1:    ; preds = %bb.x, %bb.w, %_ZNSt11unique_lockIS_ISt5mutexEED2Ev.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.aj
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
  store i64 %2, ptr %i.a, align 8, !tbaa !112
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !137  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !155
  %.not46 = icmp eq i32 %i.g, 0
  br i1 %.not46, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA36_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(36) @.str.21)
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !153  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !169
  %.not = icmp eq i64 %i.i, %i.k
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status8FromArgsIJRA35_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(35) @.str.22)
  br label %bb.ak

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 9 uses
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
  store i32 0, ptr %i.t, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !61
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #29, !inline_history !448
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #29, !inline_history !448
  br label %_ZN5arrow6StatusD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.l ], [ %i.ag, %bb.m ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
end_hunk_0
