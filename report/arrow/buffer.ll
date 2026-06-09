inline.NumInlined: 725
inline.NumDeleted: 348
begin_hunk_0_@_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev:bb.a
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #22, !inline_history !55
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !44

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !45, !range !37, !noundef !38
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6BufferC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN5arrow11memory_pool8internal14zero_size_areaE, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.2", align 16 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow6BufferE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 1, ptr %i.b, align 1, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.e, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  invoke void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.2") align 8 %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load <2 x ptr>, ptr %3, align 16, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !60   ; 8 uses
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !39
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !63
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22, !inline_history !64
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22, !inline_history !64
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, !prof !22

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !69, !range !37, !noundef !38
  store i8 %i.af, ptr %i.b, align 1, !tbaa !36
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(25) %i.ad)
          to label %bb.i unwind label %bb.q, !inline_history !75

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  store i8 %i.aj, ptr %i.f, align 8, !tbaa !59
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !60  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.al, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !63
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22, !inline_history !76
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22, !inline_history !76
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ay, %bb.n ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  ret void

bb.p:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %i.ba, %bb.p ]
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow15SliceBufferSafeESt10shared_ptrINS_6BufferEEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.b = load ptr, ptr %1, align 8, !tbaa !77
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(29) @.str.8)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = sub nsw i64 %.val, %2                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !88, !noalias !89
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.12)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %i.e) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !22

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.13)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

bb.g:                                             ; preds = %bb.e
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = icmp sgt i64 %i.i, %.val
  br i1 %i.j, label %bb.h, label %bb.i, !prof !22

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.15)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %6, align 8, !tbaa !23, !alias.scope !90
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i: ; preds = %bb.i, %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i
  %i.k = load ptr, ptr %6, align 8, !tbaa !23     ; 2 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j, !prof !26

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  %.pr = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  %.not.i9 = icmp eq ptr %.pr, null
  br i1 %.not.i9, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %bb.k, !prof !93

bb.k:                                             ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !45, !range !37, !noundef !38
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  br label %_ZN5arrow6StatusD2Ev.exit10.thread

_ZN5arrow6StatusD2Ev.exit10.thread:               ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.p = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !60
  store ptr null, ptr %1, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !7, !noalias !94
  store ptr %i.p, ptr %4, align 8, !tbaa !77, !noalias !94
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr null, ptr %i.q, align 8, !tbaa !60, !noalias !94
  store ptr %i.s, ptr %i.v, align 8, !tbaa !60, !noalias !94
  store ptr null, ptr %7, align 8, !tbaa !77, !noalias !94
  %i.w = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc.i unwind label %bb.ab, !noalias !94 ; 6 uses

.noexc.i:                                         ; preds = %bb.m
  %i.x = sub nsw i64 %i.u, %2
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 1, ptr %i.y, align 8, !tbaa !61, !noalias !97
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 1, ptr %i.z, align 4, !tbaa !63, !noalias !97
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.w, align 8, !tbaa !40, !noalias !97
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !97
  store ptr %i.p, ptr %3, align 8, !tbaa !77, !noalias !97
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !60, !noalias !97
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !60, !noalias !97
  store ptr null, ptr %4, align 8, !tbaa !77, !noalias !97
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull %3, i64 noundef %2, i64 noundef %i.x)
          to label %bb.n unwind label %.body.i17, !noalias !97

bb.n:                                             ; preds = %.noexc.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !60, !noalias !97 ; 8 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i18, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8, !noalias !97 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ad, align 8, !tbaa !61, !noalias !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !63, !noalias !97
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !40, !noalias !97
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !97
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #22, !noalias !97, !inline_history !102
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !40, !noalias !97
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !noalias !97
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #22, !noalias !97, !inline_history !102
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54, !noalias !97
  %.not.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3, !noalias !97
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4, !noalias !97
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.r ], [ %i.aq, %bb.s ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.t, label %bb.u, !prof !22

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #22, !noalias !97
  br label %bb.u

.body.i17:                                        ; preds = %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22, !noalias !97
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 96) #23, !noalias !97
  br label %.body.i

bb.u:                                             ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !97
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !60, !noalias !94 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8, !noalias !94 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.au, align 8, !tbaa !61, !noalias !94
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !63, !noalias !94
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !40, !noalias !94
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !94
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #22, !noalias !94, !inline_history !103
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !40, !noalias !94
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !94
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #22, !noalias !94, !inline_history !103
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54, !noalias !94
  %.not.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !3, !noalias !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4, !noalias !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i = phi i32 [ %i.ax, %bb.y ], [ %i.bh, %bb.z ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #22, !noalias !94
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ab, %.body.i17
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bj, %bb.ab ], [ %i.as, %.body.i17 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22, !noalias !94
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.bk, align 8, !tbaa !77
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.bl, align 8, !tbaa !60
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !60  ; 8 uses
  %.not.i.i12 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i12, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bn, align 8, !tbaa !61
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !63
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #22, !inline_history !104
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #22, !inline_history !104
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.ae:                                            ; preds = %bb.ac
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i13 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i13, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

bb.ag:                                            ; preds = %bb.ae
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i15 = phi i32 [ %i.bq, %bb.af ], [ %i.ca, %bb.ag ]
  %i.cb = icmp eq i32 %.0.i.i.i.i15, 1
  br i1 %i.cb, label %bb.ah, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, !prof !22

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14, %bb.ad, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit10.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow15SliceBufferSafeESt10shared_ptrINS_6BufferEEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.d = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %.val = load i64, ptr %i.e, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !105
  store ptr @.str.9, ptr %i.c, align 8, !tbaa !88, !noalias !108
  %i.f = icmp slt i64 %2, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(14) @.str.11)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %3, 0
  br i1 %i.g, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(14) @.str.12)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !22

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(22) @.str.13)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = icmp sgt i64 %i.j, %.val
  br i1 %i.k, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit.thread, !prof !22

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(21) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(8) @.str.15)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.l

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.d, %bb.f, %bb.h
  %.pr = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !105
  store ptr %.pr, ptr %4, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit._crit_edge, label %bb.i, !prof !111

_ZN5arrow6StatusD2Ev.exit._crit_edge:             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !77
  br label %bb.l

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %.pr19 = load ptr, ptr %4, align 8, !tbaa !23   ; 2 uses
  %.not.i11 = icmp eq ptr %.pr19, null
  br i1 %.not.i11, label %_ZN5arrow6StatusD2Ev.exit12.thread, label %bb.j, !prof !112

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pr19, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !45, !range !37, !noundef !38
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit12.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br label %_ZN5arrow6StatusD2Ev.exit12.thread

_ZN5arrow6StatusD2Ev.exit12.thread:               ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.p = phi ptr [ %.pre, %_ZN5arrow6StatusD2Ev.exit._crit_edge ], [ %i.d, %_ZN5arrow6StatusD2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store ptr %i.p, ptr %6, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60
  store ptr null, ptr %i.r, align 8, !tbaa !60
  store ptr %i.s, ptr %i.q, align 8, !tbaa !60
  store ptr null, ptr %1, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.a, align 8, !tbaa !113, !noalias !114
  store i64 %3, ptr %i.b, align 8, !tbaa !113, !noalias !114
  %i.t = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc unwind label %bb.s     ; 4 uses

.noexc:                                           ; preds = %bb.l
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !117

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 96) #23, !noalias !117
  br label %.body

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.x, align 8, !tbaa !60
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !60   ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.y, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.z, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !63
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22, !inline_history !104
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22, !inline_history !104
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.o:                                             ; preds = %bb.m
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i14 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i14, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.q:                                             ; preds = %bb.o
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i16 = phi i32 [ %i.ac, %bb.p ], [ %i.am, %bb.q ]
  %i.an = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.an, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, !prof !22

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.s:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.s ], [ %i.u, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  resume { ptr, i32 } %eh.lpad-body

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15, %bb.n, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit12.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow22SliceMutableBufferSafeESt10shared_ptrINS_6BufferEEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.b = load ptr, ptr %1, align 8, !tbaa !77
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(29) @.str.8)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = sub nsw i64 %.val, %2                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !129
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !88, !noalias !130
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.12)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %i.e) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !22

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.13)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

bb.g:                                             ; preds = %bb.e
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = icmp sgt i64 %i.i, %.val
  br i1 %i.j, label %bb.h, label %bb.i, !prof !22

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.15)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %5, align 8, !tbaa !23, !alias.scope !131
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i: ; preds = %bb.i, %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i
  %i.k = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j, !prof !26

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %.pr = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %.not.i9 = icmp eq ptr %.pr, null
  br i1 %.not.i9, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %bb.k, !prof !93

bb.k:                                             ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !45, !range !37, !noundef !38
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br label %_ZN5arrow6StatusD2Ev.exit10.thread

_ZN5arrow6StatusD2Ev.exit10.thread:               ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !60, !noalias !134
  %i.s = load <2 x ptr>, ptr %1, align 8, !tbaa !39
  %i.t = load ptr, ptr %1, align 8, !tbaa !77
  store ptr null, ptr %i.q, align 8, !tbaa !60
  store ptr null, ptr %1, align 8, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !7, !noalias !134
  store <2 x ptr> %i.s, ptr %3, align 16, !tbaa !39, !noalias !134
  store ptr null, ptr %6, align 8, !tbaa !77, !noalias !134
  %i.w = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc.i unwind label %bb.u, !noalias !134 ; 6 uses

.noexc.i:                                         ; preds = %bb.m
  %i.x = sub nsw i64 %i.v, %2
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 1, ptr %i.y, align 8, !tbaa !61, !noalias !137
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 1, ptr %i.z, align 4, !tbaa !63, !noalias !137
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.w, align 8, !tbaa !40, !noalias !137
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  invoke void @_ZN5arrow13MutableBufferC1ERKSt10shared_ptrINS_6BufferEEll(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %2, i64 noundef %i.x)
          to label %bb.n unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i, !noalias !137

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i: ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 96) #23, !noalias !137
  br label %.body.i

bb.n:                                             ; preds = %.noexc.i
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !60, !noalias !134 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8, !noalias !134 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ad, align 8, !tbaa !61, !noalias !134
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !63, !noalias !134
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !40, !noalias !134
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !134
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #22, !noalias !134, !inline_history !142
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !40, !noalias !134
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !noalias !134
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #22, !noalias !134, !inline_history !142
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54, !noalias !134
  %.not.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3, !noalias !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4, !noalias !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.ag, %bb.r ], [ %i.aq, %bb.s ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #22, !noalias !134
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.u, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.u ], [ %i.ab, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22, !noalias !134
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.at, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.au, align 8, !tbaa !60
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !60  ; 8 uses
  %.not.i.i12 = icmp eq ptr %i.av, null
  br i1 %.not.i.i12, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.aw, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !63
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #22, !inline_history !104
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #22, !inline_history !104
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.x:                                             ; preds = %bb.v
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i13 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i13, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

bb.z:                                             ; preds = %bb.x
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i15 = phi i32 [ %i.az, %bb.y ], [ %i.bj, %bb.z ]
  %i.bk = icmp eq i32 %.0.i.i.i.i15, 1
  br i1 %i.bk, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, !prof !22

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14, %bb.w, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit10.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow22SliceMutableBufferSafeESt10shared_ptrINS_6BufferEEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.b = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !88, !noalias !146
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.11)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %3, 0
  br i1 %i.e, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.12)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.f = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g, !prof !22

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.13)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = icmp sgt i64 %i.h, %.val
  br i1 %i.i, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit.thread, !prof !22

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.15)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.l

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.d, %bb.f, %bb.h
  %.pr = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  store ptr %.pr, ptr %4, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit._crit_edge, label %bb.i, !prof !111

_ZN5arrow6StatusD2Ev.exit._crit_edge:             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !77
  br label %bb.l

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %.pr19 = load ptr, ptr %4, align 8, !tbaa !23   ; 2 uses
  %.not.i11 = icmp eq ptr %.pr19, null
  br i1 %.not.i11, label %_ZN5arrow6StatusD2Ev.exit12.thread, label %bb.j, !prof !112

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %.pr19, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !45, !range !37, !noundef !38
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit12.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br label %_ZN5arrow6StatusD2Ev.exit12.thread

_ZN5arrow6StatusD2Ev.exit12.thread:               ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.n = phi ptr [ %.pre, %_ZN5arrow6StatusD2Ev.exit._crit_edge ], [ %i.b, %_ZN5arrow6StatusD2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store ptr %i.n, ptr %6, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60
  store ptr null, ptr %i.p, align 8, !tbaa !60
  store ptr %i.q, ptr %i.o, align 8, !tbaa !60
  store ptr null, ptr %1, align 8, !tbaa !77
  %i.r = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc unwind label %bb.s     ; 6 uses

.noexc:                                           ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !61, !noalias !149
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !63, !noalias !149
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !40, !noalias !149
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  invoke void @_ZN5arrow13MutableBufferC1ERKSt10shared_ptrINS_6BufferEEll(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %2, i64 noundef %3)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !149

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 96) #23, !noalias !149
  br label %.body

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.w, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.x, align 8, !tbaa !60
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !60   ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.y, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.z, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !63
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22, !inline_history !104
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22, !inline_history !104
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.o:                                             ; preds = %bb.m
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i14 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i14, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.q:                                             ; preds = %bb.o
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i16 = phi i32 [ %i.ac, %bb.p ], [ %i.am, %bb.q ]
  %i.an = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.an, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, !prof !22

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.s:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.s ], [ %i.v, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  resume { ptr, i32 } %eh.lpad-body

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15, %bb.n, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit12.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18SliceMutableBufferESt10shared_ptrINS_6BufferEEll(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25, !noalias !154 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !61, !noalias !159
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !63, !noalias !159
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !40, !noalias !159
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN5arrow13MutableBufferC1ERKSt10shared_ptrINS_6BufferEEll(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
          to label %_ZNSt12__shared_ptrIN5arrow13MutableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !159

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #23, !noalias !159
  resume { ptr, i32 } %i.e

_ZNSt12__shared_ptrIN5arrow13MutableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6Buffer11ToHexStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN5arrow14AllocateBitmapElPNS_10MemoryPoolE:bb.a
}

declare void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.27") align 8, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #22, !inline_history !185
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !44

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !45, !range !37, !noundef !38
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN5arrow19AllocateEmptyBitmapEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, i64 noundef %1, i64 noundef 64, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow19AllocateEmptyBitmapEllPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.27", align 8  ; 12 uses
  %5 = alloca %"class.std::unique_ptr.37", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = ashr i64 %1, 3
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nsw i64 %i.a, %i.d
  call void @_ZN5arrow14AllocateBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.27") align 8 %4, i64 noundef %i.e, i64 noundef %2, ptr noundef %3)
  %i.f = load ptr, ptr %4, align 8, !tbaa !23
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !181, !noalias !192 ; 2 uses
  store i64 %i.i, ptr %5, align 8, !tbaa !181, !alias.scope !192
  store ptr null, ptr %i.h, align 8, !tbaa !181, !noalias !192
  %.cast = inttoptr i64 %i.i to ptr               ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !36, !range !37, !noundef !38
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.n = load i8, ptr %i.m, align 8, !range !37
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.l, i1 %i.o, i1 false, !prof !26
  %i.q = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.p, ptr %i.r, ptr null, !prof !26
  %i.t = getelementptr inbounds nuw i8, ptr %.cast, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !7
  call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.u, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.d

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load <2 x ptr>, ptr %6, align 16, !tbaa !39
  store <2 x ptr> %i.w, ptr %i.v, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.x = load ptr, ptr %5, align 8, !tbaa !181    ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.x) #22, !inline_history !183
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ac = load ptr, ptr %5, align 8, !tbaa !181   ; 3 uses
  %.not.i9 = icmp eq ptr %i.ac, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit11, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i10

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i10: ; preds = %bb.d
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ac) #22, !inline_history !183
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit11

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit11: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i10, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.ab

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.ag = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.f, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !26

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !181 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.f
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.aj) #22, !inline_history !184
  %.pr.pre.i = load ptr, ptr %4, align 8, !tbaa !23 ; 2 uses
  %.not.i.i12 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i12, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !44

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.e
  %i.an = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.ag, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !45, !range !37, !noundef !38
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.f, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

declare void @_ZN5arrow14AllocateBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.27") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18ConcatenateBuffersERKSt6vectorISt10shared_ptrINS_6BufferEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.27", align 8  ; 12 uses
  %4 = alloca %"class.std::unique_ptr.37", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !193    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !193  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.27") align 8 %3, i64 noundef %.0.lcssa, ptr noundef %2)
  %i.e = load ptr, ptr %3, align 8, !tbaa !23
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b, !prof !26

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.036 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.032.035 = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.032.035, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !7
  %i.j = add nsw i64 %i.i, %.036                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.032.035, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  br label %bb.g

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !181, !noalias !201 ; 2 uses
  store i64 %i.n, ptr %4, align 8, !tbaa !181, !alias.scope !201
  store ptr null, ptr %i.m, align 8, !tbaa !181, !noalias !201
  %i.o = load ptr, ptr %1, align 8, !tbaa !193    ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !193  ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %._crit_edge41, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %bb.c
  %.cast = inttoptr i64 %i.n to ptr               ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.s = load i8, ptr %i.r, align 1, !tbaa !36, !range !37, !noundef !38
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.v = load i8, ptr %i.u, align 8, !range !37
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.t, i1 %i.w, i1 false, !prof !26
  %i.y = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %i.x, ptr %i.z, ptr null, !prof !26
  br label %.lr.ph40

._crit_edge41:                                    ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.f

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %bb.e
  %.02138 = phi ptr [ %.1, %bb.e ], [ %i.aa, %.lr.ph40.preheader ] ; 3 uses
  %.sroa.028.037 = phi ptr [ %i.ao, %bb.e ], [ %i.o, %.lr.ph40.preheader ] ; 3 uses
  %i.ab = load ptr, ptr %.sroa.028.037, align 8, !tbaa !77 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !7  ; 2 uses
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !36, !range !37, !noundef !38
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = select i1 %i.ag, ptr %i.ai, ptr null, !prof !26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02138, ptr align 1 %i.aj, i64 %i.ad, i1 false)
  %i.ak = load ptr, ptr %.sroa.028.037, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !7
  %i.an = getelementptr inbounds i8, ptr %.02138, i64 %i.am
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph40
  %.1 = phi ptr [ %i.an, %bb.d ], [ %.02138, %.lr.ph40 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.028.037, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.p
  br i1 %i.ap, label %._crit_edge41, label %.lr.ph40

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge41
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load <2 x ptr>, ptr %5, align 16, !tbaa !39
  store <2 x ptr> %i.ar, ptr %i.aq, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.as = load ptr, ptr %4, align 8, !tbaa !181   ; 3 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.as) #22, !inline_history !183
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge41
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ax = load ptr, ptr %4, align 8, !tbaa !181   ; 3 uses
  %.not.i24 = icmp eq ptr %i.ax, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit26, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i25

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i25: ; preds = %bb.f
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ax) #22, !inline_history !183
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit26

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit26: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i25, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.aw

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.bb = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.h, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !181 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.h
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.be) #22, !inline_history !184
  %.pr.pre.i = load ptr, ptr %3, align 8, !tbaa !23 ; 2 uses
  %.not.i.i27 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i27, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !44

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.g
  %i.bi = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.bb, %bb.g ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !45, !range !37, !noundef !38
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.h, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !63
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #22, !inline_history !202
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #22, !inline_history !202
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !22

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !203
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
end_hunk_1
