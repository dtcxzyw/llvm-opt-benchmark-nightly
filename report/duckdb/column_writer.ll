Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/column_writer?download=true
inline.NumInlined: 9971
inline.NumDeleted: 4725
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 92
begin_hunk_0_@_ZN6duckdb10DbpEncoder11FinishWriteERNS_11WriteStreamE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #25
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %.not6 = icmp eq i64 %i.d, 0
  br i1 %.not6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6duckdb10DbpEncoder10WriteBlockERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(18480) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb11DlbaEncoder10BeginWriteINS_8string_tEEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18480
  %i.c = load i64, ptr %i.b, align 8, !tbaa !598
  %i.d = add i64 %i.c, 1                          ; 2 uses
  %i.e = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d), !noalias !1490
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.e, i64 noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.g = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %4) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18504
  %i.k = load i64, ptr %i.j, align 8, !tbaa !589
  %i.l = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !1491 ; 3 uses
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZN6duckdb16make_unsafe_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb0EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1491

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.l) #24, !noalias !1491
  resume { ptr, i32 } %i.m

_ZN6duckdb16make_unsafe_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb0EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18512 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !549  ; 3 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !549
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb12MemoryStreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb16make_unsafe_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb0EE25templated_unique_single_tEDpOT0_.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(48) %i.o) #25, !inline_history !1489
  br label %_ZNSt10unique_ptrIN6duckdb12MemoryStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12MemoryStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb16make_unsafe_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb0EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.s = load i32, ptr %3, align 8, !tbaa !127
  %i.t = zext i32 %i.s to i64
  store i64 %i.t, ptr %i.a, align 8, !tbaa !301
  call void @_ZN6duckdb10DbpEncoder18BeginWriteInternalERNS_11WriteStreamERKl(ptr noundef nonnull align 8 dereferenceable(18480) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !549  ; 2 uses
  %i.v = load i32, ptr %3, align 8, !tbaa !127    ; 2 uses
  %i.w = icmp ult i32 %i.v, 13
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %i.w, ptr %i.x, ptr %i.z
  %i.ab = zext i32 %i.v to i64
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !129
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef %i.aa, i64 noundef %i.ab)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb10DbpEncoder18BeginWriteInternalERNS_11WriteStreamERKl(ptr noundef nonnull align 8 dereferenceable(18480) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 {
_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 -128, ptr %i.d, align 1, !tbaa !127
  %i.e = load ptr, ptr %1, align 8, !tbaa !129
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1), !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 16, ptr %i.d, align 1, !tbaa !127
  %i.g = load ptr, ptr %1, align 8, !tbaa !129
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1), !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 8, ptr %i.c, align 1, !tbaa !127
  %i.i = load ptr, ptr %1, align 8, !tbaa !129
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1), !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.k = load i64, ptr %0, align 8, !tbaa !596
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit
  %.06.i12 = phi i64 [ %i.k, %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit ], [ %i.n, %bb.a ] ; 2 uses
  %i.l = trunc i64 %.06.i12 to i8
  %i.m = and i8 %i.l, 127
  %i.n = lshr i64 %.06.i12, 7                     ; 2 uses
  %.not.i13 = icmp eq i64 %i.n, 0                 ; 2 uses
  %masksel.i14 = select i1 %.not.i13, i8 0, i8 -128
  %.0.i15 = or disjoint i8 %masksel.i14, %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.0.i15, ptr %i.b, align 1, !tbaa !127
  %i.o = load ptr, ptr %1, align 8, !tbaa !129
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not.i13, label %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit16, label %bb.a, !llvm.loop !19

_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit16: ; preds = %bb.a
  %i.q = load i64, ptr %2, align 8, !tbaa !301    ; 2 uses
  %i.r = shl i64 %i.q, 1
  %i.s = ashr i64 %i.q, 63
  %i.t = xor i64 %i.r, %i.s
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit16
  %.06.i17 = phi i64 [ %i.t, %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit16 ], [ %i.w, %bb.b ] ; 2 uses
  %i.u = trunc i64 %.06.i17 to i8
  %i.v = and i8 %i.u, 127
  %i.w = lshr i64 %.06.i17, 7                     ; 2 uses
  %.not.i18 = icmp eq i64 %i.w, 0                 ; 2 uses
  %masksel.i19 = select i1 %.not.i18, i8 0, i8 -128
  %.0.i20 = or disjoint i8 %masksel.i19, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0.i20, ptr %i.a, align 1, !tbaa !127
  %i.x = load ptr, ptr %1, align 8, !tbaa !129
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not.i18, label %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit21, label %bb.b, !llvm.loop !19

_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit21: ; preds = %bb.b
  %i.z = load i64, ptr %0, align 8, !tbaa !596
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !597
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !597
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit21
  %i.ad = load i64, ptr %2, align 8, !tbaa !301
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !604
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372036854775807, ptr %i.af, align 8, !tbaa !605
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16416
  store i64 0, ptr %i.ag, align 8, !tbaa !603
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb10DbpEncoder10WriteBlockERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(18480) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16416 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !603
  %i.d = add i64 %i.c, 255                        ; 8 uses
  %i.e = lshr i64 %i.d, 8                         ; 3 uses
  %.not = icmp eq i64 %i.e, 0                     ; 2 uses
  br i1 %.not, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit, label %.preheader40.lr.ph

.preheader40.lr.ph:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %2 = load i64, ptr %i.g, align 8                ; 2 uses
  br label %.preheader40

.preheader40:                                     ; preds = %.preheader40.lr.ph, %bb.b
  %.042 = phi i64 [ 0, %.preheader40.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.h = shl nuw i64 %.042, 8                     ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  %i.i = add nuw nsw i64 %.042, 1                 ; 2 uses
  %exitcond46.not = icmp eq i64 %i.i, %i.e
  br i1 %exitcond46.not, label %bb.i, label %.preheader40, !llvm.loop !1492

bb.c:                                             ; preds = %bb.g, %.preheader40
  %.03441 = phi i64 [ 0, %.preheader40 ], [ %i.w, %bb.g ] ; 3 uses
  %i.j = add nuw nsw i64 %.03441, %i.h            ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !603
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.k, align 8, !tbaa !301
  %i.o = sub i64 %i.n, %2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %storemerge38 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ]
  store i64 %storemerge38, ptr %i.k, align 8, !tbaa !301
  %i.p = or disjoint i64 %.03441, 1
  %i.q = add nuw nsw i64 %i.p, %i.h               ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.b, align 8, !tbaa !603
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.r, align 8, !tbaa !301
  %i.v = sub i64 %i.u, %2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge38.1 = phi i64 [ %i.v, %bb.f ], [ 0, %bb.e ]
  store i64 %storemerge38.1, ptr %i.r, align 8, !tbaa !301
  %i.w = add nuw nsw i64 %.03441, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.w, 256
  br i1 %exitcond.not.1, label %bb.b, label %bb.c, !llvm.loop !1493

bb.h:                                             ; preds = %bb.h, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.7
  %.06.i = phi i64 [ %i.hy, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.7 ], [ %i.z, %bb.h ] ; 2 uses
  %i.x = trunc i64 %.06.i to i8
  %i.y = and i8 %i.x, 127
  %i.z = lshr i64 %.06.i, 7                       ; 2 uses
  %.not.i = icmp eq i64 %i.z, 0                   ; 2 uses
  %masksel.i = select i1 %.not.i, i8 0, i8 -128
  %.0.i = or disjoint i8 %masksel.i, %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0.i, ptr %i.a, align 1, !tbaa !127
  %i.aa = load ptr, ptr %1, align 8, !tbaa !129
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not.i, label %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit, label %bb.h, !llvm.loop !19

_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit: ; preds = %bb.h
  %i.ac = load ptr, ptr %1, align 8, !tbaa !129
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bc, i64 noundef 8)
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16432 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZN6duckdb18ParquetDecodeUtils14BitPackAlignedImEEvPT_Phmh.exit

bb.i:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !301
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ai = icmp eq i64 %spec.select.i.i.480, 0
  br i1 %i.ai, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %._crit_edge.i.i
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i.480, i1 true)
  %i.ak = trunc nuw nsw i64 %i.aj to i8
  %i.al = sub nuw nsw i8 64, %i.ak
  %i.am = icmp ugt i64 %spec.select.i.i.480, 72057594037927935
  %..i.i.i.i = select i1 %i.am, i8 64, i8 %i.al
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.i
  %.014.i.i = phi i64 [ 1, %bb.i ], [ %i.bb, %.lr.ph.i.i ] ; 6 uses
  %.01113.i.i = phi i64 [ %i.ah, %bb.i ], [ %spec.select.i.i.480, %.lr.ph.i.i ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.014.i.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !301
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %.01113.i.i)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.014.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !301
  %spec.select.i.i.165 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %spec.select.i.i)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.014.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !301
  %spec.select.i.i.270 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %spec.select.i.i.165)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.014.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !301
  %spec.select.i.i.375 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %spec.select.i.i.270)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.014.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !301
  %spec.select.i.i.480 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %spec.select.i.i.375) ; 4 uses
  %i.bb = add nuw nsw i64 %.014.i.i, 5            ; 2 uses
  %exitcond.not.i.i.481 = icmp eq i64 %i.bb, 256
  br i1 %exitcond.not.i.i.481, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1494

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit: ; preds = %bb.a, %.preheader.preheader.i.i.i, %._crit_edge.i.i
  %storemerge = phi i8 [ 0, %._crit_edge.i.i ], [ %..i.i.i.i, %.preheader.preheader.i.i.i ], [ 0, %bb.a ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16424 ; 3 uses
  store i8 %storemerge, ptr %i.bc, align 8, !tbaa !127
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16425 ; 2 uses
  %i.be = icmp ugt i64 %i.d, 511
  br i1 %i.be, label %bb.j, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.1.thread

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.1.thread: ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit
  store i8 0, ptr %i.bd, align 1, !tbaa !127
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16426
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.2.thread

bb.j:                                             ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 6 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !301
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i.1, %bb.j
  %.014.i.i.1 = phi i64 [ 1, %bb.j ], [ %i.bw, %.lr.ph.i.i.1 ] ; 6 uses
  %.01113.i.i.1 = phi i64 [ %i.bh, %bb.j ], [ %spec.select.i.i.1.4, %.lr.ph.i.i.1 ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.014.i.i.1
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !301
  %spec.select.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %.01113.i.i.1)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.014.i.i.1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !301
  %spec.select.i.i.1.1 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %spec.select.i.i.1)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.014.i.i.1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !301
  %spec.select.i.i.1.2 = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %spec.select.i.i.1.1)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.014.i.i.1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !301
  %spec.select.i.i.1.3 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %spec.select.i.i.1.2)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.014.i.i.1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !301
  %spec.select.i.i.1.4 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %spec.select.i.i.1.3) ; 4 uses
  %i.bw = add nuw nsw i64 %.014.i.i.1, 5          ; 2 uses
  %exitcond.not.i.i.1.4 = icmp eq i64 %i.bw, 256
  br i1 %exitcond.not.i.i.1.4, label %._crit_edge.i.i.1, label %.lr.ph.i.i.1, !llvm.loop !1494

._crit_edge.i.i.1:                                ; preds = %.lr.ph.i.i.1
  %i.bx = icmp eq i64 %spec.select.i.i.1.4, 0
  br i1 %i.bx, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.1, label %.preheader.preheader.i.i.i.1

.preheader.preheader.i.i.i.1:                     ; preds = %._crit_edge.i.i.1
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i.1.4, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i8
  %i.ca = sub nuw nsw i8 64, %i.bz
  %i.cb = icmp ugt i64 %spec.select.i.i.1.4, 72057594037927935
  %..i.i.i.i.1 = select i1 %i.cb, i8 64, i8 %i.ca
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.1

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.1: ; preds = %.preheader.preheader.i.i.i.1, %._crit_edge.i.i.1
  %storemerge.1 = phi i8 [ 0, %._crit_edge.i.i.1 ], [ %..i.i.i.i.1, %.preheader.preheader.i.i.i.1 ]
  store i8 %storemerge.1, ptr %i.bd, align 1, !tbaa !127
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16426 ; 2 uses
  %i.cd = icmp ugt i64 %i.d, 767
  br i1 %i.cd, label %bb.k, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.2.thread

bb.k:                                             ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.1
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4128 ; 6 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !301
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.2, %bb.k
  %.014.i.i.2 = phi i64 [ 1, %bb.k ], [ %i.cu, %.lr.ph.i.i.2 ] ; 6 uses
  %.01113.i.i.2 = phi i64 [ %i.cf, %bb.k ], [ %spec.select.i.i.2.4, %.lr.ph.i.i.2 ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.014.i.i.2
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !301
  %spec.select.i.i.2 = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %.01113.i.i.2)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.014.i.i.2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !301
  %spec.select.i.i.2.1 = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %spec.select.i.i.2)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.014.i.i.2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !301
  %spec.select.i.i.2.2 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %spec.select.i.i.2.1)
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.014.i.i.2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !301
  %spec.select.i.i.2.3 = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %spec.select.i.i.2.2)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.014.i.i.2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !301
  %spec.select.i.i.2.4 = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %spec.select.i.i.2.3) ; 4 uses
  %i.cu = add nuw nsw i64 %.014.i.i.2, 5          ; 2 uses
  %exitcond.not.i.i.2.4 = icmp eq i64 %i.cu, 256
  br i1 %exitcond.not.i.i.2.4, label %._crit_edge.i.i.2, label %.lr.ph.i.i.2, !llvm.loop !1494

._crit_edge.i.i.2:                                ; preds = %.lr.ph.i.i.2
  %i.cv = icmp eq i64 %spec.select.i.i.2.4, 0
  br i1 %i.cv, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.2, label %.preheader.preheader.i.i.i.2

.preheader.preheader.i.i.i.2:                     ; preds = %._crit_edge.i.i.2
  %i.cw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i.2.4, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i8
  %i.cy = sub nuw nsw i8 64, %i.cx
  %i.cz = icmp ugt i64 %spec.select.i.i.2.4, 72057594037927935
  %..i.i.i.i.2 = select i1 %i.cz, i8 64, i8 %i.cy
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.2

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.2.thread: ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.1.thread, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.1
  %.ph = phi ptr [ %i.bf, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.1.thread ], [ %i.cc, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.1 ]
  store i8 0, ptr %.ph, align 1, !tbaa !127
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16427
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.3.thread

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.2: ; preds = %.preheader.preheader.i.i.i.2, %._crit_edge.i.i.2
  %storemerge.2 = phi i8 [ 0, %._crit_edge.i.i.2 ], [ %..i.i.i.i.2, %.preheader.preheader.i.i.i.2 ]
  store i8 %storemerge.2, ptr %i.cc, align 2, !tbaa !127
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16427 ; 2 uses
  %i.dc = icmp ugt i64 %i.d, 1023
  br i1 %i.dc, label %bb.l, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.3.thread

bb.l:                                             ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhPT_m.exit.2
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 6176 ; 6 uses
end_hunk_0
