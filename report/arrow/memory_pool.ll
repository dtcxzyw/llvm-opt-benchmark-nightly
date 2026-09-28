Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/memory_pool?download=true
inline.NumInlined: 1287
inline.NumDeleted: 528
begin_hunk_0_@_ZN5arrow23AllocateResizableBufferEllPNS_10MemoryPoolE:bb.a
  call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.w, i1 false), !noalias !185
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !91, !noalias !185
  br label %_ZN5arrow12_GLOBAL__N_116ResizePoolBufferISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS3_EES2_INS_10PoolBufferES4_IS7_EEEENS_6ResultIT_EEOT0_l.exit.thread

_ZN5arrow12_GLOBAL__N_116ResizePoolBufferISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS3_EES2_INS_10PoolBufferES4_IS7_EEEENS_6ResultIT_EEOT0_l.exit.thread: ; preds = %bb.e, %bb.f
  %i.x = phi ptr [ %i.g, %bb.e ], [ %.pre.i, %bb.f ]
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !188, !alias.scope !185
  br label %_ZNSt10unique_ptrIN5arrow10PoolBufferESt14default_deleteIS1_EED2Ev.exit

_ZN5arrow12_GLOBAL__N_116ResizePoolBufferISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS3_EES2_INS_10PoolBufferES4_IS7_EEEENS_6ResultIT_EEOT0_l.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !185
  %.pr = load ptr, ptr %6, align 8, !tbaa !91     ; 9 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow10PoolBufferESt14default_deleteIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow12_GLOBAL__N_116ResizePoolBufferISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS3_EES2_INS_10PoolBufferES4_IS7_EEEENS_6ResultIT_EEOT0_l.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.pr, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !102, !range !18, !noundef !19
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !range !18
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = select i1 %i.ab, i1 %i.ae, i1 false, !prof !30
  %i.ag = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not3.i.i.i = icmp ne ptr %i.ah, null
  %.not.not.i.i.i = select i1 %i.af, i1 %.not3.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.h, label %_ZNKSt14default_deleteIN5arrow10PoolBufferEEclEPS1_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load atomic i8, ptr @_ZN5arrowL12global_stateE monotonic, align 64, !range !18, !noundef !19
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZNKSt14default_deleteIN5arrow10PoolBufferEEclEPS1_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !107 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pr, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !101
  %i.ao = getelementptr inbounds nuw i8, ptr %.pr, i64 88
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !108
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.ah, i64 noundef %i.an, i64 noundef %i.ap)
          to label %_ZNKSt14default_deleteIN5arrow10PoolBufferEEclEPS1_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #33
  unreachable

_ZNKSt14default_deleteIN5arrow10PoolBufferEEclEPS1_.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %.pr) #30
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 96) #32
  br label %_ZNSt10unique_ptrIN5arrow10PoolBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow10PoolBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5arrow12_GLOBAL__N_116ResizePoolBufferISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS3_EES2_INS_10PoolBufferES4_IS7_EEEENS_6ResultIT_EEOT0_l.exit.thread, %_ZN5arrow12_GLOBAL__N_116ResizePoolBufferISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS3_EES2_INS_10PoolBufferES4_IS7_EEEENS_6ResultIT_EEOT0_l.exit, %_ZNKSt14default_deleteIN5arrow10PoolBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void

bb.k:                                             ; preds = %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5arrow10PoolBufferESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17LoggingMemoryPoolD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow10MemoryPoolD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow10MemoryPool13ReleaseUnusedEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow10MemoryPool10PrintStatsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16CappedMemoryPoolD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow16CappedMemoryPool13ReleaseUnusedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow16CappedMemoryPool10PrintStatsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5arrow16CappedMemoryPool15bytes_allocatedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5arrow16CappedMemoryPool10max_memoryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5arrow16CappedMemoryPool21total_bytes_allocatedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5arrow16CappedMemoryPool15num_allocationsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow16CappedMemoryPool12backend_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16SystemMemoryPoolD0Ev(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_115SystemAllocatorEE8AllocateEllPPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(21) @.str.44)
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call fastcc void @_ZN5arrow12_GLOBAL__N_115SystemAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias writable align 8 %5, i64 noundef %2, i64 noundef %3, ptr noundef %4)
  %i.b = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = atomicrmw add ptr %i.f, i64 %2 acq_rel, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = atomicrmw add ptr %i.h, i64 %2 acq_rel, align 8 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = atomicrmw add ptr %i.j, i64 1 acq_rel, align 8 ; 0 uses
  %i.l = add nsw i64 %i.g, %2                     ; 3 uses
  %.old6.i = icmp slt i64 %i.e, %i.l
  br i1 %.old6.i, label %.preheader.i, label %_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.0.i = phi i64 [ %i.o, %.preheader.i ], [ %i.e, %bb.c ]
  %i.m = cmpxchg weak ptr %i.d, i64 %.0.i, i64 %i.l acq_rel acquire, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  %i.p = icmp sge i64 %i.o, %i.l
  %or.cond.not.i = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond.not.i, label %_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit, label %.preheader.i, !llvm.loop !3

_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit: ; preds = %.preheader.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !191
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_115SystemAllocatorEE10ReallocateElllPPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.b = icmp slt i64 %3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA22_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(22) @.str.49)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.c = load ptr, ptr %5, align 8, !tbaa !78, !noalias !196 ; 2 uses
  %i.d = icmp eq ptr %i.c, @_ZN5arrow11memory_pool8internal14zero_size_areaE
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow12_GLOBAL__N_115SystemAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias nonnull writable align 8 %7, i64 noundef %3, i64 noundef %4, ptr noundef nonnull %5)
  %.pr.pre = load ptr, ptr %7, align 8, !tbaa !29
  br label %_ZN5arrow6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit17.thread, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit17.thread:               ; preds = %bb.e
  tail call void @free(ptr noundef %i.c) #30, !noalias !196
  store ptr @_ZN5arrow11memory_pool8internal14zero_size_areaE, ptr %5, align 8, !tbaa !78, !noalias !196
  store ptr null, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.f

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !196
  store ptr null, ptr %i.a, align 8, !tbaa !78, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !196
  call fastcc void @_ZN5arrow12_GLOBAL__N_115SystemAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias writable align 8 %6, i64 noundef %3, i64 noundef %4, ptr noundef nonnull %i.a), !noalias !196
  %i.f = load ptr, ptr %6, align 8, !tbaa !29, !noalias !196 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !196
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit19.i, label %.critedge.i

_ZN5arrow6StatusD2Ev.exit19.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !78, !noalias !196 ; 2 uses
  %i.i = load ptr, ptr %5, align 8, !tbaa !78, !noalias !196
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %2, i64 %3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.i, i64 %.sroa.speculated.i, i1 false), !noalias !196
  %i.j = load ptr, ptr %5, align 8, !tbaa !78, !noalias !196
  call void @free(ptr noundef %i.j) #30, !noalias !196
  store ptr %i.h, ptr %5, align 8, !tbaa !78, !noalias !196
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit19.i, %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !196
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.d, %.critedge.i
  %.pr = phi ptr [ %.pr.pre, %bb.d ], [ %i.f, %.critedge.i ] ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.m = icmp sgt i64 %3, %2
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = sub nsw i64 %3, %2                       ; 3 uses
  %i.o = load atomic i64, ptr %i.l monotonic, align 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = atomicrmw add ptr %i.p, i64 %i.n acq_rel, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = atomicrmw add ptr %i.r, i64 %i.n acq_rel, align 8 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = atomicrmw add ptr %i.t, i64 1 acq_rel, align 8 ; 0 uses
  %i.v = add nsw i64 %i.q, %i.n                   ; 3 uses
  %.old6.i.i = icmp slt i64 %i.o, %i.v
  br i1 %.old6.i.i, label %.preheader.i.i, label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.y, %.preheader.i.i ], [ %i.o, %bb.g ]
  %i.w = cmpxchg weak ptr %i.l, i64 %.0.i.i, i64 %i.v acq_rel acquire, align 8 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 2 uses
  %i.z = icmp sge i64 %i.y, %i.v
  %or.cond.not.i.i = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond.not.i.i, label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit, label %.preheader.i.i, !llvm.loop !3

bb.h:                                             ; preds = %bb.f
  %i.aa = sub nuw nsw i64 %2, %3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = atomicrmw sub ptr %i.ab, i64 %i.aa acq_rel, align 8 ; 0 uses
  br label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit

_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit: ; preds = %.preheader.i.i, %bb.g, %bb.h
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !197
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_115SystemAllocatorEE4FreeEPhll(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0, ptr noundef captures(address) %1, i64 noundef %2, i64 %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, @_ZN5arrow11memory_pool8internal14zero_size_areaE
  br i1 %i.a, label %_ZN5arrow12_GLOBAL__N_115SystemAllocator17DeallocateAlignedEPhll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %1) #30
  br label %_ZN5arrow12_GLOBAL__N_115SystemAllocator17DeallocateAlignedEPhll.exit

_ZN5arrow12_GLOBAL__N_115SystemAllocator17DeallocateAlignedEPhll.exit: ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = atomicrmw sub ptr %i.b, i64 %2 acq_rel, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_115SystemAllocatorEE13ReleaseUnusedEv(ptr nofree nonnull readnone align 64 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call i32 @malloc_trim(i64 noundef 0) #30 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_115SystemAllocatorEE10PrintStatsEv(ptr nofree nonnull readnone align 64 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @malloc_stats() #30
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_115SystemAllocatorEE15bytes_allocatedEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_115SystemAllocatorEE10max_memoryEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i64, ptr %i.a acquire, align 64
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_115SystemAllocatorEE21total_bytes_allocatedEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load atomic i64, ptr %i.a acquire, align 16
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_115SystemAllocatorEE15num_allocationsEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow16SystemMemoryPool12backend_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 64 dereferenceable(128) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.b, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.c, align 2, !tbaa !45
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow21SystemDebugMemoryPoolD0Ev(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_15SystemAllocatorEEEE8AllocateEllPPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(21) @.str.44)
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE15AllocateAlignedEllPPh(ptr dead_on_unwind noalias writable align 8 %5, i64 noundef %2, i64 noundef %3, ptr noundef %4)
  %i.b = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = atomicrmw add ptr %i.f, i64 %2 acq_rel, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = atomicrmw add ptr %i.h, i64 %2 acq_rel, align 8 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = atomicrmw add ptr %i.j, i64 1 acq_rel, align 8 ; 0 uses
  %i.l = add nsw i64 %i.g, %2                     ; 3 uses
  %.old6.i = icmp slt i64 %i.e, %i.l
  br i1 %.old6.i, label %.preheader.i, label %_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.0.i = phi i64 [ %i.o, %.preheader.i ], [ %i.e, %bb.c ]
  %i.m = cmpxchg weak ptr %i.d, i64 %.0.i, i64 %i.l acq_rel acquire, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  %i.p = icmp sge i64 %i.o, %i.l
  %or.cond.not.i = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond.not.i, label %_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit, label %.preheader.i, !llvm.loop !3

_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit: ; preds = %.preheader.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !200
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_15SystemAllocatorEEEE10ReallocateElllPPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %8 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %i.b = icmp slt i64 %3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA22_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(22) @.str.49)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.c = load ptr, ptr %5, align 8, !tbaa !78, !noalias !211
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE18CheckAllocatedAreaEPhlPKc(ptr noundef %i.c, i64 noundef %2, ptr noundef nonnull @.str.54), !noalias !211
  %i.d = load ptr, ptr %5, align 8, !tbaa !78, !noalias !211 ; 2 uses
  %i.e = icmp eq ptr %i.d, @_ZN5arrow11memory_pool8internal14zero_size_areaE
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE15AllocateAlignedEllPPh(ptr dead_on_unwind noalias nonnull writable align 8 %10, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, ptr noundef nonnull %5)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit17.thread, label %bb.f

_ZN5arrow6StatusD2Ev.exit17.thread:               ; preds = %bb.e
  tail call void @free(ptr noundef %i.d) #30, !noalias !211
  store ptr @_ZN5arrow11memory_pool8internal14zero_size_areaE, ptr %5, align 8, !tbaa !78, !noalias !211
  store ptr null, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.v

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !211
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.g = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 range(i64 1, -9223372036854775808) %3, i64 8) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.g, label %.thread59.i, !prof !43

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !213
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 1, ptr noundef nonnull align 1 dereferenceable(33) @.str.53), !noalias !213
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %7) #30, !noalias !211
  %i.i = load ptr, ptr %7, align 8, !tbaa !29, !noalias !213 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.i, label %bb.h, !prof !30

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !42, !range !18, !noalias !211, !noundef !19
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #30, !noalias !211
  br label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.i

.thread59.i:                                      ; preds = %bb.f
  %i.m = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  store ptr null, ptr %8, align 8, !tbaa !29, !alias.scope !212, !noalias !211
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !89, !alias.scope !212, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !211
  br label %_ZN5arrow6StatusD2Ev.exit.i36.i

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !213
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !29, !noalias !211
  %i.o = icmp eq ptr %.pr.i, null
  br i1 %i.o, label %bb.l, label %bb.j, !prof !92

bb.j:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.i
  store ptr null, ptr %10, align 8, !tbaa !29, !alias.scope !211
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.critedge.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !89, !noalias !211 ; 3 uses
  %.pre48.i = load ptr, ptr %5, align 8, !tbaa !78, !noalias !214 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !211
  %i.q = icmp eq ptr %.pre48.i, @_ZN5arrow11memory_pool8internal14zero_size_areaE
  br i1 %i.q, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115SystemAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias nonnull writable align 8 %9, i64 noundef %.pre.i, i64 noundef %4, ptr noundef nonnull %5)
          to label %._ZN5arrow6StatusD2Ev.exit_crit_edge.i unwind label %bb.o, !noalias !211

._ZN5arrow6StatusD2Ev.exit_crit_edge.i:           ; preds = %bb.m
  %.pr47.pre.i = load ptr, ptr %9, align 8, !tbaa !29, !noalias !211
  br label %_ZN5arrow6StatusD2Ev.exit.i

bb.n:                                             ; preds = %bb.l
  %i.r = icmp eq i64 %.pre.i, 0
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i36.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %bb.n
  call void @free(ptr noundef %.pre48.i) #30, !noalias !214
  store ptr @_ZN5arrow11memory_pool8internal14zero_size_areaE, ptr %5, align 8, !tbaa !78, !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !211
  br label %bb.p

_ZN5arrow6StatusD2Ev.exit.i36.i:                  ; preds = %bb.n, %.thread59.i
  %i.s = phi i64 [ %i.m, %.thread59.i ], [ %.pre.i, %bb.n ] ; 2 uses
  %i.t = add nsw i64 %2, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !214
  store ptr null, ptr %i.a, align 8, !tbaa !78, !noalias !214
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !214
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115SystemAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias writable align 8 %6, i64 noundef %i.s, i64 noundef %4, ptr noundef nonnull %i.a)
          to label %.noexc37.i unwind label %bb.o, !noalias !211

.noexc37.i:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit.i36.i
  %i.u = load ptr, ptr %6, align 8, !tbaa !29, !noalias !214 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !214
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit19.i.i, label %.critedge.i.i

_ZN5arrow6StatusD2Ev.exit19.i.i:                  ; preds = %.noexc37.i
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !78, !noalias !214 ; 2 uses
  %i.x = load ptr, ptr %5, align 8, !tbaa !78, !noalias !214
  %.sroa.speculated.i.i = call i64 @llvm.smin.i64(i64 %i.t, i64 %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.x, i64 %.sroa.speculated.i.i, i1 false), !noalias !214
  %i.y = load ptr, ptr %5, align 8, !tbaa !78, !noalias !214
  call void @free(ptr noundef %i.y) #30, !noalias !214
  store ptr %i.w, ptr %5, align 8, !tbaa !78, !noalias !214
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit19.i.i, %.noexc37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !214
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.critedge.i.i, %._ZN5arrow6StatusD2Ev.exit_crit_edge.i
  %.pr47.i = phi ptr [ %.pr47.pre.i, %._ZN5arrow6StatusD2Ev.exit_crit_edge.i ], [ %i.u, %.critedge.i.i ] ; 2 uses
  store ptr %.pr47.i, ptr %10, align 8, !tbaa !29, !alias.scope !211
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !211
  %i.z = icmp eq ptr %.pr47.i, null
  br i1 %i.z, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, label %.critedge.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pre51.i = load ptr, ptr %5, align 8, !tbaa !78, !noalias !211
  br label %bb.p

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i36.i, %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !211
  br label %bb.s

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.ab = phi ptr [ %.pre51.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i ], [ @_ZN5arrow11memory_pool8internal14zero_size_areaE, %_ZN5arrow6StatusD2Ev.exit.thread.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %3
  %i.ad = xor i64 %3, -1738363128204640648
  store i64 %i.ad, ptr %i.ac, align 1, !noalias !211
  store ptr null, ptr %10, align 8, !tbaa !29, !alias.scope !215
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.p, %_ZN5arrow6StatusD2Ev.exit.i, %bb.j
  %i.ae = load ptr, ptr %8, align 8, !tbaa !29, !noalias !211 ; 2 uses
  %.not.i.i42.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i42.i, label %_ZN5arrow6ResultIlED2Ev.exit.i, label %bb.q, !prof !30

bb.q:                                             ; preds = %.critedge.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !42, !range !18, !noundef !19
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN5arrow6ResultIlED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit.i

_ZN5arrow6ResultIlED2Ev.exit.i:                   ; preds = %bb.r, %bb.q, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !211
  br label %_ZN5arrow6StatusD2Ev.exit

bb.s:                                             ; preds = %bb.o, %bb.k
  %.pn34.i = phi { ptr, i32 } [ %i.p, %bb.k ], [ %i.aa, %bb.o ]
  %i.ai = load ptr, ptr %8, align 8, !tbaa !29, !noalias !211 ; 2 uses
  %.not.i.i44.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i44.i, label %_ZN5arrow6ResultIlED2Ev.exit46.i, label %bb.t, !prof !30

bb.t:                                             ; preds = %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !42, !range !18, !noundef !19
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN5arrow6ResultIlED2Ev.exit46.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit46.i

_ZN5arrow6ResultIlED2Ev.exit46.i:                 ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !211
  resume { ptr, i32 } %.pn34.i

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.d, %_ZN5arrow6ResultIlED2Ev.exit.i
  %.pr = load ptr, ptr %10, align 8, !tbaa !29    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.am = icmp eq ptr %.pr, null
  br i1 %i.am, label %bb.v, label %bb.y

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ao = icmp sgt i64 %3, %2
  br i1 %i.ao, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ap = sub nsw i64 %3, %2                      ; 3 uses
  %i.aq = load atomic i64, ptr %i.an monotonic, align 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.as = atomicrmw add ptr %i.ar, i64 %i.ap acq_rel, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.au = atomicrmw add ptr %i.at, i64 %i.ap acq_rel, align 8 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aw = atomicrmw add ptr %i.av, i64 1 acq_rel, align 8 ; 0 uses
  %i.ax = add nsw i64 %i.as, %i.ap                ; 3 uses
  %.old6.i.i = icmp slt i64 %i.aq, %i.ax
  br i1 %.old6.i.i, label %.preheader.i.i, label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.ba, %.preheader.i.i ], [ %i.aq, %bb.w ]
  %i.ay = cmpxchg weak ptr %i.an, i64 %.0.i.i, i64 %i.ax acq_rel acquire, align 8 ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  %i.ba = extractvalue { i64, i1 } %i.ay, 0       ; 2 uses
  %i.bb = icmp sge i64 %i.ba, %i.ax
  %or.cond.not.i.i = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond.not.i.i, label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit, label %.preheader.i.i, !llvm.loop !3

bb.x:                                             ; preds = %bb.v
  %i.bc = sub nuw nsw i64 %2, %3
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.be = atomicrmw sub ptr %i.bd, i64 %i.bc acq_rel, align 8 ; 0 uses
  br label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit

_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit: ; preds = %.preheader.i.i, %bb.w, %bb.x
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !216
  br label %bb.y

bb.y:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_15SystemAllocatorEEEE4FreeEPhll(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0, ptr noundef %1, i64 noundef %2, i64 %3) unnamed_addr #1 align 2 {
bb.a:
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE18CheckAllocatedAreaEPhlPKc(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.58)
  %.not.i = icmp eq ptr %1, @_ZN5arrow11memory_pool8internal14zero_size_areaE
  br i1 %.not.i, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE17DeallocateAlignedEPhll.exit, label %_ZN5arrow12_GLOBAL__N_115SystemAllocator17DeallocateAlignedEPhll.exit.i

_ZN5arrow12_GLOBAL__N_115SystemAllocator17DeallocateAlignedEPhll.exit.i: ; preds = %bb.a
  tail call void @free(ptr noundef %1) #30
  br label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE17DeallocateAlignedEPhll.exit

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE17DeallocateAlignedEPhll.exit: ; preds = %bb.a, %_ZN5arrow12_GLOBAL__N_115SystemAllocator17DeallocateAlignedEPhll.exit.i
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = atomicrmw sub ptr %i.a, i64 %2 acq_rel, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_15SystemAllocatorEEEE13ReleaseUnusedEv(ptr nofree nonnull readnone align 64 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call i32 @malloc_trim(i64 noundef 0) #30 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_15SystemAllocatorEEEE10PrintStatsEv(ptr nofree nonnull readnone align 64 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @malloc_stats() #30
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_15SystemAllocatorEEEE15bytes_allocatedEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_15SystemAllocatorEEEE10max_memoryEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i64, ptr %i.a acquire, align 64
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_15SystemAllocatorEEEE21total_bytes_allocatedEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load atomic i64, ptr %i.a acquire, align 16
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_15SystemAllocatorEEEE15num_allocationsEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow21SystemDebugMemoryPool12backend_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 64 dereferenceable(128) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.b, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.c, align 2, !tbaa !45
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18MimallocMemoryPoolD0Ev(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #32
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12JoinToStringIJRA48_KcRKlRA22_S2_RlRA13_S2_S9_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA48_KcRKlRA22_S2_RlRA13_S2_S9_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSM_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA48_KcRKlRA22_S2_RlRA13_S2_S9_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSM_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.t, %bb.c ], [ %i.u, %bb.d ], [ %i.v, %bb.e ], [ %i.w, %bb.f ], [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %.pn18
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !29
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !29
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !43

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !45
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !44     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !45
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.m = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !45
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !29
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !29
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !43

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !45
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !44     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !45
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.m = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !45
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_115SystemAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !89
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @_ZN5arrow11memory_pool8internal14zero_size_areaE, ptr %3, align 8, !tbaa !78
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !345
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @posix_memalign(ptr noundef %3, i64 noundef %2, i64 noundef %1) #30
  switch i32 %i.d, label %bb.j [
    i32 12, label %bb.d
    i32 22, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !346
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(16) @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.47), !noalias !346
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %5, align 8, !tbaa !44, !noalias !346 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN5arrow6Status11OutOfMemoryIJRA16_KcRlRA8_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.h = load i64, ptr %i.f, align 8, !tbaa !45, !noalias !346
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32
  br label %_ZN5arrow6Status11OutOfMemoryIJRA16_KcRlRA8_S2_EEES0_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %5, align 8, !tbaa !44, !noalias !346 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !45, !noalias !346
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !346
  br label %common.resume

_ZN5arrow6Status11OutOfMemoryIJRA16_KcRlRA8_S2_EEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !346
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %2, ptr %i.b, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !347
  call void @_ZN5arrow8internal12JoinToStringIJRA30_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(30) @.str.48, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !347
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %4, align 8, !tbaa !44, !noalias !347 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN5arrow6Status7InvalidIJRA30_KcmEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6: ; preds = %bb.h
  %i.s = load i64, ptr %i.q, align 8, !tbaa !45, !noalias !347
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #32
  br label %_ZN5arrow6Status7InvalidIJRA30_KcmEEES0_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %4, align 8, !tbaa !44, !noalias !347 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !45, !noalias !347
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !347
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA30_KcmEEES0_DpOT_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !348
  br label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6Status11OutOfMemoryIJRA16_KcRlRA8_S2_EEES0_DpOT_.exit, %_ZN5arrow6Status7InvalidIJRA30_KcmEEES0_DpOT_.exit, %bb.j, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(21) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !351
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !351
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136, !noalias !351, !nonnull !19, !align !137
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %2) #30, !noalias !351
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(21) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !351 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !351
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !351
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !45
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !45
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(8) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !19, !align !137
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %1) #30
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !19, !align !137
  %i.f = load i64, ptr %2, align 8, !tbaa !89
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !19, !align !137
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(8) %3) #30
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(8) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA30_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(30) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !19, !align !137
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(30) %1) #30
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(30) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA30_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA30_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !19, !align !137
  %i.f = load i64, ptr %2, align 8, !tbaa !89
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA30_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clImEEDaSF_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA30_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clImEEDaSF_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clImEEDaSF_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clImEEDaSF_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn6
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA22_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(22) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !354
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !354
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136, !noalias !354, !nonnull !19, !align !137
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %2) #30, !noalias !354
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(22) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !354 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !354
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !354
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !45
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !45
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: nounwind
declare i32 @malloc_trim(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @malloc_stats() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE15AllocateAlignedEllPPh(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @_ZN5arrow11memory_pool8internal14zero_size_areaE, ptr %3, align 8, !tbaa !78
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.b = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 range(i64 1, -9223372036854775808) %1, i64 8) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.d, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.thread, !prof !43

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !359
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 1, ptr noundef nonnull align 1 dereferenceable(33) @.str.53), !noalias !359
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %i.d = load ptr, ptr %4, align 8, !tbaa !29, !noalias !359 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit, label %bb.e, !prof !30

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !42, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.thread: ; preds = %bb.c
  %i.h = extractvalue { i64, i1 } %i.b, 0         ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !29, !alias.scope !359
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !89, !alias.scope !359
  br label %bb.i

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !359
  %.pr = load ptr, ptr %5, align 8, !tbaa !29
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit._crit_edge, label %bb.g, !prof !92

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit._crit_edge: ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !89
  br label %bb.i

bb.g:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit
  store ptr null, ptr %0, align 8, !tbaa !29
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit._crit_edge, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.thread
  %i.l = phi i64 [ %.pre, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit._crit_edge ], [ %i.h, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115SystemAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias writable align 8 %6, i64 noundef %i.l, i64 noundef %2, ptr noundef %3)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.j

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.i
  %i.m = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit31, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.m

_ZN5arrow6StatusD2Ev.exit31:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.p = load ptr, ptr %3, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  %i.r = xor i64 %1, -1738363128204640648
  store i64 %i.r, ptr %i.q, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_ZN5arrow6StatusD2Ev.exit31, %_ZN5arrow6StatusD2Ev.exit
  %i.s = phi i1 [ false, %_ZN5arrow6StatusD2Ev.exit ], [ true, %_ZN5arrow6StatusD2Ev.exit31 ], [ false, %bb.g ]
  %i.t = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.t, null
  br i1 %.not.i.i32, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.k, !prof !30

bb.k:                                             ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !42, !range !18, !noundef !19
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %.critedge, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.s, label %bb.p, label %bb.q

bb.m:                                             ; preds = %bb.j, %bb.h
  %.pn26 = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.o, %bb.j ]
  %i.x = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.x, null
  br i1 %.not.i.i34, label %_ZN5arrow6ResultIlED2Ev.exit36, label %bb.n, !prof !30

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !42, !range !18, !noundef !19
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6ResultIlED2Ev.exit36, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit36

_ZN5arrow6ResultIlED2Ev.exit36:                   ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn26

bb.p:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !360
  br label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.p
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #25

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(33) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !363
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !363
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136, !noalias !363, !nonnull !19, !align !137
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(33) %2) #30, !noalias !363
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(33) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !363 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !363
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !363
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !45
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE15AllocateAlignedEllPPh:bb.a
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit._crit_edge, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.thread
  %i.l = phi i64 [ %.pre, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit._crit_edge ], [ %i.h, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_117MimallocAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias writable align 8 %6, i64 noundef %i.l, i64 noundef %2, ptr noundef %3)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.j

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.i
  %i.m = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit30, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.m

_ZN5arrow6StatusD2Ev.exit30:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.p = load ptr, ptr %3, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  %i.r = xor i64 %1, -1738363128204640648
  store i64 %i.r, ptr %i.q, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_ZN5arrow6StatusD2Ev.exit30, %_ZN5arrow6StatusD2Ev.exit
  %i.s = phi i1 [ false, %_ZN5arrow6StatusD2Ev.exit ], [ true, %_ZN5arrow6StatusD2Ev.exit30 ], [ false, %bb.g ]
  %i.t = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.t, null
  br i1 %.not.i.i31, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.k, !prof !30

bb.k:                                             ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !42, !range !18, !noundef !19
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %.critedge, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.s, label %bb.p, label %bb.q

bb.m:                                             ; preds = %bb.j, %bb.h
  %.pn25 = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.o, %bb.j ]
  %i.x = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.x, null
  br i1 %.not.i.i33, label %_ZN5arrow6ResultIlED2Ev.exit35, label %bb.n, !prof !30

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !42, !range !18, !noundef !19
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6ResultIlED2Ev.exit35, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit35

_ZN5arrow6ResultIlED2Ev.exit35:                   ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn25

bb.p:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !396
  br label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE18CheckAllocatedAreaEPhlPKc(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 9 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !89
  store ptr %2, ptr %i.b, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.d = getelementptr inbounds i8, ptr %0, i64 %1
  %i.e = load i64, ptr %i.d, align 1
  %i.f = xor i64 %i.e, -1738363128204640648       ; 2 uses
  store i64 %i.f, ptr %i.c, align 8, !tbaa !89
  %.not = icmp eq i64 %i.f, %1
  br i1 %.not, label %bb.i, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5arrow6Status7InvalidIJRA15_KcRPS2_RA16_S2_RlRA17_S2_S9_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(15) @.str.55, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) @.str.56, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.57, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call fastcc void @_ZN5arrow12_GLOBAL__N_110DebugState8InstanceEv()
  %i.g = load i64, ptr %i.a, align 8, !tbaa !89
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_110DebugState6InvokeEPhlRKNS_6StatusE(ptr noundef nonnull %0, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !42, !range !18, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %.not.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i3, label %_ZN5arrow6StatusD2Ev.exit4, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !42, !range !18, !noundef !19
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN5arrow6StatusD2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  br label %_ZN5arrow6StatusD2Ev.exit4

_ZN5arrow6StatusD2Ev.exit4:                       ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  resume { ptr, i32 } %i.l

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_memory_pool.cc() #26 section ".text.startup" {
bb.a:
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11GlobalStateD2Ev, ptr nonnull @_ZN5arrowL12global_stateE, ptr nonnull @__dso_handle) #30 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #22 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { noreturn }
attributes #35 = { cold }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = distinct !{null, null, null, null}
!3 = distinct !{!3, !77}
!4 = distinct !{!4, !77}
!5 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6 = distinct !{null, null}
!7 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"branch_weights", i32 1, i32 1048575}
!16 = !{!"bool", !12, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"vtable pointer", !11, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"any pointer", !12, i64 0}
!23 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !22, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 _ZTSN5arrow12_GLOBAL__N_116SupportedBackendE", !22, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTSN5arrow6Status5StateE", !22, i64 0}
!28 = !{!"_ZTSN5arrow6StatusE", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!"_ZTSN5arrow10StatusCodeE", !12, i64 0}
!32 = !{!"p1 omnipotent char", !22, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !32, i64 0}
!34 = !{!"long", !12, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !34, i64 8, !12, i64 16}
!36 = !{!"p1 _ZTSN5arrow12StatusDetailE", !22, i64 0}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!38 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!39 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !38, i64 8}
!40 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !39, i64 0}
!41 = !{!"_ZTSN5arrow6Status5StateE", !31, i64 0, !16, i64 1, !35, i64 8, !40, i64 40}
!42 = !{!41, !16, i64 1}
!43 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!44 = !{!35, !32, i64 0}
!45 = !{!12, !12, i64 0}
!46 = !{!"_ZTSN5arrow10MemoryPoolE"}
!47 = !{!"_ZTSN5arrow17LoggingMemoryPoolE", !46, i64 0, !23, i64 8}
!48 = !{!47, !23, i64 8}
!49 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!50 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!51 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!52 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !34, i64 8}
!53 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!54 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!55 = !{!"_ZTSSt6locale", !54, i64 0}
!56 = !{!"_ZTSSt8ios_base", !34, i64 8, !34, i64 16, !49, i64 24, !50, i64 28, !50, i64 32, !51, i64 40, !52, i64 48, !12, i64 64, !13, i64 192, !53, i64 200, !55, i64 208}
!57 = !{!"p1 _ZTSSo", !22, i64 0}
!58 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!59 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!60 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!61 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!62 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !56, i64 0, !57, i64 216, !12, i64 224, !16, i64 225, !58, i64 232, !59, i64 240, !60, i64 248, !61, i64 256}
!63 = !{!62, !59, i64 240}
!64 = !{!"_ZTSNSt6locale5facetE", !13, i64 8}
!65 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!66 = !{!"p1 int", !22, i64 0}
!67 = !{!"p1 short", !22, i64 0}
!68 = !{!"_ZTSSt5ctypeIcE", !64, i64 0, !65, i64 16, !16, i64 24, !66, i64 32, !66, i64 40, !67, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!69 = !{!68, !12, i64 56}
!70 = !{!"p1 _ZTSN5arrow15ProxyMemoryPool19ProxyMemoryPoolImplE", !22, i64 0}
!71 = !{!"_ZTSSt13__atomic_baseIlE", !34, i64 0}
!72 = !{!"_ZTSSt6atomicIlE", !71, i64 0}
!73 = !{!"_ZTSN5arrow8internal15MemoryPoolStatsE", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24}
!74 = !{!"_ZTSN5arrow15ProxyMemoryPool19ProxyMemoryPoolImplE", !23, i64 0, !73, i64 64}
!75 = !{!74, !23, i64 0}
!76 = !{!70, !70, i64 0}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!32, !32, i64 0}
!79 = !{!33, !32, i64 0}
!80 = !{!35, !34, i64 8}
!81 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!82, !81, i64 8}
!84 = !{!82, !81, i64 16}
!85 = !{!82, !81, i64 0}
!86 = !{!"_ZTSN5arrow16CappedMemoryPoolE", !46, i64 0, !23, i64 8, !34, i64 16}
!87 = !{!86, !23, i64 8}
!88 = !{!86, !34, i64 16}
!89 = !{!34, !34, i64 0}
!90 = !{!"p1 _ZTSN5arrow10PoolBufferE", !22, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!93 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !12, i64 0}
!94 = !{!"p1 _ZTSN5arrow6BufferE", !22, i64 0}
!95 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0, !38, i64 8}
!96 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !95, i64 0}
!97 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !22, i64 0}
!98 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !97, i64 0, !38, i64 8}
!99 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !98, i64 0}
!100 = !{!"_ZTSN5arrow6BufferE", !16, i64 8, !16, i64 9, !32, i64 16, !34, i64 24, !34, i64 32, !93, i64 40, !96, i64 48, !99, i64 64}
!101 = !{!100, !34, i64 32}
!102 = !{!100, !16, i64 9}
!103 = !{!100, !34, i64 24}
!104 = !{!"_ZTSN5arrow13MutableBufferE", !100, i64 0}
!105 = !{!"_ZTSN5arrow15ResizableBufferE", !104, i64 0}
!106 = !{!"_ZTSN5arrow10PoolBufferE", !105, i64 0, !23, i64 80, !34, i64 88}
!107 = !{!106, !23, i64 80}
!108 = !{!106, !34, i64 88}
!109 = !{!98, !97, i64 0}
!110 = !{!38, !37, i64 0}
!111 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 8, !13, i64 12}
!112 = !{!111, !13, i64 8}
!113 = !{!111, !13, i64 12}
!114 = !{ptr @_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_}
!115 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!116 = !{!22, !22, i64 0}
!117 = !{!"_ZTSSt14_Function_base", !12, i64 0, !22, i64 16}
!118 = !{!"_ZTSSt8functionIFvPhlRKN5arrow6StatusEEE", !117, i64 0, !22, i64 24}
!119 = !{!118, !22, i64 24}
!120 = !{!117, !22, i64 16}
!121 = !{i64 0, i64 16, !45}
!122 = !{!"_ZTSNSt12_Vector_baseIN5arrow12_GLOBAL__N_116SupportedBackendESaIS2_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!123 = !{!122, !25, i64 0}
!124 = !{!122, !25, i64 16}
!125 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!126 = !{!100, !32, i64 16}
!127 = !{!100, !16, i64 8}
!128 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!129 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !128, i64 0}
!130 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !129, i64 0}
!131 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !130, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !131, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !132, i64 0}
!134 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !133, i64 0}
!135 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !134, i64 0, !57, i64 8}
!136 = !{!135, !57, i64 8}
!137 = !{i64 8}
!138 = distinct !{!138, !"_ZN5arrow6Status2OKEv"}
!139 = distinct !{!139, !138, !"_ZN5arrow6Status2OKEv: argument 0"}
!140 = !{!139}
!141 = distinct !{!141, !"_ZN5arrow10MemoryPool10ReallocateEllPPh"}
!142 = distinct !{!142, !141, !"_ZN5arrow10MemoryPool10ReallocateEllPPh: argument 0"}
!143 = distinct !{null}
!144 = !{!142}
!145 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow15ProxyMemoryPool19ProxyMemoryPoolImplELb0EE", !70, i64 0}
!146 = !{!145, !70, i64 0}
!147 = distinct !{!147, !"_ZN5arrow15ProxyMemoryPool19ProxyMemoryPoolImpl8AllocateEllPPh"}
!148 = distinct !{!148, !147, !"_ZN5arrow15ProxyMemoryPool19ProxyMemoryPoolImpl8AllocateEllPPh: argument 0"}
!149 = distinct !{null}
!150 = distinct !{!150, !"_ZN5arrow6Status2OKEv"}
!151 = distinct !{!151, !150, !"_ZN5arrow6Status2OKEv: argument 0"}
!152 = !{!148}
!153 = !{!151, !148}
!154 = distinct !{!154, !"_ZN5arrow15ProxyMemoryPool19ProxyMemoryPoolImpl10ReallocateElllPPh"}
!155 = distinct !{!155, !154, !"_ZN5arrow15ProxyMemoryPool19ProxyMemoryPoolImpl10ReallocateElllPPh: argument 0"}
!156 = distinct !{null}
!157 = distinct !{!157, !"_ZN5arrow6Status2OKEv"}
!158 = distinct !{!158, !157, !"_ZN5arrow6Status2OKEv: argument 0"}
!159 = !{!155}
!160 = !{!158, !155}
!161 = distinct !{null}
!162 = distinct !{null}
!163 = distinct !{null}
!164 = distinct !{!164, !"_ZNK5arrow15ProxyMemoryPool19ProxyMemoryPoolImpl12backend_nameB5cxx11Ev"}
!165 = distinct !{!165, !164, !"_ZNK5arrow15ProxyMemoryPool19ProxyMemoryPoolImpl12backend_nameB5cxx11Ev: argument 0"}
!166 = distinct !{null}
!167 = !{!165}
!168 = distinct !{!168, !"_ZN5arrow6Status11OutOfMemoryIJRA48_KcRKlRA22_S2_RlRA13_S2_S9_EEES0_DpOT_"}
!169 = distinct !{!169, !168, !"_ZN5arrow6Status11OutOfMemoryIJRA48_KcRKlRA22_S2_RlRA13_S2_S9_EEES0_DpOT_: argument 0"}
!170 = distinct !{!170, !"_ZN5arrow6Status8FromArgsIJRA48_KcRKlRA22_S2_RlRA13_S2_S9_EEES0_NS_10StatusCodeEDpOT_"}
!171 = distinct !{!171, !170, !"_ZN5arrow6Status8FromArgsIJRA48_KcRKlRA22_S2_RlRA13_S2_S9_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!172 = !{!171, !169}
!173 = distinct !{!173, !"_ZN5arrow12_GLOBAL__N_116ResizePoolBufferISt10unique_ptrINS_6BufferESt14default_deleteIS3_EES2_INS_10PoolBufferES4_IS7_EEEENS_6ResultIT_EEOT0_l"}
!174 = distinct !{!174, !173, !"_ZN5arrow12_GLOBAL__N_116ResizePoolBufferISt10unique_ptrINS_6BufferESt14default_deleteIS3_EES2_INS_10PoolBufferES4_IS7_EEEENS_6ResultIT_EEOT0_l: argument 0"}
!175 = !{!174}
!176 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow6BufferELb0EE", !94, i64 0}
!177 = !{!176, !94, i64 0}
!178 = distinct !{!178, !"_ZSt11make_uniqueIN5arrow10PoolBufferEJSt10shared_ptrINS0_13MemoryManagerEERPNS0_10MemoryPoolERlEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!179 = distinct !{!179, !178, !"_ZSt11make_uniqueIN5arrow10PoolBufferEJSt10shared_ptrINS0_13MemoryManagerEERPNS0_10MemoryPoolERlEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!180 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!181 = !{!97, !97, i64 0}
!182 = !{!179}
end_hunk_2
