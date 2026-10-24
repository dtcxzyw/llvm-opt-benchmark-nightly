Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/buffer?download=true
inline.NumInlined: 725
inline.NumDeleted: 348
begin_hunk_0_@_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev:bb.a
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #22, !inline_history !114
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !43

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !51, !range !38, !noundef !39
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow6BufferE, i64 16), ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 1, ptr %i.b, align 1, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.e, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  invoke void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.2") align 8 %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load <2 x ptr>, ptr %3, align 16, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !58   ; 8 uses
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !40
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !61
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22, !inline_history !0
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22, !inline_history !0
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, !prof !30

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !71, !range !38, !noundef !39
  store i8 %i.af, ptr %i.b, align 1, !tbaa !37
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(25) %i.ad)
          to label %bb.i unwind label %bb.q, !inline_history !1

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  store i8 %i.aj, ptr %i.f, align 8, !tbaa !57
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !58  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.al, align 8, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !61
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22, !inline_history !2
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ay, %bb.n ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

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
  %i.b = load ptr, ptr %1, align 8, !tbaa !72
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(29) @.str.8)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %8 = sub nsw i64 %.val, %2                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !134
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !73, !noalias !135
  %i.e = icmp slt i64 %8, 0
  br i1 %i.e, label %bb.d, label %9, !prof !30

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.12)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

9:                                                ; preds = %bb.c
  %10 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %8) ; 2 uses
  %11 = extractvalue { i64, i1 } %10, 1
  br i1 %11, label %12, label %13, !prof !30

12:                                               ; preds = %9
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.13)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

13:                                               ; preds = %9
  %14 = extractvalue { i64, i1 } %10, 0
  %15 = icmp sgt i64 %14, %.val
  br i1 %15, label %16, label %bb.e, !prof !30

16:                                               ; preds = %13
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.15)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

bb.e:                                             ; preds = %13
  store ptr null, ptr %6, align 8, !tbaa !33, !alias.scope !136
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i: ; preds = %bb.e, %16, %12, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !134
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i
  %i.f = load ptr, ptr %6, align 8, !tbaa !33     ; 2 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.i, label %bb.f, !prof !34

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  %.pr = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %.not.i9 = icmp eq ptr %.pr, null
  br i1 %.not.i9, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %bb.g, !prof !74

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !51, !range !38, !noundef !39
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  br label %_ZN5arrow6StatusD2Ev.exit10.thread

_ZN5arrow6StatusD2Ev.exit10.thread:               ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.k = load ptr, ptr %1, align 8, !tbaa !72     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !58
  store ptr null, ptr %1, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !29, !noalias !137
  store ptr %i.k, ptr %4, align 8, !tbaa !72, !noalias !137
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr null, ptr %i.l, align 8, !tbaa !58, !noalias !137
  store ptr %i.n, ptr %i.q, align 8, !tbaa !58, !noalias !137
  store ptr null, ptr %7, align 8, !tbaa !72, !noalias !137
  %i.r = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc.i unwind label %bb.x, !noalias !137 ; 6 uses

.noexc.i:                                         ; preds = %bb.i
  %i.s = sub nsw i64 %i.p, %2
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.t, align 8, !tbaa !60, !noalias !138
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.u, align 4, !tbaa !61, !noalias !138
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !42, !noalias !138
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !138
  store ptr %i.k, ptr %3, align 8, !tbaa !72, !noalias !138
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !58, !noalias !138
  store ptr %i.n, ptr %i.w, align 8, !tbaa !58, !noalias !138
  store ptr null, ptr %4, align 8, !tbaa !72, !noalias !138
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull %3, i64 noundef %2, i64 noundef %i.s)
          to label %bb.j unwind label %.body.i17, !noalias !138

bb.j:                                             ; preds = %.noexc.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58, !noalias !138 ; 8 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i18, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8, !noalias !138 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.y, align 8, !tbaa !60, !noalias !138
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !61, !noalias !138
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !42, !noalias !138
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !138
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !noalias !138, !inline_history !129
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !42, !noalias !138
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !138
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !noalias !138, !inline_history !129
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !138
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !14, !noalias !138
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4, !noalias !138
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.n ], [ %i.al, %bb.o ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.p, label %bb.q, !prof !30

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !noalias !138
  br label %bb.q

.body.i17:                                        ; preds = %.noexc.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22, !noalias !138
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 96) #23, !noalias !138
  br label %.body.i

bb.q:                                             ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !138
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !58, !noalias !137 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8, !noalias !137 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ap, align 8, !tbaa !60, !noalias !137
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !61, !noalias !137
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !42, !noalias !137
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !137
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #22, !noalias !137, !inline_history !130
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !42, !noalias !137
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !137
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #22, !noalias !137, !inline_history !130
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !137
  %.not.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !14, !noalias !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4, !noalias !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi i32 [ %i.as, %bb.u ], [ %i.bc, %bb.v ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #22, !noalias !137
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.x, %.body.i17
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.be, %bb.x ], [ %i.an, %.body.i17 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22, !noalias !137
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr null, ptr %0, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.bf, align 8, !tbaa !72
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.bg, align 8, !tbaa !58
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !58  ; 8 uses
  %.not.i.i12 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i12, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.z, label %bb.aa
end_hunk_0
begin_hunk_1_@_ZN5arrow15SliceBufferSafeESt10shared_ptrINS_6BufferEEl:bb.a
  %.0.i.i.i.i15 = phi i32 [ %i.bl, %bb.ab ], [ %i.bv, %bb.ac ]
  %i.bw = icmp eq i32 %.0.i.i.i.i15, 1
  br i1 %i.bw, label %bb.ad, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, !prof !30

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14, %bb.z, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit10.thread
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
  %i.d = load ptr, ptr %1, align 8, !tbaa !72     ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %.val = load i64, ptr %i.e, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !147
  store ptr @.str.9, ptr %i.c, align 8, !tbaa !73, !noalias !148
  %i.f = icmp slt i64 %2, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(14) @.str.11)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %3, 0
  br i1 %i.g, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(14) @.str.12)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(22) @.str.13)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = icmp sgt i64 %i.j, %.val
  br i1 %i.k, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit.thread, !prof !30

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(21) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(8) @.str.15)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.l

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.d, %bb.f, %bb.h
  %.pr = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !147
  store ptr %.pr, ptr %4, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit._crit_edge, label %bb.i, !prof !75

_ZN5arrow6StatusD2Ev.exit._crit_edge:             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !72
  br label %bb.l

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %.pr19 = load ptr, ptr %4, align 8, !tbaa !33   ; 2 uses
  %.not.i11 = icmp eq ptr %.pr19, null
  br i1 %.not.i11, label %_ZN5arrow6StatusD2Ev.exit12.thread, label %bb.j, !prof !76

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pr19, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !51, !range !38, !noundef !39
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
  store ptr %i.p, ptr %6, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  store ptr null, ptr %i.r, align 8, !tbaa !58
  store ptr %i.s, ptr %i.q, align 8, !tbaa !58
  store ptr null, ptr %1, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.a, align 8, !tbaa !77, !noalias !149
  store i64 %3, ptr %i.b, align 8, !tbaa !77, !noalias !149
  %i.t = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc unwind label %bb.s     ; 4 uses

.noexc:                                           ; preds = %bb.l
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !150

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 96) #23, !noalias !150
  br label %.body

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr null, ptr %0, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.x, align 8, !tbaa !58
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !58   ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.y, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.z, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !61
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22, !inline_history !3
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22, !inline_history !3
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.o:                                             ; preds = %bb.m
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i14 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i14, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.q:                                             ; preds = %bb.o
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i16 = phi i32 [ %i.ac, %bb.p ], [ %i.am, %bb.q ]
  %i.an = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.an, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, !prof !30

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
  %i.b = load ptr, ptr %1, align 8, !tbaa !72
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(29) @.str.8)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %7 = sub nsw i64 %.val, %2                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !169
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !73, !noalias !170
  %i.e = icmp slt i64 %7, 0
  br i1 %i.e, label %bb.d, label %8, !prof !30

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.12)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

8:                                                ; preds = %bb.c
  %9 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %7) ; 2 uses
  %10 = extractvalue { i64, i1 } %9, 1
  br i1 %10, label %11, label %12, !prof !30

11:                                               ; preds = %8
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.13)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

12:                                               ; preds = %8
  %13 = extractvalue { i64, i1 } %9, 0
  %14 = icmp sgt i64 %13, %.val
  br i1 %14, label %15, label %bb.e, !prof !30

15:                                               ; preds = %12
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.15)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

bb.e:                                             ; preds = %12
  store ptr null, ptr %5, align 8, !tbaa !33, !alias.scope !171
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i: ; preds = %bb.e, %15, %11, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !169
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i
  %i.f = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.i, label %bb.f, !prof !34

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %.pr = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %.not.i9 = icmp eq ptr %.pr, null
  br i1 %.not.i9, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %bb.g, !prof !74

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !51, !range !38, !noundef !39
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br label %_ZN5arrow6StatusD2Ev.exit10.thread

_ZN5arrow6StatusD2Ev.exit10.thread:               ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !58, !noalias !172
  %i.n = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  %i.o = load ptr, ptr %1, align 8, !tbaa !72
  store ptr null, ptr %i.l, align 8, !tbaa !58
  store ptr null, ptr %1, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29, !noalias !172
  store <2 x ptr> %i.n, ptr %3, align 16, !tbaa !40, !noalias !172
  store ptr null, ptr %6, align 8, !tbaa !72, !noalias !172
  %i.r = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc.i unwind label %bb.q, !noalias !172 ; 6 uses

.noexc.i:                                         ; preds = %bb.i
  %i.s = sub nsw i64 %i.q, %2
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.t, align 8, !tbaa !60, !noalias !173
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.u, align 4, !tbaa !61, !noalias !173
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !42, !noalias !173
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  invoke void @_ZN5arrow13MutableBufferC1ERKSt10shared_ptrINS_6BufferEEll(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %2, i64 noundef %i.s)
          to label %bb.j unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i, !noalias !173

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i: ; preds = %.noexc.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 96) #23, !noalias !173
  br label %.body.i

bb.j:                                             ; preds = %.noexc.i
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !58, !noalias !172 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8, !noalias !172 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.y, align 8, !tbaa !60, !noalias !172
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !61, !noalias !172
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !42, !noalias !172
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !172
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !noalias !172, !inline_history !165
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !42, !noalias !172
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !172
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !noalias !172, !inline_history !165
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !172
  %.not.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !14, !noalias !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4, !noalias !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.ab, %bb.n ], [ %i.al, %bb.o ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.am, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !noalias !172
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.an, %bb.q ], [ %i.w, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22, !noalias !172
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr null, ptr %0, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.ao, align 8, !tbaa !72
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.ap, align 8, !tbaa !58
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !58  ; 8 uses
  %.not.i.i12 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i12, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, label %bb.r

bb.r:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ar, align 8, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !61
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #22, !inline_history !3
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #22, !inline_history !3
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.t:                                             ; preds = %bb.r
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i13 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i13, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

bb.v:                                             ; preds = %bb.t
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i15 = phi i32 [ %i.au, %bb.u ], [ %i.be, %bb.v ]
  %i.bf = icmp eq i32 %.0.i.i.i.i15, 1
  br i1 %i.bf, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, !prof !30

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14, %bb.s, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit10.thread
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
  %i.b = load ptr, ptr %1, align 8, !tbaa !72     ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !73, !noalias !183
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !30
end_hunk_1
