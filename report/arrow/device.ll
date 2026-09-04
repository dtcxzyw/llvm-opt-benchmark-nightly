Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/device?download=true
inline.NumInlined: 1138
inline.NumDeleted: 580
begin_hunk_0_@_ZN5arrow26default_cpu_memory_managerEv:bb.a
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = load i32, ptr %i.h, align 4, !tbaa !15
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !15
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit: ; preds = %bb.g, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.n, %bb.l ], [ %i.m, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow26default_cpu_memory_managerEvE8instance) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !54
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !45

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !44
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !44
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.m = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !44
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow13MemoryManager12CopyNonOwnedERKNS_6BufferERKSt10shared_ptrIS0_E(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.24") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.arrow::Result.24", align 8  ; 19 uses
  %5 = alloca %"class.arrow::Result.24", align 8  ; 14 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.24") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.f = load ptr, ptr %4, align 8, !tbaa !54
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !54
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEC2IS5_vEEONS0_IT_EE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i16

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i16: ; preds = %bb.d
  %i.l = ptrtoint ptr %i.k to i64
  store ptr null, ptr %0, align 8, !tbaa !54
  store ptr null, ptr %i.j, align 8, !tbaa !81, !noalias !187
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !81
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEC2IS5_vEEONS0_IT_EE.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.24") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, !prof !55

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.thread, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i: ; preds = %bb.g
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.t) #26, !inline_history !178
  %.pr.pre = load ptr, ptr %4, align 8, !tbaa !54
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i, %bb.f
  %i.x = phi ptr [ %i.r, %bb.f ], [ %.pr.pre, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i ] ; 3 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !54     ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %bb.k, !prof !55

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.thread: ; preds = %bb.g
  %i.aa = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread, label %bb.k, !prof !55

bb.h:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread, label %bb.i, !prof !188

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !66, !range !67, !noundef !68
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !54
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread: ; preds = %bb.h, %bb.i, %bb.j, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.thread
  %i.af = phi ptr [ %.pre.i, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.thread ]
  store ptr %i.af, ptr %4, align 8, !tbaa !54
  store ptr null, ptr %5, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !81, !noalias !189
  store ptr null, ptr %i.ag, align 8, !tbaa !81, !noalias !189
  store i64 %i.ah, ptr %i.j, align 8, !tbaa !81
  br label %bb.n

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.thread, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i
  %9 = phi ptr [ %i.aa, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.thread ], [ %i.y, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ] ; 2 uses
  %10 = phi ptr [ null, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.thread ], [ %i.x, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ]
  %.not.i8.i = icmp eq ptr %10, %9
  br i1 %.not.i8.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEaSEOS6_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #27
  unreachable

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEaSEOS6_.exit: ; preds = %bb.l
  %.pr45.pre = load ptr, ptr %5, align 8, !tbaa !54 ; 2 uses
  %i.ak = icmp eq ptr %.pr45.pre, null
  br i1 %i.ak, label %bb.n, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !190

bb.n:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEaSEOS6_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i19, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i20

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i20: ; preds = %bb.n
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.am) #26, !inline_history !4
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !54 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !56

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %bb.k, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i20, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEaSEOS6_.exit
  %i.aq = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i20 ], [ %.pr45.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEaSEOS6_.exit ], [ %9, %bb.k ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !66, !range !67, !noundef !68
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.n, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i20, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.au = load ptr, ptr %4, align 8, !tbaa !54
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !54
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEC2IS5_vEEONS0_IT_EE.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #27
  unreachable

bb.r:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.af

bb.s:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  %i.az = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i25 = icmp eq ptr %i.az, null
  br i1 %.not.i25, label %bb.t, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i26

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i26: ; preds = %bb.s
  %i.ba = ptrtoint ptr %i.az to i64
  store ptr null, ptr %0, align 8, !tbaa !54
  store ptr null, ptr %i.j, align 8, !tbaa !81, !noalias !191
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !81
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEC2IS5_vEEONS0_IT_EE.exit

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !71 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(25) %i.be)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bi = load ptr, ptr %2, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !71 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(25) %i.bk)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !192
  invoke void @_ZN5arrow8internal12JoinToStringIJRA21_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SA_RA15_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(21) @.str, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(15) @.str.2)
          to label %.noexc28 unwind label %bb.ac

.noexc28:                                         ; preds = %bb.v
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.noexc28
  %i.bo = load ptr, ptr %3, align 8, !tbaa !78, !noalias !192 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !44, !noalias !192
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.x:                                             ; preds = %.noexc28
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %3, align 8, !tbaa !78, !noalias !192 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.x
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !44, !noalias !192
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !192
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !192
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %i.bz = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %.not.i29 = icmp eq ptr %i.bz, null
  br i1 %.not.i29, label %_ZN5arrow6StatusD2Ev.exit, label %bb.y, !prof !55

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !66, !range !67, !noundef !68
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5arrow6StatusD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.y, %bb.z
  %i.cd = load ptr, ptr %8, align 8, !tbaa !78    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !44
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ci = load ptr, ptr %7, align 8, !tbaa !78    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !44
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEC2IS5_vEEONS0_IT_EE.exit

bb.aa:                                            ; preds = %bb.t
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.ab:                                            ; preds = %bb.u
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.ac:                                            ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, %bb.ac
  %eh.lpad-body = phi { ptr, i32 } [ %i.cp, %bb.ac ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i ] ; 2 uses
  %i.cq = load ptr, ptr %8, align 8, !tbaa !78    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %.body
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !44
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.co, %bb.ab ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %eh.lpad-body, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.cv = load ptr, ptr %7, align 8, !tbaa !78    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !44
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.aa ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN5arrow2io21FixedSizeBufferWriterELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_6BufferEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_:bb.a
  %i.r = load i32, ptr %i.c, align 4, !tbaa !15
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 4, !tbaa !15
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !99
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.u = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.m, %bb.e ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i7.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i7.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.v, align 4, !tbaa !15   ; 2 uses
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.x, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #26, !inline_history !319
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.l, align 8, !tbaa !99
  br label %_ZNSt12__shared_ptrIN5arrow2io21FixedSizeBufferWriterELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS2_S2_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow2io21FixedSizeBufferWriterELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS2_S2_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io21FixedSizeBufferWriterESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io21FixedSizeBufferWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow2io21FixedSizeBufferWriterEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #26, !inline_history !325
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io21FixedSizeBufferWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow2io21FixedSizeBufferWriterESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io21FixedSizeBufferWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !44
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN5arrow2io21FixedSizeBufferWriterC1ERKSt10shared_ptrINS_6BufferEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !81     ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !38
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow6BufferESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit unwind label %bb.q ; 13 uses

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow6BufferESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !81
  store ptr null, ptr %1, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !327
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21, label %bb.c

bb.c:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow6BufferESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.f, align 8, !tbaa !15
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %.pr.pre.i, %bb.e ], [ %i.i, %bb.d ] ; 8 uses
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !41
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26, !inline_history !326
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26, !inline_history !326
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i9.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !45

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.k
  store ptr %i.d, ptr %i.b, align 8, !tbaa !38
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow6BufferESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21
  store i32 0, ptr %i.ab, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !41
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !0
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i7 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.o:                                             ; preds = %bb.m
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.o, %bb.n
  %.0.i.i.i9 = phi i32 [ %i.ae, %bb.n ], [ %i.ao, %bb.o ]
  %i.ap = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ap, label %bb.p, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !45

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.p
  ret void

bb.q:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #26
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !330  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #26, !inline_history !328
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !44
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #26
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow6BufferEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #26, !inline_history !331
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !44
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow6BufferEJmlSt10shared_ptrINS0_13MemoryManagerEERKS2_IS1_EEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.21", align 16 ; 4 uses
  %6 = alloca %"class.std::shared_ptr.18", align 16 ; 4 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !98
  %i.b = load i64, ptr %2, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load <2 x ptr>, ptr %3, align 8, !tbaa !79
  store ptr null, ptr %i.d, align 8, !tbaa !38
  store <2 x ptr> %i.e, ptr %5, align 16, !tbaa !79
  store ptr null, ptr %3, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %i.i = load <2 x ptr>, ptr %4, align 8, !tbaa !79
  store <2 x ptr> %i.i, ptr %6, align 16, !tbaa !79
  %.not.i.i.i = icmp eq ptr %i.h, null
end_hunk_1
