inline.NumInlined: 9971
inline.NumDeleted: 4725
begin_hunk_0_@_ZN6duckdb19UUIDStatisticsState11GetMinValueB5cxx11Ev:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !11
  store i8 0, ptr %i.m, align 8, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19UUIDStatisticsState11GetMaxValueB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(41) %1)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 16, ptr %i.a, align 8, !tbaa !191
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !22
  %i.i = load i64, ptr %i.a, align 8, !tbaa !191  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !11
  %i.k = load ptr, ptr %0, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !11
  store i8 0, ptr %i.m, align 8, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb23StandardWriterPageStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEEC2EmmN14duckdb_parquet8Encoding4typeERKNS_19PrimitiveDictionaryIS1_S2_S3_EE(ptr noundef nonnull align 8 dereferenceable(39176) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(153) %4) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb23StandardWriterPageStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !2609
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !2612
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !804
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.d, align 8, !tbaa !805
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18496
  store i8 0, ptr %i.e, align 8, !tbaa !2615
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18504
  store i64 %1, ptr %i.f, align 8, !tbaa !804
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18512
  store i64 0, ptr %i.g, align 8, !tbaa !805
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36984
  store i64 %2, ptr %i.h, align 8, !tbaa !806
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36992 ; 2 uses
  tail call void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 37016 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !807
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37024
  store i8 0, ptr %i.k, align 8, !tbaa !2616
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 37032
  store i64 %1, ptr %i.l, align 8, !tbaa !718
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 37040
  store i64 16, ptr %i.m, align 8, !tbaa !719
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 37048
  store i64 0, ptr %i.n, align 8, !tbaa !808
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 37056
  invoke void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN6duckdb10BssEncoderC2Emm.exit unwind label %bb.b

_ZN6duckdb10BssEncoderC2Emm.exit:                 ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 37080
  store ptr %4, ptr %i.p, align 8, !tbaa !2646
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 37088
  store i8 0, ptr %i.q, align 8, !tbaa !2613
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !2597 ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  br i1 %i.u, label %_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6duckdb10BssEncoderC2Emm.exit, %.preheader.i
  %.0.i = phi i8 [ %i.w, %.preheader.i ], [ 1, %_ZN6duckdb10BssEncoderC2Emm.exit ] ; 3 uses
  %i.v = zext nneg i8 %.0.i to i64
  %.highbits.i = lshr i64 %i.t, %i.v
  %.not.i = icmp eq i64 %.highbits.i, 0
  %i.w = add i8 %.0.i, 1
  br i1 %.not.i, label %_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit.loopexit, label %.preheader.i, !llvm.loop !669

_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit.loopexit: ; preds = %.preheader.i
  %i.x = zext i8 %.0.i to i32
  br label %_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit

_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit: ; preds = %_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit.loopexit, %_ZN6duckdb10BssEncoderC2Emm.exit
  %.06.i = phi i32 [ 0, %_ZN6duckdb10BssEncoderC2Emm.exit ], [ %i.x, %_ZN6duckdb12RleBpDecoder15ComputeBitWidthEm.exit.loopexit ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 37092
  store i32 %.06.i, ptr %i.y, align 4, !tbaa !2614
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 37096
  store i32 %.06.i, ptr %i.z, align 8, !tbaa !810
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 37100
  %i.ab = add nuw nsw i32 %.06.i, 7
  %i.ac = lshr i32 %i.ab, 3
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !811
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 37120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.ad, i8 0, i64 2048, i1 false)
  ret void

bb.b:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !715 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN6duckdb11DlbaEncoderD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(48) %i.af) #25, !inline_history !812
  br label %_ZN6duckdb11DlbaEncoderD2Ev.exit

_ZN6duckdb11DlbaEncoderD2Ev.exit:                 ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb23StandardWriterPageStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(39176) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb23StandardWriterPageStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37056
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37016
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !715  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN6duckdb11DlbaEncoderD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #25, !inline_history !812
  br label %_ZN6duckdb11DlbaEncoderD2Ev.exit

_ZN6duckdb11DlbaEncoderD2Ev.exit:                 ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36992
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb23StandardWriterPageStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(39176) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb23StandardWriterPageStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37056
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #25, !inline_history !2647
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37016
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !715  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6duckdb23StandardWriterPageStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #25, !inline_history !2648
  br label %_ZN6duckdb23StandardWriterPageStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEED2Ev.exit

_ZN6duckdb23StandardWriterPageStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36992
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #25, !inline_history !2647
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 16 ; 10 uses
  %8 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 16 ; 4 uses
  %9 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 11 uses
  %11 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 11 uses
  %13 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 11 uses
  %15 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %16 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 11 uses
  %17 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %19 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %20 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %21 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::allocator", align 1   ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !624  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2609
  switch i32 %i.f, label %bb.am [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.p
    i32 6, label %bb.w
    i32 9, label %bb.ad
    i32 0, label %bb.aj
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !2613, !range !250, !noundef !78
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.j, %i.i
  br i1 %or.cond.not, label %.loopexit178, label %.lr.ph204

.lr.ph204:                                        ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !243  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph204, %bb.c
  %.0115203 = phi i64 [ %i.y, %bb.c ], [ %5, %.lr.ph204 ] ; 4 uses
  %i.l = lshr i64 %.0115203, 6
  %i.m = and i64 %.0115203, 63
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !191
  %i.p = shl nuw i64 1, %i.m
  %i.q = and i64 %i.o, %i.p
  %.not177 = icmp eq i64 %i.q, 0
  br i1 %.not177, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph204
  %.us-phi206 = phi i64 [ %5, %.lr.ph204 ], [ %.0115203, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.s = load i32, ptr %i.r, align 4, !tbaa !2614
  %i.t = trunc i32 %i.s to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.t, ptr %i.a, align 1, !tbaa !14
  %i.u = load ptr, ptr %1, align 8, !tbaa !15
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.w, align 8, !tbaa !713
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.x, align 8, !tbaa !841
  store i8 1, ptr %i.g, align 8, !tbaa !2613
  br label %.loopexit178

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.y = add i64 %.0115203, 1                     ; 2 uses
  %exitcond233.not = icmp eq i64 %i.y, %6
  br i1 %exitcond233.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !2649

.loopexit178:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1116 = phi i64 [ %5, %bb.b ], [ %.us-phi206, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.z = icmp ult i64 %.1116, %6
  br i1 %i.z, label %.lr.ph208, label %.loopexit

.lr.ph208:                                        ; preds = %.loopexit178
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph208, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2207 = phi i64 [ %.1116, %.lr.ph208 ], [ %i.bq, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.2207 ; 3 uses
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !2650, !nonnull !78, !align !79 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ai, align 8, !tbaa !191
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !191
  %i.ak = call noundef i64 @_ZN6duckdb4HashINS_9hugeint_tEEEmT_(i64 %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !2632
  %i.an = and i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 144 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2626
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.an ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !2627
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE8GetIndexERKS1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %i.au = phi ptr [ %i.az, %bb.e ], [ %i.aq, %bb.d ]
  %.07.i.i = phi i64 [ %i.ay, %bb.e ], [ %i.an, %bb.d ] ; 2 uses
  %i.av = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.ai)
  %.pre.pre.i.i = load ptr, ptr %i.ao, align 8, !tbaa !2626 ; 2 uses
  br i1 %i.av, label %bb.e, label %.lr.ph.i._ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.loopexit_crit_edge.i

.lr.ph.i._ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i.i
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i.i, i64 %.07.i.i
  %.phi.trans.insert3.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.phi.trans.insert.i, i64 16
  %.pre.pre.i = load i32, ptr %.phi.trans.insert3.phi.trans.insert.i, align 8, !tbaa !2627
  br label %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE8GetIndexERKS1_.exit

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !2632
  %i.ax = add i64 %.07.i.i, 1
  %i.ay = and i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i.i, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !2627
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE8GetIndexERKS1_.exit, label %.lr.ph.i.i, !llvm.loop !2641

_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE8GetIndexERKS1_.exit: ; preds = %bb.e, %bb.d, %.lr.ph.i._ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.loopexit_crit_edge.i
  %i.bd = phi i32 [ -1, %bb.d ], [ %.pre.pre.i, %.lr.ph.i._ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.loopexit_crit_edge.i ], [ -1, %bb.e ] ; 5 uses
  %i.be = load i64, ptr %i.ac, align 8, !tbaa !841 ; 3 uses
  %.not.i125 = icmp eq i64 %i.be, 0
  br i1 %.not.i125, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE8GetIndexERKS1_.exit
  %i.bf = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.bf, ptr %i.ac, align 8, !tbaa !841
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.be
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !3
  %i.bh = icmp eq i64 %i.bf, 256
  br i1 %i.bh, label %bb.g, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit

bb.g:                                             ; preds = %bb.f
  %i.bi = load i64, ptr %i.ae, align 8, !tbaa !713
  %.not.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb12RleBpEncoder20WriteCurrentBlockRLEERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(2080) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZN6duckdb12RleBpEncoder19WriteCurrentBlockBPERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(2080) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit

bb.j:                                             ; preds = %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE8GetIndexERKS1_.exit
  %i.bj = load i64, ptr %i.ae, align 8, !tbaa !713 ; 6 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bd, ptr %i.af, align 8, !tbaa !838
  store i64 1, ptr %i.ae, align 8, !tbaa !713
  br label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = load i32, ptr %i.af, align 8, !tbaa !838 ; 4 uses
  %i.bm = icmp eq i32 %i.bl, %i.bd
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = add i64 %i.bj, 1
  store i64 %i.bn, ptr %i.ae, align 8, !tbaa !713
  br label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit

bb.n:                                             ; preds = %bb.l
  %i.bo = icmp ugt i64 %i.bj, 3
  br i1 %i.bo, label %_ZN6duckdb12RleBpEncoder8WriteRunERNS_11WriteStreamE.exit12.i, label %.preheader.i

_ZN6duckdb12RleBpEncoder8WriteRunERNS_11WriteStreamE.exit12.i: ; preds = %bb.n
  call void @_ZN6duckdb12RleBpEncoder20WriteCurrentBlockRLEERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(2080) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store i32 %i.bd, ptr %i.af, align 8, !tbaa !838
  store i64 1, ptr %i.ae, align 8, !tbaa !713
  br label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit

bb.o:                                             ; preds = %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %.013.i.lcssa = phi i64 [ 2, %.preheader.i ], [ 3, %.preheader.i.1 ], [ 4, %.preheader.i.2 ]
  store i64 %.013.i.lcssa, ptr %i.ac, align 8, !tbaa !841
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bj
  store i32 %i.bd, ptr %i.bp, align 4, !tbaa !3
  store i64 0, ptr %i.ae, align 8, !tbaa !713
end_hunk_0
begin_hunk_1_@_ZN6duckdb20StandardColumnWriterINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  %i.gr = call i64 @llvm.bswap.i64(i64 %i.gp)     ; 2 uses
  %i.gs = call i64 @llvm.bswap.i64(i64 %i.gq)     ; 2 uses
  %i.gt = icmp eq i64 %i.gr, %i.gs
  br i1 %i.gt, label %loadbb330, label %res_block326

res_block326:                                     ; preds = %loadbb330, %.thread.i145
  %phi.src1327 = phi i64 [ %i.gr, %.thread.i145 ], [ %i.ha, %loadbb330 ]
  %phi.src2328 = phi i64 [ %i.gs, %.thread.i145 ], [ %i.hb, %loadbb330 ]
  %i.gu = icmp ult i64 %phi.src1327, %phi.src2328
  %i.gv = select i1 %i.gu, i32 -1, i32 1
  br label %endblock324

loadbb330:                                        ; preds = %.thread.i145
  %i.gw = getelementptr i8, ptr %12, i64 8
  %i.gx = getelementptr i8, ptr %i.go, i64 8
  %i.gy = load i64, ptr %i.gw, align 8
  %i.gz = load i64, ptr %i.gx, align 1
  %i.ha = call i64 @llvm.bswap.i64(i64 %i.gy)     ; 2 uses
  %i.hb = call i64 @llvm.bswap.i64(i64 %i.gz)     ; 2 uses
  %i.hc = icmp eq i64 %i.ha, %i.hb
  br i1 %i.hc, label %endblock324, label %res_block326

endblock324:                                      ; preds = %res_block326, %loadbb330
  %phi.res325 = phi i32 [ 0, %loadbb330 ], [ %i.gv, %res_block326 ]
  %i.hd = icmp sgt i32 %phi.res325, 0
  br i1 %i.hd, label %bb.y, label %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit147

bb.y:                                             ; preds = %endblock324, %bb.x
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !2294
  br label %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit147

_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit147: ; preds = %endblock324, %bb.y
  store i8 1, ptr %i.fv, align 8, !tbaa !2643
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 18504
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !77, !nonnull !78, !align !79
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.hj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.hi)
  call void @_ZN6duckdb11DlbaEncoder10BeginWriteINS_21ParquetUUIDTargetTypeEEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %i.hj, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(16) %20)
  store i8 1, ptr %i.fh, align 8, !tbaa !2615
  %i.hk = add nuw i64 %.us-phi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.loopexit184

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit139
  %i.hl = add i64 %.0120193, 1                    ; 2 uses
  %exitcond229.not = icmp eq i64 %i.hl, %6
  br i1 %exitcond229.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit139, !llvm.loop !2654

.loopexit184:                                     ; preds = %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit147, %bb.w
  %.1121 = phi i64 [ %5, %bb.w ], [ %i.hk, %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit147 ] ; 2 uses
  %i.hm = icmp ult i64 %.1121, %6
  br i1 %i.hm, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %.loopexit184
  %.fca.1.gep.i150 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 18504
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph196, %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit155
  %.2122195 = phi i64 [ %.1121, %.lr.ph196 ], [ %i.ja, %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit155 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.2122195 ; 2 uses
  %.sroa.09.0.copyload = load i64, ptr %i.ht, align 8, !tbaa !191
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %.sroa.210.0.copyload = load i64, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @_ZN6duckdb8BaseUUID6ToBlobENS_9hugeint_tEPh(i64 %.sroa.09.0.copyload, i64 %.sroa.210.0.copyload, ptr noundef nonnull %11)
  %.fca.0.load.i148 = load i64, ptr %11, align 8  ; 2 uses
  %.fca.1.load.i151 = load i64, ptr %.fca.1.gep.i150, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  store i64 %.fca.0.load.i148, ptr %21, align 8
  store i64 %.fca.1.load.i151, ptr %i.hn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %.fca.0.load.i148, ptr %10, align 8
  store i64 %.fca.1.load.i151, ptr %i.ho, align 8
  %i.hu = load i8, ptr %i.hp, align 8, !tbaa !2643, !range !250, !noundef !78
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %loadbb336, label %bb.ab

res_block333:                                     ; preds = %loadbb337, %loadbb336
  %phi.src1334 = phi i64 [ %i.ia, %loadbb336 ], [ %i.ih, %loadbb337 ]
  %phi.src2335 = phi i64 [ %i.ib, %loadbb336 ], [ %i.ii, %loadbb337 ]
  %i.hw = icmp ult i64 %phi.src1334, %phi.src2335
  %i.hx = select i1 %i.hw, i32 -1, i32 1
  br label %endblock331

loadbb336:                                        ; preds = %bb.aa
  %i.hy = load i64, ptr %10, align 8
  %i.hz = load i64, ptr %i.hq, align 1
  %i.ia = call i64 @llvm.bswap.i64(i64 %i.hy)     ; 2 uses
  %i.ib = call i64 @llvm.bswap.i64(i64 %i.hz)     ; 2 uses
  %i.ic = icmp eq i64 %i.ia, %i.ib
  br i1 %i.ic, label %loadbb337, label %res_block333

loadbb337:                                        ; preds = %loadbb336
  %i.id = getelementptr i8, ptr %10, i64 8
  %i.ie = getelementptr i8, ptr %i.hq, i64 8
  %i.if = load i64, ptr %i.id, align 8
  %i.ig = load i64, ptr %i.ie, align 1
  %i.ih = call i64 @llvm.bswap.i64(i64 %i.if)     ; 2 uses
  %i.ii = call i64 @llvm.bswap.i64(i64 %i.ig)     ; 2 uses
  %i.ij = icmp eq i64 %i.ih, %i.ii
  br i1 %i.ij, label %endblock331, label %res_block333

endblock331:                                      ; preds = %res_block333, %loadbb337
  %phi.res332 = phi i32 [ 0, %loadbb337 ], [ %i.hx, %res_block333 ]
  %i.ik = icmp slt i32 %phi.res332, 0
  br i1 %i.ik, label %.thread8.i154, label %loadbb343

.thread8.i154:                                    ; preds = %endblock331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hq, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !2294
  br label %loadbb343

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hq, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !2294
  br label %bb.ac

res_block340:                                     ; preds = %loadbb344, %loadbb343
  %phi.src1341 = phi i64 [ %i.ip, %loadbb343 ], [ %i.iw, %loadbb344 ]
  %phi.src2342 = phi i64 [ %i.iq, %loadbb343 ], [ %i.ix, %loadbb344 ]
  %i.il = icmp ult i64 %phi.src1341, %phi.src2342
  %i.im = select i1 %i.il, i32 -1, i32 1
  br label %endblock338

loadbb343:                                        ; preds = %endblock331, %.thread8.i154
  %i.in = load i64, ptr %10, align 8
  %i.io = load i64, ptr %i.hr, align 1
  %i.ip = call i64 @llvm.bswap.i64(i64 %i.in)     ; 2 uses
  %i.iq = call i64 @llvm.bswap.i64(i64 %i.io)     ; 2 uses
  %i.ir = icmp eq i64 %i.ip, %i.iq
  br i1 %i.ir, label %loadbb344, label %res_block340

loadbb344:                                        ; preds = %loadbb343
  %i.is = getelementptr i8, ptr %10, i64 8
  %i.it = getelementptr i8, ptr %i.hr, i64 8
  %i.iu = load i64, ptr %i.is, align 8
  %i.iv = load i64, ptr %i.it, align 1
  %i.iw = call i64 @llvm.bswap.i64(i64 %i.iu)     ; 2 uses
  %i.ix = call i64 @llvm.bswap.i64(i64 %i.iv)     ; 2 uses
  %i.iy = icmp eq i64 %i.iw, %i.ix
  br i1 %i.iy, label %endblock338, label %res_block340

endblock338:                                      ; preds = %res_block340, %loadbb344
  %phi.res339 = phi i32 [ 0, %loadbb344 ], [ %i.im, %res_block340 ]
  %i.iz = icmp sgt i32 %phi.res339, 0
  br i1 %i.iz, label %bb.ac, label %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit155

bb.ac:                                            ; preds = %endblock338, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hr, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !2294
  br label %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit155

_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit155: ; preds = %endblock338, %bb.ac
  store i8 1, ptr %i.hp, align 8, !tbaa !2643
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @_ZN6duckdb11DlbaEncoder10WriteValueINS_21ParquetUUIDTargetTypeEEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.hs, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(16) %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.ja = add i64 %.2122195, 1                    ; 2 uses
  %exitcond230.not = icmp eq i64 %i.ja, %6
  br i1 %exitcond230.not, label %.loopexit, label %bb.aa, !llvm.loop !2655

bb.ad:                                            ; preds = %bb.a
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !2616, !range !250, !noundef !78
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !77, !nonnull !78, !align !79
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.ji = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.jh) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.jj = load i64, ptr %i.je, align 8, !tbaa !718
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !719
  %i.jm = mul i64 %i.jl, %i.jj
  %i.jn = add i64 %i.jm, 1                        ; 2 uses
  %i.jo = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ji, i64 noundef %i.jn), !noalias !2656
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ji, ptr noundef %i.jo, i64 noundef %i.jn)
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.jq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %9) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  store i8 1, ptr %i.jb, align 8, !tbaa !2616
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.jr = icmp ult i64 %5, %6
  br i1 %i.jr, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.af
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 15 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 16 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 18 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit163
  %.0123192 = phi i64 [ %5, %.lr.ph ], [ %i.ov, %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit163 ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.0123192 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.jy, align 8, !tbaa !191
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @_ZN6duckdb8BaseUUID6ToBlobENS_9hugeint_tEPh(i64 %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, ptr noundef nonnull %8)
  %24 = load <2 x i64>, ptr %8, align 16          ; 17 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store <2 x i64> %24, ptr %7, align 16
  %i.jz = load i8, ptr %i.js, align 8, !tbaa !2643, !range !250, !noundef !78
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %loadbb350, label %bb.ah

res_block347:                                     ; preds = %loadbb351, %loadbb350
  %phi.src1348 = phi i64 [ %i.kf, %loadbb350 ], [ %i.km, %loadbb351 ]
  %phi.src2349 = phi i64 [ %i.kg, %loadbb350 ], [ %i.kn, %loadbb351 ]
  %i.kb = icmp ult i64 %phi.src1348, %phi.src2349
  %i.kc = select i1 %i.kb, i32 -1, i32 1
  br label %endblock345

loadbb350:                                        ; preds = %bb.ag
  %i.kd = load i64, ptr %7, align 16
  %i.ke = load i64, ptr %i.jt, align 1
  %i.kf = call i64 @llvm.bswap.i64(i64 %i.kd)     ; 2 uses
  %i.kg = call i64 @llvm.bswap.i64(i64 %i.ke)     ; 2 uses
  %i.kh = icmp eq i64 %i.kf, %i.kg
  br i1 %i.kh, label %loadbb351, label %res_block347

loadbb351:                                        ; preds = %loadbb350
  %i.ki = getelementptr i8, ptr %7, i64 8
  %i.kj = getelementptr i8, ptr %i.jt, i64 8
  %i.kk = load i64, ptr %i.ki, align 8
  %i.kl = load i64, ptr %i.kj, align 1
  %i.km = call i64 @llvm.bswap.i64(i64 %i.kk)     ; 2 uses
  %i.kn = call i64 @llvm.bswap.i64(i64 %i.kl)     ; 2 uses
  %i.ko = icmp eq i64 %i.km, %i.kn
  br i1 %i.ko, label %endblock345, label %res_block347

endblock345:                                      ; preds = %res_block347, %loadbb351
  %phi.res346 = phi i32 [ 0, %loadbb351 ], [ %i.kc, %res_block347 ]
  %i.kp = icmp slt i32 %phi.res346, 0
  br i1 %i.kp, label %.thread8.i162, label %loadbb357

.thread8.i162:                                    ; preds = %endblock345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jt, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !2294
  br label %loadbb357

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jt, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !2294
  br label %bb.ai

res_block354:                                     ; preds = %loadbb358, %loadbb357
  %phi.src1355 = phi i64 [ %i.ku, %loadbb357 ], [ %i.lb, %loadbb358 ]
  %phi.src2356 = phi i64 [ %i.kv, %loadbb357 ], [ %i.lc, %loadbb358 ]
  %i.kq = icmp ult i64 %phi.src1355, %phi.src2356
  %i.kr = select i1 %i.kq, i32 -1, i32 1
  br label %endblock352

loadbb357:                                        ; preds = %endblock345, %.thread8.i162
  %i.ks = load i64, ptr %7, align 16
  %i.kt = load i64, ptr %i.ju, align 1
  %i.ku = call i64 @llvm.bswap.i64(i64 %i.ks)     ; 2 uses
  %i.kv = call i64 @llvm.bswap.i64(i64 %i.kt)     ; 2 uses
  %i.kw = icmp eq i64 %i.ku, %i.kv
  br i1 %i.kw, label %loadbb358, label %res_block354

loadbb358:                                        ; preds = %loadbb357
  %i.kx = getelementptr i8, ptr %7, i64 8
  %i.ky = getelementptr i8, ptr %i.ju, i64 8
  %i.kz = load i64, ptr %i.kx, align 8
  %i.la = load i64, ptr %i.ky, align 1
  %i.lb = call i64 @llvm.bswap.i64(i64 %i.kz)     ; 2 uses
  %i.lc = call i64 @llvm.bswap.i64(i64 %i.la)     ; 2 uses
  %i.ld = icmp eq i64 %i.lb, %i.lc
  br i1 %i.ld, label %endblock352, label %res_block354

endblock352:                                      ; preds = %res_block354, %loadbb358
  %phi.res353 = phi i32 [ 0, %loadbb358 ], [ %i.kr, %res_block354 ]
  %i.le = icmp sgt i32 %phi.res353, 0
  br i1 %i.le, label %bb.ai, label %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit163

bb.ai:                                            ; preds = %endblock352, %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ju, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !2294
  br label %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit163

_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit163: ; preds = %endblock352, %bb.ai
  store i8 1, ptr %i.js, align 8, !tbaa !2643
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %25 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.0.extract.trunc = extractelement <16 x i8> %25, i64 0
  %i.lf = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.lg = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.lh = getelementptr i8, ptr %i.lf, i64 %i.lg
  store i8 %.sroa.0.0.extract.trunc, ptr %i.lh, align 1, !tbaa !14
  %26 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.1.extract.trunc = extractelement <16 x i8> %26, i64 1
  %i.li = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.lj = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.lk = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.ll = getelementptr i8, ptr %i.li, i64 %i.lj
  %i.lm = getelementptr i8, ptr %i.ll, i64 %i.lk
  store i8 %.sroa.0.1.extract.trunc, ptr %i.lm, align 1, !tbaa !14
  %27 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.2.extract.trunc = extractelement <16 x i8> %27, i64 2
  %i.ln = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.lo = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.lp = shl i64 %i.lo, 1
  %i.lq = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.lr = getelementptr i8, ptr %i.ln, i64 %i.lp
  %i.ls = getelementptr i8, ptr %i.lr, i64 %i.lq
  store i8 %.sroa.0.2.extract.trunc, ptr %i.ls, align 1, !tbaa !14
  %28 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.3.extract.trunc = extractelement <16 x i8> %28, i64 3
  %i.lt = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.lu = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.lv = mul i64 %i.lu, 3
  %i.lw = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.lx = getelementptr i8, ptr %i.lt, i64 %i.lv
  %i.ly = getelementptr i8, ptr %i.lx, i64 %i.lw
  store i8 %.sroa.0.3.extract.trunc, ptr %i.ly, align 1, !tbaa !14
  %29 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.4.extract.trunc = extractelement <16 x i8> %29, i64 4
  %i.lz = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.ma = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.mb = shl i64 %i.ma, 2
  %i.mc = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.md = getelementptr i8, ptr %i.lz, i64 %i.mb
  %i.me = getelementptr i8, ptr %i.md, i64 %i.mc
  store i8 %.sroa.0.4.extract.trunc, ptr %i.me, align 1, !tbaa !14
  %30 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.5.extract.trunc = extractelement <16 x i8> %30, i64 5
  %i.mf = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.mg = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.mh = mul i64 %i.mg, 5
  %i.mi = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.mj = getelementptr i8, ptr %i.mf, i64 %i.mh
  %i.mk = getelementptr i8, ptr %i.mj, i64 %i.mi
  store i8 %.sroa.0.5.extract.trunc, ptr %i.mk, align 1, !tbaa !14
  %31 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.6.extract.trunc = extractelement <16 x i8> %31, i64 6
  %i.ml = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.mm = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.mn = mul i64 %i.mm, 6
  %i.mo = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.mp = getelementptr i8, ptr %i.ml, i64 %i.mn
  %i.mq = getelementptr i8, ptr %i.mp, i64 %i.mo
  store i8 %.sroa.0.6.extract.trunc, ptr %i.mq, align 1, !tbaa !14
  %32 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.7.extract.trunc = extractelement <16 x i8> %32, i64 7
  %i.mr = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.ms = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.mt = mul i64 %i.ms, 7
  %i.mu = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.mv = getelementptr i8, ptr %i.mr, i64 %i.mt
  %i.mw = getelementptr i8, ptr %i.mv, i64 %i.mu
  store i8 %.sroa.0.7.extract.trunc, ptr %i.mw, align 1, !tbaa !14
  %33 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.8.extract.trunc = extractelement <16 x i8> %33, i64 8
  %i.mx = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.my = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.mz = shl i64 %i.my, 3
  %i.na = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.nb = getelementptr i8, ptr %i.mx, i64 %i.mz
  %i.nc = getelementptr i8, ptr %i.nb, i64 %i.na
  store i8 %.sroa.11.8.extract.trunc, ptr %i.nc, align 1, !tbaa !14
  %34 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.9.extract.trunc = extractelement <16 x i8> %34, i64 9
  %i.nd = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.ne = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.nf = mul i64 %i.ne, 9
  %i.ng = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.nh = getelementptr i8, ptr %i.nd, i64 %i.nf
  %i.ni = getelementptr i8, ptr %i.nh, i64 %i.ng
  store i8 %.sroa.11.9.extract.trunc, ptr %i.ni, align 1, !tbaa !14
  %35 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.10.extract.trunc = extractelement <16 x i8> %35, i64 10
  %i.nj = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.nk = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.nl = mul i64 %i.nk, 10
  %i.nm = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.nn = getelementptr i8, ptr %i.nj, i64 %i.nl
  %i.no = getelementptr i8, ptr %i.nn, i64 %i.nm
  store i8 %.sroa.11.10.extract.trunc, ptr %i.no, align 1, !tbaa !14
  %36 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.11.extract.trunc = extractelement <16 x i8> %36, i64 11
  %i.np = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.nq = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.nr = mul i64 %i.nq, 11
  %i.ns = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.nt = getelementptr i8, ptr %i.np, i64 %i.nr
  %i.nu = getelementptr i8, ptr %i.nt, i64 %i.ns
  store i8 %.sroa.11.11.extract.trunc, ptr %i.nu, align 1, !tbaa !14
  %37 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.12.extract.trunc = extractelement <16 x i8> %37, i64 12
  %i.nv = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.nw = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.nx = mul i64 %i.nw, 12
  %i.ny = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.nz = getelementptr i8, ptr %i.nv, i64 %i.nx
  %i.oa = getelementptr i8, ptr %i.nz, i64 %i.ny
  store i8 %.sroa.11.12.extract.trunc, ptr %i.oa, align 1, !tbaa !14
  %38 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.13.extract.trunc = extractelement <16 x i8> %38, i64 13
  %i.ob = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.oc = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.od = mul i64 %i.oc, 13
  %i.oe = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.of = getelementptr i8, ptr %i.ob, i64 %i.od
  %i.og = getelementptr i8, ptr %i.of, i64 %i.oe
  store i8 %.sroa.11.13.extract.trunc, ptr %i.og, align 1, !tbaa !14
  %39 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.14.extract.trunc = extractelement <16 x i8> %39, i64 14
  %i.oh = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.oi = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.oj = mul i64 %i.oi, 14
  %i.ok = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.ol = getelementptr i8, ptr %i.oh, i64 %i.oj
  %i.om = getelementptr i8, ptr %i.ol, i64 %i.ok
  store i8 %.sroa.11.14.extract.trunc, ptr %i.om, align 1, !tbaa !14
  %40 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.15.extract.trunc = extractelement <16 x i8> %40, i64 15
  %i.on = load ptr, ptr %i.jw, align 8, !tbaa !197
  %i.oo = load i64, ptr %i.jv, align 8, !tbaa !718
  %i.op = mul i64 %i.oo, 15
  %i.oq = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.or = getelementptr i8, ptr %i.on, i64 %i.op
  %i.os = getelementptr i8, ptr %i.or, i64 %i.oq
  store i8 %.sroa.11.15.extract.trunc, ptr %i.os, align 1, !tbaa !14
  %i.ot = load i64, ptr %i.jx, align 8, !tbaa !808
  %i.ou = add i64 %i.ot, 1
  store i64 %i.ou, ptr %i.jx, align 8, !tbaa !808
  %i.ov = add i64 %.0123192, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ov, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.ag, !llvm.loop !2659

bb.aj:                                            ; preds = %bb.a
  %i.ow = load ptr, ptr %i.b, align 8, !tbaa !243
  %.not.i164 = icmp eq ptr %i.ow, null
  br i1 %.not.i164, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %2, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %.loopexit

bb.al:                                            ; preds = %bb.aj
  tail call fastcc void @_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %2, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %.loopexit

bb.am:                                            ; preds = %bb.a
  %i.ox = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void @__cxa_throw(ptr nonnull %i.ox, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.as unwind label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.am
  %i.oy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0 = phi i1 [ false, %bb.ao ], [ true, %bb.an ] ; 2 uses
  %i.oz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pa = load ptr, ptr %22, align 8, !tbaa !22   ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.pc = icmp eq ptr %i.pa, %i.pb
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.pa) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br i1 %.0, label %bb.aq, label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br i1 %.0, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn175 = phi { ptr, i32 } [ %i.oy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.oz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.oz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ox) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn174 = phi { ptr, i32 } [ %.pn175, %bb.aq ], [ %i.oz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.oz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn174

.loopexit:                                        ; preds = %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit163, %bb.z, %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit155, %bb.s, %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit136, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.af, %.loopexit184, %.loopexit181, %.loopexit178, %bb.ak, %bb.al
  ret void

bb.as:                                            ; preds = %bb.ao
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 16 ; 10 uses
  %8 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 16 ; 4 uses
  %9 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 11 uses
  %11 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 11 uses
  %13 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 11 uses
  %15 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %16 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 11 uses
  %17 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %19 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %20 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %21 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 8 ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::allocator", align 1   ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !624  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2609
  switch i32 %i.f, label %bb.ap [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.p
    i32 6, label %bb.x
    i32 9, label %bb.af
    i32 0, label %bb.am
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !2613, !range !250, !noundef !78
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.j, %i.i
  br i1 %or.cond.not, label %.loopexit206, label %.lr.ph232

.lr.ph232:                                        ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !243  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph232, %bb.c
  %.0123231 = phi i64 [ %i.y, %bb.c ], [ %5, %.lr.ph232 ] ; 4 uses
  %i.l = lshr i64 %.0123231, 6
  %i.m = and i64 %.0123231, 63
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !191
  %i.p = shl nuw i64 1, %i.m
  %i.q = and i64 %i.o, %i.p
  %.not204 = icmp eq i64 %i.q, 0
  br i1 %.not204, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph232
  %.us-phi234 = phi i64 [ %5, %.lr.ph232 ], [ %.0123231, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.s = load i32, ptr %i.r, align 4, !tbaa !2614
  %i.t = trunc i32 %i.s to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.t, ptr %i.a, align 1, !tbaa !14
  %i.u = load ptr, ptr %1, align 8, !tbaa !15
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.w, align 8, !tbaa !713
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.x, align 8, !tbaa !841
  store i8 1, ptr %i.g, align 8, !tbaa !2613
  br label %.loopexit206

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.y = add i64 %.0123231, 1                     ; 2 uses
  %exitcond261.not = icmp eq i64 %i.y, %6
  br i1 %exitcond261.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !2660

.loopexit206:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1124 = phi i64 [ %5, %bb.b ], [ %.us-phi234, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.z = icmp ult i64 %.1124, %6
  br i1 %i.z, label %.lr.ph236, label %.loopexit

.lr.ph236:                                        ; preds = %.loopexit206
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph236, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2235 = phi i64 [ %.1124, %.lr.ph236 ], [ %i.bx, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !243 ; 2 uses
  %.not.i133 = icmp eq ptr %i.ai, null
  br i1 %.not.i133, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135: ; preds = %bb.d
  %i.aj = lshr i64 %.2235, 6
  %i.ak = and i64 %.2235, 63
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.am = load i64, ptr %i.al, align 8, !tbaa !191
  %i.an = shl nuw i64 1, %i.ak
  %i.ao = and i64 %i.am, %i.an
  %.not205 = icmp eq i64 %i.ao, 0
  br i1 %.not205, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.2235 ; 3 uses
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !2650, !nonnull !78, !align !79 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ap, align 8, !tbaa !191
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !191
  %i.ar = call noundef i64 @_ZN6duckdb4HashINS_9hugeint_tEEEmT_(i64 %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !2632
  %i.au = and i64 %i.at, %i.ar                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 144 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !2626
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.au ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !2627
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE8GetIndexERKS1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135.thread, %bb.e
  %i.bb = phi ptr [ %i.bg, %bb.e ], [ %i.ax, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135.thread ]
  %.07.i.i = phi i64 [ %i.bf, %bb.e ], [ %i.au, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135.thread ] ; 2 uses
  %i.bc = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ap)
  %.pre.pre.i.i = load ptr, ptr %i.av, align 8, !tbaa !2626 ; 2 uses
  br i1 %i.bc, label %bb.e, label %.lr.ph.i._ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.loopexit_crit_edge.i

.lr.ph.i._ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i.i
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i.i, i64 %.07.i.i
  %.phi.trans.insert3.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.phi.trans.insert.i, i64 16
  %.pre.pre.i = load i32, ptr %.phi.trans.insert3.phi.trans.insert.i, align 8, !tbaa !2627
  br label %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE8GetIndexERKS1_.exit

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.bd = load i64, ptr %i.as, align 8, !tbaa !2632
  %i.be = add i64 %.07.i.i, 1
  %i.bf = and i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i.i, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !2627
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE8GetIndexERKS1_.exit, label %.lr.ph.i.i, !llvm.loop !2641

_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE8GetIndexERKS1_.exit: ; preds = %bb.e, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135.thread, %.lr.ph.i._ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.loopexit_crit_edge.i
  %i.bk = phi i32 [ -1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135.thread ], [ %.pre.pre.i, %.lr.ph.i._ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.loopexit_crit_edge.i ], [ -1, %bb.e ] ; 5 uses
  %i.bl = load i64, ptr %i.ac, align 8, !tbaa !841 ; 3 uses
  %.not.i136 = icmp eq i64 %i.bl, 0
  br i1 %.not.i136, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE8GetIndexERKS1_.exit
  %i.bm = add i64 %i.bl, 1                        ; 2 uses
  store i64 %i.bm, ptr %i.ac, align 8, !tbaa !841
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bl
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !3
  %i.bo = icmp eq i64 %i.bm, 256
  br i1 %i.bo, label %bb.g, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit

bb.g:                                             ; preds = %bb.f
  %i.bp = load i64, ptr %i.ae, align 8, !tbaa !713
  %.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb12RleBpEncoder20WriteCurrentBlockRLEERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(2080) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZN6duckdb12RleBpEncoder19WriteCurrentBlockBPERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(2080) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit

bb.j:                                             ; preds = %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE8GetIndexERKS1_.exit
  %i.bq = load i64, ptr %i.ae, align 8, !tbaa !713 ; 6 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bk, ptr %i.af, align 8, !tbaa !838
  store i64 1, ptr %i.ae, align 8, !tbaa !713
  br label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit

bb.l:                                             ; preds = %bb.j
  %i.bs = load i32, ptr %i.af, align 8, !tbaa !838 ; 4 uses
  %i.bt = icmp eq i32 %i.bs, %i.bk
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = add i64 %i.bq, 1
  store i64 %i.bu, ptr %i.ae, align 8, !tbaa !713
  br label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit

bb.n:                                             ; preds = %bb.l
end_hunk_1
begin_hunk_2_@_ZN6duckdb20StandardColumnWriterINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  %i.hp = call i64 @llvm.bswap.i64(i64 %i.hn)     ; 2 uses
  %i.hq = icmp eq i64 %i.ho, %i.hp
  br i1 %i.hq, label %endblock356, label %res_block358

endblock356:                                      ; preds = %res_block358, %loadbb362
  %phi.res357 = phi i32 [ 0, %loadbb362 ], [ %i.hj, %res_block358 ]
  %i.hr = icmp sgt i32 %phi.res357, 0
  br i1 %i.hr, label %bb.z, label %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit161

bb.z:                                             ; preds = %endblock356, %bb.y
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !2294
  br label %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit161

_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit161: ; preds = %endblock356, %bb.z
  store i8 1, ptr %i.gj, align 8, !tbaa !2643
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 18504
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !77, !nonnull !78, !align !79
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.hx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.hw)
  call void @_ZN6duckdb11DlbaEncoder10BeginWriteINS_21ParquetUUIDTargetTypeEEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.ht, ptr noundef nonnull align 8 dereferenceable(32) %i.hx, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(16) %20)
  store i8 1, ptr %i.fv, align 8, !tbaa !2615
  %i.hy = add nuw i64 %.us-phi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.loopexit212

bb.aa:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit153
  %i.hz = add i64 %.0128221, 1                    ; 2 uses
  %exitcond257.not = icmp eq i64 %i.hz, %6
  br i1 %exitcond257.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit153, !llvm.loop !2664

.loopexit212:                                     ; preds = %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit161, %bb.x
  %.1129 = phi i64 [ %5, %bb.x ], [ %i.hy, %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit161 ] ; 2 uses
  %i.ia = icmp ult i64 %.1129, %6
  br i1 %i.ia, label %.lr.ph224, label %.loopexit

.lr.ph224:                                        ; preds = %.loopexit212
  %.fca.1.gep.i167 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 18504
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph224, %bb.ae
  %.2130223 = phi i64 [ %.1129, %.lr.ph224 ], [ %i.jv, %bb.ae ] ; 4 uses
  %i.ih = load ptr, ptr %i.b, align 8, !tbaa !243 ; 2 uses
  %.not.i162 = icmp eq ptr %i.ih, null
  br i1 %.not.i162, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit164.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit164

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit164: ; preds = %bb.ab
  %i.ii = lshr i64 %.2130223, 6
  %i.ij = and i64 %.2130223, 63
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.ii
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !191
  %i.im = shl nuw i64 1, %i.ij
  %i.in = and i64 %i.il, %i.im
  %.not201 = icmp eq i64 %i.in, 0
  br i1 %.not201, label %bb.ae, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit164.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit164.thread: ; preds = %bb.ab, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit164
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.2130223 ; 2 uses
  %.sroa.010.0.copyload = load i64, ptr %i.io, align 8, !tbaa !191
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %.sroa.211.0.copyload = load i64, ptr %.sroa.211.0..sroa_idx, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @_ZN6duckdb8BaseUUID6ToBlobENS_9hugeint_tEPh(i64 %.sroa.010.0.copyload, i64 %.sroa.211.0.copyload, ptr noundef nonnull %11)
  %.fca.0.load.i165 = load i64, ptr %11, align 8  ; 2 uses
  %.fca.1.load.i168 = load i64, ptr %.fca.1.gep.i167, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  store i64 %.fca.0.load.i165, ptr %21, align 8
  store i64 %.fca.1.load.i168, ptr %i.ib, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %.fca.0.load.i165, ptr %10, align 8
  store i64 %.fca.1.load.i168, ptr %i.ic, align 8
  %i.ip = load i8, ptr %i.id, align 8, !tbaa !2643, !range !250, !noundef !78
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %loadbb368, label %bb.ac

res_block365:                                     ; preds = %loadbb369, %loadbb368
  %phi.src1366 = phi i64 [ %i.iv, %loadbb368 ], [ %i.jc, %loadbb369 ]
  %phi.src2367 = phi i64 [ %i.iw, %loadbb368 ], [ %i.jd, %loadbb369 ]
  %i.ir = icmp ult i64 %phi.src1366, %phi.src2367
  %i.is = select i1 %i.ir, i32 -1, i32 1
  br label %endblock363

loadbb368:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit164.thread
  %i.it = load i64, ptr %10, align 8
  %i.iu = load i64, ptr %i.ie, align 1
  %i.iv = call i64 @llvm.bswap.i64(i64 %i.it)     ; 2 uses
  %i.iw = call i64 @llvm.bswap.i64(i64 %i.iu)     ; 2 uses
  %i.ix = icmp eq i64 %i.iv, %i.iw
  br i1 %i.ix, label %loadbb369, label %res_block365

loadbb369:                                        ; preds = %loadbb368
  %i.iy = getelementptr i8, ptr %10, i64 8
  %i.iz = getelementptr i8, ptr %i.ie, i64 8
  %i.ja = load i64, ptr %i.iy, align 8
  %i.jb = load i64, ptr %i.iz, align 1
  %i.jc = call i64 @llvm.bswap.i64(i64 %i.ja)     ; 2 uses
  %i.jd = call i64 @llvm.bswap.i64(i64 %i.jb)     ; 2 uses
  %i.je = icmp eq i64 %i.jc, %i.jd
  br i1 %i.je, label %endblock363, label %res_block365

endblock363:                                      ; preds = %res_block365, %loadbb369
  %phi.res364 = phi i32 [ 0, %loadbb369 ], [ %i.is, %res_block365 ]
  %i.jf = icmp slt i32 %phi.res364, 0
  br i1 %i.jf, label %.thread8.i171, label %loadbb375

.thread8.i171:                                    ; preds = %endblock363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !2294
  br label %loadbb375

bb.ac:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit164.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !2294
  br label %bb.ad

res_block372:                                     ; preds = %loadbb376, %loadbb375
  %phi.src1373 = phi i64 [ %i.jk, %loadbb375 ], [ %i.jr, %loadbb376 ]
  %phi.src2374 = phi i64 [ %i.jl, %loadbb375 ], [ %i.js, %loadbb376 ]
  %i.jg = icmp ult i64 %phi.src1373, %phi.src2374
  %i.jh = select i1 %i.jg, i32 -1, i32 1
  br label %endblock370

loadbb375:                                        ; preds = %endblock363, %.thread8.i171
  %i.ji = load i64, ptr %10, align 8
  %i.jj = load i64, ptr %i.if, align 1
  %i.jk = call i64 @llvm.bswap.i64(i64 %i.ji)     ; 2 uses
  %i.jl = call i64 @llvm.bswap.i64(i64 %i.jj)     ; 2 uses
  %i.jm = icmp eq i64 %i.jk, %i.jl
  br i1 %i.jm, label %loadbb376, label %res_block372

loadbb376:                                        ; preds = %loadbb375
  %i.jn = getelementptr i8, ptr %10, i64 8
  %i.jo = getelementptr i8, ptr %i.if, i64 8
  %i.jp = load i64, ptr %i.jn, align 8
  %i.jq = load i64, ptr %i.jo, align 1
  %i.jr = call i64 @llvm.bswap.i64(i64 %i.jp)     ; 2 uses
  %i.js = call i64 @llvm.bswap.i64(i64 %i.jq)     ; 2 uses
  %i.jt = icmp eq i64 %i.jr, %i.js
  br i1 %i.jt, label %endblock370, label %res_block372

endblock370:                                      ; preds = %res_block372, %loadbb376
  %phi.res371 = phi i32 [ 0, %loadbb376 ], [ %i.jh, %res_block372 ]
  %i.ju = icmp sgt i32 %phi.res371, 0
  br i1 %i.ju, label %bb.ad, label %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit172

bb.ad:                                            ; preds = %endblock370, %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.if, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !2294
  br label %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit172

_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit172: ; preds = %endblock370, %bb.ad
  store i8 1, ptr %i.id, align 8, !tbaa !2643
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @_ZN6duckdb11DlbaEncoder10WriteValueINS_21ParquetUUIDTargetTypeEEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.ig, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(16) %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit164, %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit172
  %i.jv = add i64 %.2130223, 1                    ; 2 uses
  %exitcond258.not = icmp eq i64 %i.jv, %6
  br i1 %exitcond258.not, label %.loopexit, label %bb.ab, !llvm.loop !2665

bb.af:                                            ; preds = %bb.a
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 8, !tbaa !2616, !range !250, !noundef !78
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !77, !nonnull !78, !align !79
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.kd = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.kc) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ke = load i64, ptr %i.jz, align 8, !tbaa !718
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !719
  %i.kh = mul i64 %i.kg, %i.ke
  %i.ki = add i64 %i.kh, 1                        ; 2 uses
  %i.kj = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.kd, i64 noundef %i.ki), !noalias !2666
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.kd, ptr noundef %i.kj, i64 noundef %i.ki)
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.kl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.kk, ptr noundef nonnull align 8 dereferenceable(24) %9) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  store i8 1, ptr %i.jw, align 8, !tbaa !2616
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.km = icmp ult i64 %5, %6
  br i1 %i.km, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ah
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 15 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 16 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 18 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.al
  %.0131220 = phi i64 [ %5, %.lr.ph ], [ %i.px, %bb.al ] ; 4 uses
  %i.kt = load ptr, ptr %i.b, align 8, !tbaa !243 ; 2 uses
  %.not.i173 = icmp eq ptr %i.kt, null
  br i1 %.not.i173, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit175.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit175

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit175: ; preds = %bb.ai
  %i.ku = lshr i64 %.0131220, 6
  %i.kv = and i64 %.0131220, 63
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ku
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !191
  %i.ky = shl nuw i64 1, %i.kv
  %i.kz = and i64 %i.kx, %i.ky
  %.not = icmp eq i64 %i.kz, 0
  br i1 %.not, label %bb.al, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit175.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit175.thread: ; preds = %bb.ai, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit175
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.0131220 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.la, align 8, !tbaa !191
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @_ZN6duckdb8BaseUUID6ToBlobENS_9hugeint_tEPh(i64 %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, ptr noundef nonnull %8)
  %24 = load <2 x i64>, ptr %8, align 16          ; 17 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store <2 x i64> %24, ptr %7, align 16
  %i.lb = load i8, ptr %i.kn, align 8, !tbaa !2643, !range !250, !noundef !78
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %loadbb382, label %bb.aj

res_block379:                                     ; preds = %loadbb383, %loadbb382
  %phi.src1380 = phi i64 [ %i.lh, %loadbb382 ], [ %i.lo, %loadbb383 ]
  %phi.src2381 = phi i64 [ %i.li, %loadbb382 ], [ %i.lp, %loadbb383 ]
  %i.ld = icmp ult i64 %phi.src1380, %phi.src2381
  %i.le = select i1 %i.ld, i32 -1, i32 1
  br label %endblock377

loadbb382:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit175.thread
  %i.lf = load i64, ptr %7, align 16
  %i.lg = load i64, ptr %i.ko, align 1
  %i.lh = call i64 @llvm.bswap.i64(i64 %i.lf)     ; 2 uses
  %i.li = call i64 @llvm.bswap.i64(i64 %i.lg)     ; 2 uses
  %i.lj = icmp eq i64 %i.lh, %i.li
  br i1 %i.lj, label %loadbb383, label %res_block379

loadbb383:                                        ; preds = %loadbb382
  %i.lk = getelementptr i8, ptr %7, i64 8
  %i.ll = getelementptr i8, ptr %i.ko, i64 8
  %i.lm = load i64, ptr %i.lk, align 8
  %i.ln = load i64, ptr %i.ll, align 1
  %i.lo = call i64 @llvm.bswap.i64(i64 %i.lm)     ; 2 uses
  %i.lp = call i64 @llvm.bswap.i64(i64 %i.ln)     ; 2 uses
  %i.lq = icmp eq i64 %i.lo, %i.lp
  br i1 %i.lq, label %endblock377, label %res_block379

endblock377:                                      ; preds = %res_block379, %loadbb383
  %phi.res378 = phi i32 [ 0, %loadbb383 ], [ %i.le, %res_block379 ]
  %i.lr = icmp slt i32 %phi.res378, 0
  br i1 %i.lr, label %.thread8.i182, label %loadbb389

.thread8.i182:                                    ; preds = %endblock377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ko, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !2294
  br label %loadbb389

bb.aj:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit175.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ko, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !2294
  br label %bb.ak

res_block386:                                     ; preds = %loadbb390, %loadbb389
  %phi.src1387 = phi i64 [ %i.lw, %loadbb389 ], [ %i.md, %loadbb390 ]
  %phi.src2388 = phi i64 [ %i.lx, %loadbb389 ], [ %i.me, %loadbb390 ]
  %i.ls = icmp ult i64 %phi.src1387, %phi.src2388
  %i.lt = select i1 %i.ls, i32 -1, i32 1
  br label %endblock384

loadbb389:                                        ; preds = %endblock377, %.thread8.i182
  %i.lu = load i64, ptr %7, align 16
  %i.lv = load i64, ptr %i.kp, align 1
  %i.lw = call i64 @llvm.bswap.i64(i64 %i.lu)     ; 2 uses
  %i.lx = call i64 @llvm.bswap.i64(i64 %i.lv)     ; 2 uses
  %i.ly = icmp eq i64 %i.lw, %i.lx
  br i1 %i.ly, label %loadbb390, label %res_block386

loadbb390:                                        ; preds = %loadbb389
  %i.lz = getelementptr i8, ptr %7, i64 8
  %i.ma = getelementptr i8, ptr %i.kp, i64 8
  %i.mb = load i64, ptr %i.lz, align 8
  %i.mc = load i64, ptr %i.ma, align 1
  %i.md = call i64 @llvm.bswap.i64(i64 %i.mb)     ; 2 uses
  %i.me = call i64 @llvm.bswap.i64(i64 %i.mc)     ; 2 uses
  %i.mf = icmp eq i64 %i.md, %i.me
  br i1 %i.mf, label %endblock384, label %res_block386

endblock384:                                      ; preds = %res_block386, %loadbb390
  %phi.res385 = phi i32 [ 0, %loadbb390 ], [ %i.lt, %res_block386 ]
  %i.mg = icmp sgt i32 %phi.res385, 0
  br i1 %i.mg, label %bb.ak, label %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit183

bb.ak:                                            ; preds = %endblock384, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.kp, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !2294
  br label %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit183

_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit183: ; preds = %endblock384, %bb.ak
  store i8 1, ptr %i.kn, align 8, !tbaa !2643
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %25 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.0.extract.trunc = extractelement <16 x i8> %25, i64 0
  %i.mh = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.mi = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.mj = getelementptr i8, ptr %i.mh, i64 %i.mi
  store i8 %.sroa.0.0.extract.trunc, ptr %i.mj, align 1, !tbaa !14
  %26 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.1.extract.trunc = extractelement <16 x i8> %26, i64 1
  %i.mk = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.ml = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.mm = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.mn = getelementptr i8, ptr %i.mk, i64 %i.ml
  %i.mo = getelementptr i8, ptr %i.mn, i64 %i.mm
  store i8 %.sroa.0.1.extract.trunc, ptr %i.mo, align 1, !tbaa !14
  %27 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.2.extract.trunc = extractelement <16 x i8> %27, i64 2
  %i.mp = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.mq = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.mr = shl i64 %i.mq, 1
  %i.ms = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.mt = getelementptr i8, ptr %i.mp, i64 %i.mr
  %i.mu = getelementptr i8, ptr %i.mt, i64 %i.ms
  store i8 %.sroa.0.2.extract.trunc, ptr %i.mu, align 1, !tbaa !14
  %28 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.3.extract.trunc = extractelement <16 x i8> %28, i64 3
  %i.mv = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.mw = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.mx = mul i64 %i.mw, 3
  %i.my = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.mz = getelementptr i8, ptr %i.mv, i64 %i.mx
  %i.na = getelementptr i8, ptr %i.mz, i64 %i.my
  store i8 %.sroa.0.3.extract.trunc, ptr %i.na, align 1, !tbaa !14
  %29 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.4.extract.trunc = extractelement <16 x i8> %29, i64 4
  %i.nb = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.nc = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.nd = shl i64 %i.nc, 2
  %i.ne = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.nf = getelementptr i8, ptr %i.nb, i64 %i.nd
  %i.ng = getelementptr i8, ptr %i.nf, i64 %i.ne
  store i8 %.sroa.0.4.extract.trunc, ptr %i.ng, align 1, !tbaa !14
  %30 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.5.extract.trunc = extractelement <16 x i8> %30, i64 5
  %i.nh = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.ni = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.nj = mul i64 %i.ni, 5
  %i.nk = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.nl = getelementptr i8, ptr %i.nh, i64 %i.nj
  %i.nm = getelementptr i8, ptr %i.nl, i64 %i.nk
  store i8 %.sroa.0.5.extract.trunc, ptr %i.nm, align 1, !tbaa !14
  %31 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.6.extract.trunc = extractelement <16 x i8> %31, i64 6
  %i.nn = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.no = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.np = mul i64 %i.no, 6
  %i.nq = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.nr = getelementptr i8, ptr %i.nn, i64 %i.np
  %i.ns = getelementptr i8, ptr %i.nr, i64 %i.nq
  store i8 %.sroa.0.6.extract.trunc, ptr %i.ns, align 1, !tbaa !14
  %32 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.0.7.extract.trunc = extractelement <16 x i8> %32, i64 7
  %i.nt = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.nu = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.nv = mul i64 %i.nu, 7
  %i.nw = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.nx = getelementptr i8, ptr %i.nt, i64 %i.nv
  %i.ny = getelementptr i8, ptr %i.nx, i64 %i.nw
  store i8 %.sroa.0.7.extract.trunc, ptr %i.ny, align 1, !tbaa !14
  %33 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.8.extract.trunc = extractelement <16 x i8> %33, i64 8
  %i.nz = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.oa = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.ob = shl i64 %i.oa, 3
  %i.oc = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.od = getelementptr i8, ptr %i.nz, i64 %i.ob
  %i.oe = getelementptr i8, ptr %i.od, i64 %i.oc
  store i8 %.sroa.11.8.extract.trunc, ptr %i.oe, align 1, !tbaa !14
  %34 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.9.extract.trunc = extractelement <16 x i8> %34, i64 9
  %i.of = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.og = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.oh = mul i64 %i.og, 9
  %i.oi = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.oj = getelementptr i8, ptr %i.of, i64 %i.oh
  %i.ok = getelementptr i8, ptr %i.oj, i64 %i.oi
  store i8 %.sroa.11.9.extract.trunc, ptr %i.ok, align 1, !tbaa !14
  %35 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.10.extract.trunc = extractelement <16 x i8> %35, i64 10
  %i.ol = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.om = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.on = mul i64 %i.om, 10
  %i.oo = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.op = getelementptr i8, ptr %i.ol, i64 %i.on
  %i.oq = getelementptr i8, ptr %i.op, i64 %i.oo
  store i8 %.sroa.11.10.extract.trunc, ptr %i.oq, align 1, !tbaa !14
  %36 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.11.extract.trunc = extractelement <16 x i8> %36, i64 11
  %i.or = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.os = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.ot = mul i64 %i.os, 11
  %i.ou = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.ov = getelementptr i8, ptr %i.or, i64 %i.ot
  %i.ow = getelementptr i8, ptr %i.ov, i64 %i.ou
  store i8 %.sroa.11.11.extract.trunc, ptr %i.ow, align 1, !tbaa !14
  %37 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.12.extract.trunc = extractelement <16 x i8> %37, i64 12
  %i.ox = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.oy = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.oz = mul i64 %i.oy, 12
  %i.pa = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.pb = getelementptr i8, ptr %i.ox, i64 %i.oz
  %i.pc = getelementptr i8, ptr %i.pb, i64 %i.pa
  store i8 %.sroa.11.12.extract.trunc, ptr %i.pc, align 1, !tbaa !14
  %38 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.13.extract.trunc = extractelement <16 x i8> %38, i64 13
  %i.pd = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.pe = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.pf = mul i64 %i.pe, 13
  %i.pg = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.ph = getelementptr i8, ptr %i.pd, i64 %i.pf
  %i.pi = getelementptr i8, ptr %i.ph, i64 %i.pg
  store i8 %.sroa.11.13.extract.trunc, ptr %i.pi, align 1, !tbaa !14
  %39 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.14.extract.trunc = extractelement <16 x i8> %39, i64 14
  %i.pj = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.pk = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.pl = mul i64 %i.pk, 14
  %i.pm = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.pn = getelementptr i8, ptr %i.pj, i64 %i.pl
  %i.po = getelementptr i8, ptr %i.pn, i64 %i.pm
  store i8 %.sroa.11.14.extract.trunc, ptr %i.po, align 1, !tbaa !14
  %40 = bitcast <2 x i64> %24 to <16 x i8>
  %.sroa.11.15.extract.trunc = extractelement <16 x i8> %40, i64 15
  %i.pp = load ptr, ptr %i.kr, align 8, !tbaa !197
  %i.pq = load i64, ptr %i.kq, align 8, !tbaa !718
  %i.pr = mul i64 %i.pq, 15
  %i.ps = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.pt = getelementptr i8, ptr %i.pp, i64 %i.pr
  %i.pu = getelementptr i8, ptr %i.pt, i64 %i.ps
  store i8 %.sroa.11.15.extract.trunc, ptr %i.pu, align 1, !tbaa !14
  %i.pv = load i64, ptr %i.ks, align 8, !tbaa !808
  %i.pw = add i64 %i.pv, 1
  store i64 %i.pw, ptr %i.ks, align 8, !tbaa !808
  br label %bb.al

bb.al:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit175, %_ZN6duckdb19ParquetUUIDOperator11HandleStatsINS_9hugeint_tENS_21ParquetUUIDTargetTypeEEEvPNS_22ColumnWriterStatisticsET0_.exit183
  %i.px = add i64 %.0131220, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.px, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.ai, !llvm.loop !2669

bb.am:                                            ; preds = %bb.a
  %i.py = load ptr, ptr %i.b, align 8, !tbaa !243
  %.not.i184 = icmp eq ptr %i.py, null
  br i1 %.not.i184, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %2, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %.loopexit

bb.ao:                                            ; preds = %bb.am
  tail call fastcc void @_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %2, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %.loopexit

bb.ap:                                            ; preds = %bb.a
  %i.pz = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.pz, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.pz, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.av unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ap
  %i.qa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.qb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qc = load ptr, ptr %22, align 8, !tbaa !22   ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.qe = icmp eq ptr %i.qc, %i.qd
  br i1 %i.qe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.qc) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br i1 %.0, label %bb.at, label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br i1 %.0, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn199 = phi { ptr, i32 } [ %i.qa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.qb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.qb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.pz) #25
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn198 = phi { ptr, i32 } [ %.pn199, %bb.at ], [ %i.qb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.qb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn198

.loopexit:                                        ; preds = %bb.al, %bb.aa, %bb.ae, %bb.s, %bb.w, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.ah, %.loopexit212, %.loopexit209, %.loopexit206, %bb.an, %bb.ao
  ret void

bb.av:                                            ; preds = %bb.ar
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb10DbpEncoder10BeginWriteINS_21ParquetUUIDTargetTypeEEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18480) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(16) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 44, ptr %i.a, align 8, !tbaa !191
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %3, align 8, !tbaa !22
  %i.e = load i64, ptr %i.a, align 8, !tbaa !191  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.43, i64 44, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb10DbpEncoder10WriteValueINS_21ParquetUUIDTargetTypeEEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18480) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(16) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 44, ptr %i.a, align 8, !tbaa !191
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %3, align 8, !tbaa !22
  %i.e = load i64, ptr %i.a, align 8, !tbaa !191  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.43, i64 44, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_2
