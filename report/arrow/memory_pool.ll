Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/memory_pool?download=true
inline.NumInlined: 1287
inline.NumDeleted: 528
begin_hunk_0_@_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_115SystemAllocatorEE10ReallocateElllPPh:bb.a
  br i1 %.old6.i.i, label %.preheader.i.i, label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.z, %.preheader.i.i ], [ %i.p, %bb.g ]
  %i.x = cmpxchg weak ptr %i.m, i64 %.0.i.i, i64 %i.w acq_rel acquire, align 8 ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  %i.z = extractvalue { i64, i1 } %i.x, 0         ; 2 uses
  %i.aa = icmp sge i64 %i.z, %i.w
  %or.cond.not.i.i = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %or.cond.not.i.i, label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit, label %.preheader.i.i, !llvm.loop !85

bb.h:                                             ; preds = %bb.f
  %i.ab = sub nuw nsw i64 %2, %3
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = atomicrmw sub ptr %i.ac, i64 %i.ab acq_rel, align 8 ; 0 uses
  br label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit

_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit: ; preds = %.preheader.i.i, %bb.g, %bb.h
  store ptr null, ptr %0, align 8, !tbaa !20, !alias.scope !169
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
  store ptr %i.a, ptr %0, align 8, !tbaa !105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.b, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.c, align 2, !tbaa !41
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow21SystemDebugMemoryPoolD0Ev(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_15SystemAllocatorEEEE8AllocateEllPPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !20
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
  br i1 %or.cond.not.i, label %_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit, label %.preheader.i, !llvm.loop !85

_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit: ; preds = %.preheader.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !20, !alias.scope !172
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_15SystemAllocatorEEEE10ReallocateElllPPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.c = load ptr, ptr %5, align 8, !tbaa !104, !noalias !175
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE18CheckAllocatedAreaEPhlPKc(ptr noundef %i.c, i64 noundef %2, ptr noundef nonnull @.str.54), !noalias !175
  %i.d = load ptr, ptr %5, align 8, !tbaa !104, !noalias !175 ; 2 uses
  %i.e = icmp eq ptr %i.d, @_ZN5arrow11memory_pool8internal14zero_size_areaE
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE15AllocateAlignedEllPPh(ptr dead_on_unwind noalias nonnull writable align 8 %10, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, ptr noundef nonnull %5)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit17.thread, label %bb.f

_ZN5arrow6StatusD2Ev.exit17.thread:               ; preds = %bb.e
  tail call void @free(ptr noundef %i.d) #30, !noalias !175
  store ptr @_ZN5arrow11memory_pool8internal14zero_size_areaE, ptr %5, align 8, !tbaa !104, !noalias !175
  store ptr null, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.v

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %11 = icmp samesign ugt i64 %3, 9223372036854775799
  br i1 %11, label %bb.g, label %.thread59.i, !prof !39

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !181
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 1, ptr noundef nonnull align 1 dereferenceable(33) @.str.53), !noalias !181
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %7) #30, !noalias !175
  %i.g = load ptr, ptr %7, align 8, !tbaa !20, !noalias !181 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.i, label %bb.h, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !27, !range !10, !noalias !175, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #30, !noalias !175
  br label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.i

.thread59.i:                                      ; preds = %bb.f
  %12 = add nuw nsw i64 %3, 8                     ; 2 uses
  store ptr null, ptr %8, align 8, !tbaa !20, !alias.scope !178, !noalias !175
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %12, ptr %i.k, align 8, !tbaa !116, !alias.scope !178, !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !175
  br label %_ZN5arrow6StatusD2Ev.exit.i36.i

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !181
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !20, !noalias !175
  %i.l = icmp eq ptr %.pr.i, null
  br i1 %i.l, label %bb.l, label %bb.j, !prof !127

bb.j:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.i
  store ptr null, ptr %10, align 8, !tbaa !20, !alias.scope !175
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.critedge.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !116, !noalias !175 ; 3 uses
  %.pre48.i = load ptr, ptr %5, align 8, !tbaa !104, !noalias !182 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !175
  %i.n = icmp eq ptr %.pre48.i, @_ZN5arrow11memory_pool8internal14zero_size_areaE
  br i1 %i.n, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115SystemAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias nonnull writable align 8 %9, i64 noundef %.pre.i, i64 noundef %4, ptr noundef nonnull %5)
          to label %._ZN5arrow6StatusD2Ev.exit_crit_edge.i unwind label %bb.o, !noalias !175

._ZN5arrow6StatusD2Ev.exit_crit_edge.i:           ; preds = %bb.m
  %.pr47.pre.i = load ptr, ptr %9, align 8, !tbaa !20, !noalias !175
  br label %_ZN5arrow6StatusD2Ev.exit.i

bb.n:                                             ; preds = %bb.l
  %i.o = icmp eq i64 %.pre.i, 0
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i36.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %bb.n
  call void @free(ptr noundef %.pre48.i) #30, !noalias !182
  store ptr @_ZN5arrow11memory_pool8internal14zero_size_areaE, ptr %5, align 8, !tbaa !104, !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !175
  br label %bb.p

_ZN5arrow6StatusD2Ev.exit.i36.i:                  ; preds = %bb.n, %.thread59.i
  %i.p = phi i64 [ %12, %.thread59.i ], [ %.pre.i, %bb.n ] ; 2 uses
  %i.q = add nsw i64 %2, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !182
  store ptr null, ptr %i.a, align 8, !tbaa !104, !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !182
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115SystemAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias writable align 8 %6, i64 noundef %i.p, i64 noundef %4, ptr noundef nonnull %i.a)
          to label %.noexc37.i unwind label %bb.o, !noalias !175

.noexc37.i:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit.i36.i
  %i.r = load ptr, ptr %6, align 8, !tbaa !20, !noalias !182 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !182
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit19.i.i, label %.critedge.i.i

_ZN5arrow6StatusD2Ev.exit19.i.i:                  ; preds = %.noexc37.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !104, !noalias !182
  %i.u = load ptr, ptr %5, align 8, !tbaa !104, !noalias !182
  %.sroa.speculated.i.i = call i64 @llvm.smin.i64(i64 %i.q, i64 %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %.sroa.speculated.i.i, i1 false), !noalias !182
  %i.v = load ptr, ptr %5, align 8, !tbaa !104, !noalias !182
  call void @free(ptr noundef %i.v) #30, !noalias !182
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !104, !noalias !182
  store ptr %i.w, ptr %5, align 8, !tbaa !104, !noalias !182
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit19.i.i, %.noexc37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !182
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.critedge.i.i, %._ZN5arrow6StatusD2Ev.exit_crit_edge.i
  %.pr47.i = phi ptr [ %.pr47.pre.i, %._ZN5arrow6StatusD2Ev.exit_crit_edge.i ], [ %i.r, %.critedge.i.i ] ; 2 uses
  store ptr %.pr47.i, ptr %10, align 8, !tbaa !20, !alias.scope !175
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !175
  %i.x = icmp eq ptr %.pr47.i, null
  br i1 %i.x, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, label %.critedge.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pre51.i = load ptr, ptr %5, align 8, !tbaa !104, !noalias !175
  br label %bb.p

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i36.i, %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !175
  br label %bb.s

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.z = phi ptr [ %.pre51.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i ], [ @_ZN5arrow11memory_pool8internal14zero_size_areaE, %_ZN5arrow6StatusD2Ev.exit.thread.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %3
  %i.ab = xor i64 %3, -1738363128204640648
  store i64 %i.ab, ptr %i.aa, align 1, !noalias !175
  store ptr null, ptr %10, align 8, !tbaa !20, !alias.scope !185
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.p, %_ZN5arrow6StatusD2Ev.exit.i, %bb.j
  %i.ac = load ptr, ptr %8, align 8, !tbaa !20, !noalias !175 ; 2 uses
  %.not.i.i42.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i42.i, label %_ZN5arrow6ResultIlED2Ev.exit.i, label %bb.q, !prof !26

bb.q:                                             ; preds = %.critedge.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27, !range !10, !noundef !11
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN5arrow6ResultIlED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit.i

_ZN5arrow6ResultIlED2Ev.exit.i:                   ; preds = %bb.r, %bb.q, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !175
  br label %_ZN5arrow6StatusD2Ev.exit

bb.s:                                             ; preds = %bb.o, %bb.k
  %.pn34.i = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.y, %bb.o ]
  %i.ag = load ptr, ptr %8, align 8, !tbaa !20, !noalias !175 ; 2 uses
  %.not.i.i44.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i44.i, label %_ZN5arrow6ResultIlED2Ev.exit46.i, label %bb.t, !prof !26

bb.t:                                             ; preds = %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27, !range !10, !noundef !11
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN5arrow6ResultIlED2Ev.exit46.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit46.i

_ZN5arrow6ResultIlED2Ev.exit46.i:                 ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !175
  resume { ptr, i32 } %.pn34.i

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.d, %_ZN5arrow6ResultIlED2Ev.exit.i
  %.pr = load ptr, ptr %10, align 8, !tbaa !20    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.ak = icmp eq ptr %.pr, null
  br i1 %i.ak, label %bb.v, label %bb.y

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.am = icmp sgt i64 %3, %2
  br i1 %i.am, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.an = sub nsw i64 %3, %2                      ; 3 uses
  %i.ao = load atomic i64, ptr %i.al monotonic, align 64 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aq = atomicrmw add ptr %i.ap, i64 %i.an acq_rel, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = atomicrmw add ptr %i.ar, i64 %i.an acq_rel, align 8 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.au = atomicrmw add ptr %i.at, i64 1 acq_rel, align 8 ; 0 uses
  %i.av = add nsw i64 %i.aq, %i.an                ; 3 uses
  %.old6.i.i = icmp slt i64 %i.ao, %i.av
  br i1 %.old6.i.i, label %.preheader.i.i, label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.ay, %.preheader.i.i ], [ %i.ao, %bb.w ]
  %i.aw = cmpxchg weak ptr %i.al, i64 %.0.i.i, i64 %i.av acq_rel acquire, align 8 ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  %i.ay = extractvalue { i64, i1 } %i.aw, 0       ; 2 uses
  %i.az = icmp sge i64 %i.ay, %i.av
  %or.cond.not.i.i = select i1 %i.ax, i1 true, i1 %i.az
  br i1 %or.cond.not.i.i, label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit, label %.preheader.i.i, !llvm.loop !85

bb.x:                                             ; preds = %bb.v
  %i.ba = sub nuw nsw i64 %2, %3
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bc = atomicrmw sub ptr %i.bb, i64 %i.ba acq_rel, align 8 ; 0 uses
  br label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit

_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit: ; preds = %.preheader.i.i, %bb.w, %bb.x
  store ptr null, ptr %0, align 8, !tbaa !20, !alias.scope !188
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
end_hunk_0
begin_hunk_1_@_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_117MimallocAllocatorEE10ReallocateElllPPh:bb.a
  %i.o = cmpxchg weak ptr %i.d, i64 %.0.i.i, i64 %i.n acq_rel acquire, align 8 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  %i.q = extractvalue { i64, i1 } %i.o, 0         ; 2 uses
  %i.r = icmp sge i64 %i.q, %i.n
  %or.cond.not.i.i = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond.not.i.i, label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit, label %.preheader.i.i, !llvm.loop !85

bb.e:                                             ; preds = %bb.c
  %i.s = sub nuw nsw i64 %2, %3
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = atomicrmw sub ptr %i.t, i64 %i.s acq_rel, align 8 ; 0 uses
  br label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit

_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit: ; preds = %.preheader.i.i, %bb.d, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !20, !alias.scope !194
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_117MimallocAllocatorEE4FreeEPhll(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0, ptr noundef %1, i64 noundef %2, i64 %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, @_ZN5arrow11memory_pool8internal14zero_size_areaE
  br i1 %i.a, label %_ZN5arrow12_GLOBAL__N_117MimallocAllocator17DeallocateAlignedEPhll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mi_free(ptr noundef %1) #30
  br label %_ZN5arrow12_GLOBAL__N_117MimallocAllocator17DeallocateAlignedEPhll.exit

_ZN5arrow12_GLOBAL__N_117MimallocAllocator17DeallocateAlignedEPhll.exit: ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = atomicrmw sub ptr %i.b, i64 %2 acq_rel, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_117MimallocAllocatorEE13ReleaseUnusedEv(ptr nofree nonnull readnone align 64 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @mi_collect(i1 noundef zeroext true) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_117MimallocAllocatorEE10PrintStatsEv(ptr nofree nonnull readnone align 64 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @mi_stats_print_out(ptr noundef null, ptr noundef null) #30
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_117MimallocAllocatorEE15bytes_allocatedEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_117MimallocAllocatorEE10max_memoryEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i64, ptr %i.a acquire, align 64
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_117MimallocAllocatorEE21total_bytes_allocatedEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load atomic i64, ptr %i.a acquire, align 16
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_117MimallocAllocatorEE15num_allocationsEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow18MimallocMemoryPool12backend_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 64 dereferenceable(128) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !105
  store i64 7165064744916576621, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.b, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.c, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow10MemoryPoolD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow23MimallocDebugMemoryPoolD0Ev(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_17MimallocAllocatorEEEE8AllocateEllPPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(21) @.str.44)
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE15AllocateAlignedEllPPh(ptr dead_on_unwind noalias writable align 8 %5, i64 noundef %2, i64 noundef %3, ptr noundef %4)
  %i.b = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !20
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
  br i1 %or.cond.not.i, label %_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit, label %.preheader.i, !llvm.loop !85

_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit: ; preds = %.preheader.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !20, !alias.scope !197
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow8internal15MemoryPoolStats16DidAllocateBytesEl.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_17MimallocAllocatorEEEE10ReallocateElllPPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %i.a = icmp slt i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA22_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(22) @.str.49)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.b = load ptr, ptr %5, align 8, !tbaa !104, !noalias !200
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE18CheckAllocatedAreaEPhlPKc(ptr noundef %i.b, i64 noundef %2, ptr noundef nonnull @.str.54), !noalias !200
  %i.c = load ptr, ptr %5, align 8, !tbaa !104, !noalias !200 ; 2 uses
  %i.d = icmp eq ptr %i.c, @_ZN5arrow11memory_pool8internal14zero_size_areaE
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE15AllocateAlignedEllPPh(ptr dead_on_unwind noalias nonnull writable align 8 %9, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, ptr noundef nonnull %5)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit17.thread, label %bb.f

_ZN5arrow6StatusD2Ev.exit17.thread:               ; preds = %bb.e
  tail call void @mi_free(ptr noundef %i.c) #30, !noalias !200
  store ptr @_ZN5arrow11memory_pool8internal14zero_size_areaE, ptr %5, align 8, !tbaa !104, !noalias !200
  store ptr null, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.s

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %10 = icmp samesign ugt i64 %3, 9223372036854775799
  br i1 %10, label %bb.g, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.thread.i, !prof !39

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !206
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 1, ptr noundef nonnull align 1 dereferenceable(33) @.str.53), !noalias !206
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #30, !noalias !200
  %i.f = load ptr, ptr %6, align 8, !tbaa !20, !noalias !206 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.i, label %bb.h, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !27, !range !10, !noalias !200, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #30, !noalias !200
  br label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.i

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.thread.i: ; preds = %bb.f
  %11 = add nuw nsw i64 %3, 8                     ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !20, !alias.scope !203, !noalias !200
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %11, ptr %i.j, align 8, !tbaa !116, !alias.scope !203, !noalias !200
  br label %bb.l

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !206
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !20, !noalias !200
  %i.k = icmp eq ptr %.pr.i, null
  br i1 %i.k, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit._crit_edge.i, label %bb.j, !prof !127

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit._crit_edge.i: ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !116, !noalias !200
  br label %bb.l

bb.j:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.i
  store ptr null, ptr %9, align 8, !tbaa !20, !alias.scope !200
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.critedge.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit._crit_edge.i, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.thread.i
  %i.m = phi i64 [ %.pre.i, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit._crit_edge.i ], [ %11, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !200
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_117MimallocAllocator17ReallocateAlignedElllPPh(ptr dead_on_unwind noalias writable align 8 %8, i64 noundef %i.m, i64 noundef %4, ptr noundef nonnull %5)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.m

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.l
  %i.n = load ptr, ptr %8, align 8, !tbaa !20, !noalias !200 ; 2 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !20, !alias.scope !200
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !200
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit38.i, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !200
  br label %bb.p

_ZN5arrow6StatusD2Ev.exit38.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.q = load ptr, ptr %5, align 8, !tbaa !104, !noalias !200
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %3
  %i.s = xor i64 %3, -1738363128204640648
  store i64 %i.s, ptr %i.r, align 1, !noalias !200
  store ptr null, ptr %9, align 8, !tbaa !20, !alias.scope !207
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit38.i, %_ZN5arrow6StatusD2Ev.exit.i, %bb.j
  %i.t = load ptr, ptr %7, align 8, !tbaa !20, !noalias !200 ; 2 uses
  %.not.i.i39.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i39.i, label %_ZN5arrow6ResultIlED2Ev.exit.i, label %bb.n, !prof !26

bb.n:                                             ; preds = %.critedge.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !27, !range !10, !noundef !11
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6ResultIlED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit.i

_ZN5arrow6ResultIlED2Ev.exit.i:                   ; preds = %bb.o, %bb.n, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !200
  br label %_ZN5arrow6StatusD2Ev.exit

bb.p:                                             ; preds = %bb.m, %bb.k
  %.pn33.i = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.p, %bb.m ]
  %i.x = load ptr, ptr %7, align 8, !tbaa !20, !noalias !200 ; 2 uses
  %.not.i.i41.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i41.i, label %_ZN5arrow6ResultIlED2Ev.exit43.i, label %bb.q, !prof !26

bb.q:                                             ; preds = %bb.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !27, !range !10, !noundef !11
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6ResultIlED2Ev.exit43.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit43.i

_ZN5arrow6ResultIlED2Ev.exit43.i:                 ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !200
  resume { ptr, i32 } %.pn33.i

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.d, %_ZN5arrow6ResultIlED2Ev.exit.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !20     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.ab = icmp eq ptr %.pr, null
  br i1 %i.ab, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ad = icmp sgt i64 %3, %2
  br i1 %i.ad, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ae = sub nsw i64 %3, %2                      ; 3 uses
  %i.af = load atomic i64, ptr %i.ac monotonic, align 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = atomicrmw add ptr %i.ag, i64 %i.ae acq_rel, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aj = atomicrmw add ptr %i.ai, i64 %i.ae acq_rel, align 8 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.al = atomicrmw add ptr %i.ak, i64 1 acq_rel, align 8 ; 0 uses
  %i.am = add nsw i64 %i.ah, %i.ae                ; 3 uses
  %.old6.i.i = icmp slt i64 %i.af, %i.am
  br i1 %.old6.i.i, label %.preheader.i.i, label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.ap, %.preheader.i.i ], [ %i.af, %bb.t ]
  %i.an = cmpxchg weak ptr %i.ac, i64 %.0.i.i, i64 %i.am acq_rel acquire, align 8 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0       ; 2 uses
  %i.aq = icmp sge i64 %i.ap, %i.am
  %or.cond.not.i.i = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond.not.i.i, label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit, label %.preheader.i.i, !llvm.loop !85

bb.u:                                             ; preds = %bb.s
  %i.ar = sub nuw nsw i64 %2, %3
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.at = atomicrmw sub ptr %i.as, i64 %i.ar acq_rel, align 8 ; 0 uses
  br label %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit

_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit: ; preds = %.preheader.i.i, %bb.t, %bb.u
  store ptr null, ptr %0, align 8, !tbaa !20, !alias.scope !210
  br label %bb.v

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow8internal15MemoryPoolStats18DidReallocateBytesEll.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_17MimallocAllocatorEEEE4FreeEPhll(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0, ptr noundef %1, i64 noundef %2, i64 %3) unnamed_addr #1 align 2 {
bb.a:
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE18CheckAllocatedAreaEPhlPKc(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.58)
  %.not.i = icmp eq ptr %1, @_ZN5arrow11memory_pool8internal14zero_size_areaE
  br i1 %.not.i, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE17DeallocateAlignedEPhll.exit, label %_ZN5arrow12_GLOBAL__N_117MimallocAllocator17DeallocateAlignedEPhll.exit.i

_ZN5arrow12_GLOBAL__N_117MimallocAllocator17DeallocateAlignedEPhll.exit.i: ; preds = %bb.a
  tail call void @mi_free(ptr noundef %1) #30
  br label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE17DeallocateAlignedEPhll.exit

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE17DeallocateAlignedEPhll.exit: ; preds = %bb.a, %_ZN5arrow12_GLOBAL__N_117MimallocAllocator17DeallocateAlignedEPhll.exit.i
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = atomicrmw sub ptr %i.a, i64 %2 acq_rel, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_17MimallocAllocatorEEEE13ReleaseUnusedEv(ptr nofree nonnull readnone align 64 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @mi_collect(i1 noundef zeroext true) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_17MimallocAllocatorEEEE10PrintStatsEv(ptr nofree nonnull readnone align 64 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @mi_stats_print_out(ptr noundef null, ptr noundef null) #30
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_17MimallocAllocatorEEEE15bytes_allocatedEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_17MimallocAllocatorEEEE10max_memoryEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i64, ptr %i.a acquire, align 64
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_17MimallocAllocatorEEEE21total_bytes_allocatedEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load atomic i64, ptr %i.a acquire, align 16
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK5arrow18BaseMemoryPoolImplINS_12_GLOBAL__N_114DebugAllocatorINS1_17MimallocAllocatorEEEE15num_allocationsEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow23MimallocDebugMemoryPool12backend_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 64 dereferenceable(128) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !105
  store i64 7165064744916576621, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.b, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.c, align 8, !tbaa !41
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc range(i16 0, 512) i16 @"_ZZN5arrow12_GLOBAL__N_119UserSelectedBackendEvENK3$_0clEv"() unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::vector", align 8       ; 13 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.arrow::util::ArrowLog", align 8 ; 34 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !11, !align !323
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !11, !align !323
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(30) %1) #30
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(30) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA30_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA30_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !11, !align !323
  %i.f = load i64, ptr %2, align 8, !tbaa !116
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !352
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !352
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !314, !noalias !352, !nonnull !11, !align !323
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %2) #30, !noalias !352
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(22) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !352 ; 0 uses

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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !352
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !352
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !41
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
define internal fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE15AllocateAlignedEllPPh(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @_ZN5arrow11memory_pool8internal14zero_size_areaE, ptr %3, align 8, !tbaa !104
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %7 = icmp samesign ugt i64 %1, 9223372036854775799
  br i1 %7, label %bb.d, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.thread, !prof !39

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !355
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 1, ptr noundef nonnull align 1 dereferenceable(33) @.str.53), !noalias !355
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %i.b = load ptr, ptr %4, align 8, !tbaa !20, !noalias !355 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit, label %bb.e, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !27, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.thread: ; preds = %bb.c
  %8 = add nuw nsw i64 %1, 8                      ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !20, !alias.scope !355
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %8, ptr %i.f, align 8, !tbaa !116, !alias.scope !355
  br label %bb.i

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !355
  %.pr = load ptr, ptr %5, align 8, !tbaa !20
  %i.g = icmp eq ptr %.pr, null
  br i1 %i.g, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit._crit_edge, label %bb.g, !prof !127

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit._crit_edge: ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !116
  br label %bb.i

bb.g:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit
  store ptr null, ptr %0, align 8, !tbaa !20
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit._crit_edge, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.thread
  %i.i = phi i64 [ %.pre, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit._crit_edge ], [ %8, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115SystemAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias writable align 8 %6, i64 noundef %i.i, i64 noundef %2, ptr noundef %3)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.j

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.i
  %i.j = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit31, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.m

_ZN5arrow6StatusD2Ev.exit31:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.m = load ptr, ptr %3, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %1
  %i.o = xor i64 %1, -1738363128204640648
  store i64 %i.o, ptr %i.n, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_ZN5arrow6StatusD2Ev.exit31, %_ZN5arrow6StatusD2Ev.exit
  %i.p = phi i1 [ false, %_ZN5arrow6StatusD2Ev.exit ], [ true, %_ZN5arrow6StatusD2Ev.exit31 ], [ false, %bb.g ]
  %i.q = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.q, null
  br i1 %.not.i.i32, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.k, !prof !26

bb.k:                                             ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27, !range !10, !noundef !11
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %.critedge, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.p, label %bb.p, label %bb.q

bb.m:                                             ; preds = %bb.j, %bb.h
  %.pn26 = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.l, %bb.j ]
  %i.u = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.u, null
  br i1 %.not.i.i34, label %_ZN5arrow6ResultIlED2Ev.exit36, label %bb.n, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !27, !range !10, !noundef !11
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5arrow6ResultIlED2Ev.exit36, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit36

_ZN5arrow6ResultIlED2Ev.exit36:                   ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn26

bb.p:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !20, !alias.scope !358
  br label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(33) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !361
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !361
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !314, !noalias !361, !nonnull !11, !align !323
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(33) %2) #30, !noalias !361
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(33) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !361 ; 0 uses

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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !361
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !361
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !41
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE18CheckAllocatedAreaEPhlPKc(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 9 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !116
  store ptr %2, ptr %i.b, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.d = getelementptr inbounds i8, ptr %0, i64 %1
  %i.e = load i64, ptr %i.d, align 1
  %i.f = xor i64 %i.e, -1738363128204640648       ; 2 uses
  store i64 %i.f, ptr %i.c, align 8, !tbaa !116
  %.not = icmp eq i64 %i.f, %1
  br i1 %.not, label %bb.i, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5arrow6Status7InvalidIJRA15_KcRPS2_RA16_S2_RlRA17_S2_S9_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(15) @.str.55, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) @.str.56, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.57, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call fastcc void @_ZN5arrow12_GLOBAL__N_110DebugState8InstanceEv()
  %i.g = load i64, ptr %i.a, align 8, !tbaa !116
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_110DebugState6InvokeEPhlRKNS_6StatusE(ptr noundef nonnull %0, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !27, !range !10, !noundef !11
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
  %i.m = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %.not.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i3, label %_ZN5arrow6StatusD2Ev.exit4, label %bb.g, !prof !26

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !27, !range !10, !noundef !11
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

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA15_KcRPS2_RA16_S2_RlRA17_S2_S9_EEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !364
  call void @_ZN5arrow8internal12JoinToStringIJRA15_KcRPS2_RA16_S2_RlRA17_S2_S9_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(8) %6), !noalias !364
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %7, align 8, !tbaa !40, !noalias !364 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA15_KcRPS2_RA16_S2_RlRA17_S2_S9_EEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !41, !noalias !364
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #32
  br label %_ZN5arrow6Status8FromArgsIJRA15_KcRPS2_RA16_S2_RlRA17_S2_S9_EEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %7, align 8, !tbaa !40, !noalias !364 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41, !noalias !364
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !364
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA15_KcRPS2_RA16_S2_RlRA17_S2_S9_EEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !364
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_110DebugState6InvokeEPhlRKNS_6StatusE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance) #30 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow12_GLOBAL__N_117MimallocAllocator15AllocateAlignedEllPPh:bb.a
bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !40, !noalias !372 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !41, !noalias !372
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !372
  resume { ptr, i32 } %i.j

_ZN5arrow6Status11OutOfMemoryIJRA16_KcRlRA8_S2_EEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !372
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !20, !alias.scope !377
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5arrow6Status11OutOfMemoryIJRA16_KcRlRA8_S2_EEES0_DpOT_.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare noalias ptr @mi_malloc_aligned(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_117MimallocAllocator17ReallocateAlignedElllPPh(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !116
  %i.b = load ptr, ptr %3, align 8, !tbaa !104    ; 4 uses
  %i.c = icmp eq ptr %i.b, @_ZN5arrow11memory_pool8internal14zero_size_areaE
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_117MimallocAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias writable align 8 %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %3)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_ZN5arrow12_GLOBAL__N_117MimallocAllocator17DeallocateAlignedEPhll.exit, label %bb.d

_ZN5arrow12_GLOBAL__N_117MimallocAllocator17DeallocateAlignedEPhll.exit: ; preds = %bb.c
  tail call void @mi_free(ptr noundef %i.b) #30
  store ptr @_ZN5arrow11memory_pool8internal14zero_size_areaE, ptr %3, align 8, !tbaa !104
  store ptr null, ptr %0, align 8, !tbaa !20, !alias.scope !380
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @mi_realloc_aligned(ptr noundef %i.b, i64 noundef %1, i64 noundef %2) #30 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !104
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr %i.b, ptr %3, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !383
  call void @_ZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(17) @.str.59, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.47), !noalias !383
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %4, align 8, !tbaa !40, !noalias !383 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN5arrow6Status11OutOfMemoryIJRA17_KcRlRA8_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41, !noalias !383
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZN5arrow6Status11OutOfMemoryIJRA17_KcRlRA8_S2_EEES0_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !40, !noalias !383 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !41, !noalias !383
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !383
  resume { ptr, i32 } %i.l

_ZN5arrow6Status11OutOfMemoryIJRA17_KcRlRA8_S2_EEES0_DpOT_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !383
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !20, !alias.scope !388
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5arrow6Status11OutOfMemoryIJRA17_KcRlRA8_S2_EEES0_DpOT_.exit, %_ZN5arrow12_GLOBAL__N_117MimallocAllocator17DeallocateAlignedEPhll.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare ptr @mi_realloc_aligned(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @mi_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(8) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !11, !align !323
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(17) %1) #30
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !11, !align !323
  %i.f = load i64, ptr %2, align 8, !tbaa !116
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !11, !align !323
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(8) %3) #30
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(8) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRlRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn9
}

; Function Attrs: nounwind
declare void @mi_collect(i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @mi_stats_print_out(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE15AllocateAlignedEllPPh(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @_ZN5arrow11memory_pool8internal14zero_size_areaE, ptr %3, align 8, !tbaa !104
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %7 = icmp samesign ugt i64 %1, 9223372036854775799
  br i1 %7, label %bb.d, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.thread, !prof !39

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !391
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 1, ptr noundef nonnull align 1 dereferenceable(33) @.str.53), !noalias !391
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %i.b = load ptr, ptr %4, align 8, !tbaa !20, !noalias !391 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit, label %bb.e, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !27, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.thread: ; preds = %bb.c
  %8 = add nuw nsw i64 %1, 8                      ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !20, !alias.scope !391
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %8, ptr %i.f, align 8, !tbaa !116, !alias.scope !391
  br label %bb.i

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !391
  %.pr = load ptr, ptr %5, align 8, !tbaa !20
  %i.g = icmp eq ptr %.pr, null
  br i1 %i.g, label %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit._crit_edge, label %bb.g, !prof !127

_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit._crit_edge: ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !116
  br label %bb.i

bb.g:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit
  store ptr null, ptr %0, align 8, !tbaa !20
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit._crit_edge, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.thread
  %i.i = phi i64 [ %.pre, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit._crit_edge ], [ %8, %_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_17MimallocAllocatorEE7RawSizeEl.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_117MimallocAllocator15AllocateAlignedEllPPh(ptr dead_on_unwind noalias writable align 8 %6, i64 noundef %i.i, i64 noundef %2, ptr noundef %3)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.j

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.i
  %i.j = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit30, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.m

_ZN5arrow6StatusD2Ev.exit30:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.m = load ptr, ptr %3, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %1
  %i.o = xor i64 %1, -1738363128204640648
  store i64 %i.o, ptr %i.n, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_ZN5arrow6StatusD2Ev.exit30, %_ZN5arrow6StatusD2Ev.exit
  %i.p = phi i1 [ false, %_ZN5arrow6StatusD2Ev.exit ], [ true, %_ZN5arrow6StatusD2Ev.exit30 ], [ false, %bb.g ]
  %i.q = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.q, null
  br i1 %.not.i.i31, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.k, !prof !26

bb.k:                                             ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27, !range !10, !noundef !11
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %.critedge, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.p, label %bb.p, label %bb.q

bb.m:                                             ; preds = %bb.j, %bb.h
  %.pn25 = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.l, %bb.j ]
  %i.u = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.u, null
  br i1 %.not.i.i33, label %_ZN5arrow6ResultIlED2Ev.exit35, label %bb.n, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !27, !range !10, !noundef !11
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5arrow6ResultIlED2Ev.exit35, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  br label %_ZN5arrow6ResultIlED2Ev.exit35

_ZN5arrow6ResultIlED2Ev.exit35:                   ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn25

bb.p:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !20, !alias.scope !394
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
  store i64 %1, ptr %i.a, align 8, !tbaa !116
  store ptr %2, ptr %i.b, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.d = getelementptr inbounds i8, ptr %0, i64 %1
  %i.e = load i64, ptr %i.d, align 1
  %i.f = xor i64 %i.e, -1738363128204640648       ; 2 uses
  store i64 %i.f, ptr %i.c, align 8, !tbaa !116
  %.not = icmp eq i64 %i.f, %1
  br i1 %.not, label %bb.i, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5arrow6Status7InvalidIJRA15_KcRPS2_RA16_S2_RlRA17_S2_S9_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(15) @.str.55, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) @.str.56, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.57, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call fastcc void @_ZN5arrow12_GLOBAL__N_110DebugState8InstanceEv()
  %i.g = load i64, ptr %i.a, align 8, !tbaa !116
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_110DebugState6InvokeEPhlRKNS_6StatusE(ptr noundef nonnull %0, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !27, !range !10, !noundef !11
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
  %i.m = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %.not.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i3, label %_ZN5arrow6StatusD2Ev.exit4, label %bb.g, !prof !26

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !27, !range !10, !noundef !11
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
define internal void @_GLOBAL__sub_I_memory_pool.cc() #25 section ".text.startup" {
bb.a:
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11GlobalStateD2Ev, ptr nonnull @_ZN5arrowL12global_stateE, ptr nonnull @__dso_handle) #30 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #29

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
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { noreturn }
attributes #35 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !9, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !6, i64 0}
!14 = distinct !{null}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !17, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSN5arrow12_GLOBAL__N_116SupportedBackendE", !17, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSN5arrow6StatusE", !22, i64 0}
!22 = !{!"p1 _ZTSN5arrow6Status5StateE", !17, i64 0}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN5arrow6Status2OKEv: argument 0"}
!25 = distinct !{!25, !"_ZN5arrow6Status2OKEv"}
!26 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!27 = !{!28, !9, i64 1}
!28 = !{!"_ZTSN5arrow6Status5StateE", !29, i64 0, !9, i64 1, !30, i64 8, !34, i64 40}
!29 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !33, i64 8, !5, i64 16}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !32, i64 0}
!32 = !{!"p1 omnipotent char", !17, i64 0}
!33 = !{!"long", !5, i64 0}
!34 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !35, i64 0}
!35 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !37, i64 8}
!36 = !{!"p1 _ZTSN5arrow12StatusDetailE", !17, i64 0}
!37 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !38, i64 0}
!38 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!39 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!40 = !{!30, !32, i64 0}
!41 = !{!5, !5, i64 0}
!42 = !{!43, !16, i64 8}
!43 = !{!"_ZTSN5arrow17LoggingMemoryPoolE", !44, i64 0, !16, i64 8}
!44 = !{!"_ZTSN5arrow10MemoryPoolE"}
!45 = !{!46, !57, i64 240}
!46 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !47, i64 0, !55, i64 216, !5, i64 224, !9, i64 225, !56, i64 232, !57, i64 240, !58, i64 248, !59, i64 256}
!47 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !48, i64 24, !49, i64 28, !49, i64 32, !50, i64 40, !51, i64 48, !5, i64 64, !4, i64 192, !52, i64 200, !53, i64 208}
!48 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!49 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!50 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!51 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !33, i64 8}
!52 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!53 = !{!"_ZTSSt6locale", !54, i64 0}
!54 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!55 = !{!"p1 _ZTSSo", !17, i64 0}
!56 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!57 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!58 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!59 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!60 = !{!61, !5, i64 56}
!61 = !{!"_ZTSSt5ctypeIcE", !62, i64 0, !63, i64 16, !9, i64 24, !64, i64 32, !64, i64 40, !65, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!62 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!63 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!64 = !{!"p1 int", !17, i64 0}
!65 = !{!"p1 short", !17, i64 0}
!66 = distinct !{null, null}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN5arrow10MemoryPool10ReallocateEllPPh: argument 0"}
!69 = distinct !{!69, !"_ZN5arrow10MemoryPool10ReallocateEllPPh"}
!70 = distinct !{null}
!71 = distinct !{null, null, null, null}
!72 = !{!73, !74, i64 0}
!73 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow15ProxyMemoryPool19ProxyMemoryPoolImplELb0EE", !74, i64 0}
!74 = !{!"p1 _ZTSN5arrow15ProxyMemoryPool19ProxyMemoryPoolImplE", !17, i64 0}
!75 = !{!76, !16, i64 0}
!76 = !{!"_ZTSN5arrow15ProxyMemoryPool19ProxyMemoryPoolImplE", !16, i64 0, !77, i64 64}
!77 = !{!"_ZTSN5arrow8internal15MemoryPoolStatsE", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24}
!78 = !{!"_ZTSSt6atomicIlE", !79, i64 0}
!79 = !{!"_ZTSSt13__atomic_baseIlE", !33, i64 0}
!80 = !{!74, !74, i64 0}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN5arrow15ProxyMemoryPool19ProxyMemoryPoolImpl8AllocateEllPPh: argument 0"}
!83 = distinct !{!83, !"_ZN5arrow15ProxyMemoryPool19ProxyMemoryPoolImpl8AllocateEllPPh"}
!84 = distinct !{null}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!88, !82}
!88 = distinct !{!88, !89, !"_ZN5arrow6Status2OKEv: argument 0"}
!89 = distinct !{!89, !"_ZN5arrow6Status2OKEv"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN5arrow15ProxyMemoryPool19ProxyMemoryPoolImpl10ReallocateElllPPh: argument 0"}
!92 = distinct !{!92, !"_ZN5arrow15ProxyMemoryPool19ProxyMemoryPoolImpl10ReallocateElllPPh"}
!93 = distinct !{null}
!94 = !{!95, !91}
!95 = distinct !{!95, !96, !"_ZN5arrow6Status2OKEv: argument 0"}
!96 = distinct !{!96, !"_ZN5arrow6Status2OKEv"}
!97 = distinct !{null}
!98 = distinct !{null}
!99 = distinct !{null}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNK5arrow15ProxyMemoryPool19ProxyMemoryPoolImpl12backend_nameB5cxx11Ev: argument 0"}
!102 = distinct !{!102, !"_ZNK5arrow15ProxyMemoryPool19ProxyMemoryPoolImpl12backend_nameB5cxx11Ev"}
!103 = distinct !{null}
!104 = !{!32, !32, i64 0}
!105 = !{!31, !32, i64 0}
!106 = !{!30, !33, i64 8}
!107 = !{!108, !109, i64 8}
!108 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!109 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!110 = !{!108, !109, i64 16}
!111 = !{!108, !109, i64 0}
!112 = distinct !{!112, !86}
!113 = !{!114, !16, i64 8}
!114 = !{!"_ZTSN5arrow16CappedMemoryPoolE", !44, i64 0, !16, i64 8, !33, i64 16}
!115 = !{!114, !33, i64 16}
!116 = !{!33, !33, i64 0}
!117 = !{!118, !120}
!118 = distinct !{!118, !119, !"_ZN5arrow6Status8FromArgsIJRA48_KcRKlRA22_S2_RlRA13_S2_S9_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!119 = distinct !{!119, !"_ZN5arrow6Status8FromArgsIJRA48_KcRKlRA22_S2_RlRA13_S2_S9_EEES0_NS_10StatusCodeEDpOT_"}
!120 = distinct !{!120, !121, !"_ZN5arrow6Status11OutOfMemoryIJRA48_KcRKlRA22_S2_RlRA13_S2_S9_EEES0_DpOT_: argument 0"}
!121 = distinct !{!121, !"_ZN5arrow6Status11OutOfMemoryIJRA48_KcRKlRA22_S2_RlRA13_S2_S9_EEES0_DpOT_"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN5arrow12_GLOBAL__N_116ResizePoolBufferISt10unique_ptrINS_6BufferESt14default_deleteIS3_EES2_INS_10PoolBufferES4_IS7_EEEENS_6ResultIT_EEOT0_l: argument 0"}
!124 = distinct !{!124, !"_ZN5arrow12_GLOBAL__N_116ResizePoolBufferISt10unique_ptrINS_6BufferESt14default_deleteIS3_EES2_INS_10PoolBufferES4_IS7_EEEENS_6ResultIT_EEOT0_l"}
!125 = !{!126, !126, i64 0}
!126 = !{!"p1 _ZTSN5arrow10PoolBufferE", !17, i64 0}
!127 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!128 = !{!129, !33, i64 32}
!129 = !{!"_ZTSN5arrow6BufferE", !9, i64 8, !9, i64 9, !32, i64 16, !33, i64 24, !33, i64 32, !130, i64 40, !131, i64 48, !134, i64 64}
!130 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!131 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !132, i64 0}
!132 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !133, i64 0, !37, i64 8}
!133 = !{!"p1 _ZTSN5arrow6BufferE", !17, i64 0}
!134 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !135, i64 0}
!135 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !136, i64 0, !37, i64 8}
!136 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !17, i64 0}
!137 = !{!129, !9, i64 9}
!138 = !{!129, !33, i64 24}
!139 = !{!140, !133, i64 0}
!140 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow6BufferELb0EE", !133, i64 0}
!141 = !{!142, !16, i64 80}
!142 = !{!"_ZTSN5arrow10PoolBufferE", !143, i64 0, !16, i64 80, !33, i64 88}
!143 = !{!"_ZTSN5arrow15ResizableBufferE", !144, i64 0}
!144 = !{!"_ZTSN5arrow13MutableBufferE", !129, i64 0}
!145 = !{!142, !33, i64 88}
!146 = !{!135, !136, i64 0}
!147 = !{!37, !38, i64 0}
!148 = !{!136, !136, i64 0}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZSt11make_uniqueIN5arrow10PoolBufferEJSt10shared_ptrINS0_13MemoryManagerEERPNS0_10MemoryPoolERlEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!151 = distinct !{!151, !"_ZSt11make_uniqueIN5arrow10PoolBufferEJSt10shared_ptrINS0_13MemoryManagerEERPNS0_10MemoryPoolERlEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!152 = !{!153, !4, i64 8}
!153 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!154 = !{!153, !4, i64 12}
!155 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!156 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZN5arrow12_GLOBAL__N_116ResizePoolBufferISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS3_EES2_INS_10PoolBufferES4_IS7_EEEENS_6ResultIT_EEOT0_l: argument 0"}
!159 = distinct !{!159, !"_ZN5arrow12_GLOBAL__N_116ResizePoolBufferISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS3_EES2_INS_10PoolBufferES4_IS7_EEEENS_6ResultIT_EEOT0_l"}
!160 = !{!161, !162, i64 0}
!161 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow15ResizableBufferELb0EE", !162, i64 0}
!162 = !{!"p1 _ZTSN5arrow15ResizableBufferE", !17, i64 0}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZN5arrow6Status2OKEv: argument 0"}
!165 = distinct !{!165, !"_ZN5arrow6Status2OKEv"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN5arrow12_GLOBAL__N_115SystemAllocator17ReallocateAlignedElllPPh: argument 0"}
!168 = distinct !{!168, !"_ZN5arrow12_GLOBAL__N_115SystemAllocator17ReallocateAlignedElllPPh"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZN5arrow6Status2OKEv: argument 0"}
!171 = distinct !{!171, !"_ZN5arrow6Status2OKEv"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN5arrow6Status2OKEv: argument 0"}
!174 = distinct !{!174, !"_ZN5arrow6Status2OKEv"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE17ReallocateAlignedElllPPh: argument 0"}
!177 = distinct !{!177, !"_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE17ReallocateAlignedElllPPh"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl: argument 0"}
!180 = distinct !{!180, !"_ZN5arrow12_GLOBAL__N_114DebugAllocatorINS0_15SystemAllocatorEE7RawSizeEl"}
!181 = !{!179, !176}
!182 = !{!183, !176}
!183 = distinct !{!183, !184, !"_ZN5arrow12_GLOBAL__N_115SystemAllocator17ReallocateAlignedElllPPh: argument 0"}
!184 = distinct !{!184, !"_ZN5arrow12_GLOBAL__N_115SystemAllocator17ReallocateAlignedElllPPh"}
!185 = !{!186, !176}
!186 = distinct !{!186, !187, !"_ZN5arrow6Status2OKEv: argument 0"}
!187 = distinct !{!187, !"_ZN5arrow6Status2OKEv"}
!188 = !{!189}
end_hunk_3
