Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types_column?download=true
inline.NumInlined: 5544
inline.NumDeleted: 2532
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN6duckdb6vectorINS_10shared_ptrINS_10StringHeapELb1EEELb1ESaIS3_EEixEm:bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !455    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !141
  store i64 %i.i, ptr %i.b, align 8, !tbaa !141
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10shared_ptrINS_10StringHeapELb1EEELb1ESaIS3_EE3getILb1EEERS3_m.exit, label %bb.b, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !120    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10shared_ptrINS_10StringHeapELb1EEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_10StringHeapELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !455    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !456  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !110
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !1181
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !1181
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i, !prof !111

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1182

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !455
  br label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_10StringHeapELb1EEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #25
  br label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_10StringHeapELb1EEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_10StringHeapELb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb20ColumnDataCollection16GetAllocatorTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.b = load i8, ptr %i.a, align 8, !tbaa !95
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb20ColumnDataCollection16GetBufferManagerEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb19ColumnDataAllocator16GetBufferManagerEv(ptr noundef nonnull align 8 dereferenceable(176) %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb20ColumnDataCollection11GetSegmentsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(112) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb20ColumnDataCollection9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(680) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.duckdb::vector.578", align 8 ; 6 uses
  %4 = alloca %"class.duckdb::vector.578", align 8 ; 8 uses
  %5 = alloca %"class.duckdb::vector.657", align 8 ; 12 uses
  %6 = alloca %"class.duckdb::ColumnDataChunkIterationHelper", align 8 ; 7 uses
  %7 = alloca %"class.duckdb::ColumnDataChunkIterationHelper::ColumnDataChunkIterator", align 8 ; 27 uses
  %8 = alloca %"class.duckdb::ColumnDataChunkIterationHelper::ColumnDataChunkIterator", align 8 ; 21 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !261  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !260  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.not230 = icmp eq ptr %i.f, %i.g
  br i1 %.not230, label %_ZNSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv exact i64 %i.j, 24
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = icmp ugt i64 %i.l, 384307168202282325
  br i1 %i.n, label %bb.c, label %_ZNKSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.b
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #28
          to label %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE13_M_deallocateEPS4_m.exit36.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZNSt12_Vector_baseIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE13_M_deallocateEPS4_m.exit36.i: ; preds = %_ZNKSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.j, i1 false)
  store ptr %i.o, ptr %5, align 8, !tbaa !459
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j ; 2 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !460
  %10 = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  store ptr %10, ptr %i.m, align 8, !tbaa !461
  %i.q = ptrtoint ptr %i.p to i64
  br label %_ZNSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE6resizeEm.exit

_ZNSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE6resizeEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE13_M_deallocateEPS4_m.exit36.i, %bb.a
  %i.r = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE13_M_deallocateEPS4_m.exit36.i ], [ null, %bb.a ] ; 2 uses
  %i.s = phi i64 [ %i.q, %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE13_M_deallocateEPS4_m.exit36.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNK6duckdb20ColumnDataCollection6ChunksEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ColumnDataChunkIterationHelper") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.t = load ptr, ptr %6, align 8, !tbaa !1191, !noalias !1192, !nonnull !114, !align !136
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !314, !noalias !1192 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !298, !noalias !1192 ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ugt i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !111

.noexc.i.i.i.i:                                   ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc35 unwind label %bb.aj

.noexc35:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #28
          to label %.noexc36 unwind label %bb.aj

.noexc36:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !328, !noalias !1192 ; 2 uses
  %.pre4.i = load ptr, ptr %i.v, align 8, !tbaa !328, !noalias !1192
  %.pre5.i = ptrtoint ptr %.pre4.i to i64
  %.pre6.i = ptrtoint ptr %.pre.i to i64
  br label %bb.f

bb.f:                                             ; preds = %.noexc36, %bb.d
  %.pre-phi7.i = phi i64 [ %.pre6.i, %.noexc36 ], [ %i.z, %bb.d ]
  %.pre-phi.i = phi i64 [ %.pre5.i, %.noexc36 ], [ %i.y, %bb.d ]
  %i.ad = phi ptr [ %.pre.i, %.noexc36 ], [ %i.x, %bb.d ] ; 2 uses
  %i.ae = phi ptr [ %i.ac, %.noexc36 ], [ null, %bb.d ] ; 5 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !298, !noalias !1192
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !315, !noalias !1192
  %i.ai = sub i64 %.pre-phi.i, %.pre-phi7.i       ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 8
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !142

bb.g:                                             ; preds = %bb.f
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ad, i64 %i.ai, i1 false), !noalias !1192
  br label %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp eq i64 %i.ai, 8
  br i1 %i.ak, label %bb.i, label %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !141, !noalias !1192
  store i64 %i.al, ptr %i.ae, align 8, !tbaa !141, !noalias !1192
  br label %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit.i

_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit.i:     ; preds = %bb.i, %bb.h, %bb.g
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 %i.ai
  store ptr %i.am, ptr %i.af, align 8, !tbaa !314, !noalias !1192
  invoke void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorC1ENS_12optional_ptrIKNS_20ColumnDataCollectionELb1EEENS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr nonnull %i.t, ptr noundef nonnull %4)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit.i
  %i.an = load ptr, ptr %4, align 8, !tbaa !298, !noalias !1192 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i34, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef nonnull %i.an) #25
  br label %bb.n

bb.l:                                             ; preds = %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !298, !noalias !1192 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i2.i, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #25
  br label %.body

bb.n:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1193
  invoke void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorC1ENS_12optional_ptrIKNS_20ColumnDataCollectionELb1EEENS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(168) %8, ptr null, ptr noundef nonnull %3)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %3, align 8, !tbaa !298, !noalias !1193 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i37, label %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #25
  br label %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit

bb.q:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !298, !noalias !1193 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i1.i, label %.body38, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPv(ptr noundef nonnull %i.as) #25
  br label %.body38

_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 160 ; 2 uses
  %i.av = load ptr, ptr %7, align 8, !tbaa !341
  %i.aw = load ptr, ptr %8, align 8, !tbaa !341
  %i.ax = icmp ne ptr %i.av, %i.aw
  %i.ay = load i64, ptr %i.at, align 8
  %i.az = load i64, ptr %i.au, align 8
  %i.ba = icmp ne i64 %i.ay, %i.az
  %i.bb = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %i.bb, label %.lr.ph152, label %._crit_edge153

.lr.ph152:                                        ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.be = ptrtoint ptr %i.r to i64
  %i.bf = sub i64 %i.s, %i.be
  %i.bg = sdiv exact i64 %i.bf, 24                ; 2 uses
  br label %bb.ak

._crit_edge153:                                   ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorppEv.exit, %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !277 ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i40, label %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i: ; preds = %._crit_edge153
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.bi) #24
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #25
  br label %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit

_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit: ; preds = %._crit_edge153, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !298 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i92, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bk) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.s, %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !225 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %i.bn, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 3 uses
  %i.bo = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !163 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 16
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bp) #24
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i) #25
  %.not.i.i.i.i.i.i93 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i93, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !23

_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !165
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !164
  %i.bt = shl i64 %i.bs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 %i.bt, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !165 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bu) #25
  br label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i

_ZN6duckdb20ChunkManagementStateD2Ev.exit.i:      ; preds = %bb.t, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !107 ; 8 uses
end_hunk_0
