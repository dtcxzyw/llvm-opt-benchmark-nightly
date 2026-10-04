Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/write_buffer_manager?download=true
inline.NumInlined: 369
inline.NumDeleted: 203
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb18WriteBufferManager18MaybeEndWriteStallEv:bb.a
bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  store atomic i8 0, ptr %i.k monotonic, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.sroa.015.0.in = phi ptr [ %i.o, %bb.f ], [ %.sroa.015.0, %bb.j ]
  %.sroa.015.0 = load ptr, ptr %.sroa.015.0.in, align 8, !tbaa !21 ; 3 uses
  %i.p = icmp eq ptr %.sroa.015.0, %i.o
  br i1 %i.p, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.q, %1
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx114listIPN7rocksdb14StallInterfaceESaIS3_EE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.q, %bb.h ] ; 2 uses
  %i.r = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !21 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #14
  %.not.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx114listIPN7rocksdb14StallInterfaceESaIS3_EE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt7__cxx114listIPN7rocksdb14StallInterfaceESaIS3_EE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.h
  store ptr %1, ptr %i.g, align 8, !tbaa !20
  store ptr %1, ptr %1, align 8, !tbaa !21
  store i64 0, ptr %i.h, align 8, !tbaa !42
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %_ZNSt11unique_lockISt5mutexED2Ev.exit8, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx114listIPN7rocksdb14StallInterfaceESaIS3_EE5clearEv.exit.i.i
  store ptr %i.s, ptr %1, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  store ptr %i.v, ptr %i.g, align 8, !tbaa !20
  store ptr %1, ptr %i.v, align 8, !tbaa !21
  %i.w = load ptr, ptr %1, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %1, ptr %i.x, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !42
  store i64 %i.z, ptr %i.h, align 8, !tbaa !42
  store ptr %i.o, ptr %i.u, align 8, !tbaa !20
  store ptr %i.o, ptr %i.o, align 8, !tbaa !21
  store i64 0, ptr %i.y, align 8, !tbaa !42
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit8

bb.j:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.g unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #15 ; 0 uses
  br label %bb.l

_ZNSt11unique_lockISt5mutexED2Ev.exit8:           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %_ZNSt7__cxx114listIPN7rocksdb14StallInterfaceESaIS3_EE5clearEv.exit.i.i, %bb.i
  %i.ah = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #15 ; 0 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit8, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.ai, %_ZNSt11unique_lockISt5mutexED2Ev.exit8 ] ; 2 uses
  %i.aj = load ptr, ptr %.09.i.i, align 8, !tbaa !21 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #14
  %.not.i.i9 = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i9, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit
  ret void

bb.l:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit, %bb.e
  %.pn = phi { ptr, i32 } [ %i.af, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ %i.n, %bb.e ]
  %i.ak = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %.not8.i.i10 = icmp eq ptr %i.ak, %1
  br i1 %.not8.i.i10, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit14, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %bb.l, %.lr.ph.i.i11
  %.09.i.i12 = phi ptr [ %i.al, %.lr.ph.i.i11 ], [ %i.ak, %bb.l ] ; 2 uses
  %i.al = load ptr, ptr %.09.i.i12, align 8, !tbaa !21 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i12, i64 noundef 24) #14
  %.not.i.i13 = icmp eq ptr %i.al, %1
  br i1 %.not.i.i13, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit14, label %.lr.ph.i.i11, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit14: ; preds = %.lr.ph.i.i11, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18WriteBufferManager15BeginWriteStallEPNS_14StallInterfaceE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i:
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !20
  store ptr %2, ptr %2, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !42
  %i.c = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16
          to label %.noexc.i unwind label %bb.a   ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !44
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %i.e = load i64, ptr %i.b, align 8, !tbaa !47
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.b, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #15 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i10, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.j, %2
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit20, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.09.i.i.i, align 8, !tbaa !21 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #14
  %.not.i.i.i = icmp eq ptr %i.k, %2
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit20, label %.lr.ph.i.i.i, !llvm.loop !0

bb.b:                                             ; preds = %.noexc.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #17
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = load atomic i8, ptr %i.l monotonic, align 8, !range !39, !noundef !40
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZNSt11unique_lockISt5mutexED2Ev.exit13

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.o = load atomic i64, ptr %0 monotonic, align 8
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit13, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 153 ; 2 uses
  %i.q = load atomic i8, ptr %i.p monotonic, align 1, !range !39, !noundef !40
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK7rocksdb18WriteBufferManager11ShouldStallEv.exit.thread27, label %_ZNK7rocksdb18WriteBufferManager11ShouldStallEv.exit

_ZNK7rocksdb18WriteBufferManager11ShouldStallEv.exit: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load atomic i64, ptr %i.s monotonic, align 8
  %i.u = load atomic i64, ptr %0 seq_cst, align 8
  %.not = icmp ult i64 %i.t, %i.u
  br i1 %.not, label %_ZNSt11unique_lockISt5mutexED2Ev.exit13, label %_ZNK7rocksdb18WriteBufferManager11ShouldStallEv.exit.thread27

_ZNK7rocksdb18WriteBufferManager11ShouldStallEv.exit.thread27: ; preds = %bb.d, %_ZNK7rocksdb18WriteBufferManager11ShouldStallEv.exit
  store atomic i8 1, ptr %i.p monotonic, align 1
  %i.v = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.w = icmp eq ptr %i.v, %2
  br i1 %i.w, label %_ZNSt11unique_lockISt5mutexED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZNK7rocksdb18WriteBufferManager11ShouldStallEv.exit.thread27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %i.y = load i64, ptr %i.b, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47
  %i.ab = add i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !47
  store i64 0, ptr %i.b, align 8, !tbaa !47
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit13

bb.f:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt11unique_lockISt5mutexED2Ev.exit13:          ; preds = %bb.c, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %_ZNK7rocksdb18WriteBufferManager11ShouldStallEv.exit, %_ZNK7rocksdb18WriteBufferManager11ShouldStallEv.exit.thread27, %bb.e
  %i.ad = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #15 ; 0 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !21    ; 3 uses
  %i.af = icmp eq ptr %i.ae, %2
  br i1 %i.af, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %._crit_edge unwind label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %2, align 8, !tbaa !21
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge, %_ZNSt11unique_lockISt5mutexED2Ev.exit13
  %3 = phi ptr [ %.pre, %._crit_edge ], [ %i.ae, %_ZNSt11unique_lockISt5mutexED2Ev.exit13 ] ; 2 uses
  %.not8.i.i = icmp eq ptr %3, %2
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %bb.i, %.lr.ph.i.i14
  %.09.i.i = phi ptr [ %i.am, %.lr.ph.i.i14 ], [ %3, %bb.i ] ; 2 uses
  %i.am = load ptr, ptr %.09.i.i, align 8, !tbaa !21 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #14
  %.not.i.i15 = icmp eq ptr %i.am, %2
  br i1 %.not.i.i15, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit, label %.lr.ph.i.i14, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i14, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.j:                                             ; preds = %bb.f, %bb.h
  %.pn7 = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.ac, %bb.f ] ; 2 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not8.i.i16 = icmp eq ptr %i.an, %2
  br i1 %.not8.i.i16, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit20, label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %bb.j, %.lr.ph.i.i17
  %.09.i.i18 = phi ptr [ %i.ao, %.lr.ph.i.i17 ], [ %i.an, %bb.j ] ; 2 uses
  %i.ao = load ptr, ptr %.09.i.i18, align 8, !tbaa !21 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i18, i64 noundef 24) #14
  %.not.i.i19 = icmp eq ptr %i.ao, %2
  br i1 %.not.i.i19, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit20, label %.lr.ph.i.i17, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit20: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i17, %bb.a, %bb.j
  %.pn7.pn = phi { ptr, i32 } [ %i.i, %bb.a ], [ %.pn7, %bb.j ], [ %.pn7, %.lr.ph.i.i17 ], [ %i.i, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn7.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18WriteBufferManager17RemoveDBFromQueueEPNS_14StallInterfaceE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !20
  store ptr %2, ptr %2, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !42
  %i.c = load atomic i64, ptr %0 monotonic, align 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load atomic i8, ptr %i.d monotonic, align 8, !range !39, !noundef !40
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #15 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #17
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.i
  br i1 %i.k, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt7__cxx114listIPN7rocksdb14StallInterfaceESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit
  %storemerge27 = phi ptr [ %i.j, %.preheader.lr.ph ], [ %i.m, %_ZNSt7__cxx114listIPN7rocksdb14StallInterfaceESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit ] ; 4 uses
  %i.m = load ptr, ptr %storemerge27, align 8, !tbaa !21 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge27, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %bb.g, label %_ZNSt7__cxx114listIPN7rocksdb14StallInterfaceESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt7__cxx114listIPN7rocksdb14StallInterfaceESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.q = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #15 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %.preheader
  %i.t = icmp eq ptr %2, %storemerge27
  %i.u = icmp eq ptr %2, %i.m
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i.i, label %_ZNSt7__cxx114listIPN7rocksdb14StallInterfaceESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %storemerge27, ptr noundef %i.m) #15
  %i.v = load i64, ptr %i.b, align 8, !tbaa !47
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.b, align 8, !tbaa !47
  %i.x = load i64, ptr %i.l, align 8, !tbaa !47
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.l, align 8, !tbaa !47
  br label %_ZNSt7__cxx114listIPN7rocksdb14StallInterfaceESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit

_ZNSt7__cxx114listIPN7rocksdb14StallInterfaceESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit: ; preds = %bb.h, %bb.g, %.preheader
  %i.z = icmp eq ptr %i.m, %i.i
  br i1 %i.z, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.preheader, !llvm.loop !64

bb.i:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit, %bb.b, %bb.a
  %i.aa = load ptr, ptr %1, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ad, %2
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ae = load ptr, ptr %.09.i.i, align 8, !tbaa !21 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #14
  %.not.i.i11 = icmp eq ptr %i.ae, %2
  br i1 %.not.i.i11, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.k:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.s, %bb.f ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not8.i.i12 = icmp eq ptr %i.af, %2
  br i1 %.not8.i.i12, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit16, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %bb.k, %.lr.ph.i.i13
  %.09.i.i14 = phi ptr [ %i.ag, %.lr.ph.i.i13 ], [ %i.af, %bb.k ] ; 2 uses
  %i.ag = load ptr, ptr %.09.i.i14, align 8, !tbaa !21 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i14, i64 noundef 24) #14
  %.not.i.i15 = icmp eq ptr %i.ag, %2
  br i1 %.not.i.i15, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit16, label %.lr.ph.i.i13, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPN7rocksdb14StallInterfaceESaIS3_EED2Ev.exit16: ; preds = %.lr.ph.i.i13, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !inline_history !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !26   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !26
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !inline_history !65
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7
end_hunk_0
