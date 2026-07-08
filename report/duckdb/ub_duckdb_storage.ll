inline.NumInlined: 20074
inline.NumDeleted: 9324
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6duckdb20TemporaryFileManager17GetTemporaryFilesEv:bb.a
  %i.dh = icmp eq ptr %i.dg, %i.g
  br i1 %i.dh, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.dg) #44
  br label %.body

.body:                                            ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZN6duckdb24TemporaryFileInformationD2Ev.exit.i, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ai, %_ZN6duckdb24TemporaryFileInformationD2Ev.exit.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.j ], [ %i.df, %bb.u ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21 ], [ %lpad.phi, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt6vectorIN6duckdb19TemporaryBufferSizeESaIS1_EED2Ev.exit25

_ZNSt6vectorIN6duckdb19TemporaryBufferSizeESaIS1_EED2Ev.exit25: ; preds = %.body, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.s, %bb.g ]
  call void @_ZdlPv(ptr noundef nonnull %i.e) #44
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN6duckdb19TemporaryBufferSizeESaIS1_EED2Ev.exit25, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN6duckdb19TemporaryBufferSizeESaIS1_EED2Ev.exit25 ], [ %i.m, %bb.d ]
  call void @_ZNSt6vectorIN6duckdb24TemporaryFileInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  %i.di = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #23 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb24TemporaryFileInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2904   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2907 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb24TemporaryFileInformationES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb24TemporaryFileInformationEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN6duckdb24TemporaryFileInformationEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !82 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN6duckdb24TemporaryFileInformationEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #44
  br label %_ZSt8_DestroyIN6duckdb24TemporaryFileInformationEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb24TemporaryFileInformationEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb24TemporaryFileInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2910

_ZSt8_DestroyIPN6duckdb24TemporaryFileInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb24TemporaryFileInformationEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !2904
  br label %_ZSt8_DestroyIPN6duckdb24TemporaryFileInformationES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb24TemporaryFileInformationES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb24TemporaryFileInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb24TemporaryFileInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb24TemporaryFileInformationESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb24TemporaryFileInformationES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #44
  br label %_ZNSt12_Vector_baseIN6duckdb24TemporaryFileInformationESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb24TemporaryFileInformationESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb24TemporaryFileInformationES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21StandardBufferManager13ReserveMemoryEm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::TempBufferPoolReservation", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN6duckdb10StringUtil26BytesToHumanReadableStringB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %1, i64 noundef 1024)
  invoke void @_ZN6duckdb21StandardBufferManager18EvictBlocksOrThrowIJPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_25TempBufferPoolReservationENS_9MemoryTagEmPNS_10unique_ptrINS_10FileBufferESt14default_deleteISD_ELb1EEEDpT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::TempBufferPoolReservation") align 8 %2, ptr noundef nonnull align 8 dereferenceable(296) %0, i8 noundef zeroext 11, i64 noundef %1, ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %3, align 8, !tbaa !82     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.b) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !2767
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25TempBufferPoolReservationE, i64 16), ptr %2, align 8, !tbaa !45
  invoke void @_ZN6duckdb21BufferPoolReservation6ResizeEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0)
          to label %_ZN6duckdb25TempBufferPoolReservationD2Ev.exit unwind label %bb.d, !inline_history !2770

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #45, !inline_history !2770
  unreachable

_ZN6duckdb25TempBufferPoolReservationD2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6duckdb21BufferPoolReservationD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #23, !inline_history !2770
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6duckdb25TempBufferPoolReservationD2Ev.exit
  ret void

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !82     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.i) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21StandardBufferManager18FreeReservedMemoryEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2771, !nonnull !67, !align !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = sub nsw i64 0, %1
  tail call void @_ZN6duckdb10BufferPool11MemoryUsage16UpdateUsedMemoryENS_9MemoryTagEl(ptr noundef nonnull align 8 dereferenceable(8840) %i.d, i8 noundef zeroext 11, i64 noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN6duckdb10BufferPool11MemoryUsage16UpdateUsedMemoryENS_9MemoryTagEl(ptr noundef nonnull align 8 dereferenceable(8840), i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator3GetERNS_16DatabaseInstanceE(ptr noundef nonnull align 8 dereferenceable(1560)) local_unnamed_addr #1

declare void @_ZN6duckdb21BufferPoolReservationC1ENS_9MemoryTagERNS_10BufferPoolE(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8984)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZN6duckdb10ClientData3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_13BufferManagerESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_16DatabaseInstanceE(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb16DatabaseInstance16GetBufferManagerEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_16AttachedDatabaseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85, !nonnull !67, !align !68
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb16DatabaseInstance16GetBufferManagerEv(ptr noundef nonnull align 8 dereferenceable(1560) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !2934
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb21StandardBufferManager18GetBufferAllocatorEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(296) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN6duckdb26TemporaryBufferSizeIsValidENS_19TemporaryBufferSizeE(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %1 = add i64 %0, -32768                         ; 2 uses
  %2 = tail call i64 @llvm.fshl.i64(i64 %1, i64 %1, i64 49)
  %switch = icmp ult i64 %2, 8
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb23TemporaryFileIdentifierC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(17) initializes((0, 17)) %0) unnamed_addr #20 align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !2875
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !289
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !2935
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23TemporaryFileIdentifierC2ENS_19TemporaryBufferSizeEm(ptr noundef nonnull align 8 dereferenceable(17) initializes((0, 8)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !2875
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !2935
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23TemporaryFileIdentifierC2ERNS_16DatabaseInstanceENS_19TemporaryBufferSizeEmb(ptr noundef nonnull align 8 dereferenceable(17) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(1560) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  store i64 %2, ptr %0, align 8, !tbaa !2875
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %i.c, align 8, !tbaa !2935
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb16EncryptionEngine17AddTempKeyToCacheERNS_16DatabaseInstanceE(ptr noundef nonnull align 8 dereferenceable(1560) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN6duckdb16EncryptionEngine17AddTempKeyToCacheERNS_16DatabaseInstanceE(ptr noundef nonnull align 8 dereferenceable(1560)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb23TemporaryFileIdentifier7IsValidEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !2875
  %.not = icmp ne i64 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ne i64 %i.c, -1
  %i.e = select i1 %.not, i1 %i.d, i1 false
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18TemporaryFileIndexC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb23TemporaryFileIdentifierC1Ev(ptr noundef nonnull align 8 dereferenceable(17) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 -1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18TemporaryFileIndexC2ENS_23TemporaryFileIdentifierEmm(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%"struct.duckdb::TemporaryFileIdentifier") align 8 captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !2936
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb18TemporaryFileIndex7IsValidEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !2875
  %.not.i = icmp ne i64 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ne i64 %i.c, -1
  %i.e = select i1 %.not.i, i1 %i.d, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, -1
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !289
  %i.k = icmp ne i64 %i.j, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ %i.k, %bb.b ], [ false, %bb.a ]
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb17BlockIndexManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 8), (16, 20), (24, 32)) %0) unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !2919
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !1807
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.c, align 8, !tbaa !265
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !266
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.e, align 8, !tbaa !252
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !1807
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.g, align 8, !tbaa !205
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.f, ptr %i.h, align 8, !tbaa !265
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.f, ptr %i.i, align 8, !tbaa !266
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb17BlockIndexManagerC2ERNS_20TemporaryFileManagerE(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 8), (16, 20), (24, 32)) %0, ptr noundef nonnull align 8 dereferenceable(6928) %1) unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !2919
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !1807
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.c, align 8, !tbaa !265
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !266
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.e, align 8, !tbaa !252
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !1807
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.g, align 8, !tbaa !205
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.f, ptr %i.h, align 8, !tbaa !265
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.f, ptr %i.i, align 8, !tbaa !266
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.j, align 8, !tbaa !252
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.k, align 8, !tbaa !2937
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb17BlockIndexManager16GetNewBlockIndexENS_19TemporaryBufferSizeE(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6duckdb17BlockIndexManager24GetNewBlockIndexInternalENS_19TemporaryBufferSizeE(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !308 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %i.f = icmp ult i64 %i.a, %i.e                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.f, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !308 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2223

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.f, label %._crit_edge.thread.i.i.i, label %bb.c

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.a
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !265
  %i.i = icmp eq ptr %.019.lcssa29.i.i.i, %i.h
  br i1 %i.i, label %select.unfold.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #48
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i
  %i.k = phi i64 [ %.pre.i.i, %bb.b ], [ %i.e, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.b ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
end_hunk_0
