Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/buffer?download=true
inline.NumInlined: 725
inline.NumDeleted: 348
begin_hunk_0_@_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev:bb.a
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
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
  br i1 %i.h, label %bb.f, label %8, !prof !22

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.13)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

8:                                                ; preds = %bb.e
  %9 = extractvalue { i64, i1 } %i.g, 0
  %10 = icmp sgt i64 %9, %.val
  br i1 %10, label %11, label %bb.g, !prof !22

11:                                               ; preds = %8
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.15)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

bb.g:                                             ; preds = %8
  store ptr null, ptr %6, align 8, !tbaa !23, !alias.scope !90
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i: ; preds = %bb.g, %11, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i
  %i.i = load ptr, ptr %6, align 8, !tbaa !23     ; 2 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.k, label %bb.h, !prof !26

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  %.pr = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  %.not.i9 = icmp eq ptr %.pr, null
  br i1 %.not.i9, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %bb.i, !prof !93

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !45, !range !37, !noundef !38
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  br label %_ZN5arrow6StatusD2Ev.exit10.thread

_ZN5arrow6StatusD2Ev.exit10.thread:               ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.n = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60   ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !60
  store ptr null, ptr %1, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !7, !noalias !94
  store ptr %i.n, ptr %4, align 8, !tbaa !77, !noalias !94
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !60, !noalias !94
  store ptr %i.q, ptr %i.t, align 8, !tbaa !60, !noalias !94
  store ptr null, ptr %7, align 8, !tbaa !77, !noalias !94
  %i.u = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc.i unwind label %bb.z, !noalias !94 ; 6 uses

.noexc.i:                                         ; preds = %bb.k
  %i.v = sub nsw i64 %i.s, %2
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !61, !noalias !97
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 1, ptr %i.x, align 4, !tbaa !63, !noalias !97
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.u, align 8, !tbaa !40, !noalias !97
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !97
  store ptr %i.n, ptr %3, align 8, !tbaa !77, !noalias !97
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !60, !noalias !97
  store ptr %i.q, ptr %i.z, align 8, !tbaa !60, !noalias !97
  store ptr null, ptr %4, align 8, !tbaa !77, !noalias !97
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull %3, i64 noundef %2, i64 noundef %i.v)
          to label %bb.l unwind label %.body.i17, !noalias !97

bb.l:                                             ; preds = %.noexc.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60, !noalias !97 ; 8 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i18, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8, !noalias !97 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ab, align 8, !tbaa !61, !noalias !97
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !63, !noalias !97
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !40, !noalias !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !97
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #22, !noalias !97, !inline_history !102
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !40, !noalias !97
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !97
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #22, !noalias !97, !inline_history !102
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54, !noalias !97
  %.not.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3, !noalias !97
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4, !noalias !97
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.p ], [ %i.ao, %bb.q ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.r, label %bb.s, !prof !22

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #22, !noalias !97
  br label %bb.s

.body.i17:                                        ; preds = %.noexc.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22, !noalias !97
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 96) #23, !noalias !97
  br label %.body.i

bb.s:                                             ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !97
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !60, !noalias !94 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8, !noalias !94 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.as, align 8, !tbaa !61, !noalias !94
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !63, !noalias !94
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !40, !noalias !94
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !94
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #22, !noalias !94, !inline_history !103
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !40, !noalias !94
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !94
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #22, !noalias !94, !inline_history !103
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54, !noalias !94
  %.not.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3, !noalias !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4, !noalias !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi i32 [ %i.av, %bb.w ], [ %i.bf, %bb.x ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #22, !noalias !94
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.z, %.body.i17
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bh, %bb.z ], [ %i.aq, %.body.i17 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22, !noalias !94
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.bi, align 8, !tbaa !77
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.bj, align 8, !tbaa !60
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !60  ; 8 uses
  %.not.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i12, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.bl, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !63
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #22, !inline_history !104
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #22, !inline_history !104
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.ac:                                            ; preds = %bb.aa
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i13 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i13, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

bb.ae:                                            ; preds = %bb.ac
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i15 = phi i32 [ %i.bo, %bb.ad ], [ %i.by, %bb.ae ]
  %i.bz = icmp eq i32 %.0.i.i.i.i15, 1
  br i1 %i.bz, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, !prof !22

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14, %bb.ab, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit10.thread
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
  %7 = extractvalue { i64, i1 } %i.h, 0
  %i.j = icmp sgt i64 %7, %.val
  br i1 %i.j, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit.thread, !prof !22

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
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit._crit_edge, label %bb.i, !prof !111

_ZN5arrow6StatusD2Ev.exit._crit_edge:             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !77
  br label %bb.l

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %.pr19 = load ptr, ptr %4, align 8, !tbaa !23   ; 2 uses
  %.not.i11 = icmp eq ptr %.pr19, null
  br i1 %.not.i11, label %_ZN5arrow6StatusD2Ev.exit12.thread, label %bb.j, !prof !112

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %.pr19, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !45, !range !37, !noundef !38
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit12.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br label %_ZN5arrow6StatusD2Ev.exit12.thread

_ZN5arrow6StatusD2Ev.exit12.thread:               ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.o = phi ptr [ %.pre, %_ZN5arrow6StatusD2Ev.exit._crit_edge ], [ %i.d, %_ZN5arrow6StatusD2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store ptr %i.o, ptr %6, align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60
  store ptr null, ptr %i.q, align 8, !tbaa !60
  store ptr %i.r, ptr %i.p, align 8, !tbaa !60
  store ptr null, ptr %1, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.a, align 8, !tbaa !113, !noalias !114
  store i64 %3, ptr %i.b, align 8, !tbaa !113, !noalias !114
  %i.s = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc unwind label %bb.s     ; 4 uses

.noexc:                                           ; preds = %bb.l
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !117

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 96) #23, !noalias !117
  br label %.body

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.w, align 8, !tbaa !60
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !60   ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.x, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.y, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !63
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !104
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !104
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.o:                                             ; preds = %bb.m
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i14 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i14, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.q:                                             ; preds = %bb.o
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i16 = phi i32 [ %i.ab, %bb.p ], [ %i.al, %bb.q ]
  %i.am = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.am, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, !prof !22

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.s:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.s ], [ %i.t, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ]
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
  br i1 %i.h, label %bb.f, label %7, !prof !22

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.13)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

7:                                                ; preds = %bb.e
  %8 = extractvalue { i64, i1 } %i.g, 0
  %9 = icmp sgt i64 %8, %.val
  br i1 %9, label %10, label %bb.g, !prof !22

10:                                               ; preds = %7
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.15)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

bb.g:                                             ; preds = %7
  store ptr null, ptr %5, align 8, !tbaa !23, !alias.scope !131
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i: ; preds = %bb.g, %10, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i
  %i.i = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.k, label %bb.h, !prof !26

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %.pr = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %.not.i9 = icmp eq ptr %.pr, null
  br i1 %.not.i9, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %bb.i, !prof !93

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !45, !range !37, !noundef !38
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br label %_ZN5arrow6StatusD2Ev.exit10.thread

_ZN5arrow6StatusD2Ev.exit10.thread:               ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !60, !noalias !134
  %i.q = load <2 x ptr>, ptr %1, align 8, !tbaa !39
  %i.r = load ptr, ptr %1, align 8, !tbaa !77
  store ptr null, ptr %i.o, align 8, !tbaa !60
  store ptr null, ptr %1, align 8, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !7, !noalias !134
  store <2 x ptr> %i.q, ptr %3, align 16, !tbaa !39, !noalias !134
  store ptr null, ptr %6, align 8, !tbaa !77, !noalias !134
  %i.u = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc.i unwind label %bb.s, !noalias !134 ; 6 uses

.noexc.i:                                         ; preds = %bb.k
  %i.v = sub nsw i64 %i.t, %2
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !61, !noalias !137
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 1, ptr %i.x, align 4, !tbaa !63, !noalias !137
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.u, align 8, !tbaa !40, !noalias !137
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  invoke void @_ZN5arrow13MutableBufferC1ERKSt10shared_ptrINS_6BufferEEll(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %2, i64 noundef %i.v)
          to label %bb.l unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i, !noalias !137

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i: ; preds = %.noexc.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 96) #23, !noalias !137
  br label %.body.i

bb.l:                                             ; preds = %.noexc.i
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !60, !noalias !134 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8, !noalias !134 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ab, align 8, !tbaa !61, !noalias !134
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !63, !noalias !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !40, !noalias !134
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !134
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #22, !noalias !134, !inline_history !142
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !40, !noalias !134
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !134
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #22, !noalias !134, !inline_history !142
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54, !noalias !134
  %.not.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3, !noalias !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4, !noalias !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %bb.p ], [ %i.ao, %bb.q ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #22, !noalias !134
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aq, %bb.s ], [ %i.z, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22, !noalias !134
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.ar, align 8, !tbaa !77
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.as, align 8, !tbaa !60
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !60  ; 8 uses
  %.not.i.i12 = icmp eq ptr %i.at, null
  br i1 %.not.i.i12, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.au, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !63
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #22, !inline_history !104
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #22, !inline_history !104
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.v:                                             ; preds = %bb.t
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i13 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i13, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

bb.x:                                             ; preds = %bb.v
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i15 = phi i32 [ %i.ax, %bb.w ], [ %i.bh, %bb.x ]
  %i.bi = icmp eq i32 %.0.i.i.i.i15, 1
  br i1 %i.bi, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, !prof !22

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14, %bb.u, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit10.thread
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
  %7 = extractvalue { i64, i1 } %i.f, 0
  %i.h = icmp sgt i64 %7, %.val
  br i1 %i.h, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit.thread, !prof !22

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
  %i.i = icmp eq ptr %.pr, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit._crit_edge, label %bb.i, !prof !111

_ZN5arrow6StatusD2Ev.exit._crit_edge:             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !77
  br label %bb.l

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %.pr19 = load ptr, ptr %4, align 8, !tbaa !23   ; 2 uses
  %.not.i11 = icmp eq ptr %.pr19, null
  br i1 %.not.i11, label %_ZN5arrow6StatusD2Ev.exit12.thread, label %bb.j, !prof !112

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr19, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !45, !range !37, !noundef !38
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit12.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br label %_ZN5arrow6StatusD2Ev.exit12.thread

_ZN5arrow6StatusD2Ev.exit12.thread:               ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.m = phi ptr [ %.pre, %_ZN5arrow6StatusD2Ev.exit._crit_edge ], [ %i.b, %_ZN5arrow6StatusD2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store ptr %i.m, ptr %6, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  store ptr null, ptr %i.o, align 8, !tbaa !60
  store ptr %i.p, ptr %i.n, align 8, !tbaa !60
  store ptr null, ptr %1, align 8, !tbaa !77
  %i.q = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc unwind label %bb.s     ; 6 uses

.noexc:                                           ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 1, ptr %i.r, align 8, !tbaa !61, !noalias !149
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 1, ptr %i.s, align 4, !tbaa !63, !noalias !149
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.q, align 8, !tbaa !40, !noalias !149
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  invoke void @_ZN5arrow13MutableBufferC1ERKSt10shared_ptrINS_6BufferEEll(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %2, i64 noundef %3)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !149

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 96) #23, !noalias !149
  br label %.body

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.v, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.w, align 8, !tbaa !60
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !60   ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.x, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.y, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !63
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !104
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !104
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.o:                                             ; preds = %bb.m
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i14 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i14, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.q:                                             ; preds = %bb.o
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i16 = phi i32 [ %i.ab, %bb.p ], [ %i.al, %bb.q ]
  %i.am = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.am, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, !prof !22

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.s:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.s ], [ %i.u, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ]
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
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !36, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.c, ptr %i.e, ptr null, !prof !26
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7
  tail call void @_ZN5arrow9HexEncodeB5cxx11EPKhm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.f, i64 noundef %i.h)
  ret void
}

declare void @_ZN5arrow9HexEncodeB5cxx11EPKhm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow6Buffer6EqualsERKS0_l(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7
  %.not = icmp slt i64 %i.c, %2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %.not11 = icmp slt i64 %i.e, %2
  %or.cond = select i1 %.not, i1 true, i1 %.not11
  br i1 %or.cond, label %bb.e, label %bb.c

end_hunk_0
