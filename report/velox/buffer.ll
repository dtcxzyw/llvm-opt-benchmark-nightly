Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/buffer?download=true
inline.NumInlined: 707
inline.NumDeleted: 352
begin_hunk_0_@_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #21, !inline_history !118
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !36
  %i.h = icmp eq ptr %.pr.pre, null
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !46

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow6BufferE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 1, ptr %i.b, align 1, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.e, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  invoke void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.2") align 8 %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load <2 x ptr>, ptr %3, align 16, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !60   ; 8 uses
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !43
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !68
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #21, !inline_history !0
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #21, !inline_history !0
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, !prof !33

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #21
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !78, !range !41, !noundef !42
  store i8 %i.af, ptr %i.b, align 1, !tbaa !40
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(25) %i.ad)
          to label %bb.i unwind label %bb.q, !inline_history !1

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  store i8 %i.aj, ptr %i.f, align 8, !tbaa !65
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
  store i32 0, ptr %i.al, align 8, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !68
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #21, !inline_history !2
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !45
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #21, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ay, %bb.n ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !33

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #21
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
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %i.ba, %bb.p ]
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h) #21
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.g) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow15SliceBufferSafeERKSt10shared_ptrINS_6BufferEEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = load ptr, ptr %1, align 8, !tbaa !79
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(29) @.str.8)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !138
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !80, !noalias !139
  %i.e = icmp slt i64 %.val, %2
  br i1 %i.e, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status8FromArgsIJRA10_KcRPS2_RA14_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.12)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %4, align 8, !tbaa !36, !alias.scope !140
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !138
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.f = load ptr, ptr %4, align 8, !tbaa !36, !noalias !141 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !36, !alias.scope !141
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.h, label %bb.f, !prof !37

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %.pr = load ptr, ptr %3, align 8, !tbaa !36
  %.not.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit5.thread, label %bb.g, !prof !81

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN5arrow6StatusD2Ev.exit5.thread

_ZN5arrow6StatusD2Ev.exit5.thread:                ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.i

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.h = load ptr, ptr %1, align 8, !tbaa !79, !noalias !142
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32, !noalias !142
  %i.k = sub nsw i64 %i.j, %2
  %i.l = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22, !noalias !143 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !67, !noalias !143
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !68, !noalias !143
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.l, align 8, !tbaa !45, !noalias !143
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2ERKSt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %i.k)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i, !noalias !143

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i: ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 96) #23, !noalias !143
  resume { ptr, i32 } %i.p

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h
  store ptr null, ptr %0, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.q, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.r, align 8, !tbaa !60
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit5.thread, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow15SliceBufferSafeERKSt10shared_ptrINS_6BufferEEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load ptr, ptr %1, align 8, !tbaa !79
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !154
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !80, !noalias !155
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA10_KcRPS2_RA14_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.11)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %3, 0
  br i1 %i.e, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status8FromArgsIJRA10_KcRPS2_RA14_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.12)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.f = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 range(i64 0, -9223372036854775808) %2, i64 range(i64 0, -9223372036854775808) %3) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g, !prof !33

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.13)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = icmp sgt i64 %i.h, %.val
  br i1 %i.i, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit.thread, !prof !33

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.15)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.k

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  %.pr = load ptr, ptr %5, align 8, !tbaa !36, !noalias !156 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !154
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  store ptr %.pr, ptr %4, align 8, !tbaa !36, !alias.scope !156
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %bb.k, label %bb.i, !prof !82

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %.pr9 = load ptr, ptr %4, align 8, !tbaa !36
  %.not.i6 = icmp eq ptr %.pr9, null
  br i1 %.not.i6, label %_ZN5arrow6StatusD2Ev.exit7.thread, label %bb.j, !prof !83

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN5arrow6StatusD2Ev.exit7.thread

_ZN5arrow6StatusD2Ev.exit7.thread:                ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.l

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.k = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22, !noalias !157 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !67, !noalias !157
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !68, !noalias !157
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.k, align 8, !tbaa !45, !noalias !157
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2ERKSt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !157

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 96) #23, !noalias !157
  resume { ptr, i32 } %i.o

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k
  store ptr null, ptr %0, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.q, align 8, !tbaa !60
  br label %bb.l

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit7.thread, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow22SliceMutableBufferSafeERKSt10shared_ptrINS_6BufferEEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = load ptr, ptr %1, align 8, !tbaa !79
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(29) @.str.8)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !177
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !80, !noalias !178
  %i.e = icmp slt i64 %.val, %2
  br i1 %i.e, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status8FromArgsIJRA10_KcRPS2_RA14_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.12)
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %4, align 8, !tbaa !36, !alias.scope !179
  br label %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i

_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !177
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow12_GLOBAL__N_116CheckBufferSliceERKNS_6BufferEll.exit.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.f = load ptr, ptr %4, align 8, !tbaa !36, !noalias !180 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !36, !alias.scope !180
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.h, label %bb.f, !prof !37

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %.pr = load ptr, ptr %3, align 8, !tbaa !36
  %.not.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit5.thread, label %bb.g, !prof !81

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN5arrow6StatusD2Ev.exit5.thread

_ZN5arrow6StatusD2Ev.exit5.thread:                ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.i

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.h = load ptr, ptr %1, align 8, !tbaa !79, !noalias !181
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32, !noalias !181
  %i.k = sub nsw i64 %i.j, %2
  %i.l = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22, !noalias !182 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !67, !noalias !182
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !68, !noalias !182
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.l, align 8, !tbaa !45, !noalias !182
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  invoke void @_ZN5arrow13MutableBufferC1ERKSt10shared_ptrINS_6BufferEEll(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %i.k)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i, !noalias !182

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i: ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 96) #23, !noalias !182
  resume { ptr, i32 } %i.p

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h
  store ptr null, ptr %0, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.q, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.r, align 8, !tbaa !60
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit5.thread, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow22SliceMutableBufferSafeERKSt10shared_ptrINS_6BufferEEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load ptr, ptr %1, align 8, !tbaa !79
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !193
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !80, !noalias !194
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA10_KcRPS2_RA14_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.11)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %3, 0
  br i1 %i.e, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status8FromArgsIJRA10_KcRPS2_RA14_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(10) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.12)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.f = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 range(i64 0, -9223372036854775808) %2, i64 range(i64 0, -9223372036854775808) %3) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g, !prof !33

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.13)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = icmp sgt i64 %i.h, %.val
  br i1 %i.i, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit.thread, !prof !33

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.15)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.k

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  %.pr = load ptr, ptr %5, align 8, !tbaa !36, !noalias !195 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  store ptr %.pr, ptr %4, align 8, !tbaa !36, !alias.scope !195
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %bb.k, label %bb.i, !prof !82

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %.pr9 = load ptr, ptr %4, align 8, !tbaa !36
  %.not.i6 = icmp eq ptr %.pr9, null
  br i1 %.not.i6, label %_ZN5arrow6StatusD2Ev.exit7.thread, label %bb.j, !prof !83

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN5arrow6StatusD2Ev.exit7.thread

_ZN5arrow6StatusD2Ev.exit7.thread:                ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.l

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.k = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22, !noalias !196 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !67, !noalias !196
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !68, !noalias !196
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.k, align 8, !tbaa !45, !noalias !196
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  invoke void @_ZN5arrow13MutableBufferC1ERKSt10shared_ptrINS_6BufferEEll(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !196

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 96) #23, !noalias !196
  resume { ptr, i32 } %i.o

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k
  store ptr null, ptr %0, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.q, align 8, !tbaa !60
  br label %bb.l

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit7.thread, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18SliceMutableBufferERKSt10shared_ptrINS_6BufferEEll(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22, !noalias !199 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !67, !noalias !199
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !68, !noalias !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !45, !noalias !199
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN5arrow13MutableBufferC1ERKSt10shared_ptrINS_6BufferEEll(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
          to label %_ZNSt12__shared_ptrIN5arrow13MutableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !199

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13MutableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #23, !noalias !199
  resume { ptr, i32 } %i.e

_ZNSt12__shared_ptrIN5arrow13MutableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6Buffer11ToHexStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !40, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.c, ptr %i.e, ptr null, !prof !37
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
end_hunk_0
