Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLJIT?download=true
inline.NumInlined: 6788
inline.NumDeleted: 3834
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4llvm3orc16ThreadSafeModuleD2Ev:bb.a
bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !204
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN4llvm3orc17ThreadSafeContextD2Ev.exit, !prof !171

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26
  br label %_ZN4llvm3orc17ThreadSafeContextD2Ev.exit

_ZN4llvm3orc17ThreadSafeContextD2Ev.exit:         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !511    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i: ; preds = %_ZN4llvm3orc17ThreadSafeContextD2Ev.exit
  call void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288) %i.s) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 1288) #29
  br label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm3orc17ThreadSafeContextD2Ev.exit, %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc5LLJIT11addIRModuleERNS0_8JITDylibENS0_16ThreadSafeModuleE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %5 = alloca %"class.llvm::orc::ThreadSafeModule", align 8 ; 4 uses
  call void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(272) %2) #26
  %i.a = load i64, ptr %3, align 8, !tbaa !511
  store i64 %i.a, ptr %5, align 8, !tbaa !511
  store ptr null, ptr %3, align 8, !tbaa !511
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !180
  store ptr null, ptr %i.d, align 8, !tbaa !399
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !180
  store ptr null, ptr %i.c, align 8, !tbaa !502
  call void @_ZN4llvm3orc5LLJIT11addIRModuleENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEENS0_16ThreadSafeModuleE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull align 8 dereferenceable(24) %5)
  call void @_ZN4llvm3orc16ThreadSafeModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  %i.f = load ptr, ptr %4, align 8, !tbaa !514    ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.f) #26
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i64 noundef 16) #29
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8, ptr noundef nonnull align 8 dereferenceable(272)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc5LLJIT13addObjectFileENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS6_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1096) %1, ptr nofree noundef align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %5 = alloca %"class.std::unique_ptr.301", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !445
  %i.c = load ptr, ptr %2, align 8, !tbaa !514
  store ptr %i.c, ptr %4, align 8, !tbaa !514
  store ptr null, ptr %2, align 8, !tbaa !514
  %i.d = load i64, ptr %3, align 8, !tbaa !485
  store i64 %i.d, ptr %5, align 8, !tbaa !485
  store ptr null, ptr %3, align 8, !tbaa !485
  call void @_ZN4llvm3orc11ObjectLayer3addENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS6_EE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.e = load ptr, ptr %5, align 8, !tbaa !485    ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i: ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #26, !inline_history !493
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i
  %i.i = load ptr, ptr %4, align 8, !tbaa !514    ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.j, 1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.i) #26
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.i, i64 noundef 16) #29
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %bb.b, %bb.c
  ret void
}

declare void @_ZN4llvm3orc11ObjectLayer3addENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS6_EE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr nofree noundef align 8 dereferenceable(8), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc5LLJIT13addObjectFileERNS0_8JITDylibESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %5 = alloca %"class.std::unique_ptr.301", align 8 ; 5 uses
  %6 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 4 uses
  call void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(272) %2) #26
  %i.a = load i64, ptr %3, align 8, !tbaa !485
  store ptr null, ptr %3, align 8, !tbaa !485
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !445, !noalias !519
  %i.d = load ptr, ptr %6, align 8, !tbaa !514, !noalias !519
  store ptr %i.d, ptr %4, align 8, !tbaa !514, !noalias !519
  store ptr null, ptr %6, align 8, !tbaa !514, !noalias !519
  store i64 %i.a, ptr %5, align 8, !tbaa !485, !noalias !519
  call void @_ZN4llvm3orc11ObjectLayer3addENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS6_EE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.e = load ptr, ptr %5, align 8, !tbaa !485, !noalias !519 ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #26, !inline_history !522
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i, %bb.a
  %i.i = load ptr, ptr %4, align 8, !tbaa !514, !noalias !519 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i = icmp eq i32 %i.j, 1
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.i) #26
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.i, i64 noundef 16) #29
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %bb.b, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.k = load ptr, ptr %6, align 8, !tbaa !514    ; 4 uses
  %.not.i.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i2, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.l, 1
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.k) #26
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.k, i64 noundef 16) #29
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc5LLJIT19lookupLinkerMangledERNS0_8JITDylibENS0_15SymbolStringPtrE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.350") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i:
  %4 = alloca %"class.llvm::Expected", align 8    ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 7 uses
  %6 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28, !noalias !523 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %2, ptr %i.d, align 8, !noalias !523
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !523
  store ptr %i.f, ptr %i.e, align 8, !tbaa !168, !alias.scope !523
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !523
  store ptr %i.d, ptr %5, align 8, !alias.scope !523
  %7 = load ptr, ptr %3, align 8, !tbaa !185      ; 3 uses
  store ptr %7, ptr %6, align 8, !tbaa !185
  %i.g = ptrtoint ptr %7 to i64
  %notsub.i.i.i = add i64 %i.g, -1
  %i.h = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.h, label %bb.a, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

bb.a:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit:       ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i, %bb.a
  call void @_ZN4llvm3orc16ExecutionSession6lookupERKSt6vectorISt4pairIPNS0_8JITDylibENS0_19JITDylibLookupFlagsEESaIS7_EENS0_15SymbolStringPtrENS0_11SymbolStateE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %4, ptr noundef nonnull align 8 dereferenceable(392) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, i8 noundef zeroext 63) #26
  %i.k = load ptr, ptr %6, align 8, !tbaa !185    ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %notsub.i.i.i2 = add i64 %i.l, -1
  %i.m = icmp ult i64 %notsub.i.i.i2, -32
  br i1 %i.m, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.b:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = atomicrmw sub ptr %i.n, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit, %bb.b
  %i.p = load ptr, ptr %5, align 8, !tbaa !170    ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #29
  br label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = load i8, ptr %i.u, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8
  %i.z = and i8 %i.y, -2
  store i8 %i.z, ptr %i.x, align 8
  %i.aa = load i64, ptr %4, align 8
  br label %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit
  %i.ab = load i64, ptr %4, align 8, !tbaa !205, !noalias !526
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = or i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ac, align 8
  br label %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit

_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit: ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %i.ab, %bb.e ], [ %i.aa, %bb.d ]
  %.pre19 = inttoptr i64 %.sink to ptr
  store ptr %.pre19, ptr %0, align 8, !tbaa !229
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc5LLJIT19createMemoryManagerERNS0_17LLJITBuilderStateERNS0_16ExecutionSessionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.353") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1782) %1, ptr noundef nonnull align 8 dereferenceable(392) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411
  %.not.i.i.not = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_7jitlink20JITLinkMemoryManagerESt14default_deleteIS4_EEEERNS0_3orc16ExecutionSessionEEEclESB_.exit

_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_7jitlink20JITLinkMemoryManagerESt14default_deleteIS4_EEEERNS0_3orc16ExecutionSessionEEEclESB_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1592
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !529, !noalias !530
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.llvm::Expected.353") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(392) %2) #26, !inline_history !533
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !190  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !206
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.llvm::Expected.353") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %i.g) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_7jitlink20JITLinkMemoryManagerESt14default_deleteIS4_EEEERNS0_3orc16ExecutionSessionEEEclESB_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc5LLJIT24createObjectLinkingLayerERNS0_17LLJITBuilderStateERNS0_16ExecutionSessionERNS_7jitlink20JITLinkMemoryManagerE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.358") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1782) %1, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::unique_function.372", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411
  %.not.i.i.not = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_3orc11ObjectLayerESt14default_deleteIS4_EEEERNS3_16ExecutionSessionERNS0_7jitlink20JITLinkMemoryManagerEEEclESA_SD_.exit

_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_3orc11ObjectLayerESt14default_deleteIS4_EEEERNS3_16ExecutionSessionERNS0_7jitlink20JITLinkMemoryManagerEEEclESA_SD_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !534, !noalias !535
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.llvm::Expected.358") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #26, !inline_history !538
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.f = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #28, !noalias !539 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 0, ptr %i.h, align 8, !noalias !539
  store ptr @"_ZZN4llvm6detail18UniqueFunctionBaseISt10unique_ptrINS_11RuntimeDyld13MemoryManagerESt14default_deleteIS4_EEJRKNS_12MemoryBufferEEEC1IZNS_3orc5LLJIT24createObjectLinkingLayerERNSD_17LLJITBuilderStateERNSD_16ExecutionSessionERNS_7jitlink20JITLinkMemoryManagerEE3$_0SM_EET_NSB_8CalledAsIT0_EEENUlPKSB_SA_E_8__invokeESS_SA_", ptr %i.g, align 8, !tbaa !542, !noalias !539
  call void @_ZN4llvm3orc24RTDyldObjectLinkingLayerC1ERNS0_16ExecutionSessionENS_15unique_functionIFSt10unique_ptrINS_11RuntimeDyld13MemoryManagerESt14default_deleteIS7_EERKNS_12MemoryBufferEEEE(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr nofree noundef nonnull align 8 dereferenceable(40) %4) #26, !noalias !539
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !544, !noalias !539 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.i, null
  br i1 %.not.i.i10, label %"_ZSt11make_uniqueIN4llvm3orc24RTDyldObjectLinkingLayerEJRNS1_16ExecutionSessionEZNS1_5LLJIT24createObjectLinkingLayerERNS1_17LLJITBuilderStateES4_RNS0_7jitlink20JITLinkMemoryManagerEE3$_0EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void %i.i(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %4) #26, !noalias !539, !inline_history !545
  br label %"_ZSt11make_uniqueIN4llvm3orc24RTDyldObjectLinkingLayerEJRNS1_16ExecutionSessionEZNS1_5LLJIT24createObjectLinkingLayerERNS1_17LLJITBuilderStateES4_RNS0_7jitlink20JITLinkMemoryManagerEE3$_0EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit"

"_ZSt11make_uniqueIN4llvm3orc24RTDyldObjectLinkingLayerEJRNS1_16ExecutionSessionEZNS1_5LLJIT24createObjectLinkingLayerERNS1_17LLJITBuilderStateES4_RNS0_7jitlink20JITLinkMemoryManagerEE3$_0EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !413
  switch i32 %i.k, label %_ZNSt10unique_ptrIN4llvm3orc24RTDyldObjectLinkingLayerESt14default_deleteIS2_EED2Ev.exit [
    i32 1, label %.thread
    i32 3, label %bb.d
  ]

.thread:                                          ; preds = %"_ZSt11make_uniqueIN4llvm3orc24RTDyldObjectLinkingLayerEJRNS1_16ExecutionSessionEZNS1_5LLJIT24createObjectLinkingLayerERNS1_17LLJITBuilderStateES4_RNS0_7jitlink20JITLinkMemoryManagerEE3$_0EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit"
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 169
  store i8 1, ptr %i.l, align 1, !tbaa !546
  br label %_ZNSt10unique_ptrIN4llvm3orc24RTDyldObjectLinkingLayerESt14default_deleteIS2_EED2Ev.exit.sink.split

bb.d:                                             ; preds = %"_ZSt11make_uniqueIN4llvm3orc24RTDyldObjectLinkingLayerEJRNS1_16ExecutionSessionEZNS1_5LLJIT24createObjectLinkingLayerERNS1_17LLJITBuilderStateES4_RNS0_7jitlink20JITLinkMemoryManagerEE3$_0EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit"
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !412
  %.off = add i32 %i.n, -23
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %_ZNSt10unique_ptrIN4llvm3orc24RTDyldObjectLinkingLayerESt14default_deleteIS2_EED2Ev.exit.sink.split, label %_ZNSt10unique_ptrIN4llvm3orc24RTDyldObjectLinkingLayerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3orc24RTDyldObjectLinkingLayerESt14default_deleteIS2_EED2Ev.exit.sink.split: ; preds = %bb.d, %.thread
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 170
  store i8 1, ptr %i.o, align 2, !tbaa !563
  br label %_ZNSt10unique_ptrIN4llvm3orc24RTDyldObjectLinkingLayerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3orc24RTDyldObjectLinkingLayerESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm3orc24RTDyldObjectLinkingLayerESt14default_deleteIS2_EED2Ev.exit.sink.split, %bb.d, %"_ZSt11make_uniqueIN4llvm3orc24RTDyldObjectLinkingLayerEJRNS1_16ExecutionSessionEZNS1_5LLJIT24createObjectLinkingLayerERNS1_17LLJITBuilderStateES4_RNS0_7jitlink20JITLinkMemoryManagerEE3$_0EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, -2
  store i8 %i.r, ptr %i.p, align 8
  %i.s = ptrtoint ptr %i.f to i64
  store i64 %i.s, ptr %0, align 8, !tbaa !447
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4llvm3orc24RTDyldObjectLinkingLayerESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_3orc11ObjectLayerESt14default_deleteIS4_EEEERNS3_16ExecutionSessionERNS0_7jitlink20JITLinkMemoryManagerEEEclESA_SD_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc5LLJIT21createCompileFunctionERNS0_17LLJITBuilderStateENS0_23JITTargetMachineBuilderE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.386") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1782) %1, ptr nofree noundef align 8 dereferenceable(576) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.407", align 8 ; 5 uses
  %4 = alloca %"class.llvm::orc::JITTargetMachineBuilder", align 8 ; 5 uses
  %5 = alloca %"class.llvm::orc::JITTargetMachineBuilder", align 8 ; 3 uses
  %6 = alloca %"class.llvm::Expected.405", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !411
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm3orc23JITTargetMachineBuilderC2EOS1_(ptr noundef nonnull align 8 dereferenceable(572) %5, ptr noundef nonnull align 8 dereferenceable(572) %2) #26
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !411, !noalias !564
  %.not.i.i3 = icmp eq ptr %i.d, null
  br i1 %.not.i.i3, label %bb.c, label %_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_3orc14IRCompileLayer10IRCompilerESt14default_deleteIS5_EEEENS3_23JITTargetMachineBuilderEEEclESA_.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZSt25__throw_bad_function_callv() #27, !noalias !564
  unreachable

_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_3orc14IRCompileLayer10IRCompilerESt14default_deleteIS5_EEEENS3_23JITTargetMachineBuilderEEEclESA_.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !567, !noalias !564
  call void %i.f(ptr dead_on_unwind writable sret(%"class.llvm::Expected.386") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(576) %5) #26, !inline_history !568
  call void @_ZN4llvm3orc23JITTargetMachineBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(572) dereferenceable(572) %5) #26
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1780
  %i.h = load i8, ptr %i.g, align 4, !tbaa !365, !range !177, !noundef !21
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNSt10unique_ptrIN4llvm3orc20ConcurrentIRCompilerESt14default_deleteIS2_EED2Ev.exit, label %bb.e

_ZNSt10unique_ptrIN4llvm3orc20ConcurrentIRCompilerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.j = tail call noalias noundef nonnull dereferenceable(600) ptr @_Znwm(i64 noundef 600) #28, !noalias !569 ; 2 uses
  call void @_ZN4llvm3orc23JITTargetMachineBuilderC2EOS1_(ptr noundef nonnull align 8 dereferenceable(572) %4, ptr noundef nonnull align 8 dereferenceable(572) %2) #26, !noalias !569
  call void @_ZN4llvm3orc20ConcurrentIRCompilerC1ENS0_23JITTargetMachineBuilderEPNS_11ObjectCacheE(ptr noundef nonnull align 8 dereferenceable(600) %i.j, ptr nofree noundef nonnull align 8 dereferenceable(576) %4, ptr noundef null) #26, !noalias !569
end_hunk_0
