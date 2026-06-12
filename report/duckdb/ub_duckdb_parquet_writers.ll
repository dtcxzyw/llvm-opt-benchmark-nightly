inline.NumInlined: 2405
inline.NumDeleted: 1305
begin_hunk_0_@_ZN6duckdb19BooleanColumnWriterC2ERNS_13ParquetWriterEONS_19ParquetColumnSchemaENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEE:bb.a
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
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !110, !range !125, !noundef !126
  %i.k = trunc nuw i8 %i.j to i1
  %7 = load ptr, ptr %i.c, align 8
  %.not.i = icmp ne ptr %7, null
  %or.cond.not = select i1 %i.k, i1 true, i1 %.not.i
  br i1 %or.cond.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.l = icmp ult i64 %5, %6
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.pre = load i8, ptr %i.m, align 1, !tbaa !127
  %.pre49 = load i8, ptr %i.n, align 8, !tbaa !130
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.o = phi i8 [ %.pre49, %.lr.ph ], [ %i.ab, %bb.e ]
  %i.p = phi i8 [ %.pre, %.lr.ph ], [ %i.ac, %bb.e ] ; 2 uses
  %.044 = phi i64 [ %5, %.lr.ph ], [ %i.ad, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %.044
  %i.r = load i8, ptr %i.q, align 1, !tbaa !131, !range !125, !noundef !126
  %i.s = zext nneg i8 %i.r to i32
  %i.t = zext nneg i8 %i.p to i32
  %i.u = shl nuw i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i8
  %i.w = or i8 %i.o, %i.v                         ; 3 uses
  store i8 %i.w, ptr %i.n, align 8, !tbaa !130
  %i.x = add i8 %i.p, 1                           ; 3 uses
  store i8 %i.x, ptr %i.m, align 1, !tbaa !127
  %i.y = icmp eq i8 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.w, ptr %i.b, align 1, !tbaa !28
  %i.z = load ptr, ptr %1, align 8, !tbaa !7
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.n, align 8, !tbaa !130
  store i8 0, ptr %i.m, align 1, !tbaa !127
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi i8 [ 0, %bb.d ], [ %i.w, %bb.c ]
  %i.ac = phi i8 [ 0, %bb.d ], [ %i.x, %bb.c ]
  %i.ad = add i64 %.044, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !133

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.ae = icmp ult i64 %5, %6
  br i1 %i.ae, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46, %bb.i
  %.04045 = phi i64 [ %5, %.lr.ph46 ], [ %i.bi, %bb.i ] ; 4 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !90  ; 2 uses
  %.not.i41 = icmp eq ptr %i.ai, null
  br i1 %.not.i41, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.g
  %i.aj = lshr i64 %.04045, 6
  %i.ak = and i64 %.04045, 63
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.am = load i64, ptr %i.al, align 8, !tbaa !97
  %i.an = shl nuw i64 1, %i.ak
  %i.ao = and i64 %i.am, %i.an
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %bb.g, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04045 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !131, !range !125, !noundef !126
  %i.ar = load i8, ptr %i.f, align 1, !tbaa !113, !range !125, !noundef !126
  %i.as = or i8 %i.ar, %i.aq
  store i8 %i.as, ptr %i.f, align 1, !tbaa !113
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !131, !range !125, !noundef !126
  %i.au = load i8, ptr %i.af, align 8, !tbaa !110, !range !125, !noundef !126
  %i.av = and i8 %i.au, %i.at
  store i8 %i.av, ptr %i.af, align 8, !tbaa !110
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !131, !range !125, !noundef !126
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = load i8, ptr %i.ag, align 1, !tbaa !127 ; 2 uses
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = shl nuw i32 %i.ax, %i.az
  %i.bb = load i8, ptr %i.ah, align 8, !tbaa !130
  %i.bc = trunc i32 %i.ba to i8
  %i.bd = or i8 %i.bb, %i.bc                      ; 2 uses
  store i8 %i.bd, ptr %i.ah, align 8, !tbaa !130
  %i.be = add i8 %i.ay, 1                         ; 2 uses
  store i8 %i.be, ptr %i.ag, align 1, !tbaa !127
  %i.bf = icmp eq i8 %i.be, 8
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bd, ptr %i.a, align 1, !tbaa !28
  %i.bg = load ptr, ptr %1, align 8, !tbaa !7
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.ah, align 8, !tbaa !130
  store i8 0, ptr %i.ag, align 1, !tbaa !127
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.h, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bi = add i64 %.04045, 1                      ; 2 uses
  %exitcond48.not = icmp eq i64 %i.bi, %6
  br i1 %exitcond48.not, label %.loopexit, label %bb.g, !llvm.loop !134

.loopexit:                                        ; preds = %bb.e, %bb.i, %.preheader, %bb.f
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
end_hunk_0
