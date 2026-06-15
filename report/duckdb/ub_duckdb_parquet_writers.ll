inline.NumInlined: 2405
inline.NumDeleted: 1305
begin_hunk_0_@_ZN6duckdb17ArrayColumnWriter5WriteERNS_17ColumnWriterStateERNS_6VectorEm:bb.a
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(240) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 noundef %i.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19BooleanColumnWriterC2ERNS_13ParquetWriterEONS_19ParquetColumnSchemaENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(157) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.25", align 16 ; 9 uses
  %5 = alloca %"class.duckdb::vector.25", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.c = load <2 x ptr>, ptr %3, align 8, !tbaa !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x ptr> %i.c, ptr %4, align 16, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %i.d, align 16, !tbaa !102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb12ColumnWriterC2ERNS_13ParquetWriterEONS_19ParquetColumnSchemaENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(157) %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %4, align 16, !tbaa !104   ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !106

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 16, !tbaa !104
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.l) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

.body:                                            ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #24
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #24
  resume { ptr, i32 } %i.m

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN6duckdb19BooleanColumnWriterE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21PrimitiveColumnWriterC2ERNS_13ParquetWriterEONS_19ParquetColumnSchemaENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(157) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.25", align 16 ; 7 uses
  %i.a = load <2 x ptr>, ptr %3, align 8, !tbaa !103
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  store ptr %i.d, ptr %i.b, align 16, !tbaa !102
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb12ColumnWriterC2ERNS_13ParquetWriterEONS_19ParquetColumnSchemaENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(157) %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %4, align 16, !tbaa !104   ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !106

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !104
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.f, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.l) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN6duckdb21PrimitiveColumnWriterE, i64 16), ptr %0, align 8, !tbaa !7
  ret void

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #24
  resume { ptr, i32 } %i.m
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !106

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !104
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19BooleanColumnWriter20InitializeStatsStateEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.37") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb22BooleanStatisticsStateESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27, !noalias !107 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6duckdb22BooleanStatisticsStateE, i64 16), ptr %i.a, align 8, !tbaa !7, !noalias !107
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.b, align 8, !tbaa !110, !noalias !107
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.c, align 1, !tbaa !113, !noalias !107
  store ptr %i.a, ptr %0, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19BooleanColumnWriter11WriteVectorERNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !113, !range !125, !noundef !126
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %11

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = load i8, ptr %i.i, align 8, !tbaa !110, !range !125, !noundef !126
  %8 = trunc nuw i8 %7 to i1
  %9 = load ptr, ptr %i.c, align 8
  %.not.i = icmp ne ptr %9, null
  %or.cond.not = select i1 %8, i1 true, i1 %.not.i
  br i1 %or.cond.not, label %11, label %.preheader

.preheader:                                       ; preds = %bb.b
  %10 = icmp ult i64 %5, %6
  br i1 %10, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.pre = load i8, ptr %i.j, align 1, !tbaa !127
  %.pre49 = load i8, ptr %i.k, align 8, !tbaa !130
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.l = phi i8 [ %.pre49, %.lr.ph ], [ %i.y, %bb.e ]
  %i.m = phi i8 [ %.pre, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %.044 = phi i64 [ %5, %.lr.ph ], [ %i.aa, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %.044
  %i.o = load i8, ptr %i.n, align 1, !tbaa !131, !range !125, !noundef !126
  %i.p = zext nneg i8 %i.o to i32
  %i.q = zext nneg i8 %i.m to i32
  %i.r = shl nuw i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i8
  %i.t = or i8 %i.l, %i.s                         ; 3 uses
  store i8 %i.t, ptr %i.k, align 8, !tbaa !130
  %i.u = add i8 %i.m, 1                           ; 3 uses
  store i8 %i.u, ptr %i.j, align 1, !tbaa !127
  %i.v = icmp eq i8 %i.u, 8
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.t, ptr %i.b, align 1, !tbaa !28
  %i.w = load ptr, ptr %1, align 8, !tbaa !7
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.k, align 8, !tbaa !130
  store i8 0, ptr %i.j, align 1, !tbaa !127
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = phi i8 [ 0, %bb.d ], [ %i.t, %bb.c ]
  %i.z = phi i8 [ 0, %bb.d ], [ %i.u, %bb.c ]
  %i.aa = add i64 %.044, 1                        ; 2 uses
  %exitcond.not.a = icmp eq i64 %i.aa, %6
  br i1 %exitcond.not.a, label %.loopexit, label %bb.c, !llvm.loop !133

11:                                               ; preds = %bb.b, %bb.a
  %12 = icmp ult i64 %5, %6
  br i1 %12, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %11
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph46, %bb.h
  %.04045 = phi i64 [ %5, %.lr.ph46 ], [ %i.bb, %bb.h ] ; 4 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !90  ; 2 uses
  %.not.i41 = icmp eq ptr %i.ab, null
  br i1 %.not.i41, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.f
  %i.ac = lshr i64 %.04045, 6
  %i.ad = and i64 %.04045, 63
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !97
  %i.ag = shl nuw i64 1, %i.ad
  %i.ah = and i64 %i.af, %i.ag
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %bb.h, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %bb.f, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04045 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !131, !range !125, !noundef !126
  %i.ak = load i8, ptr %i.f, align 1, !tbaa !113, !range !125, !noundef !126
  %i.al = or i8 %i.ak, %i.aj
  store i8 %i.al, ptr %i.f, align 1, !tbaa !113
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !131, !range !125, !noundef !126
  %i.an = load i8, ptr %13, align 8, !tbaa !110, !range !125, !noundef !126
  %i.ao = and i8 %i.an, %i.am
  store i8 %i.ao, ptr %13, align 8, !tbaa !110
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !131, !range !125, !noundef !126
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = load i8, ptr %14, align 1, !tbaa !127   ; 2 uses
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw i32 %i.aq, %i.as
  %i.au = load i8, ptr %15, align 8, !tbaa !130
  %i.av = trunc i32 %i.at to i8
  %i.aw = or i8 %i.au, %i.av                      ; 2 uses
  store i8 %i.aw, ptr %15, align 8, !tbaa !130
  %i.ax = add i8 %i.ar, 1                         ; 2 uses
  store i8 %i.ax, ptr %14, align 1, !tbaa !127
  %i.ay = icmp eq i8 %i.ax, 8
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.aw, ptr %i.a, align 1, !tbaa !28
  %i.az = load ptr, ptr %1, align 8, !tbaa !7
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 0, ptr %15, align 8, !tbaa !130
  store i8 0, ptr %14, align 1, !tbaa !127
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.g, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bb = add i64 %.04045, 1                      ; 2 uses
  %exitcond48.not = icmp eq i64 %i.bb, %6
  br i1 %exitcond48.not, label %.loopexit, label %bb.f, !llvm.loop !134

.loopexit:                                        ; preds = %bb.e, %bb.h, %.preheader, %11
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19BooleanColumnWriter19InitializePageStateERNS_26PrimitiveColumnWriterStateEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.55") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb22BooleanWriterPageStateESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27, !noalias !135 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !noalias !135
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb22BooleanWriterPageStateE, i64 16), ptr %i.a, align 8, !tbaa !7, !noalias !135
  store ptr %i.a, ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19BooleanColumnWriter14FlushPageStateERNS_11WriteStreamEPNS_21ColumnWriterPageStateE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !127
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.e, ptr %i.a, align 1, !tbaa !28
  %i.f = load ptr, ptr %1, align 8, !tbaa !7
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.d, align 8, !tbaa !130
  store i8 0, ptr %i.b, align 1, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZNK6duckdb19BooleanColumnWriter10GetRowSizeERKNS_6VectorEmRKNS_26PrimitiveColumnWriterStateE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #4 align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24FixedDecimalColumnWriterC2ERNS_13ParquetWriterEONS_19ParquetColumnSchemaENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(157) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.25", align 16 ; 9 uses
  %5 = alloca %"class.duckdb::vector.25", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.c = load <2 x ptr>, ptr %3, align 8, !tbaa !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x ptr> %i.c, ptr %4, align 16, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %i.d, align 16, !tbaa !102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb12ColumnWriterC2ERNS_13ParquetWriterEONS_19ParquetColumnSchemaENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(157) %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %4, align 16, !tbaa !104   ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !106

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 16, !tbaa !104
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.l) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

.body:                                            ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #24
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #24
  resume { ptr, i32 } %i.m

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN6duckdb24FixedDecimalColumnWriterE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24FixedDecimalColumnWriter20InitializeStatsStateEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.37") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb22FixedDecimalStatisticsESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27, !noalias !141 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6duckdb22FixedDecimalStatisticsE, i64 16), ptr %i.a, align 8, !tbaa !7, !noalias !141
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -1, ptr %i.b, align 8, !noalias !141
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 9223372036854775807, ptr %i.c, align 8, !noalias !141
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.d, align 8, !noalias !141
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 -9223372036854775808, ptr %i.e, align 8, !noalias !141
  store ptr %i.a, ptr %0, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24FixedDecimalColumnWriter11WriteVectorERNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.e = icmp ult i64 %5, %6
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.015 = phi i64 [ %5, %.lr.ph ], [ %i.t, %bb.f ] ; 4 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.b
  %i.i = lshr i64 %.015, 6
  %i.j = and i64 %.015, 63
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !97
  %i.m = shl nuw i64 1, %i.j
  %i.n = and i64 %i.l, %i.m
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.f, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %bb.b, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.015 ; 6 uses
  %i.p = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !144
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.q = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  br i1 %i.q, label %bb.e, label %_ZN6duckdb22FixedDecimalStatistics6UpdateERNS_9hugeint_tE.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !144
  br label %_ZN6duckdb22FixedDecimalStatistics6UpdateERNS_9hugeint_tE.exit

_ZN6duckdb22FixedDecimalStatistics6UpdateERNS_9hugeint_tE.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload = load i64, ptr %i.o, align 8, !tbaa !97
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !97
  call fastcc void @_ZN6duckdbL19WriteParquetDecimalENS_9hugeint_tEPh(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %i.a)
  %i.r = load ptr, ptr %1, align 8, !tbaa !7
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 16)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZN6duckdb22FixedDecimalStatistics6UpdateERNS_9hugeint_tE.exit
  %i.t = add i64 %.015, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !145
}

; Function Attrs: mustprogress uwtable
end_hunk_0
