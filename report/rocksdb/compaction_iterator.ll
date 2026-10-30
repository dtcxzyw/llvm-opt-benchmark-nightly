Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_iterator?download=true
inline.NumInlined: 2880
inline.NumDeleted: 1272
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@__cxx_global_array_dtor.27:bb.a
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #29
  br label %_ZN7rocksdb9StateInfoD2Ev.exit

_ZN7rocksdb9StateInfoD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 8), align 8, !tbaa !39 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 24)
  br i1 %i.f, label %_ZN7rocksdb9StateInfoD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb9StateInfoD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 24), align 8, !tbaa !40
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #29
  br label %_ZN7rocksdb9StateInfoD2Ev.exit.1

_ZN7rocksdb9StateInfoD2Ev.exit.1:                 ; preds = %_ZN7rocksdb9StateInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.35(ptr nofree readnone captures(none) %0) #2 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 208), align 16, !tbaa !39 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224)
  br i1 %i.b, label %_ZN7rocksdb17OperationPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), align 16, !tbaa !40
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit

_ZN7rocksdb17OperationPropertyD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 168), align 8, !tbaa !39 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184)
  br i1 %i.f, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), align 8, !tbaa !40
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1

_ZN7rocksdb17OperationPropertyD2Ev.exit.1:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 128), align 16, !tbaa !39 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144)
  br i1 %i.j, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), align 16, !tbaa !40
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2

_ZN7rocksdb17OperationPropertyD2Ev.exit.2:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !39 ; 2 uses
  %i.n = icmp eq ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104)
  br i1 %i.n, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.2
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), align 8, !tbaa !40
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.3

_ZN7rocksdb17OperationPropertyD2Ev.exit.3:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !39 ; 2 uses
  %i.r = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64)
  br i1 %i.r, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.3
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), align 16, !tbaa !40
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.4

_ZN7rocksdb17OperationPropertyD2Ev.exit.4:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 8), align 8, !tbaa !39 ; 2 uses
  %i.v = icmp eq ptr %i.u, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24)
  br i1 %i.v, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.4
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), align 8, !tbaa !40
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.5

_ZN7rocksdb17OperationPropertyD2Ev.exit.5:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.38(ptr nofree readnone captures(none) %0) #2 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 88), align 8, !tbaa !39 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 104)
  br i1 %i.b, label %_ZN7rocksdb17OperationPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 104), align 8, !tbaa !40
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit

_ZN7rocksdb17OperationPropertyD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 48), align 16, !tbaa !39 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 64)
  br i1 %i.f, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 64), align 16, !tbaa !40
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1

_ZN7rocksdb17OperationPropertyD2Ev.exit.1:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 8), align 8, !tbaa !39 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 24)
  br i1 %i.j, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 24), align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2

_ZN7rocksdb17OperationPropertyD2Ev.exit.2:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7rocksdb22CompactionBlobResolver4InitEPNS_11BlobFetcherEPNS_24PrefetchBufferCollectionEPNS_24CompactionIterationStatsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((40, 64)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.b, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %3, ptr %i.c, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb22CompactionBlobResolver5ResetERKNS_5SliceEPKSt6vectorINS_10WideColumnESaIS5_EEPKS4_ISt4pairImNS_9BlobIndexEESaISC_EEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) initializes((8, 40), (64, 65)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.d, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.a, ptr %i.e, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71   ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.r) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 96) #29
  br label %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !69
  br label %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE5clearEv.exit

_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !73, !range !74, !noundef !75
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 8, !tbaa !73
  br i1 %i.v, label %bb.c, label %_ZNSt8optionalIN7rocksdb6StatusEE5resetEv.exit

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE5clearEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8optionalIN7rocksdb6StatusEE5resetEv.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #29
  br label %_ZNSt8optionalIN7rocksdb6StatusEE5resetEv.exit

_ZNSt8optionalIN7rocksdb6StatusEE5resetEv.exit:   ; preds = %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE5clearEv.exit, %bb.c, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb22CompactionBlobResolver13ResolveColumnEmPNS_5SliceE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.rocksdb::Status", align 8   ; 11 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 11 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::unique_ptr.17", align 8 ; 7 uses
  %11 = alloca %"class.rocksdb::Status", align 8  ; 13 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.c, align 8, !tbaa !77, !alias.scope !626
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !626
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 5
  %.not = icmp ult i64 %2, %i.m
  br i1 %.not, label %bb.c, label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr @.str.39, ptr %5, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 26, ptr %i.n, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr @.str, ptr %6, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !27
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  %.not.i = icmp eq ptr %0, %4
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit
  %i.p = load <4 x i8>, ptr %4, align 8, !tbaa !40
  %i.q = load i8, ptr %4, align 8, !tbaa !627
  store <4 x i8> %i.p, ptr %0, align 8, !tbaa !40
  store <4 x i8> zeroinitializer, ptr %4, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4, !tbaa !83, !range !74, !noundef !75
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.s, ptr %i.t, align 4, !tbaa !92
  store i8 0, ptr %i.r, align 4, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.v, ptr %i.w, align 1, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  store ptr %i.y, ptr %i.c, align 8, !tbaa !62
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit
  %.phi.trans.insert77 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre78 = load ptr, ptr %.phi.trans.insert77, align 8, !tbaa !62 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre78, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre78) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.z = phi i8 [ %i.q, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ 0, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ 0, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !66 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95 ; 2 uses
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.012.019.i = phi ptr [ %i.ai, %bb.e ], [ %i.ad, %bb.d ] ; 4 uses
  %i.ah = load i64, ptr %.sroa.012.019.i, align 8, !tbaa !100
  %.not.i44 = icmp eq i64 %i.ah, %2
  br i1 %.not.i44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i, i64 72 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.af
  br i1 %i.aj, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.e, %bb.c, %bb.d
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !64
  br label %_ZNSt8optionalIN7rocksdb6StatusEE7emplaceIJRS1_EEENSt9enable_ifIX18is_constructible_vIS1_DpT_EES4_E4typeEDpOS6_.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !101 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !101 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_ZN7rocksdb18blob_resolver_util11FindInCacheERKSt6vectorISt4pairImSt10unique_ptrINS_13PinnableSliceESt14default_deleteIS4_EEESaIS8_EEm.exit.thread, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.f, %bb.g
  %.sroa.010.018.i = phi ptr [ %i.at, %bb.g ], [ %i.ao, %bb.f ] ; 3 uses
  %i.as = load i64, ptr %.sroa.010.018.i, align 8, !tbaa !109
  %.not.i46 = icmp eq i64 %i.as, %2
  br i1 %.not.i46, label %_ZN7rocksdb18blob_resolver_util11FindInCacheERKSt6vectorISt4pairImSt10unique_ptrINS_13PinnableSliceESt14default_deleteIS4_EEESaIS8_EEm.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i45
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.aq
  br i1 %i.au, label %_ZN7rocksdb18blob_resolver_util11FindInCacheERKSt6vectorISt4pairImSt10unique_ptrINS_13PinnableSliceESt14default_deleteIS4_EEESaIS8_EEm.exit.thread, label %.lr.ph.i45

_ZN7rocksdb18blob_resolver_util11FindInCacheERKSt6vectorISt4pairImSt10unique_ptrINS_13PinnableSliceESt14default_deleteIS4_EEESaIS8_EEm.exit: ; preds = %.lr.ph.i45
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !71 ; 2 uses
  %.not30 = icmp eq ptr %i.aw, null
  br i1 %.not30, label %_ZN7rocksdb18blob_resolver_util11FindInCacheERKSt6vectorISt4pairImSt10unique_ptrINS_13PinnableSliceESt14default_deleteIS4_EEESaIS8_EEm.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN7rocksdb18blob_resolver_util11FindInCacheERKSt6vectorISt4pairImSt10unique_ptrINS_13PinnableSliceESt14default_deleteIS4_EEESaIS8_EEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  br label %_ZNSt8optionalIN7rocksdb6StatusEE7emplaceIJRS1_EEENSt9enable_ifIX18is_constructible_vIS1_DpT_EES4_E4typeEDpOS6_.exit

_ZN7rocksdb18blob_resolver_util11FindInCacheERKSt6vectorISt4pairImSt10unique_ptrINS_13PinnableSliceESt14default_deleteIS4_EEESaIS8_EEm.exit.thread: ; preds = %bb.g, %bb.f, %_ZN7rocksdb18blob_resolver_util11FindInCacheERKSt6vectorISt4pairImSt10unique_ptrINS_13PinnableSliceESt14default_deleteIS4_EEESaIS8_EEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !59
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit, label %bb.i

_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit: ; preds = %_ZN7rocksdb18blob_resolver_util11FindInCacheERKSt6vectorISt4pairImSt10unique_ptrINS_13PinnableSliceESt14default_deleteIS4_EEESaIS8_EEm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr @.str.40, ptr %8, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 26, ptr %i.ba, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr @.str, ptr %9, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bb, align 8, !tbaa !27
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
  %.not.i47 = icmp eq ptr %0, %7
  br i1 %.not.i47, label %_ZN7rocksdb6StatusaSEOS0_.exit50, label %_ZN7rocksdb6StatusaSEOS0_.exit50.thread

_ZN7rocksdb6StatusaSEOS0_.exit50.thread:          ; preds = %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit
  %i.bc = load <4 x i8>, ptr %7, align 8, !tbaa !40
  %i.bd = load i8, ptr %7, align 8, !tbaa !627
  store <4 x i8> %i.bc, ptr %0, align 8, !tbaa !40
  store <4 x i8> zeroinitializer, ptr %7, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !83, !range !74, !noundef !75
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.bf, ptr %i.bg, align 4, !tbaa !92
  store i8 0, ptr %i.be, align 4, !tbaa !92
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !40
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !93
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !62
  store ptr %i.bl, ptr %i.c, align 8, !tbaa !62
  br label %_ZN7rocksdb6StatusD2Ev.exit53

_ZN7rocksdb6StatusaSEOS0_.exit50:                 ; preds = %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_0
begin_hunk_1_@_ZN7rocksdb22CompactionBlobResolver13ResolveColumnEmPNS_5SliceE:bb.a

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bx = phi ptr [ %i.bw, %bb.m ], [ null, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.by = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #30
          to label %.noexc unwind label %bb.v     ; 11 uses

.noexc:                                           ; preds = %bb.n
  store ptr @.str, ptr %i.by, align 8, !tbaa !26, !noalias !628
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !27, !noalias !628
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %bb.p unwind label %bb.o, !noalias !628

bb.o:                                             ; preds = %.noexc
  %i.cb = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 96) #29, !noalias !628
  br label %.body

bb.p:                                             ; preds = %.noexc
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 2 uses
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !112, !noalias !628
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  store i64 0, ptr %i.ce, align 8, !tbaa !113, !noalias !628
  store i8 0, ptr %i.cd, align 8, !tbaa !40, !noalias !628
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  store i8 0, ptr %i.cf, align 8, !tbaa !119, !noalias !628
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  store ptr %i.cc, ptr %i.cg, align 8, !tbaa !120, !noalias !628
  store ptr %i.by, ptr %10, align 8, !tbaa !71, !alias.scope !628
  %i.ch = load ptr, ptr %i.ap, align 8, !tbaa !69 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !121
  %.not.i54 = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i54, label %bb.q, label %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit.thread

_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit.thread: ; preds = %bb.p
  %i.ck = ptrtoint ptr %i.by to i64
  store i64 %2, ptr %i.ch, align 8, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !71
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.cm, ptr %i.ap, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE17_M_realloc_insertIJRmS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit unwind label %bb.w

_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit: ; preds = %bb.q
  %.pr = load ptr, ptr %10, align 8, !tbaa !71    ; 5 uses
  %.not.i56 = icmp eq ptr %.pr, null
  br i1 %.not.i56, label %_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %.pr, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !39 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pr, i64 64 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !40
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #29
  br label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ct) #28
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 96) #29
  br label %_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit.thread, %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit, %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.cu = load ptr, ptr %i.ap, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.cv = load ptr, ptr %i.ax, align 8, !tbaa !59 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !71
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !36
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(57) %i.am, ptr noundef %i.bx, ptr noundef %i.cy, ptr noundef nonnull %i.b)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev.exit
  %.not.i57 = icmp eq ptr %0, %11
  br i1 %.not.i57, label %_ZN7rocksdb6StatusaSEOS0_.exit60, label %bb.t

_ZN7rocksdb6StatusaSEOS0_.exit60:                 ; preds = %bb.s
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !62 ; 2 uses
  %.not.i.i61 = icmp eq ptr %.pre, null
  br i1 %.not.i.i61, label %.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i62

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i62: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit60
  call void @_ZdaPv(ptr noundef nonnull %.pre) #29
  br label %.thread

.thread:                                          ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i62, %_ZN7rocksdb6StatusaSEOS0_.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.dc = load <4 x i8>, ptr %11, align 8, !tbaa !40
  %i.dd = load i8, ptr %11, align 8, !tbaa !627   ; 2 uses
  store <4 x i8> %i.dc, ptr %0, align 8, !tbaa !40
  store <4 x i8> zeroinitializer, ptr %11, align 8, !tbaa !40
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.df = load i8, ptr %i.de, align 4, !tbaa !83, !range !74, !noundef !75
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.df, ptr %i.dg, align 4, !tbaa !92
  store i8 0, ptr %i.de, align 4, !tbaa !92
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 5
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !40
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !93
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !62
  store ptr %i.dl, ptr %i.c, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.dm = icmp eq i8 %i.dd, 0
  br i1 %i.dm, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #28
  br label %bb.ab

bb.v:                                             ; preds = %bb.n
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.q
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #28
  br label %.body

.body:                                            ; preds = %bb.v, %bb.o, %bb.w
  %.pn = phi { ptr, i32 } [ %i.do, %bb.w ], [ %i.dn, %bb.v ], [ %i.cb, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ac

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.ac

bb.y:                                             ; preds = %.thread, %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !61 ; 2 uses
  %.not37 = icmp eq ptr %i.dr, null
  br i1 %.not37, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 112 ; 2 uses
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !63
  %i.du = load <2 x i64>, ptr %i.ds, align 8, !tbaa !63
  %i.dv = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.dt, i64 1
  %i.dw = add <2 x i64> %i.du, %i.dv
  store <2 x i64> %i.dw, ptr %i.ds, align 8, !tbaa !63
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dx = load ptr, ptr %i.cx, align 8, !tbaa !71
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i64 16, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.u
  %i.dy = phi i8 [ 0, %bb.aa ], [ %i.dd, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x, %.body
  %.pn33.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.dp, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit67

bb.ad:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZN7rocksdb6StatusD2Ev.exit53, %bb.ab
  %i.dz = phi i8 [ %i.z, %_ZN7rocksdb6StatusD2Ev.exit ], [ %i.dy, %bb.ab ], [ %i.bm, %_ZN7rocksdb6StatusD2Ev.exit53 ]
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %_ZNSt8optionalIN7rocksdb6StatusEE7emplaceIJRS1_EEENSt9enable_ifIX18is_constructible_vIS1_DpT_EES4_E4typeEDpOS6_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !67, !range !74, !noundef !75
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.af, label %_ZNSt8optionalIN7rocksdb6StatusEE7emplaceIJRS1_EEENSt9enable_ifIX18is_constructible_vIS1_DpT_EES4_E4typeEDpOS6_.exit

bb.af:                                            ; preds = %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !73, !range !74, !noundef !75
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_ZNSt8optionalIN7rocksdb6StatusEE7emplaceIJRS1_EEENSt9enable_ifIX18is_constructible_vIS1_DpT_EES4_E4typeEDpOS6_.exit, label %_ZNSt19_Optional_base_implIN7rocksdb6StatusESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i

_ZNSt19_Optional_base_implIN7rocksdb6StatusESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 0, ptr %i.ee, align 8, !tbaa !73
  invoke void @_ZNSt22_Optional_payload_baseIN7rocksdb6StatusEE12_M_constructIJRS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZNSt8optionalIN7rocksdb6StatusEE7emplaceIJRS1_EEENSt9enable_ifIX18is_constructible_vIS1_DpT_EES4_E4typeEDpOS6_.exit unwind label %bb.ag

_ZNSt8optionalIN7rocksdb6StatusEE7emplaceIJRS1_EEENSt9enable_ifIX18is_constructible_vIS1_DpT_EES4_E4typeEDpOS6_.exit: ; preds = %.loopexit, %bb.k, %bb.h, %_ZNSt19_Optional_base_implIN7rocksdb6StatusESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i, %bb.ad, %bb.ae, %bb.af
  ret void

bb.ag:                                            ; preds = %bb.m, %bb.j, %_ZNSt19_Optional_base_implIN7rocksdb6StatusESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre79 = load ptr, ptr %i.c, align 8, !tbaa !62 ; 2 uses
  %.not.i.i65 = icmp eq ptr %.pre79, null
  br i1 %.not.i.i65, label %_ZN7rocksdb6StatusD2Ev.exit67, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i66

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i66: ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %.pre79) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit67

_ZN7rocksdb6StatusD2Ev.exit67:                    ; preds = %bb.ac, %bb.ag, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i66
  %.pn42115 = phi { ptr, i32 } [ %i.ei, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i66 ], [ %i.ei, %bb.ag ], [ %.pn33.pn, %bb.ac ]
  resume { ptr, i32 } %.pn42115
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load <4 x i8>, ptr %1, align 8, !tbaa !40
  store <4 x i8> %i.a, ptr %0, align 8, !tbaa !40
  store <4 x i8> zeroinitializer, ptr %1, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !83, !range !74, !noundef !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.c, ptr %i.d, align 4, !tbaa !92
  store i8 0, ptr %i.b, align 4, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.f, ptr %i.g, align 1, !tbaa !93
  store i8 0, ptr %i.e, align 1, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !62
  store ptr null, ptr %i.h, align 8, !tbaa !62
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !62   ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !62
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #29
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZN7rocksdb18blob_resolver_util16CacheInlinedBlobERSt6vectorISt4pairImSt10unique_ptrINS_13PinnableSliceESt14default_deleteIS4_EEESaIS8_EEmRKNS_9BlobIndexE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(57) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.std::unique_ptr.17", align 8 ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #30, !noalias !631 ; 11 uses
  store ptr @.str, ptr %i.b, align 8, !tbaa !26, !noalias !631
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !27, !noalias !631
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_ZSt11make_uniqueIN7rocksdb13PinnableSliceEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !631

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.as, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #29, !noalias !631
  br label %common.resume

_ZSt11make_uniqueIN7rocksdb13PinnableSliceEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !112, !noalias !631
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.h, align 8, !tbaa !113, !noalias !631
  store i8 0, ptr %i.g, align 8, !tbaa !40, !noalias !631
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i8 0, ptr %i.i, align 8, !tbaa !119, !noalias !631
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.f, ptr %i.j, align 8, !tbaa !120, !noalias !631
  store ptr %i.b, ptr %3, align 8, !tbaa !71, !alias.scope !631
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit.thread

_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit.thread: ; preds = %_ZSt11make_uniqueIN7rocksdb13PinnableSliceEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.o = ptrtoint ptr %i.b to i64
  store i64 %1, ptr %i.l, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.q, ptr %i.k, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %_ZSt11make_uniqueIN7rocksdb13PinnableSliceEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  invoke void @_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE17_M_realloc_insertIJRmS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit unwind label %bb.e

_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit: ; preds = %bb.c
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 5 uses
  %.not.i5 = icmp eq ptr %.pr, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.pr, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pr, i64 64 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !40
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.x) #28
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 96) #29
  br label %_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit.thread, %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EE12emplace_backIJRmS6_EEERS7_DpOT_.exit, %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !101
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 80 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !120 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !113
  %i.aj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 noundef 0, i64 noundef %i.ai, ptr noundef %i.ae, i64 noundef %i.ag) ; 0 uses
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !120 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39
  store ptr %i.al, ptr %i.aa, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !113
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !27
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !101
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !71 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !63
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { ptr, i64 } %.fca.1.insert

bb.e:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

declare noundef ptr @_ZN7rocksdb24PrefetchBufferCollection25GetOrCreatePrefetchBufferEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
end_hunk_1
begin_hunk_2_@_ZN7rocksdb18CompactionIterator44ComputeBlobGarbageCollectionCutoffFileNumberEPKNS0_15CompactionProxyE:bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2840
  %i.j = load ptr, ptr %0, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef double %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 2848
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !258
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !259  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4                   ; 2 uses
  %i.u = uitofp i64 %i.t to double
  %i.v = fmul double %i.m, %i.u
  %i.w = fptoui double %i.v to i64                ; 2 uses
  %.not14 = icmp ugt i64 %i.t, %i.w
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !262
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !265
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !267
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.aa, %bb.d ], [ -1, %bb.c ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18CompactionIterator25CreateBlobFetcherIfNeededEPKNS0_15CompactionProxyEPKNS_7VersionENS_3Env10IOActivityE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.61") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca [44 x i8], align 8            ; 4 uses
  %.sroa.9 = alloca [42 x i8], align 1            ; 4 uses
  %.sroa.14 = alloca [21 x i8], align 1           ; 4 uses
  %.not = icmp eq ptr %1, null                    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ %2, %bb.a ]   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !659
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0, i8 0, i64 44, i1 false)
  %.sroa.9.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9.3..sroa_idx, i8 0, i64 39, i1 false)
  %.sroa.14.5..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.14.5..sroa_idx, i8 0, i64 16, i1 false)
  %i.g = select i1 %.not, i8 %3, i8 1
  br i1 %.not, label %bb.f, label %_ZN7rocksdb11ReadOptionsD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !387 ; 2 uses
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %_ZN7rocksdb11ReadOptionsD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2712
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !389
  br label %_ZN7rocksdb11ReadOptionsD2Ev.exit

_ZN7rocksdb11ReadOptionsD2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.e
  %.1 = phi ptr [ null, %bb.e ], [ %i.k, %bb.g ], [ null, %bb.f ]
  %i.l = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #30 ; 19 uses
  %i.m = zext i1 %.not to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.e, ptr %i.n, align 8, !tbaa !392
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.1, ptr %i.o, align 8, !tbaa !393
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i8 %i.m, ptr %i.p, align 8, !tbaa !394
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb24OwningVersionBlobFetcherE, i64 16), ptr %i.l, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.q, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0, i64 44, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  store i32 4, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i64 -1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i8 0, ptr %.sroa.627.0..sroa_idx, align 8
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.728.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 108
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(42) %.sroa.9, i64 42, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.s, align 8
  %.sroa.12.152..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 185
  store i8 0, ptr %.sroa.12.152..sroa_idx, align 1
  %.sroa.13.152..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 186
  store i8 0, ptr %.sroa.13.152..sroa_idx, align 2
  %.sroa.14.152..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.14.152..sroa_idx, ptr noundef nonnull align 1 dereferenceable(21) %.sroa.14, i64 21, i1 false)
  %.sroa.15.152..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  store i8 %i.g, ptr %.sroa.15.152..sroa_idx, align 8
  %.sroa.1630.152..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  store ptr null, ptr %.sroa.1630.152..sroa_idx, align 8
  store ptr %i.l, ptr %0, align 8, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.h

bb.h:                                             ; preds = %_ZN7rocksdb11ReadOptionsD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18CompactionIterator38CreatePrefetchBufferCollectionIfNeededEPKNS0_15CompactionProxyE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.69") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.not7 = icmp eq i64 %i.l, 0
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 8 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !399
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %i.o, ptr %i.n, align 8, !tbaa !400
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %i.p, align 8, !tbaa !401
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.r, align 8, !tbaa !222
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.sink = phi ptr [ null, %bb.c ], [ %i.m, %bb.e ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.d ]
  store ptr %.sink, ptr %0, align 8, !tbaa !402
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb20InternalIteratorBaseINS_5SliceEE17SetPinnedItersMgrEPNS_22PinnedIteratorsManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb22CompactionBlobResolverD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7rocksdb22CompactionBlobResolverE, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !73, !range !74, !noundef !75
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !73
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #29
  br label %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i ], [ %i.g, %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71   ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.r) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 96) #29
  br label %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.f, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !121
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #29
  br label %_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb13PinnableSliceD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb22PinnedIteratorsManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !254, !range !74, !noundef !75
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7rocksdb22PinnedIteratorsManager17ReleasePinnedDataEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !416  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !417
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #29
  br label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EED2Ev.exit: ; preds = %bb.c, %bb.d
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #28
  ret void

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #32
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb7IterKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !247    ; 4 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !249
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.f
  br i1 %.not.i, label %_ZN7rocksdb7IterKey11ResetBufferEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %i.c, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #29
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !248
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.b, %bb.d ]
  store ptr %i.f, ptr %0, align 8, !tbaa !247
  br label %_ZN7rocksdb7IterKey11ResetBufferEv.exit

_ZN7rocksdb7IterKey11ResetBufferEv.exit:          ; preds = %bb.c, %bb.f
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 39, ptr %i.i, align 8, !tbaa !250
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !252  ; 4 uses
  %i.l = icmp eq ptr %i.h, %i.k
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7rocksdb7IterKey11ResetBufferEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8, !tbaa !249
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7rocksdb7IterKey11ResetBufferEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not.i1 = icmp eq ptr %i.k, %i.n
  %i.o = icmp eq ptr %i.k, null
  %or.cond = or i1 %.not.i1, %i.o
  br i1 %or.cond, label %_ZN7rocksdb7IterKey20ResetSecondaryBufferEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #29
  br label %_ZN7rocksdb7IterKey20ResetSecondaryBufferEv.exit

_ZN7rocksdb7IterKey20ResetSecondaryBufferEv.exit: ; preds = %bb.i, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 39, ptr %i.p, align 8, !tbaa !253
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !419 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #29
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !220
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !221
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !220    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !221
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb19SequenceIterWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(74) dereferenceable(74) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb18CompactionIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(1505) dereferenceable(1505) initializes((1168, 1176)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !410  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !411
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7rocksdb22CompactionBlobResolverE, i64 16), ptr %i.h, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !73, !range !74, !noundef !75
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.i, align 8, !tbaa !73
  br i1 %i.k, label %bb.c, label %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #29, !inline_history !420
  br label %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i, %bb.c, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i ], [ %i.o, %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71   ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.v, align 8, !tbaa !40
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #29, !inline_history !420
  br label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.z) #28, !inline_history !420
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 96) #29, !inline_history !420
  br label %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.q
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.n, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i
  %i.ab = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.o, %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i, label %_ZN7rocksdb22CompactionBlobResolverD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !121
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #29, !inline_history !420
  br label %_ZN7rocksdb22CompactionBlobResolverD2Ev.exit

_ZN7rocksdb22CompactionBlobResolverD2Ev.exit:     ; preds = %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb22CompactionBlobResolverD2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !413
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #29
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb22CompactionBlobResolverD2Ev.exit, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit3, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !413
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #29
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit3

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit3: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !414 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit3
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !415
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #29
  br label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit3, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !413
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #29
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit6

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit6: ; preds = %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !39 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit6
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !40
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !39 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZN7rocksdb11InternalKeyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !40
  %i.bu = add i64 %i.bt, 1
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #29
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit

_ZN7rocksdb11InternalKeyD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !39 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !40
  %i.ca = add i64 %i.bz, 1
  tail call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !39 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZN7rocksdb13PinnableSliceD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !40
  %i.cg = add i64 %i.cf, 1
  tail call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #29
  br label %_ZN7rocksdb13PinnableSliceD2Ev.exit

_ZN7rocksdb13PinnableSliceD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 896
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ch) #28
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !39 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZN7rocksdb13PinnableSliceD2Ev.exit
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !40
  %i.cn = add i64 %i.cm, 1
  tail call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZN7rocksdb13PinnableSliceD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !402 ; 2 uses
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb24PrefetchBufferCollectionESt14default_deleteIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
end_hunk_2
begin_hunk_3_@_ZN7rocksdb18CompactionIterator33GarbageCollectEntityBlobsIfNeededEv:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !472 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %_ZSt8_DestroyISt4pairImN7rocksdb13PinnableSliceEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.br, %_ZSt8_DestroyISt4pairImN7rocksdb13PinnableSliceEEEvPT_.exit.i.i.i ], [ %i.bh, %bb.w ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !39 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZSt8_DestroyISt4pairImN7rocksdb13PinnableSliceEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !40
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #29
  br label %_ZSt8_DestroyISt4pairImN7rocksdb13PinnableSliceEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairImN7rocksdb13PinnableSliceEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bq) #28
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.br, %i.bj
  br i1 %.not.i.i.i19, label %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairImN7rocksdb13PinnableSliceEEEvPT_.exit.i.i.i
  %.pr.i20 = load ptr, ptr %4, align 8, !tbaa !477
  br label %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.w
  %i.bs = phi ptr [ %.pr.i20, %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.bh, %bb.w ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairImN7rocksdb13PinnableSliceEESaIS3_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !473
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #29
  br label %_ZNSt6vectorISt4pairImN7rocksdb13PinnableSliceEESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairImN7rocksdb13PinnableSliceEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.y

bb.y:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit16, %bb.k, %bb.a, %bb.b, %_ZNSt6vectorISt4pairImN7rocksdb13PinnableSliceEESaIS3_EED2Ev.exit
  ret void

_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit: ; preds = %bb.s, %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.at, %bb.q ], [ %i.au, %bb.r ], [ %i.au, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit ], [ %i.ap, %bb.n ]
  call void @_ZNSt6vectorISt4pairImN7rocksdb13PinnableSliceEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN7rocksdb6StatusD2Ev.exit
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.z ], [ %i.af, %_ZN7rocksdb6StatusD2Ev.exit ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairImN7rocksdb13PinnableSliceEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !477    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !472  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairImN7rocksdb13PinnableSliceEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt4pairImN7rocksdb13PinnableSliceEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyISt4pairImN7rocksdb13PinnableSliceEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZSt8_DestroyISt4pairImN7rocksdb13PinnableSliceEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairImN7rocksdb13PinnableSliceEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.j) #28
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 104 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !11

_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairImN7rocksdb13PinnableSliceEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !477
  br label %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairImN7rocksdb13PinnableSliceEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !473
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZNSt12_Vector_baseISt4pairImN7rocksdb13PinnableSliceEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairImN7rocksdb13PinnableSliceEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairImN7rocksdb13PinnableSliceEES3_EvT_S5_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef signext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !112
  %i.b = icmp ugt i64 %1, 15
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %1, 0
  br i1 %i.c, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #31
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i64 %1, 1                        ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.noexc5, label %.thread7.i, !prof !136

.noexc5:                                          ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

.thread7.i:                                       ; preds = %bb.c
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #30 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !39
  store i64 %1, ptr %i.a, align 8, !tbaa !40
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  switch i64 %1, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  store i8 %2, ptr %i.a, align 8, !tbaa !40
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %.thread7.i
  %i.g = phi ptr [ %i.f, %.thread7.i ], [ %i.a, %bb.d ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 %2, i64 %1, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.h = phi ptr [ %i.a, %bb.d ], [ %i.g, %bb.f ], [ %i.a, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.i, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %1
  store i8 0, ptr %i.j, align 1, !tbaa !40
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb16CompareInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb21InternalKeyComparatorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb22CompactionBlobResolverD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7rocksdb22CompactionBlobResolverE, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !73, !range !74, !noundef !75
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !73
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #29, !inline_history !420
  br label %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i ], [ %i.g, %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71   ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29, !inline_history !420
  br label %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.r) #28, !inline_history !420
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 96) #29, !inline_history !420
  br label %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb13PinnableSliceEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.f, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i
  %i.t = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.g, %_ZNSt14_Optional_baseIN7rocksdb6StatusELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i, label %_ZN7rocksdb22CompactionBlobResolverD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !121
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #29, !inline_history !420
  br label %_ZN7rocksdb22CompactionBlobResolverD2Ev.exit

_ZN7rocksdb22CompactionBlobResolverD2Ev.exit:     ; preds = %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN7rocksdb13PinnableSliceESt14default_deleteIS3_EEES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb22WideColumnBlobResolver14ResolveColumnsERKSt6vectorImSaImEEPS1_INS_5SliceESaIS6_EE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 9 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !844    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !845
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !845
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !412  ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !410    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %i.k = icmp ugt i64 %i.j, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #31
  unreachable

bb.c:                                             ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !846
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.a to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  %i.r = icmp ult i64 %i.q, %i.j
  br i1 %i.r, label %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.s = shl nuw nsw i64 %i.i, 1
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #30 ; 4 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !844    ; 5 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !845  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.t, %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %i.u, %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !64, !alias.scope !847
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !837

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.u, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !846
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ab) #29
  br label %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.t, ptr %3, align 8, !tbaa !844
  store ptr %i.t, ptr %i.b, align 8, !tbaa !845
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.j
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !846
  %.pre = load ptr, ptr %2, align 8, !tbaa !235
  %.pre31 = load ptr, ptr %i.d, align 8, !tbaa !235
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.ad = phi ptr [ %i.e, %bb.c ], [ %.pre31, %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %i.ae = phi ptr [ %i.f, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE7reserveEm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN7rocksdb6StatusD2Ev.exit24
  %.sroa.025.029 = phi ptr [ %i.ae, %.lr.ph ], [ %i.bq, %_ZN7rocksdb6StatusD2Ev.exit24 ] ; 2 uses
  %i.ai = load i64, ptr %.sroa.025.029, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr @.str, ptr %4, align 8, !tbaa !26
  store i64 0, ptr %i.ag, align 8, !tbaa !27
  %i.aj = load ptr, ptr %1, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ai, ptr noundef nonnull %4)
  %i.am = load i8, ptr %0, align 8, !tbaa !429
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %3, align 8, !tbaa !844   ; 2 uses
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !845
  %.not.i.i17 = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i17, label %bb.m, label %_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i18

_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i18: ; preds = %bb.f
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !845
  br label %bb.m

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.j
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !62 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i20, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %lpad.loopexit.split-lp45

bb.g:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !845 ; 5 uses
end_hunk_3
