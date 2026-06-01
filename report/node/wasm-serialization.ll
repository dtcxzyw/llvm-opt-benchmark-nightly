inline.NumInlined: 2442
inline.NumDeleted: 1339
begin_hunk_0_@_ZN2v88internal4wasm24NativeModuleDeserializer7PublishESt6vectorINS1_19DeserializationUnitESaIS4_EE:bb.a

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #25
  br label %_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i: ; preds = %bb.f, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 24) #25
  br label %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.thread, %_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i, %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.aq = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i1.i = icmp eq ptr %i.aq, null
  br i1 %.not.i1.i, label %_ZN2v88internal4wasm19UnpublishedWasmCodeD2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i
  call void @_ZN2v88internal4wasm8WasmCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112) %i.aq) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 112) #25
  br label %_ZN2v88internal4wasm19UnpublishedWasmCodeD2Ev.exit

_ZN2v88internal4wasm19UnpublishedWasmCodeD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i, %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 40 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.b
  br i1 %i.as, label %._crit_edge.loopexit, label %bb.d

._crit_edge21.loopexit:                           ; preds = %.lr.ph20
  %.pre23 = load ptr, ptr %4, align 8
  br label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge21.loopexit, %._crit_edge
  %i.at = phi ptr [ %.pre23, %._crit_edge21.loopexit ], [ %i.y, %._crit_edge ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge21
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #25
  br label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EED2Ev.exit: ; preds = %._crit_edge21, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

.lr.ph20:                                         ; preds = %._crit_edge, %.lr.ph20
  %.sroa.09.018 = phi ptr [ %i.ba, %.lr.ph20 ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.09.018, align 8    ; 2 uses
  call void @_ZNK2v88internal4wasm8WasmCode10MaybePrintEv(ptr noundef nonnull align 8 dereferenceable(112) %i.az) #24
  call void @_ZNK2v88internal4wasm8WasmCode8ValidateEv(ptr noundef nonnull align 8 dereferenceable(112) %i.az) #24
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.09.018, i64 8 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.aa
  br i1 %i.bb, label %._crit_edge21.loopexit, label %.lr.ph20
}

declare void @_ZN2v88internal4wasm12NativeModule11PublishCodeENS_4base6VectorINS1_19UnpublishedWasmCodeEEE(ptr dead_on_unwind writable sret(%"class.std::vector.269") align 8, ptr noundef nonnull align 8 dereferenceable(552), ptr, i64) local_unnamed_addr #5

declare void @_ZNK2v88internal4wasm8WasmCode10MaybePrintEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #5

declare void @_ZNK2v88internal4wasm8WasmCode8ValidateEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #25
  br label %_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 24) #25
  br label %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i

_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.l = load ptr, ptr %.05.i.i, align 8          ; 3 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i1.i.i.i.i.i, label %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i
  tail call void @_ZN2v88internal4wasm8WasmCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112) %i.l) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 112) #25
  br label %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i

_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i, %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !18

_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exit

_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exitthread-pre-split, %bb.a
  %i.n = phi ptr [ %.pr, %_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #25
  br label %_ZNSt12_Vector_baseIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal4wasm18IsSupportedVersionENS_4base6VectorIKhEENS1_19WasmEnabledFeaturesE(ptr readonly captures(none) %0, i64 %1, i32 %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  %3 = alloca %"class.v8::internal::wasm::(anonymous namespace)::Writer", align 8 ; 6 uses
  %i.b = icmp ult i64 %1, 20
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.a, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.e, align 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_111WriteHeaderEPNS2_6WriterENS1_19WasmEnabledFeaturesE(ptr noundef %3, i32 %2)
  %i.f = load i128, ptr %0, align 1
  %i.g = load i128, ptr %i.a, align 16
  %i.h = xor i128 %i.f, %i.g
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = getelementptr i8, ptr %i.a, i64 16
  %i.k = load i32, ptr %i.i, align 1
  %i.l = load i32, ptr %i.j, align 16
  %i.m = zext i32 %i.k to i128
  %i.n = zext i32 %i.l to i128
  %i.o = xor i128 %i.m, %i.n
  %i.p = or i128 %i.h, %i.o
  %i.q = icmp ne i128 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.s, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE(ptr noundef %0, ptr %1, i64 %2, ptr readonly captures(none) %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef readonly byval(%"class.v8::base::Vector.328") align 8 captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %7 = alloca %"struct.std::_Deque_iterator.1072", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.1072", align 16 ; 5 uses
  %9 = alloca %"struct.std::pair.1110", align 8   ; 5 uses
  %10 = alloca %"class.std::unique_ptr.300", align 8 ; 4 uses
  %11 = alloca %"class.v8::base::Vector.6", align 8 ; 6 uses
  %12 = alloca %"class.v8::base::Vector.6", align 8 ; 6 uses
  %13 = alloca %"class.v8::base::Vector.6", align 8 ; 6 uses
  %14 = alloca %"class.v8::base::Vector.6", align 8 ; 6 uses
  %15 = alloca %"class.v8::base::Vector.6", align 8 ; 6 uses
  %16 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %17 = alloca %"class.std::unique_ptr.1081", align 8 ; 5 uses
  %18 = alloca %"class.v8::internal::wasm::CompileTimeImports", align 8 ; 7 uses
  %19 = alloca %"class.v8::internal::wasm::WasmCodeRefScope", align 8 ; 4 uses
  %20 = alloca %"class.v8::internal::wasm::DeserializationQueue", align 8 ; 19 uses
  %21 = alloca %"class.std::unique_ptr.1073", align 8 ; 7 uses
  %22 = alloca %"class.std::vector.308", align 8  ; 11 uses
  %23 = alloca %"class.std::vector.308", align 8  ; 10 uses
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  %24 = alloca %"class.v8::internal::wasm::(anonymous namespace)::Writer", align 8 ; 6 uses
  %25 = alloca %"class.v8::internal::wasm::WasmDetectedFeatures", align 8 ; 6 uses
  %26 = alloca %"class.v8::internal::wasm::Result", align 8 ; 10 uses
  %27 = alloca %"class.std::shared_ptr.680", align 16 ; 3 uses
  %28 = alloca %"class.std::shared_ptr.805", align 16 ; 19 uses
  %29 = alloca %"class.std::shared_ptr.805", align 16 ; 6 uses
  %30 = alloca %"class.v8::internal::wasm::CompileTimeImports", align 8 ; 5 uses
  %31 = alloca %"class.std::shared_ptr.19", align 8 ; 3 uses
  %32 = alloca %"class.v8::base::OwnedVector", align 8 ; 4 uses
  %33 = alloca %"class.v8::internal::wasm::NativeModuleDeserializer", align 8 ; 34 uses
  %34 = alloca %"class.std::shared_ptr.805", align 8 ; 2 uses
  %35 = alloca %"class.std::shared_ptr.805", align 16 ; 3 uses
  %36 = alloca %"class.std::shared_ptr.805", align 8 ; 2 uses
  %37 = alloca %"class.std::shared_ptr.805", align 16 ; 3 uses
  %38 = alloca %"class.std::shared_ptr.805", align 16 ; 3 uses
  %i.b = tail call i32 @_ZN2v88internal4wasm19WasmEnabledFeatures11FromIsolateEPNS0_7IsolateE(ptr noundef %0) #24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8
  %i.d = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 31
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.b, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #24
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.o, %bb.b ], [ %i.k, %bb.a ] ; 3 uses
  %i.p = ptrtoint ptr %.0.i.i to i64
  %i.q = add i64 %i.p, 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.j, align 8
  store i64 %i.i, ptr %.0.i.i, align 8
  %i.s = tail call noundef zeroext i1 @_ZN2v88internal4wasm20IsWasmCodegenAllowedEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull %0, ptr nonnull %.0.i.i) #24
  %i.t = icmp ugt i64 %2, 19
  %or.cond.not = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.not, label %_ZN2v88internal4wasm18IsSupportedVersionENS_4base6VectorIKhEENS1_19WasmEnabledFeaturesE.exit, label %_ZN2v84base11OwnedVectorIKhED2Ev.exit134

_ZN2v88internal4wasm18IsSupportedVersionENS_4base6VectorIKhEENS1_19WasmEnabledFeaturesE.exit: ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  store ptr %i.a, ptr %24, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store ptr %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %i.a, ptr %i.w, align 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_111WriteHeaderEPNS2_6WriterENS1_19WasmEnabledFeaturesE(ptr noundef %24, i32 %i.b)
  %i.x = load i128, ptr %1, align 1
  %i.y = load i128, ptr %i.a, align 16
  %i.z = xor i128 %i.x, %i.y
  %i.aa = getelementptr i8, ptr %1, i64 16
  %i.ab = getelementptr i8, ptr %i.a, i64 16
  %i.ac = load i32, ptr %i.aa, align 1
  %i.ad = load i32, ptr %i.ab, align 16
  %i.ae = zext i32 %i.ac to i128
  %i.af = zext i32 %i.ad to i128
  %i.ag = xor i128 %i.ae, %i.af
  %i.ah = or i128 %i.z, %i.ag
  %i.ai = icmp ne i128 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br i1 %i.ak, label %bb.c, label %_ZN2v84base11OwnedVectorIKhED2Ev.exit134

bb.c:                                             ; preds = %_ZN2v88internal4wasm18IsSupportedVersionENS_4base6VectorIKhEENS1_19WasmEnabledFeaturesE.exit
  %i.al = icmp eq i64 %4, 0
  br i1 %i.al, label %_ZN2v84base11OwnedVectorIhED2Ev.exit, label %_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm.exit.i.i.i

_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm.exit.i.i.i: ; preds = %bb.c
  %i.am = call noalias noundef nonnull ptr @_Znam(i64 noundef %4) #27, !noalias !20 ; 5 uses
  %i.an = icmp sgt i64 %4, 1
  br i1 %i.an, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %3, i64 %4, i1 false), !noalias !32
  br label %_ZN2v84base11OwnedVectorIhED2Ev.exit

bb.e:                                             ; preds = %_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm.exit.i.i.i
  %i.ao = icmp eq i64 %4, 1
  br i1 %i.ao, label %bb.f, label %_ZN2v84base11OwnedVectorIhED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = load i8, ptr %3, align 1, !noalias !32
  store i8 %i.ap, ptr %i.am, align 1, !noalias !32
  br label %_ZN2v84base11OwnedVectorIhED2Ev.exit

_ZN2v84base11OwnedVectorIhED2Ev.exit:             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0142.0 = phi ptr [ %i.am, %bb.e ], [ %i.am, %bb.d ], [ %i.am, %bb.f ], [ null, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  store i64 0, ptr %25, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 58656
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 63600
  %i.at = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 63608
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.as, align 8
  store <2 x ptr> %i.aw, ptr %27, align 16
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v84base11OwnedVectorIhED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load i32, ptr %i.ax, align 4
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ax, align 4
  br label %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit

bb.i:                                             ; preds = %bb.g
  %i.bb = atomicrmw volatile add ptr %i.ax, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit

_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit: ; preds = %_ZN2v84base11OwnedVectorIhED2Ev.exit, %bb.h, %bb.i
  %.sroa.0.0.copyload.i.i57 = load i64, ptr %i.c, align 8
  %i.bc = add i64 %.sroa.0.0.copyload.i.i57, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = add i64 %i.be, 31
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bj = load ptr, ptr %i.l, align 8
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.j, label %_ZN2v88internal7Isolate14native_contextEv.exit59, !prof !19

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit
  %i.bl = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #24
  br label %_ZN2v88internal7Isolate14native_contextEv.exit59

_ZN2v88internal7Isolate14native_contextEv.exit59: ; preds = %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit, %bb.j
  %.0.i.i58 = phi ptr [ %i.bl, %bb.j ], [ %i.bi, %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit ] ; 3 uses
  %i.bm = ptrtoint ptr %.0.i.i58 to i64
  %i.bn = add i64 %i.bm, 8
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.j, align 8
  store i64 %i.bh, ptr %.0.i.i58, align 8
  %i.bp = call i64 @_ZN2v88internal7Isolate30GetOrRegisterRecorderContextIdENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr nonnull %.0.i.i58) #24
  call void @_ZN2v88internal4wasm16DecodeWasmModuleENS1_19WasmEnabledFeaturesENS_4base6VectorIKhEEbNS1_12ModuleOriginEPNS0_8CountersESt10shared_ptrINS0_7metrics8RecorderEENS_7metrics8Recorder9ContextIdENS1_14DecodingMethodEPNS1_20WasmDetectedFeaturesE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::wasm::Result") align 8 %26, i32 %i.b, ptr %.sroa.0142.0, i64 %4, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef %i.ar, ptr noundef nonnull %27, i64 %i.bp, i32 noundef 4, ptr noundef nonnull %25) #24
  %i.bq = load ptr, ptr %i.at, align 8            ; 8 uses
  %.not.i.i60 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i60, label %_ZNSt12__shared_ptrIN2v88internal7metrics8RecorderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit59
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.br, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4
  %i.bw = load ptr, ptr %i.bq, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #24, !inline_history !33
  %i.bz = load ptr, ptr %i.bq, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #24, !inline_history !33
  br label %_ZNSt12__shared_ptrIN2v88internal7metrics8RecorderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.cc = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i61 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i61, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.bu, %bb.n ], [ %i.ce, %bb.o ]
  %i.cf = icmp eq i32 %.0.i.i.i.i, 1
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE:bb.a
  %i.ic = load ptr, ptr %i.ib, align 8            ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 96
  %i.ie = load i32, ptr %i.id, align 8            ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 84
  %i.ig = load i32, ptr %i.if, align 4            ; 3 uses
  %i.ih = add i32 %i.ig, %i.ie                    ; 3 uses
  %i.ii = load i8, ptr %i.fs, align 8, !range !10, !noundef !7
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = icmp ne i32 %i.ie, 0
  %or.cond101.not.i = select i1 %i.ij, i1 %i.ik, i1 false
  br i1 %or.cond101.not.i, label %bb.ba, label %_ZNK2v88internal4wasm10WasmModule27set_all_functions_validatedEv.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.il = add i32 %i.ie, 7                        ; 2 uses
  %i.im = lshr i32 %i.il, 3                       ; 2 uses
  %i.in = zext nneg i32 %i.im to i64              ; 2 uses
  %.not.i18.i = icmp eq i32 %i.im, 0
  br i1 %.not.i18.i, label %_ZNK2v88internal4wasm10WasmModule27set_all_functions_validatedEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ba
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 824 ; 5 uses
  %xtraiter = and i64 %i.in, 3                    ; 3 uses
  %i.ip = icmp ult i32 %i.il, 32
  br i1 %i.ip, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.in, 536870908
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i.i.new
  %.05.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.jb, %bb.bb ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.bb ]
  %i.iq = load ptr, ptr %i.io, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.05.i.i
  store atomic i8 -1, ptr %i.ir monotonic, align 1
  %i.is = load ptr, ptr %i.io, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %.05.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  store atomic i8 -1, ptr %i.iu monotonic, align 1
  %i.iv = load ptr, ptr %i.io, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.05.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  store atomic i8 -1, ptr %i.ix monotonic, align 1
  %i.iy = load ptr, ptr %i.io, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.05.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 3
  store atomic i8 -1, ptr %i.ja monotonic, align 1
  %i.jb = add nuw nsw i64 %.05.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK2v88internal4wasm10WasmModule27set_all_functions_validatedEv.exit.i.loopexit.unr-lcssa, label %bb.bb, !llvm.loop !40

_ZNK2v88internal4wasm10WasmModule27set_all_functions_validatedEv.exit.i.loopexit.unr-lcssa: ; preds = %bb.bb
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2v88internal4wasm10WasmModule27set_all_functions_validatedEv.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK2v88internal4wasm10WasmModule27set_all_functions_validatedEv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.05.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.jb, %_ZNK2v88internal4wasm10WasmModule27set_all_functions_validatedEv.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod266 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod266)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader
  %.05.i.i.epil = phi i64 [ %.05.i.i.epil.init, %.epil.preheader ], [ %i.je, %bb.bc ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bc ]
  %i.jc = load ptr, ptr %i.io, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.05.i.i.epil
  store atomic i8 -1, ptr %i.jd monotonic, align 1
  %i.je = add nuw nsw i64 %.05.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2v88internal4wasm10WasmModule27set_all_functions_validatedEv.exit.i, label %bb.bc, !llvm.loop !41

_ZNK2v88internal4wasm10WasmModule27set_all_functions_validatedEv.exit.i: ; preds = %_ZNK2v88internal4wasm10WasmModule27set_all_functions_validatedEv.exit.i.loopexit.unr-lcssa, %bb.bc, %bb.ba, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %20) #24
  %i.jf = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store i64 8, ptr %i.jg, align 8
  %i.jh = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27 ; 2 uses
  store ptr %i.jh, ptr %i.jf, align 8
  %.06.i.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 24 ; 3 uses
  %i.ji = call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #27 ; 6 uses
  store ptr %i.ji, ptr %.06.i.i.ptr.i.i.i.i.i, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  store ptr %.06.i.i.ptr.i.i.i.i.i, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %i.ji, ptr %i.jl, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 504 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  store ptr %i.jm, ptr %i.jn, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 8 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %20, i64 80 ; 2 uses
  store ptr %.06.i.i.ptr.i.i.i.i.i, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %20, i64 64
  store ptr %i.ji, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %20, i64 72 ; 4 uses
  store ptr %i.jm, ptr %i.jr, align 8
  store ptr %i.ji, ptr %i.jj, align 8
  store ptr %i.ji, ptr %i.jo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.js = call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #24 ; 2 uses
  %i.jt = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #27, !noalias !43 ; 16 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal4wasm19DeserializeCodeTaskE, i64 16), ptr %i.jt, align 8, !noalias !43
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store ptr %33, ptr %i.ju, align 8, !noalias !43
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store ptr %20, ptr %i.jv, align 8, !noalias !43
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.jw) #24, !noalias !43
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 40
  store i64 8, ptr %i.jy, align 8, !noalias !43
  %i.jz = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !43 ; 2 uses
  store ptr %i.jz, ptr %i.jx, align 8, !noalias !43
  %.06.i.i.ptr.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 24 ; 3 uses
  %i.ka = call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #27, !noalias !43 ; 6 uses
  store ptr %i.ka, ptr %.06.i.i.ptr.i.i.i.i.i.i.i, align 8, !noalias !43
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jt, i64 72
  store ptr %.06.i.i.ptr.i.i.i.i.i.i.i, ptr %i.kc, align 8, !noalias !43
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  store ptr %i.ka, ptr %i.kd, align 8, !noalias !43
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 504 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jt, i64 64
  store ptr %i.ke, ptr %i.kf, align 8, !noalias !43
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jt, i64 80
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jt, i64 104
  store ptr %.06.i.i.ptr.i.i.i.i.i.i.i, ptr %i.kh, align 8, !noalias !43
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jt, i64 88
  store ptr %i.ka, ptr %i.ki, align 8, !noalias !43
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jt, i64 96
  store ptr %i.ke, ptr %i.kj, align 8, !noalias !43
  store ptr %i.ka, ptr %i.kb, align 8, !noalias !43
  store ptr %i.ka, ptr %i.kg, align 8, !noalias !43
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jt, i64 112
  store i8 0, ptr %i.kk, align 8, !noalias !43
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store ptr @.constant, ptr %16, align 8, !noalias !46
  %i.kl = ptrtoint ptr %i.jt to i64
  store i64 %i.kl, ptr %17, align 8, !noalias !46
  %i.km = load ptr, ptr %i.js, align 8, !noalias !46
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 136
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !46
  call void %i.ko(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.1073") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.js, i8 noundef zeroext 1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(8) %16) #24, !inline_history !49
  %i.kp = load ptr, ptr %17, align 8, !noalias !46 ; 3 uses
  %.not.i.i19.i = icmp eq ptr %i.kp, null
  br i1 %.not.i.i19.i, label %_ZNSt10unique_ptrIN2v88internal4wasm19DeserializeCodeTaskESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i.i: ; preds = %_ZNK2v88internal4wasm10WasmModule27set_all_functions_validatedEv.exit.i
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kp) #24, !inline_history !50
  br label %_ZNSt10unique_ptrIN2v88internal4wasm19DeserializeCodeTaskESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN2v88internal4wasm19DeserializeCodeTaskESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i.i, %_ZNK2v88internal4wasm10WasmModule27set_all_functions_validatedEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.kt = load i64, ptr %i.fr, align 8
  %i.ku = udiv i64 %i.kt, 100
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.ku, i64 100000)
  %i.kv = icmp ult i32 %i.ig, %i.ih
  br i1 %i.kv, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm19DeserializeCodeTaskESt14default_deleteIS3_EED2Ev.exit.i
  %i.kw = getelementptr inbounds nuw i8, ptr %33, i64 120 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %33, i64 128 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %33, i64 136 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %33, i64 96 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %33, i64 104 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %33, i64 112 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %33, i64 72 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %33, i64 80 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.lf = getelementptr inbounds nuw i8, ptr %33, i64 88
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.lg = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  br label %.backedge

._crit_edge.i:                                    ; preds = %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i
  %i.li = icmp eq ptr %.sroa.072.1.i, %.sroa.12.1.i
  br i1 %i.li, label %._crit_edge.thread.i, label %bb.cd

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.lr.ph.i ], [ %.sroa.6.2.be, %.backedge.backedge ] ; 19 uses
  %.0120.i = phi i32 [ %i.ig, %.lr.ph.i ], [ %.0120.i.be, %.backedge.backedge ] ; 8 uses
  %.013119.i = phi i64 [ 0, %.lr.ph.i ], [ %.013119.i.be, %.backedge.backedge ] ; 3 uses
  %.sroa.22.0118.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.22.0118.i.be, %.backedge.backedge ] ; 7 uses
  %.sroa.12.0117.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.12.0117.i.be, %.backedge.backedge ] ; 8 uses
  %.sroa.072.0116.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.072.0116.i.be, %.backedge.backedge ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %.0.copyload.i.i.i23.i = load i8, ptr %.sroa.6.2, align 1, !noalias !51
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 1 ; 2 uses
  switch i8 %.0.copyload.i.i.i23.i, label %bb.bp [
    i8 2, label %bb.bd
    i8 3, label %bb.bj
  ]

bb.bd:                                            ; preds = %.backedge
  %i.lk = load ptr, ptr %i.la, align 8, !noalias !51 ; 3 uses
  %i.ll = load ptr, ptr %i.lb, align 8, !noalias !51
  %.not.i.i24.i = icmp eq ptr %i.lk, %i.ll
  br i1 %.not.i.i24.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 %.0120.i, ptr %i.lk, align 4, !noalias !51
  %i.lm = load ptr, ptr %i.la, align 8, !noalias !51
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  store ptr %i.ln, ptr %i.la, align 8, !noalias !51
  br label %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i

bb.bf:                                            ; preds = %bb.bd
  %i.lo = load ptr, ptr %i.kz, align 8, !noalias !51 ; 4 uses
  %i.lp = ptrtoint ptr %i.lk to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq                    ; 6 uses
  %i.ls = icmp eq i64 %i.lr, 9223372036854775804
  br i1 %i.ls, label %bb.bg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26, !noalias !51
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bf
  %i.lt = ashr exact i64 %i.lr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lt, i64 1)
  %i.lu = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.lt ; 2 uses
  %i.lv = icmp ult i64 %i.lu, %i.lt
  %i.lw = call i64 @llvm.umin.i64(i64 %i.lu, i64 2305843009213693951)
  %i.lx = select i1 %i.lv, i64 2305843009213693951, i64 %i.lw ; 3 uses
  %.not.i.i.i.i.i83 = icmp ne i64 %i.lx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i83)
  %i.ly = shl nuw nsw i64 %i.lx, 2
  %i.lz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ly) #27, !noalias !51 ; 4 uses
  %i.ma = getelementptr inbounds i8, ptr %i.lz, i64 %i.lr ; 2 uses
  store i32 %.0120.i, ptr %i.ma, align 4, !noalias !51
  %i.mb = icmp sgt i64 %i.lr, 0
  br i1 %i.mb, label %bb.bh, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.bh:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lz, ptr align 4 %i.lo, i64 %i.lr, i1 false), !noalias !51
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.bh, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %.not.i17.i.i.i.i = icmp eq ptr %i.lo, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.lr) #25, !noalias !51
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.bi, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.lz, ptr %i.kz, align 8, !noalias !51
  store ptr %i.mc, ptr %i.la, align 8, !noalias !51
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.lx
  store ptr %i.md, ptr %i.lb, align 8, !noalias !51
  br label %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i

bb.bj:                                            ; preds = %.backedge
  %i.me = load ptr, ptr %i.kx, align 8, !noalias !51 ; 3 uses
  %i.mf = load ptr, ptr %i.ky, align 8, !noalias !51
  %.not.i63.i.i = icmp eq ptr %i.me, %i.mf
  br i1 %.not.i63.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 %.0120.i, ptr %i.me, align 4, !noalias !51
  %i.mg = load ptr, ptr %i.kx, align 8, !noalias !51
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  store ptr %i.mh, ptr %i.kx, align 8, !noalias !51
  br label %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i

bb.bl:                                            ; preds = %bb.bj
  %i.mi = load ptr, ptr %i.kw, align 8, !noalias !51 ; 4 uses
  %i.mj = ptrtoint ptr %i.me to i64
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = sub i64 %i.mj, %i.mk                    ; 6 uses
  %i.mm = icmp eq i64 %i.ml, 9223372036854775804
  br i1 %i.mm, label %bb.bm, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i64.i.i

bb.bm:                                            ; preds = %bb.bl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26, !noalias !51
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i64.i.i: ; preds = %bb.bl
  %i.mn = ashr exact i64 %i.ml, 2                 ; 3 uses
  %.sroa.speculated.i.i.i65.i.i = call i64 @llvm.umax.i64(i64 %i.mn, i64 1)
  %i.mo = add nsw i64 %.sroa.speculated.i.i.i65.i.i, %i.mn ; 2 uses
  %i.mp = icmp ult i64 %i.mo, %i.mn
  %i.mq = call i64 @llvm.umin.i64(i64 %i.mo, i64 2305843009213693951)
  %i.mr = select i1 %i.mp, i64 2305843009213693951, i64 %i.mq ; 3 uses
  %.not.i.i.i66.i.i = icmp ne i64 %i.mr, 0
  call void @llvm.assume(i1 %.not.i.i.i66.i.i)
  %i.ms = shl nuw nsw i64 %i.mr, 2
  %i.mt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ms) #27, !noalias !51 ; 4 uses
  %i.mu = getelementptr inbounds i8, ptr %i.mt, i64 %i.ml ; 2 uses
  store i32 %.0120.i, ptr %i.mu, align 4, !noalias !51
  %i.mv = icmp sgt i64 %i.ml, 0
  br i1 %i.mv, label %bb.bn, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67.i.i

bb.bn:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i64.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mt, ptr align 4 %i.mi, i64 %i.ml, i1 false), !noalias !51
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67.i.i: ; preds = %bb.bn, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i64.i.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %.not.i17.i.i68.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i17.i.i68.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.ml) #25, !noalias !51
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69.i.i: ; preds = %bb.bo, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67.i.i
  store ptr %i.mt, ptr %i.kw, align 8, !noalias !51
  store ptr %i.mw, ptr %i.kx, align 8, !noalias !51
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.mr
  store ptr %i.mx, ptr %i.ky, align 8, !noalias !51
  br label %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i

bb.bp:                                            ; preds = %.backedge
  %.0.copyload.i.i72.i.i = load i32, ptr %i.lj, align 1, !noalias !51
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 5
  %.0.copyload.i.i74.i.i = load i32, ptr %i.my, align 1, !noalias !51
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 9
  %.0.copyload.i.i76.i.i = load i32, ptr %i.mz, align 1, !noalias !51
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 13
  %.0.copyload.i.i78.i.i = load i32, ptr %i.na, align 1, !noalias !51
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 17
  %.0.copyload.i.i80.i.i = load i32, ptr %i.nb, align 1, !noalias !51
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 21
  %.0.copyload.i.i82.i.i = load i32, ptr %i.nc, align 1, !noalias !51
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 25
  %.0.copyload.i.i84.i.i = load i32, ptr %i.nd, align 1, !noalias !51
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 29
  %.0.copyload.i.i86.i.i = load i32, ptr %i.ne, align 1, !noalias !51
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 33
  %.0.copyload.i.i88.i.i = load i32, ptr %i.nf, align 1, !noalias !51
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 37
  %.0.copyload.i.i90.i.i = load i32, ptr %i.ng, align 1, !noalias !51
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 41
  %.0.copyload.i.i92.i.i = load i32, ptr %i.nh, align 1, !noalias !51
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 45
  %.0.copyload.i.i94.i.i = load i32, ptr %i.ni, align 1, !noalias !51
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 49
  %.0.copyload.i.i96.i.i = load i32, ptr %i.nj, align 1, !noalias !51
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 53
  %.0.copyload.i.i98.i.i = load i32, ptr %i.nk, align 1, !noalias !51
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 57
  %.0.copyload.i.i100.i.i = load i32, ptr %i.nl, align 1, !noalias !51
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 61
  %.0.copyload.i.i102.i.i = load i32, ptr %i.nm, align 1, !noalias !51
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 65
  %.0.copyload.i.i104.i.i = load i8, ptr %i.nn, align 1, !noalias !51
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 66 ; 3 uses
  %i.np = load i64, ptr %i.lc, align 8, !noalias !51 ; 2 uses
  %i.nq = sext i32 %.0.copyload.i.i90.i.i to i64  ; 8 uses
  %i.nr = icmp ult i64 %i.np, %i.nq
  %.pre182 = load i64, ptr %i.fr, align 8, !noalias !51 ; 2 uses
  %.pre184 = load ptr, ptr %33, align 8, !noalias !51 ; 2 uses
  br i1 %i.nr, label %bb.bq, label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.ns = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 732), align 4, !noalias !51
  %i.nt = mul i32 %i.ns, 9437184
  %i.nu = udiv i32 %i.nt, 10
  %i.nv = add nuw nsw i32 %i.nu, 63
  %i.nw = and i32 %i.nv, 1073741760
  %i.nx = zext nneg i32 %i.nw to i64
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.pre182, i64 %i.nx)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !51
  call void @_ZN2v88internal4wasm12NativeModule27AllocateForDeserializedCodeEm(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1110") align 8 %9, ptr noundef nonnull align 8 dereferenceable(552) %.pre184, i64 noundef %.sroa.speculated.i.i) #24, !noalias !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 16, i1 false), !noalias !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, ptr noundef nonnull align 8 dereferenceable(16) %i.le, i64 16, i1 false), !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !51
  %i.ny = load i64, ptr %i.lf, align 8, !noalias !51
  %.not.i25.i = icmp eq i64 %i.ny, 0
  br i1 %.not.i25.i, label %bb.br, label %._ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit.i.i_crit_edge, !prof !19

._ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit.i.i_crit_edge: ; preds = %bb.bq
  %.pre = load i64, ptr %i.lc, align 8, !noalias !51
  %.pre181 = load i64, ptr %i.fr, align 8, !noalias !51
  %.pre183 = load ptr, ptr %33, align 8, !noalias !51
  br label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit.i.i

bb.br:                                            ; preds = %bb.bq
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.34) #26, !noalias !51
  unreachable

_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %._ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit.i.i_crit_edge, %bb.bp
  %i.nz = phi ptr [ %.pre183, %._ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit.i.i_crit_edge ], [ %.pre184, %bb.bp ]
  %i.oa = phi i64 [ %.pre181, %._ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit.i.i_crit_edge ], [ %.pre182, %bb.bp ]
  %i.ob = phi i64 [ %.pre, %._ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit.i.i_crit_edge ], [ %i.np, %bb.bp ]
  %i.oc = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nq ; 2 uses
  %i.od = sext i32 %.0.copyload.i.i92.i.i to i64  ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.od ; 2 uses
  %i.of = sext i32 %.0.copyload.i.i94.i.i to i64  ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.of ; 2 uses
  %i.oh = sext i32 %.0.copyload.i.i96.i.i to i64  ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.oh ; 2 uses
  %i.oj = sext i32 %.0.copyload.i.i98.i.i to i64  ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.oj ; 2 uses
  %i.ol = sext i32 %.0.copyload.i.i100.i.i to i64 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.ol ; 4 uses
  %i.on = load ptr, ptr %i.fx, align 8, !noalias !51 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.nq
  store ptr %i.oo, ptr %i.fx, align 8, !noalias !51
  %i.op = sub i64 %i.ob, %i.nq
  store i64 %i.op, ptr %i.lc, align 8, !noalias !51
  %i.oq = sub i64 %i.oa, %i.nq
  store i64 %i.oq, ptr %i.fr, align 8, !noalias !51
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !51
  store ptr %i.ok, ptr %11, align 8, !noalias !51
  store i64 %i.ol, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !51
  store ptr %i.oc, ptr %12, align 8, !noalias !51
  store i64 %i.od, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !51
  store ptr %i.oe, ptr %13, align 8, !noalias !51
  store i64 %i.of, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !51
  store ptr %i.og, ptr %14, align 8, !noalias !51
  store i64 %i.oh, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !51
  store ptr %i.oi, ptr %15, align 8, !noalias !51
  store i64 %i.oj, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !51
  call void @_ZN2v88internal4wasm12NativeModule19AddDeserializedCodeEiNS_4base6VectorIhEEiijiiiiiiNS4_IKhEES7_S7_S7_S7_NS1_8WasmCode4KindENS1_13ExecutionTierE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %10, ptr noundef nonnull align 8 dereferenceable(552) %i.nz, i32 noundef %.0120.i, ptr %i.on, i64 %i.nq, i32 noundef %.0.copyload.i.i84.i.i, i32 noundef %.0.copyload.i.i86.i.i, i32 noundef %.0.copyload.i.i88.i.i, i32 noundef %.0.copyload.i.i74.i.i, i32 noundef %.0.copyload.i.i76.i.i, i32 noundef %.0.copyload.i.i72.i.i, i32 noundef %.0.copyload.i.i78.i.i, i32 noundef %.0.copyload.i.i80.i.i, i32 noundef %.0.copyload.i.i82.i.i, ptr noundef nonnull byval(%"class.v8::base::Vector.6") align 8 %11, ptr noundef nonnull byval(%"class.v8::base::Vector.6") align 8 %12, ptr noundef nonnull byval(%"class.v8::base::Vector.6") align 8 %13, ptr noundef nonnull byval(%"class.v8::base::Vector.6") align 8 %14, ptr noundef nonnull byval(%"class.v8::base::Vector.6") align 8 %15, i32 noundef %.0.copyload.i.i102.i.i, i8 noundef signext %.0.copyload.i.i104.i.i) #24, !noalias !51
  %i.or = load ptr, ptr %10, align 8, !noalias !51 ; 4 uses
  %.pre126.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 923), align 1, !range !10, !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !51
  %.sroa.15.i.sroa.0.0.copyload = load <2 x i64>, ptr %i.ld, align 8 ; 2 uses
  %i.os = trunc nuw i8 %.pre126.i.i to i1
  br i1 %i.os, label %bb.bs, label %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i

bb.bs:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.ot = load ptr, ptr %33, align 8, !noalias !51
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 216
  %i.ov = load ptr, ptr %i.ou, align 8, !noalias !51 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 84
  %i.ox = load i32, ptr %i.ow, align 4, !noalias !51
  %i.oy = sub i32 %.0120.i, %i.ox                 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 824
  %i.pa = ashr i32 %i.oy, 3
  %i.pb = sext i32 %i.pa to i64
  %i.pc = load ptr, ptr %i.oz, align 8, !noalias !51
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pb ; 2 uses
  %i.pe = load atomic i8, ptr %i.pd monotonic, align 1, !noalias !51 ; 2 uses
  %i.pf = and i32 %i.oy, 7
  %i.pg = shl nuw nsw i32 1, %i.pf                ; 3 uses
  %i.ph = zext i8 %i.pe to i32
  %i.pi = and i32 %i.pg, %i.ph
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %.lr.ph.i.i.i, label %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.bs
  %i.pk = trunc nuw i32 %i.pg to i8
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt13__atomic_baseIhE21compare_exchange_weakERhhSt12memory_orderS2_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi i8 [ %i.pe, %.lr.ph.i.i.i ], [ %i.po, %_ZNSt13__atomic_baseIhE21compare_exchange_weakERhhSt12memory_orderS2_.exit.i.i.i ] ; 2 uses
  %i.pl = or i8 %.012.i.i.i, %i.pk
  %i.pm = cmpxchg weak ptr %i.pd, i8 %.012.i.i.i, i8 %i.pl monotonic monotonic, align 1, !noalias !51 ; 2 uses
  %i.pn = extractvalue { i8, i1 } %i.pm, 1
  br i1 %i.pn, label %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i, label %_ZNSt13__atomic_baseIhE21compare_exchange_weakERhhSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIhE21compare_exchange_weakERhhSt12memory_orderS2_.exit.i.i.i: ; preds = %bb.bt
  %i.po = extractvalue { i8, i1 } %i.pm, 0        ; 2 uses
  %i.pp = zext i8 %i.po to i32
  %i.pq = and i32 %i.pg, %i.pp
  %i.pr = icmp eq i32 %i.pq, 0
  br i1 %i.pr, label %bb.bt, label %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i, !llvm.loop !54

_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69.i.i, %bb.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i

_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i: ; preds = %_ZNSt13__atomic_baseIhE21compare_exchange_weakERhhSt12memory_orderS2_.exit.i.i.i, %bb.bt, %bb.bs, %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %.not103.i = icmp eq ptr %i.or, null
  br i1 %.not103.i, label %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.pt = load i32, ptr %i.ps, align 8
  %i.pu = sext i32 %i.pt to i64
  %i.pv = add i64 %.013119.i, %i.pu               ; 2 uses
  %.not.i26.i = icmp eq ptr %.sroa.12.0117.i, %.sroa.22.0118.i
  br i1 %.not.i26.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.no, ptr %.sroa.12.0117.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.12.0117.i, i64 8
  store i64 %i.nq, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.12.0117.i, i64 16
  %i.px = ptrtoint ptr %i.or to i64
  store i64 %i.px, ptr %i.pw, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.12.0117.i, i64 24
  store <2 x i64> %.sroa.15.i.sroa.0.0.copyload, ptr %i.py, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.pz = ptrtoint ptr %.sroa.22.0118.i to i64
  %i.qa = ptrtoint ptr %.sroa.072.0116.i to i64
  %i.qb = sub i64 %i.pz, %i.qa                    ; 4 uses
  %i.qc = icmp eq i64 %i.qb, 9223372036854775800
  br i1 %i.qc, label %bb.bx, label %_ZNKSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.bx:                                            ; preds = %bb.bw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
  unreachable

_ZNKSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bw
  %i.qd = sdiv exact i64 %i.qb, 40                ; 3 uses
  %.sroa.speculated.i.i60.i = call i64 @llvm.umax.i64(i64 %i.qd, i64 1)
  %i.qe = add nsw i64 %.sroa.speculated.i.i60.i, %i.qd ; 2 uses
  %i.qf = icmp ult i64 %i.qe, %i.qd
  %i.qg = call i64 @llvm.umin.i64(i64 %i.qe, i64 230584300921369395)
  %i.qh = select i1 %i.qf, i64 230584300921369395, i64 %i.qg ; 3 uses
  %.not.i.i61.i = icmp ne i64 %i.qh, 0
  call void @llvm.assume(i1 %.not.i.i61.i)
  %i.qi = mul nuw nsw i64 %i.qh, 40
  %i.qj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qi) #27 ; 5 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.qb ; 4 uses
  store ptr %i.no, ptr %i.qk, align 8
  %.sroa.6.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store i64 %i.nq, ptr %.sroa.6.0..sroa_idx65.i, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = ptrtoint ptr %i.or to i64
  store i64 %i.qm, ptr %i.ql, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  store <2 x i64> %.sroa.15.i.sroa.0.0.copyload, ptr %i.qn, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.072.0116.i, %.sroa.22.0118.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.qu, %.lr.ph.i.i.i.i.i ], [ %i.qj, %_ZNKSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 4 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.qt, %.lr.ph.i.i.i.i.i ], [ %.sroa.072.0116.i, %_ZNKSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !60
  %i.qo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.qp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.qq = load i64, ptr %i.qp, align 8, !alias.scope !58, !noalias !55
  store i64 %i.qq, ptr %i.qo, align 8, !alias.scope !55, !noalias !58
  store ptr null, ptr %i.qp, align 8, !alias.scope !58, !noalias !55
  %i.qr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.qs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qr, ptr noundef nonnull align 8 dereferenceable(16) %i.qs, i64 16, i1 false), !alias.scope !60
  %i.qt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i62.i = icmp eq ptr %i.qt, %.sroa.22.0118.i
  br i1 %.not.i.i.i.i62.i, label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !61

_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.qj, %_ZNKSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.qu, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.072.0116.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.072.0116.i, i64 noundef %i.qb) #25
  br label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.by, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.qv = getelementptr inbounds nuw [40 x i8], ptr %i.qj, i64 %i.qh
  br label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i

_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i: ; preds = %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.bv
  %.sroa.072.3.i = phi ptr [ %i.qj, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.072.0116.i, %bb.bv ] ; 2 uses
  %.0.lcssa.i.i.i.i.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.12.0117.i, %bb.bv ]
  %.sroa.22.3.i = phi ptr [ %i.qv, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.22.0118.i, %bb.bv ] ; 2 uses
  %.sroa.12.3.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn.i, i64 40 ; 2 uses
  %.not16.i = icmp ult i64 %i.pv, %.sroa.speculated.i
  br i1 %.not16.i, label %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i
  store ptr %.sroa.072.3.i, ptr %22, align 8
  store ptr %.sroa.12.3.i, ptr %i.lg, align 8
  store ptr %.sroa.22.3.i, ptr %i.lh, align 8
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(88) %20) #24
  %i.qw = load ptr, ptr %i.jo, align 8            ; 4 uses
  %i.qx = load ptr, ptr %i.jr, align 8
  %i.qy = getelementptr inbounds i8, ptr %i.qx, i64 -24
  %.not.i.i.i28.i = icmp eq ptr %i.qw, %i.qy
  br i1 %.not.i.i.i28.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.qz = load ptr, ptr %22, align 8
  store ptr %i.qz, ptr %i.qw, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rb = load ptr, ptr %i.lg, align 8
  store ptr %i.rb, ptr %i.ra, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.rd = load ptr, ptr %i.lh, align 8
  store ptr %i.rd, ptr %i.rc, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.re = load ptr, ptr %i.jo, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  store ptr %i.rf, ptr %i.jo, align 8
  br label %_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit.i

bb.cb:                                            ; preds = %bb.bz
  call void @_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_push_back_auxIJS6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.jf, ptr noundef nonnull align 8 dereferenceable(24) %22)
  br label %_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit.i

_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit.i: ; preds = %bb.cb, %bb.ca
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(88) %20) #24
  %i.rg = load ptr, ptr %22, align 8              ; 3 uses
  %i.rh = load ptr, ptr %i.lg, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.rg, %i.rh
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit.i, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.rk, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i ], [ %i.rg, %_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit.i ] ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.rj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZN2v88internal4wasm8WasmCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112) %i.rj) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.rj, i64 noundef 112) #25
  br label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.rk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i29.i = icmp eq ptr %i.rk, %i.rh
  br i1 %.not.i.i.i29.i, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !62

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %22, align 8
  br label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i, %_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit.i
  %i.rl = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i ], [ %i.rg, %_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.rl, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread, label %bb.cc

bb.cc:                                            ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i
  %i.rm = load ptr, ptr %i.lh, align 8
  %i.rn = ptrtoint ptr %i.rm to i64
  %i.ro = ptrtoint ptr %i.rl to i64
  %i.rp = sub i64 %i.rn, %i.ro
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.rp) #25
  br label %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread

_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i: ; preds = %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i
  %.sroa.6.3 = phi ptr [ %i.om, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i ], [ %i.om, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ], [ %i.lj, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i ] ; 3 uses
  %.sroa.072.1.i = phi ptr [ %.sroa.072.0116.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i ], [ %.sroa.072.3.i, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ], [ %.sroa.072.0116.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i ] ; 5 uses
  %.sroa.12.1.i = phi ptr [ %.sroa.12.0117.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i ], [ %.sroa.12.3.i, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ], [ %.sroa.12.0117.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i ] ; 4 uses
  %.sroa.22.1.i = phi ptr [ %.sroa.22.0118.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i ], [ %.sroa.22.3.i, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ], [ %.sroa.22.0118.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i ] ; 4 uses
  %.2.i = phi i64 [ %.013119.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i ], [ %i.pv, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ], [ %.013119.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i ]
  %i.rq = add nuw i32 %.0120.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.rq, %i.ih
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread
  %.sroa.6.2.be = phi ptr [ %.sroa.6.3, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i ], [ %i.om, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread ]
  %.0120.i.be = phi i32 [ %i.rq, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i ], [ %i.rv, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread ]
  %.013119.i.be = phi i64 [ %.2.i, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i ], [ 0, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread ]
  %.sroa.22.0118.i.be = phi ptr [ %.sroa.22.1.i, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i ], [ null, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread ]
  %.sroa.12.0117.i.be = phi ptr [ %.sroa.12.1.i, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i ], [ null, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread ]
  %.sroa.072.0116.i.be = phi ptr [ %.sroa.072.1.i, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i ], [ null, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread ]
  br label %.backedge, !llvm.loop !63

_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread: ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i, %bb.cc
  %i.rr = load ptr, ptr %21, align 8              ; 2 uses
  %i.rs = load ptr, ptr %i.rr, align 8
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8
  call void %i.ru(ptr noundef nonnull align 8 dereferenceable(8) %i.rr) #24, !inline_history !64
  %i.rv = add nuw i32 %.0120.i, 1                 ; 2 uses
  %exitcond.not.i164 = icmp eq i32 %i.rv, %i.ih
  br i1 %exitcond.not.i164, label %._crit_edge.thread.i, label %.backedge.backedge

bb.cd:                                            ; preds = %._crit_edge.i
  store ptr %.sroa.072.1.i, ptr %23, align 8
  %i.rw = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store ptr %.sroa.12.1.i, ptr %i.rw, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %.sroa.22.1.i, ptr %i.rx, align 8
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(88) %20) #24
  %i.ry = load ptr, ptr %i.jo, align 8            ; 4 uses
  %i.rz = load ptr, ptr %i.jr, align 8
  %i.sa = getelementptr inbounds i8, ptr %i.rz, i64 -24
  %.not.i.i.i32.i = icmp eq ptr %i.ry, %i.sa
  br i1 %.not.i.i.i32.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store ptr %.sroa.072.1.i, ptr %i.ry, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store ptr %.sroa.12.1.i, ptr %i.sb, align 8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store ptr %.sroa.22.1.i, ptr %i.sc, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.sd = load ptr, ptr %i.jo, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  store ptr %i.se, ptr %i.jo, align 8
  br label %_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit33.i

bb.cf:                                            ; preds = %bb.cd
  call void @_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_push_back_auxIJS6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.jf, ptr noundef nonnull align 8 dereferenceable(24) %23)
  br label %_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit33.i

_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit33.i: ; preds = %bb.cf, %bb.ce
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(88) %20) #24
  %i.sf = load ptr, ptr %23, align 8              ; 3 uses
  %i.sg = load ptr, ptr %i.rw, align 8            ; 2 uses
  %.not4.i.i.i34.i = icmp eq ptr %i.sf, %i.sg
  br i1 %.not4.i.i.i34.i, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i43.i, label %.lr.ph.i.i.i35.i

.lr.ph.i.i.i35.i:                                 ; preds = %_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit33.i, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i39.i
  %.05.i.i.i36.i = phi ptr [ %i.sj, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i39.i ], [ %i.sf, %_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit33.i ] ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.05.i.i.i36.i, i64 16
  %i.si = load ptr, ptr %i.sh, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i37.i = icmp eq ptr %i.si, null
  br i1 %.not.i.i.i.i.i.i.i37.i, label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i39.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i38.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i38.i: ; preds = %.lr.ph.i.i.i35.i
  call void @_ZN2v88internal4wasm8WasmCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112) %i.si) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.si, i64 noundef 112) #25
  br label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i39.i

_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i39.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i38.i, %.lr.ph.i.i.i35.i
  %i.sj = getelementptr inbounds nuw i8, ptr %.05.i.i.i36.i, i64 40 ; 2 uses
  %.not.i.i.i40.i = icmp eq ptr %i.sj, %i.sg
  br i1 %.not.i.i.i40.i, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i41.i, label %.lr.ph.i.i.i35.i, !llvm.loop !62

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i41.i: ; preds = %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i39.i
  %.pr.i42.i = load ptr, ptr %23, align 8
  br label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i43.i

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i43.i: ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i41.i, %_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit33.i
  %i.sk = phi ptr [ %.pr.i42.i, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i41.i ], [ %i.sf, %_ZN2v88internal4wasm20DeserializationQueue3AddESt6vectorINS1_19DeserializationUnitESaIS4_EE.exit33.i ] ; 3 uses
  %.not.i.i1.i44.i = icmp eq ptr %i.sk, null
  br i1 %.not.i.i1.i44.i, label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit45.i, label %bb.cg

bb.cg:                                            ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i43.i
  %i.sl = load ptr, ptr %i.rx, align 8
  %i.sm = ptrtoint ptr %i.sl to i64
  %i.sn = ptrtoint ptr %i.sk to i64
  %i.so = sub i64 %i.sm, %i.sn
  call void @_ZdlPvm(ptr noundef nonnull %i.sk, i64 noundef %i.so) #25
  br label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit45.i

_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit45.i: ; preds = %bb.cg, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i43.i
  %i.sp = load ptr, ptr %21, align 8              ; 2 uses
  %i.sq = load ptr, ptr %i.sp, align 8
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8
  call void %i.ss(ptr noundef nonnull align 8 dereferenceable(8) %i.sp) #24, !inline_history !64
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit45.i, %._crit_edge.i, %_ZNSt10unique_ptrIN2v88internal4wasm19DeserializeCodeTaskESt14default_deleteIS3_EED2Ev.exit.i
  %.sroa.6.1 = phi ptr [ %.sroa.6.3, %._crit_edge.i ], [ %.sroa.6.3, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit45.i ], [ %.sroa.6.0, %_ZNSt10unique_ptrIN2v88internal4wasm19DeserializeCodeTaskESt14default_deleteIS3_EED2Ev.exit.i ], [ %i.om, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread ] ; 4 uses
  %.sroa.072.2.i = phi ptr [ %.sroa.072.1.i, %._crit_edge.i ], [ null, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit45.i ], [ null, %_ZNSt10unique_ptrIN2v88internal4wasm19DeserializeCodeTaskESt14default_deleteIS3_EED2Ev.exit.i ], [ null, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread ] ; 3 uses
  %.sroa.22.2.i = phi ptr [ %.sroa.22.1.i, %._crit_edge.i ], [ null, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit45.i ], [ null, %_ZNSt10unique_ptrIN2v88internal4wasm19DeserializeCodeTaskESt14default_deleteIS3_EED2Ev.exit.i ], [ null, %_ZN2v88internal4wasm19DeserializationUnitD2Ev.exit.i.thread ]
  %i.st = load ptr, ptr %21, align 8              ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.sw = load ptr, ptr %i.sv, align 8
  call void %i.sw(ptr noundef nonnull align 8 dereferenceable(8) %i.st) #24, !inline_history !64
  %i.sx = load ptr, ptr %33, align 8              ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 216
  %i.sz = load ptr, ptr %i.sy, align 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 96
  %i.tb = load i32, ptr %i.ta, align 8
  %i.tc = zext i32 %i.tb to i64
  %i.td = shl nuw nsw i64 %i.tc, 2                ; 3 uses
  %i.te = ptrtoint ptr %i.fz to i64
  %i.tf = ptrtoint ptr %.sroa.6.1 to i64
  %i.tg = sub i64 %i.te, %i.tf
  %i.th = icmp ugt i64 %i.td, %i.tg
  br i1 %i.th, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i55.i, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge.thread.i
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.6.1, i64 %i.td
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sx, i64 288
  %i.tk = load ptr, ptr %i.tj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tk, ptr align 1 %.sroa.6.1, i64 %i.td, i1 false)
  br label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i55.i

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i55.i: ; preds = %bb.ch, %._crit_edge.thread.i
  %.val17.i = phi ptr [ %.sroa.6.1, %._crit_edge.thread.i ], [ %i.ti, %bb.ch ]
  %i.tl = icmp eq ptr %i.fz, %.val17.i
  %.not.i.i1.i56.i = icmp eq ptr %.sroa.072.2.i, null
  br i1 %.not.i.i1.i56.i, label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit57.i, label %bb.ci

bb.ci:                                            ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i55.i
  %i.tm = ptrtoint ptr %.sroa.22.2.i to i64
  %i.tn = ptrtoint ptr %.sroa.072.2.i to i64
  %i.to = sub i64 %i.tm, %i.tn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.072.2.i, i64 noundef %i.to) #25
  br label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit57.i

_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit57.i: ; preds = %bb.ci, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i55.i
  %i.tp = load ptr, ptr %21, align 8              ; 3 uses
  %.not.i58.i = icmp eq ptr %i.tp, null
  br i1 %.not.i58.i, label %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit57.i
  %i.tq = load ptr, ptr %i.tp, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8
  call void %i.ts(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.tp) #24, !inline_history !65
  br label %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i.i, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.tt = load <2 x ptr>, ptr %i.jj, align 8, !noalias !66
  store <2 x ptr> %i.tt, ptr %7, align 16
  %i.tu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.tv = load <2 x ptr>, ptr %i.jn, align 8, !noalias !66
  store <2 x ptr> %i.tv, ptr %i.tu, align 16
  %i.tw = load <2 x ptr>, ptr %i.jo, align 8, !noalias !69
  store <2 x ptr> %i.tw, ptr %8, align 16
  %i.tx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ty = load <2 x ptr>, ptr %i.jr, align 8, !noalias !69
  store <2 x ptr> %i.ty, ptr %i.tx, align 16
  call void @_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE19_M_destroy_data_auxESt15_Deque_iteratorIS6_RS6_PS6_ESC_(ptr noundef nonnull align 8 dereferenceable(80) %i.jf, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.tz = load ptr, ptr %i.jf, align 8            ; 2 uses
  %.not.i.i.i.i59.i = icmp eq ptr %i.tz, null
  br i1 %.not.i.i.i.i59.i, label %_ZN2v88internal4wasm24NativeModuleDeserializer4ReadEPNS1_12_GLOBAL__N_16ReaderE.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EED2Ev.exit.i
  %i.ua = load ptr, ptr %i.jk, align 8            ; 2 uses
  %i.ub = load ptr, ptr %i.jp, align 8            ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = icmp ult ptr %i.ua, %i.uc
  br i1 %i.ud, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt11_Deque_baseISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cj, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.uf, %.lr.ph.i.i.i.i.i.i ], [ %i.ua, %bb.cj ] ; 3 uses
  %i.ue = load ptr, ptr %.06.i.i.i.i.i.i, align 8
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef 504) #25
  %i.uf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  %i.ug = icmp ult ptr %.06.i.i.i.i.i.i, %i.ub
  br i1 %i.ug, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt11_Deque_baseISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i.i.i.i, !llvm.loop !72

_ZNSt11_Deque_baseISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.jf, align 8
  br label %_ZNSt11_Deque_baseISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i.i.i.i

_ZNSt11_Deque_baseISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i.i.i.i: ; preds = %_ZNSt11_Deque_baseISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i.i.i.i, %bb.cj
  %i.uh = phi ptr [ %.pre.i.i.i.i.i, %_ZNSt11_Deque_baseISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i.i.i.i ], [ %i.tz, %bb.cj ]
  %i.ui = load i64, ptr %i.jg, align 8
  %i.uj = shl i64 %i.ui, 3
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.uj) #25
  br label %_ZN2v88internal4wasm24NativeModuleDeserializer4ReadEPNS1_12_GLOBAL__N_16ReaderE.exit

_ZN2v88internal4wasm24NativeModuleDeserializer4ReadEPNS1_12_GLOBAL__N_16ReaderE.exit.thread: ; preds = %_ZNK2v88internal4wasm18CompileTimeImports7compareERKS2_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN2v88internal4wasm24NativeModuleDeserializer10ReadHeaderEPNS1_12_GLOBAL__N_16ReaderE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.ck

_ZN2v88internal4wasm24NativeModuleDeserializer4ReadEPNS1_12_GLOBAL__N_16ReaderE.exit: ; preds = %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt11_Deque_baseISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i.i.i.i
  call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br i1 %i.tl, label %bb.cx, label %bb.ck

bb.ck:                                            ; preds = %_ZN2v88internal4wasm24NativeModuleDeserializer4ReadEPNS1_12_GLOBAL__N_16ReaderE.exit.thread, %_ZN2v88internal4wasm24NativeModuleDeserializer4ReadEPNS1_12_GLOBAL__N_16ReaderE.exit
  %i.uk = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ul = load <2 x ptr>, ptr %28, align 16
end_hunk_1
