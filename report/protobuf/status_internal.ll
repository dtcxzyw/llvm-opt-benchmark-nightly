inline.NumInlined: 591
inline.NumDeleted: 315
begin_hunk_0_@_ZN4absl12lts_2025051215status_internal9StatusRep10SetPayloadESt17basic_string_viewIcSt11char_traitsIcEENS0_4CordE:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.absl::lts_20250512::status_internal::Payload", align 8 ; 15 uses
  %.fr21 = freeze i64 %1                          ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 6 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader.i.thread, label %.preheader.i

.preheader.i.thread:                              ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21, !noalias !25 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !28, !noalias !25
  store ptr %i.d, ptr %i.b, align 8, !tbaa !7
  br label %.loopexit

.preheader.i:                                     ; preds = %bb.a
  %.pre = load i64, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  %i.e = lshr i64 %.pre, 1                        ; 3 uses
  %.not.i5 = icmp eq i64 %i.e, 0
  br i1 %.not.i5, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = trunc i64 %.pre to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %i.f, ptr %i.h, ptr %i.g       ; 3 uses
  %i.j = icmp eq i64 %.fr21, 0
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051215status_internal9StatusRep10SetPayloadESt17basic_string_viewIcSt11char_traitsIcEENS0_4CordE:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %bb.o

.loopexit:                                        ; preds = %bb.c, %bb.b, %.preheader.i.thread, %.preheader.i
  %i.ac = phi ptr [ %i.d, %.preheader.i.thread ], [ %i.c, %bb.b ], [ %i.c, %.preheader.i ], [ %i.c, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !30
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051215status_internal9StatusRep10SetPayloadESt17basic_string_viewIcSt11char_traitsIcEENS0_4CordE:bb.a
  store i64 %i.bd, ptr %i.ax, align 8, !tbaa !16
  br label %_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EE9push_backEOS3_.exit.thread

_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.be = load i64, ptr %i.am, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !17
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051215status_internal9StatusRep10SetPayloadESt17basic_string_viewIcSt11char_traitsIcEENS0_4CordE:bb.a
  %i.bh = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.bi = add i64 %i.bh, 2
  store i64 %i.bi, ptr %i.ac, align 8, !tbaa !10
  br label %_ZN4absl12lts_202505124CordD2Ev.exit.i

bb.l:                                             ; preds = %bb.i
  %i.bj = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE15EmplaceBackSlowIJS4_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EE9push_backEOS3_.exit unwind label %bb.p ; 0 uses

_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.l
  %.pre26 = load i8, ptr %i.ap, align 8, !tbaa !16
  %i.bk = trunc i8 %.pre26 to i1
  br i1 %i.bk, label %bb.m, label %_ZN4absl12lts_202505124CordD2Ev.exit.i
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051215status_internal9StatusRep10SetPayloadESt17basic_string_viewIcSt11char_traitsIcEENS0_4CordE:bb.a
  call void @__clang_call_terminate(ptr %i.bm) #19
  unreachable

_ZN4absl12lts_202505124CordD2Ev.exit.i:           ; preds = %_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EE9push_backEOS3_.exit.thread, %bb.m, %_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EE9push_backEOS3_.exit
  %i.bn = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ad
  br i1 %i.bo, label %_ZN4absl12lts_2025051215status_internal7PayloadD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_4
