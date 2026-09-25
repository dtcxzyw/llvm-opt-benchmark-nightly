Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_parquet_writers?download=true
inline.NumInlined: 2405
inline.NumDeleted: 1305
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK6duckdb19BooleanColumnWriter10GetRowSizeERKNS_6VectorEmRKNS_26PrimitiveColumnWriterStateE:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24FixedDecimalColumnWriterC2ERNS_13ParquetWriterEONS_19ParquetColumnSchemaENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(157) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.25", align 16 ; 9 uses
  %5 = alloca %"class.duckdb::vector.25", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load <2 x ptr>, ptr %3, align 8, !tbaa !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x ptr> %i.c, ptr %4, align 16, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %i.d, align 16, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb12ColumnWriterC2ERNS_13ParquetWriterEONS_19ParquetColumnSchemaENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(157) %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %4, align 16, !tbaa !120   ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !35 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 16, !tbaa !120
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
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN6duckdb24FixedDecimalColumnWriterE, i64 16), ptr %0, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24FixedDecimalColumnWriter20InitializeStatsStateEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.37") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb22FixedDecimalStatisticsESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27, !noalias !495 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6duckdb22FixedDecimalStatisticsE, i64 16), ptr %i.a, align 8, !tbaa !26, !noalias !495
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -1, ptr %i.b, align 8, !noalias !495
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 9223372036854775807, ptr %i.c, align 8, !noalias !495
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.d, align 8, !noalias !495
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 -9223372036854775808, ptr %i.e, align 8, !noalias !495
  store ptr %i.a, ptr %0, align 8, !tbaa !128
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.b
  %i.i = lshr i64 %.015, 6
  %i.j = and i64 %.015, 63
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !114
  %i.m = shl nuw i64 1, %i.j
  %i.n = and i64 %i.l, %i.m
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.f, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %bb.b, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.015 ; 6 uses
  %i.p = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !497
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.q = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  br i1 %i.q, label %bb.e, label %_ZN6duckdb22FixedDecimalStatistics6UpdateERNS_9hugeint_tE.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !497
  br label %_ZN6duckdb22FixedDecimalStatistics6UpdateERNS_9hugeint_tE.exit

_ZN6duckdb22FixedDecimalStatistics6UpdateERNS_9hugeint_tE.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload = load i64, ptr %i.o, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !114
  call fastcc void @_ZN6duckdbL19WriteParquetDecimalENS_9hugeint_tEPh(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %i.a)
  %i.r = load ptr, ptr %1, align 8, !tbaa !26
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 16)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZN6duckdb22FixedDecimalStatistics6UpdateERNS_9hugeint_tE.exit
  %i.t = add i64 %.015, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !496
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL19WriteParquetDecimalENS_9hugeint_tEPh(i64 %0, i64 %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  store i64 %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0)
  %i.b = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tgeERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.b, label %..preheader.preheader_crit_edge, label %bb.b

..preheader.preheader_crit_edge:                  ; preds = %bb.a
  %.pre = load i64, ptr %i.a, align 8, !tbaa !499
  %.pre19 = load i64, ptr %3, align 8, !tbaa !500
  br label %.preheader.preheader

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i64 -1, ptr %6, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9223372036854775807, ptr %i.c, align 8
  %i.d = call { i64, i64 } @_ZNK6duckdb9hugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  store i64 %i.e, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = extractvalue { i64, i64 } %i.d, 1
  store i64 %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 1)
  %i.h = call { i64, i64 } @_ZNK6duckdb9hugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %..preheader.preheader_crit_edge, %bb.b
  %i.k = phi i64 [ %.pre19, %..preheader.preheader_crit_edge ], [ %i.i, %bb.b ] ; 8 uses
  %i.l = phi i64 [ %.pre, %..preheader.preheader_crit_edge ], [ %i.j, %bb.b ] ; 8 uses
  %8 = lshr i64 %i.l, 56
  %9 = trunc nuw i64 %8 to i8                     ; 2 uses
  store i8 %9, ptr %2, align 1, !tbaa !46
  %10 = lshr i64 %i.l, 48
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %11, ptr %12, align 1, !tbaa !46
  %13 = lshr i64 %i.l, 40
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %14, ptr %15, align 1, !tbaa !46
  %16 = lshr i64 %i.l, 32
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %17, ptr %18, align 1, !tbaa !46
  %19 = lshr i64 %i.l, 24
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %20, ptr %21, align 1, !tbaa !46
  %22 = lshr i64 %i.l, 16
  %23 = trunc i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %23, ptr %24, align 1, !tbaa !46
  %25 = lshr i64 %i.l, 8
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %26, ptr %27, align 1, !tbaa !46
  %28 = trunc i64 %i.l to i8
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %28, ptr %29, align 1, !tbaa !46
  %30 = lshr i64 %i.k, 56
  %31 = trunc nuw i64 %30 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %31, ptr %i.m, align 1, !tbaa !46
  %32 = lshr i64 %i.k, 48
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %33, ptr %34, align 1, !tbaa !46
  %35 = lshr i64 %i.k, 40
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %36, ptr %37, align 1, !tbaa !46
  %38 = lshr i64 %i.k, 32
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 %39, ptr %40, align 1, !tbaa !46
  %41 = lshr i64 %i.k, 24
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %42, ptr %43, align 1, !tbaa !46
  %44 = lshr i64 %i.k, 16
  %45 = trunc i64 %44 to i8
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %45, ptr %46, align 1, !tbaa !46
  %47 = lshr i64 %i.k, 8
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i8 %48, ptr %49, align 1, !tbaa !46
  %50 = trunc i64 %i.k to i8
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 15
  store i8 %50, ptr %51, align 1, !tbaa !46
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.preheader
  %i.n = or i8 %9, -128
  store i8 %i.n, ptr %2, align 1, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZNK6duckdb24FixedDecimalColumnWriter10GetRowSizeERKNS_6VectorEmRKNS_26PrimitiveColumnWriterStateE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #4 align 2 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16EnumColumnWriterC2ERNS_13ParquetWriterEONS_19ParquetColumnSchemaENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(157) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.25", align 16 ; 9 uses
  %5 = alloca %"class.duckdb::vector.25", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load <2 x ptr>, ptr %3, align 8, !tbaa !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x ptr> %i.c, ptr %4, align 16, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %i.d, align 16, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb12ColumnWriterC2ERNS_13ParquetWriterEONS_19ParquetColumnSchemaENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(157) %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %4, align 16, !tbaa !120   ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !35 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 16, !tbaa !120
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
  br label %bb.f

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN6duckdb16EnumColumnWriterE, i64 16), ptr %0, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.0.i = phi i8 [ %i.r, %.preheader.i ], [ 1, %bb.d ] ; 3 uses
  %i.q = zext nneg i8 %.0.i to i64
  %.highbits.i = lshr i64 %i.o, %i.q
  %.not.i = icmp eq i64 %.highbits.i, 0
  %i.r = add i8 %.0.i, 1
  br i1 %.not.i, label %_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit.loopexit, label %.preheader.i, !llvm.loop !2

_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit.loopexit: ; preds = %.preheader.i
  %i.s = zext i8 %.0.i to i32
  br label %_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit

_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit: ; preds = %_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit.loopexit, %bb.d
  %.06.i = phi i32 [ 0, %bb.d ], [ %i.s, %_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %.06.i, ptr %i.t, align 8, !tbaa !148
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12ColumnWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.m, %.body ]
  resume { ptr, i32 } %.pn
}

declare noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16EnumColumnWriter20InitializeStatsStateEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.37") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb21StringStatisticsStateESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27, !noalias !503 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6duckdb21StringStatisticsStateE, i64 16), ptr %i.a, align 8, !tbaa !26, !noalias !503
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 25, ptr %i.b, align 8, !tbaa !150, !noalias !503
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i32 0, ptr %i.c, align 1, !noalias !503
  store ptr %i.e, ptr %i.d, align 8, !tbaa !151, !noalias !503
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.f, align 8, !tbaa !152, !noalias !503
  store i8 0, ptr %i.e, align 8, !tbaa !46, !noalias !503
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !151, !noalias !503
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.i, align 8, !tbaa !152, !noalias !503
  store i8 0, ptr %i.h, align 8, !tbaa !46, !noalias !503
  store ptr %i.a, ptr %0, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16EnumColumnWriter11WriteVectorERNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.c = load i8, ptr %i.b, align 1, !tbaa !153
  switch i8 %i.c, label %bb.i [
    i8 2, label %bb.b
    i8 4, label %bb.c
    i8 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb16EnumColumnWriter17WriteEnumInternalIhEEvRNS_11WriteStreamERNS_6VectorEmmRNS_19EnumWriterPageStateE(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(2089) %3)
  br label %_ZN6duckdb16EnumColumnWriter17WriteEnumInternalIjEEvRNS_11WriteStreamERNS_6VectorEmmRNS_19EnumWriterPageStateE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb16EnumColumnWriter17WriteEnumInternalItEEvRNS_11WriteStreamERNS_6VectorEmmRNS_19EnumWriterPageStateE(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(2089) %3)
  br label %_ZN6duckdb16EnumColumnWriter17WriteEnumInternalIjEEvRNS_11WriteStreamERNS_6VectorEmmRNS_19EnumWriterPageStateE.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = icmp ult i64 %5, %6
  br i1 %i.g, label %.lr.ph.i, label %_ZN6duckdb16EnumColumnWriter17WriteEnumInternalIjEEvRNS_11WriteStreamERNS_6VectorEmmRNS_19EnumWriterPageStateE.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2088 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2080
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.017.i = phi i64 [ %5, %.lr.ph.i ], [ %i.aa, %bb.h ] ; 4 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.e
  %i.n = lshr i64 %.017.i, 6
  %i.o = and i64 %.017.i, 63
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !tbaa !114
  %i.r = shl nuw i64 1, %i.o
  %i.s = and i64 %i.q, %i.r
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.h, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.e
  %i.t = load i8, ptr %i.h, align 8, !tbaa !156, !range !137, !noundef !138
end_hunk_0
