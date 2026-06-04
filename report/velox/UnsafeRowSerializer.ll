inline.NumInlined: 1587
inline.NumDeleted: 951
begin_hunk_0_@_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox10serializer13RowSerializerINS0_3row13UnsafeRowFastEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox10serializer13RowSerializerINS0_3row13UnsafeRowFastEEE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly11compression5CodecEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5folly11compression5CodecEEclEPS2_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.b) #24, !inline_history !173
  br label %_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly11compression5CodecEEclEPS2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !244  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.g, %_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.j = load ptr, ptr %.05.i.i.i, align 8, !tbaa !246 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.c, !inline_history !249

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !250
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !31
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %..i.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.c, !inline_history !249

bb.c:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.b, %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !255

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.f, align 8, !tbaa !244
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit
  %i.y = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !256
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #25
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox10serializer13RowSerializerINS0_3row13UnsafeRowFastEED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox10serializer13RowSerializerINS0_3row13UnsafeRowFastEEE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5folly11compression5CodecEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5folly11compression5CodecEEclEPS2_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.b) #24, !inline_history !257
  br label %_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5folly11compression5CodecEEclEPS2_.exit.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !244  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit.i, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i ], [ %i.g, %_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit.i ] ; 2 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !246 ; 7 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.c, !inline_history !258

.noexc.i.i.i.i.i.i.i:                             ; preds = %.sink.split.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !250
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !31
  %..i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 8, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %..i.i.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i unwind label %bb.c, !inline_history !258

bb.c:                                             ; preds = %.noexc.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26, !inline_history !259
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i, %bb.b, %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !255

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.f, align 8, !tbaa !244
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit.i
  %i.y = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.g, %_ZNSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i, label %_ZN8facebook5velox10serializer13RowSerializerINS0_3row13UnsafeRowFastEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !256
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #25, !inline_history !259
  br label %_ZN8facebook5velox10serializer13RowSerializerINS0_3row13UnsafeRowFastEED2Ev.exit

_ZN8facebook5velox10serializer13RowSerializerINS0_3row13UnsafeRowFastEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10serializer13RowSerializerINS0_3row13UnsafeRowFastEE6appendERKSt10shared_ptrINS0_9RowVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEERNS0_7ScratchE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::row::UnsafeRowFast", align 8 ; 8 uses
  %5 = alloca %"class.std::vector", align 8       ; 11 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::optional.216", align 1 ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !260    ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 3 uses
  %.not6.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i, label %_ZSt10accumulateIPKN8facebook5velox10IndexRangeEiZNS1_10serializer13RowSerializerINS1_3row13UnsafeRowFastEE6appendERKSt10shared_ptrINS1_9RowVectorEERKN5folly5RangeIS4_EERNS1_7ScratchEEUliRKT_E_ET0_SM_SM_SQ_T1_.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = add i64 %i.d, -8
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = lshr i64 %i.g, 3
  %i.i = add nuw nsw i64 %i.h, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 32
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i64 %i.g, 256
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.i, 31                    ; 2 uses
  %i.j = icmp eq i64 %n.mod.vf, 0
  %i.k = select i1 %i.j, i64 32, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub nsw i64 %i.i, %i.k                 ; 3 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi120 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi121 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi122 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.n = shl i64 %index, 3                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.n
  %i.o = getelementptr i8, ptr %i.a, i64 %i.n
  %i.p = getelementptr i8, ptr %i.a, i64 %i.n
  %i.q = getelementptr i8, ptr %i.a, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr i8, ptr %i.o, i64 68
  %i.t = getelementptr i8, ptr %i.p, i64 132
  %i.u = getelementptr i8, ptr %i.q, i64 196
  %wide.vec = load <16 x i32>, ptr %i.r, align 4, !tbaa !264
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec126 = load <16 x i32>, ptr %i.s, align 4, !tbaa !264
  %strided.vec127 = shufflevector <16 x i32> %wide.vec126, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec128 = load <16 x i32>, ptr %i.t, align 4, !tbaa !264
  %strided.vec129 = shufflevector <16 x i32> %wide.vec128, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec130 = load <16 x i32>, ptr %i.u, align 4, !tbaa !264
  %strided.vec131 = shufflevector <16 x i32> %wide.vec130, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.v = add <8 x i32> %strided.vec, %vec.phi     ; 2 uses
  %i.w = add <8 x i32> %strided.vec127, %vec.phi120 ; 2 uses
  %i.x = add <8 x i32> %strided.vec129, %vec.phi121 ; 2 uses
  %i.y = add <8 x i32> %strided.vec131, %vec.phi122 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !266

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.w, %i.v
  %bin.rdx132 = add <8 x i32> %i.x, %bin.rdx
  %bin.rdx133 = add <8 x i32> %i.y, %bin.rdx132
  %i.aa = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx133) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.k, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !267

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.aa, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf134 = and i64 %i.i, 3                  ; 2 uses
  %i.ab = icmp eq i64 %n.mod.vf134, 0
  %i.ac = select i1 %i.ab, i64 4, i64 %n.mod.vf134
  %n.vec135 = sub nsw i64 %i.i, %i.ac             ; 2 uses
  %i.ad = shl i64 %n.vec135, 3
  %i.ae = getelementptr i8, ptr %i.a, i64 %i.ad
  %9 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi137 = phi <4 x i32> [ %9, %vec.epilog.ph ], [ %10, %vec.epilog.vector.body ]
  %i.af = shl i64 %index136, 3
  %next.gep138 = getelementptr i8, ptr %i.a, i64 %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %next.gep138, i64 4
  %wide.vec139 = load <8 x i32>, ptr %i.ag, align 4, !tbaa !264
  %strided.vec140 = shufflevector <8 x i32> %wide.vec139, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %10 = add <4 x i32> %strided.vec140, %vec.phi137 ; 2 uses
  %index.next141 = add nuw i64 %index136, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !268

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ai = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i32 [ 0, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.057.i.ph = phi ptr [ %i.a, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i32 [ %i.al, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ]
  %.057.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !264
  %i.al = add nsw i32 %i.ak, %.08.i               ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.am, %i.c
  br i1 %.not.i, label %_ZSt10accumulateIPKN8facebook5velox10IndexRangeEiZNS1_10serializer13RowSerializerINS1_3row13UnsafeRowFastEE6appendERKSt10shared_ptrINS1_9RowVectorEERKN5folly5RangeIS4_EERNS1_7ScratchEEUliRKT_E_ET0_SM_SM_SQ_T1_.exit, label %.lr.ph.i, !llvm.loop !269

_ZSt10accumulateIPKN8facebook5velox10IndexRangeEiZNS1_10serializer13RowSerializerINS1_3row13UnsafeRowFastEE6appendERKSt10shared_ptrINS1_9RowVectorEERKN5folly5RangeIS4_EERNS1_7ScratchEEUliRKT_E_ET0_SM_SM_SQ_T1_.exit: ; preds = %.lr.ph.i
  %i.an = icmp eq i32 %i.al, 0
  br i1 %i.an, label %_ZSt10accumulateIPKN8facebook5velox10IndexRangeEiZNS1_10serializer13RowSerializerINS1_3row13UnsafeRowFastEE6appendERKSt10shared_ptrINS1_9RowVectorEERKN5folly5RangeIS4_EERNS1_7ScratchEEUliRKT_E_ET0_SM_SM_SQ_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZSt10accumulateIPKN8facebook5velox10IndexRangeEiZNS1_10serializer13RowSerializerINS1_3row13UnsafeRowFastEE6appendERKSt10shared_ptrINS1_9RowVectorEERKN5folly5RangeIS4_EERNS1_7ScratchEEUliRKT_E_ET0_SM_SM_SQ_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN8facebook5velox3row13UnsafeRowFastC1ERKSt10shared_ptrINS0_9RowVectorEE(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ao = sext i32 %i.al to i64                   ; 4 uses
  %i.ap = icmp slt i32 %i.al, 0
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #27
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aq = shl nuw nsw i64 %i.ao, 2
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #23
          to label %.noexc48 unwind label %bb.s   ; 4 uses

.noexc48:                                         ; preds = %bb.d
  store ptr %i.ar, ptr %5, align 8, !tbaa !270
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !273
  store i32 0, ptr %i.ar, align 4, !tbaa !3
  %i.au = getelementptr i8, ptr %i.ar, i64 4      ; 3 uses
  %i.av = add nsw i64 %i.ao, -1                   ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.e, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc48
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.av, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.au, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.e

bb.e:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc48
  %.0.i.i.i.i.i = phi ptr [ %i.ax, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.au, %.noexc48 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i, ptr %i.ay, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.az = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !281, !noalias !284 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = call ptr @__dynamic_cast(ptr nonnull %i.bb, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #24, !noalias !284 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.not.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.bd, ptr %6, align 8, !tbaa !285, !alias.scope !284
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !67, !noalias !284 ; 3 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !67, !alias.scope !284
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !284
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !3, !noalias !284
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !3, !noalias !284
  br label %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit

bb.j:                                             ; preds = %bb.h
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 1 acq_rel, align 4, !noalias !284 ; 0 uses
  br label %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit

_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !284
  br label %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit

_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit: ; preds = %bb.g, %bb.i, %bb.j, %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i
  %i.bm = invoke i64 @_ZN8facebook5velox3row13UnsafeRowFast12fixedRowSizeERKSt10shared_ptrIKNS0_7RowTypeEE(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.k unwind label %bb.t       ; 3 uses

bb.k:                                             ; preds = %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit
  %.sroa.0.0.extract.trunc = trunc i64 %i.bm to i32 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !67 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bp, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !79
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #24, !inline_history !288
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #24, !inline_history !288
  br label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.bs, %bb.o ], [ %i.cc, %bb.p ]
  %i.cd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cd, label %bb.q, label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !81

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #24
  br label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ce = and i64 %i.bm, 4294967296
  %.not72 = icmp eq i64 %i.ce, 0
  br i1 %.not72, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cf = load ptr, ptr %5, align 8, !tbaa !289   ; 7 uses
  %i.cg = load ptr, ptr %i.ay, align 8, !tbaa !289 ; 3 uses
  %sext = shl i64 %i.bm, 32
  %i.ch = ashr exact i64 %sext, 32
  %i.ci = add nsw i64 %i.ch, 4
  %i.cj = mul nsw i64 %i.ci, %i.ao                ; 4 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %iter.check156

iter.check156:                                    ; preds = %bb.r
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = ptrtoint ptr %i.cf to i64
  %i.cm = add i64 %i.ck, -4
  %i.cn = sub i64 %i.cm, %i.cl                    ; 3 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 5 uses
  %min.iters.check144 = icmp ult i64 %i.cn, 12
  br i1 %min.iters.check144, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check145

vector.main.loop.iter.check145:                   ; preds = %iter.check156
  %min.iters.check146 = icmp ult i64 %i.cn, 124
  br i1 %min.iters.check146, label %vec.epilog.ph160, label %vector.ph147

vector.ph147:                                     ; preds = %vector.main.loop.iter.check145
  %n.mod.vf148 = and i64 %i.cp, 28
  %n.vec149 = and i64 %i.cp, 9223372036854775776  ; 4 uses
  %i.cq = shl i64 %n.vec149, 2
  %i.cr = getelementptr i8, ptr %i.cf, i64 %i.cq
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.sroa.0.0.extract.trunc, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph147
  %index151 = phi i64 [ 0, %vector.ph147 ], [ %index.next153, %vector.body150 ] ; 2 uses
  %i.cs = shl i64 %index151, 2
  %next.gep152 = getelementptr i8, ptr %i.cf, i64 %i.cs ; 4 uses
  %i.ct = getelementptr i8, ptr %next.gep152, i64 32
  %i.cu = getelementptr i8, ptr %next.gep152, i64 64
  %i.cv = getelementptr i8, ptr %next.gep152, i64 96
  store <8 x i32> %broadcast.splat, ptr %next.gep152, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ct, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.cu, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.cv, align 4, !tbaa !3
  %index.next153 = add nuw i64 %index151, 32      ; 2 uses
  %i.cw = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.cw, label %middle.block154, label %vector.body150, !llvm.loop !290

middle.block154:                                  ; preds = %vector.body150
  %cmp.n = icmp eq i64 %i.cp, %n.vec149
  br i1 %cmp.n, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %vec.epilog.iter.check158

vec.epilog.iter.check158:                         ; preds = %middle.block154
  %min.epilog.iters.check159 = icmp eq i64 %n.mod.vf148, 0
  br i1 %min.epilog.iters.check159, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph160, !prof !267

vec.epilog.ph160:                                 ; preds = %vector.main.loop.iter.check145, %vec.epilog.iter.check158
  %vec.epilog.resume.val155 = phi i64 [ %n.vec149, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check145 ]
  %n.vec162 = and i64 %i.cp, 9223372036854775804  ; 3 uses
  %i.cx = shl i64 %n.vec162, 2
  %i.cy = getelementptr i8, ptr %i.cf, i64 %i.cx
  %broadcast.splatinsert163 = insertelement <4 x i32> poison, i32 %.sroa.0.0.extract.trunc, i64 0
  %broadcast.splat164 = shufflevector <4 x i32> %broadcast.splatinsert163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body165

vec.epilog.vector.body165:                        ; preds = %vec.epilog.vector.body165, %vec.epilog.ph160
  %index166 = phi i64 [ %vec.epilog.resume.val155, %vec.epilog.ph160 ], [ %index.next168, %vec.epilog.vector.body165 ] ; 2 uses
  %i.cz = shl i64 %index166, 2
  %next.gep167 = getelementptr i8, ptr %i.cf, i64 %i.cz
  store <4 x i32> %broadcast.splat164, ptr %next.gep167, align 4, !tbaa !3
  %index.next168 = add nuw i64 %index166, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next168, %n.vec162
  br i1 %i.da, label %vec.epilog.middle.block169, label %vec.epilog.vector.body165, !llvm.loop !291

vec.epilog.middle.block169:                       ; preds = %vec.epilog.vector.body165
  %cmp.n170 = icmp eq i64 %i.cp, %n.vec162
  br i1 %cmp.n170, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check156, %vec.epilog.iter.check158, %vec.epilog.middle.block169
  %.06.i.i.i.i.ph = phi ptr [ %i.cf, %iter.check156 ], [ %i.cr, %vec.epilog.iter.check158 ], [ %i.cy, %vec.epilog.middle.block169 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i32 %.sroa.0.0.extract.trunc, ptr %.06.i.i.i.i, align 4, !tbaa !3
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.db, %i.cg
  br i1 %.not.i.i.i.i52, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !292

bb.s:                                             ; preds = %bb.d, %bb.c
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61

bb.t:                                             ; preds = %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.am

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.de = load ptr, ptr %2, align 8, !tbaa !260   ; 2 uses
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !263 ; 2 uses
  %.not82 = icmp eq ptr %i.de, %i.df
  br i1 %.not82, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.u, %._crit_edge
  %.085 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.u ] ; 2 uses
  %.03584 = phi ptr [ %i.dl, %._crit_edge ], [ %i.de, %bb.u ] ; 3 uses
  %.04083 = phi i32 [ %.141.lcssa, %._crit_edge ], [ 0, %bb.u ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.03584, i64 4 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !264
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.dj = sext i32 %.04083 to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.v
  %i.dk = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.141.lcssa = phi i32 [ %.04083, %.preheader ], [ %i.dk, %._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %.085, %.preheader ], [ %i.dt, %._crit_edge.loopexit ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.03584, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dl, %i.df
  br i1 %.not, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ %i.dj, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %.180 = phi i64 [ %.085, %.lr.ph.preheader ], [ %i.dt, %bb.v ]
  %.03179 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.du, %bb.v ] ; 2 uses
  %i.dm = load i32, ptr %.03584, align 4, !tbaa !293
  %i.dn = add nsw i32 %i.dm, %.03179
  %i.do = invoke noundef i32 @_ZNK8facebook5velox3row13UnsafeRowFast7rowSizeEi(ptr noundef nonnull align 8 dereferenceable(224) %4, i32 noundef %i.dn)
          to label %bb.v unwind label %bb.w       ; 2 uses

bb.v:                                             ; preds = %.lr.ph
  %i.dp = load ptr, ptr %5, align 8, !tbaa !270
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !3
  %i.dr = sext i32 %i.do to i64
  %i.ds = add i64 %.180, 4
  %i.dt = add i64 %i.ds, %i.dr                    ; 2 uses
  %i.du = add nuw nsw i32 %.03179, 1              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dv = load i32, ptr %i.dg, align 4, !tbaa !264
  %i.dw = icmp slt i32 %i.du, %i.dv
  br i1 %i.dw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !294

bb.w:                                             ; preds = %.lr.ph
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i, %._crit_edge, %middle.block154, %vec.epilog.middle.block169, %bb.r
  %.2 = phi i64 [ %i.cj, %middle.block154 ], [ %i.cj, %bb.r ], [ %.1.lcssa, %._crit_edge ], [ %i.cj, %vec.epilog.middle.block169 ], [ %i.cj, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.dy = icmp eq i64 %.2, 0
  br i1 %i.dy, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store i8 0, ptr %8, align 1, !tbaa !70
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 1
  store i8 1, ptr %i.eb, align 1, !tbaa !295
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %7, i64 noundef %.2, ptr noundef %i.ea, ptr noundef nonnull align 1 dereferenceable(2) %8, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.aj

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ec = load ptr, ptr %7, align 8, !tbaa !246   ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 44
  %i.ee = load i8, ptr %i.ed, align 4, !tbaa !297
  %i.ef = and i8 %i.ee, 2
  %.not.i53 = icmp eq i8 %i.ef, 0
  br i1 %.not.i53, label %bb.aa, label %bb.z, !prof !298

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc54 unwind label %bb.ak

.noexc54:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !299
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !245 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !256
  %.not.i.i55 = icmp eq ptr %i.ek, %i.em
  br i1 %.not.i.i55, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ec, ptr %i.ek, align 8, !tbaa !246
  store ptr null, ptr %7, align 8, !tbaa !246
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.en, ptr %i.ej, align 8, !tbaa !245
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE9push_backEOS5_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !244 ; 12 uses
  %i.ep = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.eq = ptrtoint ptr %i.eo to i64               ; 3 uses
  %i.er = sub i64 %i.ep, %i.eq                    ; 4 uses
  %i.es = icmp eq i64 %i.er, 9223372036854775800
  br i1 %i.es, label %bb.ad, label %_ZNKSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #27
          to label %.noexc65 unwind label %bb.ak

.noexc65:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ac
  %i.et = ashr exact i64 %i.er, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  %i.eu = add nsw i64 %.sroa.speculated.i.i, %i.et ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = call i64 @llvm.umin.i64(i64 %i.eu, i64 1152921504606846975)
  %i.ex = select i1 %i.ev, i64 1152921504606846975, i64 %i.ew ; 3 uses
  %.not.i.i62 = icmp ne i64 %i.ex, 0
  call void @llvm.assume(i1 %.not.i.i62)
  %i.ey = shl nuw nsw i64 %i.ex, 3
  %i.ez = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #23
          to label %.noexc66 unwind label %bb.ak  ; 12 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er
  store ptr %i.ec, ptr %i.fa, align 8, !tbaa !246
  store ptr null, ptr %7, align 8, !tbaa !246
  %.not10.i.i.i.i = icmp eq ptr %i.eo, %i.ek
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check191

iter.check191:                                    ; preds = %.noexc66
  %i.fb = add i64 %i.ep, -8
  %i.fc = sub i64 %i.fb, %i.eq                    ; 3 uses
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 5 uses
  %min.iters.check173 = icmp ult i64 %i.fc, 24
  br i1 %min.iters.check173, label %.lr.ph.i.i.i.i63.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check191
  %i.ff = add i64 %i.ep, -8
  %i.fg = sub i64 %i.ff, %i.eq
  %i.fh = and i64 %i.fg, -8
  %i.fi = add i64 %i.fh, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ez, i64 %i.fi
  %scevgep172 = getelementptr i8, ptr %i.eo, i64 %i.fi
  %bound0 = icmp ult ptr %i.ez, %scevgep172
  %bound1 = icmp ult ptr %i.eo, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i63.preheader, label %vector.main.loop.iter.check174

vector.main.loop.iter.check174:                   ; preds = %vector.memcheck
  %min.iters.check175 = icmp ult i64 %i.fc, 120
  br i1 %min.iters.check175, label %vec.epilog.ph195, label %vector.ph176

vector.ph176:                                     ; preds = %vector.main.loop.iter.check174
  %n.mod.vf177 = and i64 %i.fe, 12
  %n.vec178 = and i64 %i.fe, 4611686018427387888  ; 4 uses
  %i.fj = shl i64 %n.vec178, 3                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !572  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14RuntimeCounterEELb1EEEEE18_M_deallocate_nodeEPSE_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !70
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14RuntimeCounterEELb1EEEEE18_M_deallocate_nodeEPSE_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14RuntimeCounterEELb1EEEEE18_M_deallocate_nodeEPSE_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14RuntimeCounterEELb1EEEEE18_M_deallocate_nodeEPSE_.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !580
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14RuntimeCounterEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !81

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14RuntimeCounterEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14RuntimeCounterEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14RuntimeCounterEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !563  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !563
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !564 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !576
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !575  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !563
  store ptr %i.o, ptr %.031, align 8, !tbaa !564
  store ptr %.031, ptr %i.g, align 8, !tbaa !563
  store ptr %i.g, ptr %i.m, align 8, !tbaa !575
  %i.p = load ptr, ptr %.031, align 8, !tbaa !564
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !575
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !564
  store ptr %i.r, ptr %.031, align 8, !tbaa !564
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !575
  store ptr %.031, ptr %i.s, align 8, !tbaa !564
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !581

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !359    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !365
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #25
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !365
  store ptr %.0.i, ptr %0, align 8, !tbaa !359
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS3_EEPNS2_15ByteInputStreamEPKNS2_11VectorSerde7OptionsEEPSD_E9_M_invokeERKSt9_Any_dataOS8_OSC_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.46") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !59, !noalias !582
  %i.b = load ptr, ptr %2, align 8, !tbaa !107, !noalias !582
  %i.c = load ptr, ptr %3, align 8, !tbaa !112, !noalias !582
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.46") align 8 %0, ptr noundef %i.b, ptr noundef %i.c), !inline_history !587
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS3_EEPNS2_15ByteInputStreamEPKNS2_11VectorSerde7OptionsEEPSD_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS4_EEPNS3_15ByteInputStreamEPKNS3_11VectorSerde7OptionsEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS4_EEPNS3_15ByteInputStreamEPKNS3_11VectorSerde7OptionsEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS4_EEPNS3_15ByteInputStreamEPKNS3_11VectorSerde7OptionsEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !59
  br label %_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS4_EEPNS3_15ByteInputStreamEPKNS3_11VectorSerde7OptionsEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS4_EEPNS3_15ByteInputStreamEPKNS3_11VectorSerde7OptionsEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS2_EEPNS1_15ByteInputStreamEPKNS1_11VectorSerde7OptionsEE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !59
  br label %_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS4_EEPNS3_15ByteInputStreamEPKNS3_11VectorSerde7OptionsEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS4_EEPNS3_15ByteInputStreamEPKNS3_11VectorSerde7OptionsEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS4_EEPNS3_15ByteInputStreamEPKNS3_11VectorSerde7OptionsEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.212") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind allocsize(0) }

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
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSN8facebook5velox11StreamArenaE", !9, i64 8, !11, i64 16, !16, i64 40, !4, i64 80, !4, i64 84, !22, i64 88, !27, i64 112}
!9 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE", !12, i64 0}
!12 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE12_Vector_implE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS3_EE", !10, i64 0}
!16 = !{!"_ZTSN8facebook5velox6memory10AllocationE", !9, i64 0, !17, i64 8, !4, i64 32}
!17 = !{!"_ZTSSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE", !18, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE", !19, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE12_Vector_implE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"p1 _ZTSN8facebook5velox6memory10Allocation7PageRunE", !10, i64 0}
!22 = !{!"_ZTSSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_Vector_implE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 _ZTSN8facebook5velox6memory20ContiguousAllocationE", !10, i64 0}
!27 = !{!"long", !5, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZSt11make_uniqueIN8facebook5velox10serializer13RowSerializerINS1_3row13UnsafeRowFastEEEJPNS1_6memory10MemoryPoolERPKNS1_11VectorSerde7OptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!30 = distinct !{!30, !"_ZSt11make_uniqueIN8facebook5velox10serializer13RowSerializerINS1_3row13UnsafeRowFastEEEJPNS1_6memory10MemoryPoolERPKNS1_11VectorSerde7OptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !6, i64 0}
!33 = !{!34, !9, i64 8}
!34 = !{!"_ZTSN8facebook5velox10serializer13RowSerializerINS0_3row13UnsafeRowFastEEE", !35, i64 0, !9, i64 8, !36, i64 16, !41, i64 40, !44, i64 64, !4, i64 72, !51, i64 80}
!35 = !{!"_ZTSN8facebook5velox25IterativeVectorSerializerE"}
!36 = !{!"_ZTSSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 _ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !10, i64 0}
!41 = !{!"_ZTSN8facebook5velox11VectorSerde7OptionsE", !42, i64 8, !43, i64 16}
!42 = !{!"_ZTSN8facebook5velox6common15CompressionKindE", !5, i64 0}
!43 = !{!"float", !5, i64 0}
!44 = !{!"_ZTSSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EE", !45, i64 0}
!45 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly11compression5CodecESt14default_deleteIS2_ELb1ELb1EE", !46, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_implIN5folly11compression5CodecESt14default_deleteIS2_EE", !47, i64 0}
!47 = !{!"_ZTSSt5tupleIJPN5folly11compression5CodecESt14default_deleteIS2_EEE", !48, i64 0}
!48 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly11compression5CodecESt14default_deleteIS2_EEE", !49, i64 0}
!49 = !{!"_ZTSSt10_Head_baseILm0EPN5folly11compression5CodecELb0EE", !50, i64 0}
!50 = !{!"p1 _ZTSN5folly11compression5CodecE", !10, i64 0}
!51 = !{!"_ZTSN8facebook5velox16CompressionStatsE", !4, i64 0, !27, i64 8, !27, i64 16, !27, i64 24}
!52 = !{!41, !43, i64 16}
!53 = !{!34, !42, i64 48}
!54 = !{!34, !4, i64 72}
!55 = !{!51, !4, i64 0}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox25IterativeVectorSerializerELb0EE", !58, i64 0}
!58 = !{!"p1 _ZTSN8facebook5velox25IterativeVectorSerializerE", !10, i64 0}
!59 = !{!10, !10, i64 0}
!60 = !{!61, !10, i64 24}
!61 = !{!"_ZTSSt8functionIFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS3_EEPNS2_15ByteInputStreamEPKNS2_11VectorSerde7OptionsEEE", !62, i64 0, !10, i64 24}
!62 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!63 = !{!62, !10, i64 16}
!64 = !{!65, !65, i64 0}
!65 = !{!"p2 omnipotent char", !66, i64 0}
!66 = !{!"any p2 pointer", !10, i64 0}
!67 = !{!68, !69, i64 0}
!68 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !69, i64 0}
!69 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!70 = !{!5, !5, i64 0}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN8facebook5velox10BaseVector6createINS0_9RowVectorEEESt10shared_ptrIT_ERKS4_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE: argument 0"}
!73 = distinct !{!73, !"_ZN8facebook5velox10BaseVector6createINS0_9RowVectorEEESt10shared_ptrIT_ERKS4_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE"}
!74 = !{!75, !72}
!75 = distinct !{!75, !76, !"_ZSt19static_pointer_castIN8facebook5velox9RowVectorENS1_10BaseVectorEESt10shared_ptrIT_EOS4_IT0_E: argument 0"}
!76 = distinct !{!76, !"_ZSt19static_pointer_castIN8facebook5velox9RowVectorENS1_10BaseVectorEESt10shared_ptrIT_EOS4_IT0_E"}
!77 = !{!78, !4, i64 8}
!78 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!79 = !{!78, !4, i64 12}
!80 = distinct !{null, null, null, null, null}
!81 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!82 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!83 = !{!84, !85, i64 0}
!84 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EE", !85, i64 0, !68, i64 8}
!85 = !{!"p1 _ZTSN8facebook5velox9RowVectorE", !10, i64 0}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZSt20dynamic_pointer_castIN8facebook5velox9RowVectorES2_ESt10shared_ptrIT_EOS3_IT0_E: argument 0"}
!88 = distinct !{!88, !"_ZSt20dynamic_pointer_castIN8facebook5velox9RowVectorES2_ESt10shared_ptrIT_EOS3_IT0_E"}
!89 = !{!85, !85, i64 0}
!90 = distinct !{null, null, null}
!91 = !{!92, !93, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!93 = !{!"p1 _ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !10, i64 0}
!94 = !{!92, !93, i64 8}
!95 = !{!96, !96, i64 0}
!96 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!97 = !{!98, !100, i64 0}
!98 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !99, i64 0, !27, i64 8, !5, i64 16}
!99 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !100, i64 0}
!100 = !{!"p1 omnipotent char", !10, i64 0}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!92, !93, i64 16}
!104 = !{!105, !65, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIPcSaIS0_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!106 = !{!105, !65, i64 16}
!107 = !{!108, !108, i64 0}
!108 = !{!"p1 _ZTSN8facebook5velox15ByteInputStreamE", !10, i64 0}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS3_EEPNS2_15ByteInputStreamEPKNS2_11VectorSerde7OptionsEEEclES8_SC_: argument 0"}
!111 = distinct !{!111, !"_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS3_EEPNS2_15ByteInputStreamEPKNS2_11VectorSerde7OptionsEEEclES8_SC_"}
!112 = !{!113, !113, i64 0}
!113 = !{!"p1 _ZTSN8facebook5velox11VectorSerde7OptionsE", !10, i64 0}
!114 = distinct !{null}
!115 = !{!116, !116, i64 0}
!116 = !{!"p1 _ZTSN8facebook5velox11RowIteratorE", !10, i64 0}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZSt19__relocate_object_aISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!119 = distinct !{!119, !"_ZSt19__relocate_object_aISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_SaIS9_EEvPT_PT0_RT1_"}
!120 = !{!121}
!121 = distinct !{!121, !119, !"_ZSt19__relocate_object_aISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!122 = !{!121, !123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!118, !126}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !102, !128, !129}
!128 = !{!"llvm.loop.isvectorized", i32 1}
!129 = !{!"llvm.loop.unroll.runtime.disable"}
!130 = !{!"branch_weights", i32 4, i32 12}
!131 = distinct !{!131, !102, !128, !129}
!132 = distinct !{!132, !102, !128}
!133 = !{!93, !93, i64 0}
!134 = !{!105, !65, i64 8}
!135 = !{!100, !100, i64 0}
!136 = distinct !{!136, !102}
!137 = distinct !{null, null}
!138 = distinct !{!138, !102}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZSt11make_uniqueIN8facebook5velox10serializer15RowIteratorImplEJRPNS1_15ByteInputStreamElEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!141 = distinct !{!141, !"_ZSt11make_uniqueIN8facebook5velox10serializer15RowIteratorImplEJRPNS1_15ByteInputStreamElEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!142 = !{!143, !116, i64 0}
!143 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox11RowIteratorELb0EE", !116, i64 0}
!144 = !{!41, !42, i64 8}
!145 = !{!146, !146, i64 0}
!146 = !{!"p1 _ZTSN5folly5IOBufE", !10, i64 0}
!147 = !{!148, !100, i64 8}
!148 = !{!"_ZTSN5folly5IOBufE", !27, i64 0, !100, i64 8, !27, i64 16, !100, i64 24, !146, i64 32, !146, i64 40, !149, i64 48}
!149 = !{!"p1 _ZTSN5folly5IOBuf10SharedInfoE", !10, i64 0}
!150 = !{!148, !27, i64 0}
!151 = !{!50, !50, i64 0}
!152 = !{!27, !27, i64 0}
!153 = !{!154, !156, i64 8}
!154 = !{!"_ZTSN5folly8OptionalImEE", !155, i64 0}
!155 = !{!"_ZTSN5folly8OptionalImE28StorageTriviallyDestructibleE", !5, i64 0, !156, i64 8}
!156 = !{!"bool", !5, i64 0}
!157 = !{!158, !159, i64 0}
!158 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE17_Vector_impl_dataE", !159, i64 0, !159, i64 8, !159, i64 16}
!159 = !{!"p1 _ZTSN8facebook5velox9ByteRangeE", !10, i64 0}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZSt11make_uniqueIN8facebook5velox17BufferInputStreamEJSt6vectorINS1_9ByteRangeESaIS4_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!162 = distinct !{!162, !"_ZSt11make_uniqueIN8facebook5velox17BufferInputStreamEJSt6vectorINS1_9ByteRangeESaIS4_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!163 = !{!158, !159, i64 8}
!164 = !{!158, !159, i64 16}
!165 = !{!166, !159, i64 8}
!166 = !{!"_ZTSN8facebook5velox15ByteInputStreamE", !159, i64 8}
!167 = !{!168, !108, i64 0}
!168 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox15ByteInputStreamELb0EE", !108, i64 0}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZSt11make_uniqueIN8facebook5velox10serializer15RowIteratorImplEJSt10unique_ptrINS1_17BufferInputStreamESt14default_deleteIS5_EES4_IN5folly5IOBufES6_ISA_EElEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!171 = distinct !{!171, !"_ZSt11make_uniqueIN8facebook5velox10serializer15RowIteratorImplEJSt10unique_ptrINS1_17BufferInputStreamESt14default_deleteIS5_EES4_IN5folly5IOBufES6_ISA_EElEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!172 = distinct !{null, null, null}
!173 = distinct !{null, null}
!174 = distinct !{null, null}
!175 = distinct !{null, null}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN8facebook5velox10BaseVector6createINS0_9RowVectorEEESt10shared_ptrIT_ERKS4_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE: argument 0"}
!178 = distinct !{!178, !"_ZN8facebook5velox10BaseVector6createINS0_9RowVectorEEESt10shared_ptrIT_ERKS4_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE"}
!179 = !{!180, !177}
!180 = distinct !{!180, !181, !"_ZSt19static_pointer_castIN8facebook5velox9RowVectorENS1_10BaseVectorEESt10shared_ptrIT_EOS4_IT0_E: argument 0"}
!181 = distinct !{!181, !"_ZSt19static_pointer_castIN8facebook5velox9RowVectorENS1_10BaseVectorEESt10shared_ptrIT_EOS4_IT0_E"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZSt20dynamic_pointer_castIN8facebook5velox9RowVectorES2_ESt10shared_ptrIT_EOS3_IT0_E: argument 0"}
!184 = distinct !{!184, !"_ZSt20dynamic_pointer_castIN8facebook5velox9RowVectorES2_ESt10shared_ptrIT_EOS3_IT0_E"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS3_EEPNS2_15ByteInputStreamEPKNS2_11VectorSerde7OptionsEEEclES8_SC_: argument 0"}
!187 = distinct !{!187, !"_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS3_EEPNS2_15ByteInputStreamEPKNS2_11VectorSerde7OptionsEEEclES8_SC_"}
!188 = distinct !{null, null, null, null, null}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZSt19__relocate_object_aISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!191 = distinct !{!191, !"_ZSt19__relocate_object_aISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_SaIS9_EEvPT_PT0_RT1_"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"_ZSt19__relocate_object_aISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!194 = !{!193, !195}
!195 = distinct !{!195, !196}
!196 = distinct !{!196, !"LVerDomain"}
!197 = !{!190, !198}
!198 = distinct !{!198, !196}
!199 = distinct !{!199, !102, !128, !129}
!200 = distinct !{!200, !102, !128, !129}
!201 = distinct !{!201, !102, !128}
!202 = distinct !{!202, !102}
!203 = distinct !{null, null, null}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS3_EEPNS2_15ByteInputStreamEPKNS2_11VectorSerde7OptionsEEEclES8_SC_: argument 0"}
!206 = distinct !{!206, !"_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox11RowIteratorESt14default_deleteIS3_EEPNS2_15ByteInputStreamEPKNS2_11VectorSerde7OptionsEEEclES8_SC_"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZSt11make_uniqueIN8facebook5velox10serializer5spark20UnsafeRowVectorSerdeEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!209 = distinct !{!209, !"_ZSt11make_uniqueIN8facebook5velox10serializer5spark20UnsafeRowVectorSerdeEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!210 = !{!99, !100, i64 0}
!211 = !{!98, !27, i64 8}
!212 = !{!213, !214, i64 0}
!213 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox11VectorSerdeELb0EE", !214, i64 0}
!214 = !{!"p1 _ZTSN8facebook5velox11VectorSerdeE", !10, i64 0}
!215 = !{!214, !214, i64 0}
!216 = distinct !{null, null}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZSt11make_uniqueIN8facebook5velox10serializer5spark20UnsafeRowVectorSerdeEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!219 = distinct !{!219, !"_ZSt11make_uniqueIN8facebook5velox10serializer5spark20UnsafeRowVectorSerdeEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!222 = distinct !{!222, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!225 = distinct !{!225, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!226 = !{!227, !228, i64 0}
!227 = !{!"_ZTSN8facebook5velox7ScratchE", !228, i64 0, !4, i64 8, !4, i64 12, !27, i64 16}
!228 = !{!"p1 _ZTSN8facebook5velox10raw_vectorIcEE", !10, i64 0}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!231 = distinct !{!231, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!232 = distinct !{null}
!233 = !{!227, !4, i64 8}
!234 = !{!227, !4, i64 12}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!237 = distinct !{!237, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!238 = !{!239, !100, i64 8}
!239 = !{!"_ZTSN8facebook5velox10raw_vectorIcEE", !9, i64 0, !100, i64 8, !27, i64 16, !27, i64 24}
!240 = !{!239, !9, i64 0}
!241 = !{!239, !27, i64 24}
!242 = distinct !{null}
!243 = distinct !{!243, !102}
!244 = !{!39, !40, i64 0}
!245 = !{!39, !40, i64 8}
!246 = !{!247, !248, i64 0}
!247 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !248, i64 0}
!248 = !{!"p1 _ZTSN8facebook5velox6BufferE", !10, i64 0}
!249 = distinct !{null}
!250 = !{!251, !9, i64 8}
!251 = !{!"_ZTSN8facebook5velox6BufferE", !9, i64 8, !100, i64 16, !27, i64 24, !27, i64 32, !252, i64 40, !254, i64 44, !5, i64 48}
!252 = !{!"_ZTSSt6atomicIiE", !253, i64 0}
!253 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!254 = !{!"_ZTSN8facebook5velox6Buffer4TypeE", !5, i64 0}
!255 = distinct !{!255, !102}
!256 = !{!39, !40, i64 16}
!257 = distinct !{ptr @_ZN8facebook5velox10serializer13RowSerializerINS0_3row13UnsafeRowFastEED2Ev, null, null}
!258 = distinct !{ptr @_ZN8facebook5velox10serializer13RowSerializerINS0_3row13UnsafeRowFastEED2Ev, null}
!259 = !{ptr @_ZN8facebook5velox10serializer13RowSerializerINS0_3row13UnsafeRowFastEED2Ev}
!260 = !{!261, !262, i64 0}
!261 = !{!"_ZTSN5folly5RangeIPKN8facebook5velox10IndexRangeEEE", !262, i64 0, !262, i64 8}
!262 = !{!"p1 _ZTSN8facebook5velox10IndexRangeE", !10, i64 0}
!263 = !{!261, !262, i64 8}
!264 = !{!265, !4, i64 4}
!265 = !{!"_ZTSN8facebook5velox10IndexRangeE", !4, i64 0, !4, i64 4}
!266 = distinct !{!266, !102, !128, !129}
!267 = !{!"branch_weights", i32 4, i32 28}
!268 = distinct !{!268, !102, !128, !129}
!269 = distinct !{!269, !102, !129, !128}
!270 = !{!271, !272, i64 0}
!271 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !272, i64 0, !272, i64 8, !272, i64 16}
!272 = !{!"p1 int", !10, i64 0}
!273 = !{!271, !272, i64 16}
!274 = !{!271, !272, i64 8}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE: argument 0"}
!277 = distinct !{!277, !"_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE"}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E: argument 0"}
!280 = distinct !{!280, !"_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E"}
!281 = !{!282, !283, i64 0}
!282 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !283, i64 0, !68, i64 8}
!283 = !{!"p1 _ZTSN8facebook5velox4TypeE", !10, i64 0}
!284 = !{!279, !276}
!285 = !{!286, !287, i64 0}
!286 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EE", !287, i64 0, !68, i64 8}
!287 = !{!"p1 _ZTSN8facebook5velox7RowTypeE", !10, i64 0}
!288 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!289 = !{!272, !272, i64 0}
!290 = distinct !{!290, !102, !128, !129}
!291 = distinct !{!291, !102, !128, !129}
!292 = distinct !{!292, !102, !129, !128}
!293 = !{!265, !4, i64 0}
!294 = distinct !{!294, !102}
!295 = !{!296, !156, i64 1}
!296 = !{!"_ZTSSt22_Optional_payload_baseIcE", !5, i64 0, !156, i64 1}
!297 = !{!251, !254, i64 44}
!298 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!299 = !{!251, !100, i64 16}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZSt19__relocate_object_aIN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!302 = distinct !{!302, !"_ZSt19__relocate_object_aIN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_SaIS5_EEvPT_PT0_RT1_"}
!303 = !{!304}
!304 = distinct !{!304, !302, !"_ZSt19__relocate_object_aIN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!305 = !{!304, !306}
!306 = distinct !{!306, !307}
!307 = distinct !{!307, !"LVerDomain"}
!308 = !{!301, !309}
!309 = distinct !{!309, !307}
!310 = distinct !{!310, !102, !128, !129}
!311 = distinct !{!311, !102, !128, !129}
!312 = distinct !{!312, !102, !128}
!313 = !{!314}
!314 = distinct !{!314, !315, !"_ZN8facebook5velox12errorMessageIJA7_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!315 = distinct !{!315, !"_ZN8facebook5velox12errorMessageIJA7_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!316 = !{!317}
!317 = distinct !{!317, !318, !"_ZN8facebook5velox12errorMessageIJA7_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!318 = distinct !{!318, !"_ZN8facebook5velox12errorMessageIJA7_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!319 = !{!320, !272, i64 0}
!320 = !{!"_ZTSN5folly5RangeIPKiEE", !272, i64 0, !272, i64 8}
!321 = !{!320, !272, i64 8}
!322 = !{!323}
!323 = distinct !{!323, !324, !"_ZSt19__relocate_object_aIN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!324 = distinct !{!324, !"_ZSt19__relocate_object_aIN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_SaIS5_EEvPT_PT0_RT1_"}
!325 = !{!326}
!326 = distinct !{!326, !324, !"_ZSt19__relocate_object_aIN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!327 = !{!326, !328}
!328 = distinct !{!328, !329}
!329 = distinct !{!329, !"LVerDomain"}
!330 = !{!323, !331}
!331 = distinct !{!331, !329}
!332 = distinct !{!332, !102, !128, !129}
!333 = distinct !{!333, !102, !128, !129}
!334 = distinct !{!334, !102, !128}
!335 = !{!40, !40, i64 0}
!336 = !{!251, !27, i64 24}
!337 = !{!338, !339, i64 8}
!338 = !{!"_ZTSN5folly11compression5CodecE", !339, i64 8}
!339 = !{!"_ZTSN5folly11compression9CodecTypeE", !5, i64 0}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!342 = distinct !{!342, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!343 = !{!344}
!344 = distinct !{!344, !345, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!345 = distinct !{!345, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!346 = !{!347, !4, i64 0}
!347 = !{!"_ZTSN8facebook5velox10serializer6detail14RowGroupHeaderE", !4, i64 0, !4, i64 4, !156, i64 8}
!348 = !{!347, !4, i64 4}
!349 = !{!347, !156, i64 8}
!350 = distinct !{null}
!351 = !{!34, !27, i64 104}
!352 = !{!34, !4, i64 80}
!353 = !{!34, !43, i64 56}
!354 = !{!355, !146, i64 0}
!355 = !{!"_ZTSN5folly5IOBuf8IteratorE", !146, i64 0, !146, i64 8, !356, i64 16}
!356 = !{!"_ZTSN5folly5RangeIPKhEE", !100, i64 0, !100, i64 8}
!357 = !{!148, !146, i64 32}
!358 = !{!355, !146, i64 8}
!359 = !{!360, !361, i64 0}
!360 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox14RuntimeCounterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !361, i64 0, !27, i64 8, !362, i64 16, !27, i64 24, !364, i64 32, !363, i64 48}
!361 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !66, i64 0}
!362 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !363, i64 0}
!363 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!364 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !43, i64 0, !27, i64 8}
!365 = !{!360, !27, i64 8}
!366 = !{!364, !43, i64 0}
!367 = !{!34, !27, i64 88}
!368 = !{!369, !27, i64 0}
!369 = !{!"_ZTSN8facebook5velox14RuntimeCounterE", !27, i64 0, !370, i64 8}
!370 = !{!"_ZTSN8facebook5velox14RuntimeCounter4UnitE", !5, i64 0}
!371 = !{!369, !370, i64 8}
!372 = !{!34, !27, i64 96}
!373 = distinct !{!373, !102}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!376 = distinct !{!376, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!377 = !{!378}
!378 = distinct !{!378, !379, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!379 = distinct !{!379, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!382 = distinct !{!382, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!385 = distinct !{!385, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!386 = !{!251, !27, i64 32}
!387 = !{!253, !4, i64 0}
!388 = !{!389, !390, i64 0}
!389 = !{!"_ZTSSt18_Bit_iterator_base", !390, i64 0, !4, i64 8}
!390 = !{!"p1 long", !10, i64 0}
!391 = !{!392, !390, i64 32}
!392 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !393, i64 0, !393, i64 16, !390, i64 32}
!393 = !{!"_ZTSSt13_Bit_iterator", !389, i64 0}
!394 = !{!395, !396, i64 0}
!395 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox3row13UnsafeRowFastESaIS3_EE17_Vector_impl_dataE", !396, i64 0, !396, i64 8, !396, i64 16}
!396 = !{!"p1 _ZTSN8facebook5velox3row13UnsafeRowFastE", !10, i64 0}
!397 = !{!395, !396, i64 8}
!398 = distinct !{null, null, null, null}
!399 = distinct !{!399, !102}
!400 = !{!395, !396, i64 16}
!401 = !{!402, !390, i64 0}
!402 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !390, i64 0, !390, i64 8, !390, i64 16}
!403 = !{!402, !390, i64 16}
!404 = !{!405}
!405 = distinct !{!405, !406, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!406 = distinct !{!406, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!409 = distinct !{!409, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!410 = !{i8 0, i8 2}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!413 = distinct !{!413, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!414 = !{!415}
!415 = distinct !{!415, !416, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!416 = distinct !{!416, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!417 = !{!418}
!418 = distinct !{!418, !419, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!419 = distinct !{!419, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!420 = !{!421}
!421 = distinct !{!421, !422, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!422 = distinct !{!422, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!423 = !{!9, !9, i64 0}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN8facebook5velox12errorMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!426 = distinct !{!426, !"_ZN8facebook5velox12errorMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!427 = !{!428}
!428 = distinct !{!428, !429, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!429 = distinct !{!429, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!430 = !{!431}
!431 = distinct !{!431, !432, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!432 = distinct !{!432, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!433 = !{!434}
!434 = distinct !{!434, !435, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!435 = distinct !{!435, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!436 = !{!437}
!437 = distinct !{!437, !438, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!438 = distinct !{!438, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!439 = !{!254, !254, i64 0}
!440 = !{!441}
!441 = distinct !{!441, !442, !"_ZN8facebook5velox12errorMessageIJNS0_6Buffer4TypeES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!442 = distinct !{!442, !"_ZN8facebook5velox12errorMessageIJNS0_6Buffer4TypeES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!443 = !{!444, !4, i64 0}
!444 = !{!"_ZTSN3fmt3v1111basic_specsE", !4, i64 0, !5, i64 4}
!445 = !{!446, !4, i64 12}
!446 = !{!"_ZTSN3fmt3v1112format_specsE", !444, i64 0, !4, i64 8, !4, i64 12}
!447 = !{!448, !100, i64 0}
!448 = !{!"_ZTSN3fmt3v1117basic_string_viewIcEE", !100, i64 0, !27, i64 8}
!449 = !{!448, !27, i64 8}
!450 = !{!451, !451, i64 0}
!451 = !{!"p1 _ZTSN3fmt3v116detail6bufferIcEE", !10, i64 0}
!452 = distinct !{!452, !102}
!453 = !{!454, !454, i64 0}
!454 = !{!"_ZTSN3fmt3v1111arg_id_kindE", !5, i64 0}
!455 = distinct !{!455, !102}
!456 = !{!457, !4, i64 16}
!457 = !{!"_ZTSN3fmt3v1113parse_contextIcEE", !448, i64 0, !4, i64 16}
!458 = !{!459, !459, i64 0}
!459 = !{!"p1 _ZTSN3fmt3v1113parse_contextIcEE", !10, i64 0}
!460 = !{!461, !461, i64 0}
!461 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !10, i64 0}
!462 = !{!463, !461, i64 8}
!463 = !{!"_ZTSN3fmt3v116detail20dynamic_spec_handlerIcEE", !459, i64 0, !461, i64 8, !10, i64 16}
!464 = !{}
!465 = !{i64 8}
!466 = !{!463, !10, i64 16}
!467 = !{i64 4}
end_hunk_1
