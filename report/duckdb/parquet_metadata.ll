inline.NumInlined: 3957
inline.NumDeleted: 1703
begin_hunk_0_@_ZN6duckdb23ParquetMetaDataOperator10BindSchemaILNS_27ParquetMetadataOperatorTypeE1EEEvRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISD_EEE:bb.a
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !7   ; 6 uses
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !11
  %.not.i76 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i76, label %bb.af, label %._crit_edge.i.i.i77

._crit_edge.i.i.i77:                              ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit75
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.dm, ptr noundef nonnull align 1 dereferenceable(13) @.str.48, i64 12, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 12, ptr %i.dn, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  store i8 0, ptr %i.do, align 4, !tbaa !18
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store ptr %i.dq, ptr %i.a, align 8, !tbaa !7
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEEvDpOT_.exit80

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit75
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA13_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.dk, ptr noundef nonnull align 1 dereferenceable(13) @.str.48)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEEvDpOT_.exit80

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEEvDpOT_.exit80: ; preds = %._crit_edge.i.i.i77, %bb.af
  %i.dr = load ptr, ptr %i.j, align 8, !tbaa !19  ; 3 uses
  %i.ds = load ptr, ptr %i.l, align 8, !tbaa !22
  %.not.i81 = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i81, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEEvDpOT_.exit80
  tail call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i8 noundef zeroext 25)
  %i.dt = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store ptr %i.du, ptr %i.j, align 8, !tbaa !19
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit82

bb.ah:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEEvDpOT_.exit80
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKNS0_13LogicalTypeIdEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.dr, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6duckdb11LogicalType7VARCHARE)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit82

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit82: ; preds = %bb.ag, %bb.ah
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !7   ; 6 uses
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !11
  %.not.i83 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not.i83, label %bb.ai, label %._crit_edge.i.i.i84

._crit_edge.i.i.i84:                              ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit82
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.dx, ptr noundef nonnull align 1 dereferenceable(12) @.str.49, i64 11, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 11, ptr %i.dy, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 27
  store i8 0, ptr %i.dz, align 1, !tbaa !18
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !7
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEEvDpOT_.exit87

bb.ai:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit82
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA12_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.dv, ptr noundef nonnull align 1 dereferenceable(12) @.str.49)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEEvDpOT_.exit87

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEEvDpOT_.exit87: ; preds = %._crit_edge.i.i.i84, %bb.ai
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !19  ; 3 uses
  %i.ed = load ptr, ptr %i.l, align 8, !tbaa !22
  %.not.i88 = icmp eq ptr %i.ec, %i.ed
  br i1 %.not.i88, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEEvDpOT_.exit87
  tail call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 noundef zeroext 25)
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store ptr %i.ef, ptr %i.j, align 8, !tbaa !19
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit89

bb.ak:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEEvDpOT_.exit87
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKNS0_13LogicalTypeIdEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ec, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6duckdb11LogicalType7VARCHARE)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit89

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit89: ; preds = %bb.aj, %bb.ak
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !7   ; 6 uses
  %i.eh = load ptr, ptr %i.c, align 8, !tbaa !11
  %.not.i90 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i90, label %bb.al, label %._crit_edge.i.i.i91

._crit_edge.i.i.i91:                              ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit89
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ei, ptr noundef nonnull align 1 dereferenceable(10) @.str.5, i64 9, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 9, ptr %i.ej, align 8, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 25
  store i8 0, ptr %i.ek, align 1, !tbaa !18
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store ptr %i.em, ptr %i.a, align 8, !tbaa !7
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEEvDpOT_.exit94

bb.al:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit89
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA10_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.eg, ptr noundef nonnull align 1 dereferenceable(10) @.str.5)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEEvDpOT_.exit94

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEEvDpOT_.exit94: ; preds = %._crit_edge.i.i.i91, %bb.al
  %i.en = load ptr, ptr %i.j, align 8, !tbaa !19  ; 3 uses
  %i.eo = load ptr, ptr %i.l, align 8, !tbaa !22
  %.not.i95 = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i95, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEEvDpOT_.exit94
  tail call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.en, i8 noundef zeroext 14)
  %i.ep = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store ptr %i.eq, ptr %i.j, align 8, !tbaa !19
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit96

bb.an:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEEvDpOT_.exit94
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKNS0_13LogicalTypeIdEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.en, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6duckdb11LogicalType6BIGINTE)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit96

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit96: ; preds = %bb.am, %bb.an
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 -20962209174669945, 20962209174669946) i64 @_ZN6duckdb22ParquetSchemaProcessor13TotalRowCountERNS_13ParquetReaderE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(432) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6duckdb13ParquetReader15GetFileMetadataEv(ptr noundef nonnull align 8 dereferenceable(432) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 440
  ret i64 %i.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb22ParquetSchemaProcessor7ReadRowERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS4_EEEmmRNS_13ParquetReaderE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(432) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  %6 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  %7 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  %8 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %27 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %28 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %29 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %30 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  %31 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %33 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %34 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  %35 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %37 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %38 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %40 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %45 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %46 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %47 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %48 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %49 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %50 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %51 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %52 = alloca %"class.duckdb::Value", align 8    ; 24 uses
  %53 = alloca %"struct.duckdb::ParquetColumnSchema", align 8 ; 22 uses
  %54 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %55 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %56 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %58 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %59 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %i.c = tail call noundef ptr @_ZNK6duckdb13ParquetReader15GetFileMetadataEv(ptr noundef nonnull align 8 dereferenceable(432) %4)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = tail call noundef nonnull align 8 dereferenceable(434) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet13SchemaElementELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %3) ; 30 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 5 uses
  store ptr %i.i, ptr %41, align 8, !tbaa !12
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.l, ptr %i.b, align 8, !tbaa !23
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %41, align 8, !tbaa !24
  %i.o = load i64, ptr %i.b, align 8, !tbaa !23
  store i64 %i.o, ptr %i.i, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !18
  store i8 %i.q, ptr %i.p, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !15
  %i.t = load ptr, ptr %41, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %40, ptr noundef nonnull %41)
          to label %bb.d unwind label %bb.fh

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %40)
          to label %bb.e unwind label %bb.fi

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %40) #27
  %i.v = load ptr, ptr %41, align 8, !tbaa !24    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.i
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.v) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 5 uses
  store ptr %i.aa, ptr %43, align 8, !tbaa !12
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !24  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !23
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i78, label %._crit_edge.i.i77

.noexc.i78:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.af, ptr %43, align 8, !tbaa !24
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !18
  br label %._crit_edge.i.i77

._crit_edge.i.i77:                                ; preds = %.noexc.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = phi ptr [ %i.af, %.noexc.i78 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.ad, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit79
  ]

bb.f:                                             ; preds = %._crit_edge.i.i77
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !18
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit79

bb.g:                                             ; preds = %._crit_edge.i.i77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit79: ; preds = %._crit_edge.i.i77, %bb.f, %bb.g
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !15
  %i.al = load ptr, ptr %43, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull %43)
          to label %bb.h unwind label %bb.fk

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit79
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.y, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %42)
          to label %bb.i unwind label %bb.fl

bb.i:                                             ; preds = %bb.h
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %42) #27
  %i.an = load ptr, ptr %43, align 8, !tbaa !24   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.aa
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.an) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 2)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 432 ; 10 uses
  %i.as = load i16, ptr %i.ar, align 8
  %i.at = trunc i16 %i.as to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  br i1 %i.at, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 noundef zeroext 1), !noalias !282
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %44, ptr noundef nonnull %38)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #27
  br label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet4Type4typeEEENS_5ValueEOT_b.exit

bb.l:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #27
  br label %common.resume

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call fastcc void @_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet4Type4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias writable align 8 %39, ptr noundef nonnull align 4 dereferenceable(4) %i.av), !noalias !282
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %44, ptr noundef nonnull %39)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %39, align 8, !tbaa !24, !noalias !282 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet4Type4typeEEENS_5ValueEOT_b.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.aw) #28
  br label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet4Type4typeEEENS_5ValueEOT_b.exit

bb.o:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %39, align 8, !tbaa !24, !noalias !282 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ba) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.fa, %bb.ev, %bb.er, %bb.en, %bb.ej, %bb.ef, %bb.eb, %bb.dx, %bb.dt, %bb.dp, %bb.dl, %bb.dh, %bb.dd, %bb.cz, %bb.cq, %bb.ch, %bb.by, %bb.aw, %bb.af, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ft, %bb.fu, %bb.fv, %bb.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122, %bb.bp, %.body.i.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i, %.body.i51.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i, %.body.i68.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i, %.body.i85.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i, %bb.ey, %bb.ao, %.body.i.i89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i99, %bb.x, %.body.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i83, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i, %bb.bk, %bb.bf, %bb.ba, %bb.aj, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.pk, %bb.ev ], [ %i.bi, %bb.s ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i ], [ %i.db, %bb.aj ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i83 ], [ %i.ev, %bb.ba ], [ %i.fc, %bb.bf ], [ %i.fj, %bb.bk ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i99 ], [ %i.pk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i ], [ %i.au, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.bn, %bb.x ], [ %i.az, %bb.o ], [ %eh.lpad-body.i.i90, %.body.i.i89 ], [ %i.dh, %bb.ao ], [ %i.ct, %bb.af ], [ %eh.lpad-body.i.i110, %.body.i.i109 ], [ %eh.lpad-body.i52.i, %.body.i51.i ], [ %eh.lpad-body.i69.i, %.body.i68.i ], [ %eh.lpad-body.i86.i, %.body.i85.i ], [ %i.fn, %bb.bp ], [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i ], [ %i.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i ], [ %i.ju, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i ], [ %i.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i ], [ %i.ln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i ], [ %i.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i ], [ %i.mf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i ], [ %i.mo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i ], [ %i.mx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i ], [ %i.ng, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i ], [ %i.ny, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i ], [ %i.oh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i ], [ %i.oq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i ], [ %i.oz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i ], [ %i.po, %bb.ey ], [ %i.en, %bb.aw ], [ %i.gy, %bb.by ], [ %i.ij, %bb.ch ], [ %i.ju, %bb.cq ], [ %i.lf, %bb.cz ], [ %i.ln, %bb.dd ], [ %i.lw, %bb.dh ], [ %i.mf, %bb.dl ], [ %i.mo, %bb.dp ], [ %i.mx, %bb.dt ], [ %i.ng, %bb.dx ], [ %i.np, %bb.eb ], [ %i.ny, %bb.ef ], [ %i.oh, %bb.ej ], [ %i.oq, %bb.en ], [ %i.oz, %bb.er ], [ %i.pt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122 ], [ %.pn68.pn.pn, %bb.go ], [ %i.ra, %bb.fv ], [ %i.qz, %bb.fu ], [ %i.qy, %bb.ft ], [ %i.qx, %bb.fs ], [ %i.qw, %bb.fr ], [ %i.qv, %bb.fq ], [ %i.qu, %bb.fp ], [ %i.qt, %bb.fo ], [ %i.qs, %bb.fn ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %i.pt, %bb.fa ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet4Type4typeEEENS_5ValueEOT_b.exit: ; preds = %bb.n, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.aq, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %44)
          to label %bb.p unwind label %bb.fn

bb.p:                                             ; preds = %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet4Type4typeEEENS_5ValueEOT_b.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %44) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 3)
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.bg = load i16, ptr %i.ar, align 8
  %i.bh = and i16 %i.bg, 2
  %.not = icmp eq i16 %i.bh, 0
  %.val76 = load i32, ptr %i.bf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  br i1 %.not, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 noundef zeroext 1), !noalias !285
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %45, ptr noundef nonnull %37)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #27
  br label %_ZN6duckdbL21ParquetElementIntegerIRKiEENS_5ValueEOT_b.exit

bb.s:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #27
  br label %common.resume

bb.t:                                             ; preds = %bb.p
  call void @_ZN6duckdb5Value7INTEGEREi(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %45, i32 noundef %.val76)
  br label %_ZN6duckdbL21ParquetElementIntegerIRKiEENS_5ValueEOT_b.exit

_ZN6duckdbL21ParquetElementIntegerIRKiEENS_5ValueEOT_b.exit: ; preds = %bb.r, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.be, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %45)
          to label %bb.u unwind label %bb.fo

bb.u:                                             ; preds = %_ZN6duckdbL21ParquetElementIntegerIRKiEENS_5ValueEOT_b.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %45) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  %i.bl = load i16, ptr %i.ar, align 8
  %i.bm = and i16 %i.bl, 4
  %.not140 = icmp eq i16 %i.bm, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  br i1 %.not140, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 noundef zeroext 1), !noalias !288
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %46, ptr noundef nonnull %35)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %35) #27
  br label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENS_5ValueEOT_b.exit

bb.x:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %35) #27
  br label %common.resume

bb.y:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27, !noalias !294
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %34, i32 noundef 24), !noalias !294
  %i.bp = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14duckdb_parquetlsERSoRKNS_19FieldRepetitionType4typeE(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.bo)
          to label %bb.z unwind label %bb.ad, !noalias !294 ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.br = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 5 uses
  store ptr %i.br, ptr %36, align 8, !tbaa !12, !alias.scope !301, !noalias !288
  %i.bs = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !15, !alias.scope !301, !noalias !288
  store i8 0, ptr %i.br, align 8, !tbaa !18, !alias.scope !301, !noalias !288
  %i.bt = getelementptr inbounds nuw i8, ptr %34, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !203, !noalias !302 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.bu, null
  %i.bv = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !302 ; 2 uses
  %i.bx = icmp ugt ptr %i.bu, %i.bw
  %.08.i.i.i.i.i = select i1 %i.bx, ptr %i.bu, ptr %i.bw ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %34, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !207, !noalias !302 ; 2 uses
  %i.ca = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef 0, i64 noundef 0, ptr noundef %i.bz, i64 noundef %i.cc)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.ab, !noalias !288 ; 0 uses

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %36, align 8, !tbaa !24, !alias.scope !301, !noalias !288 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.br
  br i1 %i.cg, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.cf) #28, !noalias !288
  br label %.body.i.i

bb.ac:                                            ; preds = %bb.z
  %i.ch = getelementptr inbounds nuw i8, ptr %34, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %i.ch)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.ab, !noalias !288

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i: ; preds = %bb.ac, %bb.aa
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %34, align 8, !tbaa !208, !noalias !294
  %i.ci = getelementptr inbounds nuw i8, ptr %34, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.ci, align 8, !tbaa !208, !noalias !294
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.bp, align 8, !tbaa !208, !noalias !294
  %i.cj = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cj, align 8, !tbaa !208, !noalias !294
  %i.ck = getelementptr inbounds nuw i8, ptr %34, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !24, !noalias !294 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %34, i64 112
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.cl) #28, !noalias !288, !inline_history !210
  br label %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i

bb.ad:                                            ; preds = %bb.y
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

end_hunk_0
begin_hunk_1_@_ZN6duckdb22ParquetSchemaProcessor7ReadRowERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS4_EEEmmRNS_13ParquetReaderE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i95: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.dz) #28, !noalias !306
  br label %.body.i.i89

bb.at:                                            ; preds = %bb.aq
  %i.eb = getelementptr inbounds nuw i8, ptr %30, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %i.eb)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i97 unwind label %bb.as, !noalias !306

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i97: ; preds = %bb.at, %bb.ar
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %30, align 8, !tbaa !208, !noalias !312
  %i.ec = getelementptr inbounds nuw i8, ptr %30, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.ec, align 8, !tbaa !208, !noalias !312
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.dj, align 8, !tbaa !208, !noalias !312
  %i.ed = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ed, align 8, !tbaa !208, !noalias !312
  %i.ee = getelementptr inbounds nuw i8, ptr %30, i64 96
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !24, !noalias !312 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %30, i64 112
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet13ConvertedType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i98: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i97
  call void @_ZdlPv(ptr noundef %i.ef) #28, !noalias !306, !inline_history !210
  br label %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet13ConvertedType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i

bb.au:                                            ; preds = %bb.ap
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i89

.body.i.i89:                                      ; preds = %bb.as, %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i95
  %eh.lpad-body.i.i90 = phi { ptr, i32 } [ %i.ei, %bb.au ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i95 ], [ %i.dy, %bb.as ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %30) #27, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27, !noalias !312
  br label %common.resume

_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet13ConvertedType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i98
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ed, align 8, !tbaa !208, !noalias !312
  %i.ej = getelementptr inbounds nuw i8, ptr %30, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ej) #27, !noalias !306, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %30, align 8, !tbaa !208, !noalias !312
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.ec, align 8, !tbaa !208, !noalias !312
  %i.ek = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 0, ptr %i.ek, align 8, !tbaa !211, !noalias !312
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ec) #27, !noalias !306, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27, !noalias !312
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %48, ptr noundef nonnull %32)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet13ConvertedType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.el = load ptr, ptr %32, align 8, !tbaa !24, !noalias !306 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.dl
  br i1 %i.em, label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet13ConvertedType4typeEEENS_5ValueEOT_b.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101: ; preds = %bb.av
  call void @_ZdlPv(ptr noundef %i.el) #28
  br label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet13ConvertedType4typeEEENS_5ValueEOT_b.exit

bb.aw:                                            ; preds = %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet13ConvertedType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %32, align 8, !tbaa !24, !noalias !306 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.dl
  br i1 %i.ep, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i99: ; preds = %bb.aw
  call void @_ZdlPv(ptr noundef %i.eo) #28
  br label %common.resume

_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet13ConvertedType4typeEEENS_5ValueEOT_b.exit: ; preds = %bb.av, %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.de, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %48)
          to label %bb.ax unwind label %bb.fr

bb.ax:                                            ; preds = %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet13ConvertedType4typeEEENS_5ValueEOT_b.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %48) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 7)
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #27
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.et = load i16, ptr %i.ar, align 8
  %i.eu = and i16 %i.et, 32
  %.not143 = icmp eq i16 %i.eu, 0
  %.val74 = load i32, ptr %i.es, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  br i1 %.not143, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 noundef zeroext 1), !noalias !321
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %49, ptr noundef nonnull %29)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #27
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit104

bb.ba:                                            ; preds = %bb.ay
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #27
  br label %common.resume

bb.bb:                                            ; preds = %bb.ax
  %i.ew = sext i32 %.val74 to i64
  call void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %49, i64 noundef %i.ew)
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit104

_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit104: ; preds = %bb.az, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.er, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %49)
          to label %bb.bc unwind label %bb.fs

bb.bc:                                            ; preds = %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit104
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %49) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  %i.ex = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 8)
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #27
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.fa = load i16, ptr %i.ar, align 8
  %i.fb = and i16 %i.fa, 64
  %.not144 = icmp eq i16 %i.fb, 0
  %.val73 = load i32, ptr %i.ez, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  br i1 %.not144, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 noundef zeroext 1), !noalias !324
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %50, ptr noundef nonnull %28)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #27
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit105

bb.bf:                                            ; preds = %bb.bd
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #27
  br label %common.resume

bb.bg:                                            ; preds = %bb.bc
  %i.fd = sext i32 %.val73 to i64
  call void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %50, i64 noundef %i.fd)
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit105

_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit105: ; preds = %bb.be, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.ey, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %50)
          to label %bb.bh unwind label %bb.ft

bb.bh:                                            ; preds = %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit105
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %50) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  %i.fe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 9)
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.fh = load i16, ptr %i.ar, align 8
  %i.fi = and i16 %i.fh, 128
  %.not145 = icmp eq i16 %i.fi, 0
  %.val = load i32, ptr %i.fg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  br i1 %.not145, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 noundef zeroext 1), !noalias !327
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %51, ptr noundef nonnull %27)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #27
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit106

bb.bk:                                            ; preds = %bb.bi
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #27
  br label %common.resume

bb.bl:                                            ; preds = %bb.bh
  %i.fk = sext i32 %.val to i64
  call void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %51, i64 noundef %i.fk)
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit106

_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit106: ; preds = %bb.bj, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.ff, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %51)
          to label %bb.bm unwind label %bb.fu

bb.bm:                                            ; preds = %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit106
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %51) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  %i.fl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 10)
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27
  %60 = load i16, ptr %i.ar, align 8
  %61 = and i16 %60, 256
  %.not146 = icmp eq i16 %61, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %.not146, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 1), !noalias !330
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %9)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #27
  br label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit

bb.bp:                                            ; preds = %bb.bn
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #27
  br label %common.resume

bb.bq:                                            ; preds = %bb.bm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 424
  %i.fp = load i16, ptr %i.fo, align 8, !noalias !330 ; 15 uses
  %i.fq = trunc i16 %i.fp to i1
  br i1 %i.fq, label %bb.br, label %bb.bz

bb.br:                                            ; preds = %bb.bq
  %i.fr = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !336
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %8, i32 noundef 24), !noalias !336
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !208, !noalias !336
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !336
  invoke void %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %i.fs)
          to label %bb.bs unwind label %bb.bw, !noalias !336

bb.bs:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.fw, ptr %10, align 8, !tbaa !12, !alias.scope !343, !noalias !330
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.fx, align 8, !tbaa !15, !alias.scope !343, !noalias !330
  store i8 0, ptr %i.fw, align 8, !tbaa !18, !alias.scope !343, !noalias !330
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !203, !noalias !344 ; 3 uses
  %.not.i.not.i.i.i.i111 = icmp eq ptr %i.fz, null
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !344 ; 2 uses
  %i.gc = icmp ugt ptr %i.fz, %i.gb
  %.08.i.i.i.i.i112 = select i1 %i.gc, ptr %i.fz, ptr %i.gb ; 2 uses
  %.not5.i.i.i.i113 = icmp eq ptr %.08.i.i.i.i.i112, null
  %.not.i.i.i.i114 = select i1 %.not.i.not.i.i.i.i111, i1 true, i1 %.not5.i.i.i.i113
  br i1 %.not.i.i.i.i114, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !207, !noalias !344 ; 2 uses
  %i.gf = ptrtoint ptr %.08.i.i.i.i.i112 to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.ge, i64 noundef %i.gh)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i117 unwind label %bb.bu, !noalias !330 ; 0 uses

bb.bu:                                            ; preds = %bb.bv, %bb.bt
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load ptr, ptr %10, align 8, !tbaa !24, !alias.scope !343, !noalias !330 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.fw
  br i1 %i.gl, label %.body.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i115: ; preds = %bb.bu
  call void @_ZdlPv(ptr noundef %i.gk) #28, !noalias !330
  br label %.body.i.i109

bb.bv:                                            ; preds = %bb.bs
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.gm)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i117 unwind label %bb.bu, !noalias !330

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i117: ; preds = %bb.bv, %bb.bt
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %8, align 8, !tbaa !208, !noalias !336
  %i.gn = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.gn, align 8, !tbaa !208, !noalias !336
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.fs, align 8, !tbaa !208, !noalias !336
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.go, align 8, !tbaa !208, !noalias !336
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !24, !noalias !336 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet10StringTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i118: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i117
  call void @_ZdlPv(ptr noundef %i.gq) #28, !noalias !330, !inline_history !210
  br label %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet10StringTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i

bb.bw:                                            ; preds = %bb.br
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i109

.body.i.i109:                                     ; preds = %bb.bu, %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i115
  %eh.lpad-body.i.i110 = phi { ptr, i32 } [ %i.gt, %bb.bw ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i115 ], [ %i.gj, %bb.bu ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #27, !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !336
  br label %common.resume

_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet10StringTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i118
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.go, align 8, !tbaa !208, !noalias !336
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gu) #27, !noalias !330, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %8, align 8, !tbaa !208, !noalias !336
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.gn, align 8, !tbaa !208, !noalias !336
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.gv, align 8, !tbaa !211, !noalias !336
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gn) #27, !noalias !330, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !336
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %10)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet10StringTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.gw = load ptr, ptr %10, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.fw
  br i1 %i.gx, label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119: ; preds = %bb.bx
  call void @_ZdlPv(ptr noundef %i.gw) #28
  br label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit

bb.by:                                            ; preds = %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet10StringTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load ptr, ptr %10, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.fw
  br i1 %i.ha, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %bb.by
  call void @_ZdlPv(ptr noundef %i.gz) #28
  br label %common.resume

bb.bz:                                            ; preds = %bb.bq
  %i.hb = and i16 %i.fp, 2
  %.not.i = icmp eq i16 %i.hb, 0
  br i1 %.not.i, label %bb.ci, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !348
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %7, i32 noundef 24), !noalias !348
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !208, !noalias !348
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !348
  invoke void %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %i.hc, ptr noundef nonnull align 8 dereferenceable(8) %i.hd)
          to label %bb.cb unwind label %bb.cf, !noalias !348

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.hh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.hh, ptr %11, align 8, !tbaa !12, !alias.scope !355, !noalias !330
  %i.hi = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.hi, align 8, !tbaa !15, !alias.scope !355, !noalias !330
  store i8 0, ptr %i.hh, align 8, !tbaa !18, !alias.scope !355, !noalias !330
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !203, !noalias !356 ; 3 uses
  %.not.i.not.i.i.i53.i = icmp eq ptr %i.hk, null
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !356 ; 2 uses
  %i.hn = icmp ugt ptr %i.hk, %i.hm
  %.08.i.i.i.i54.i = select i1 %i.hn, ptr %i.hk, ptr %i.hm ; 2 uses
  %.not5.i.i.i55.i = icmp eq ptr %.08.i.i.i.i54.i, null
  %.not.i.i.i56.i = select i1 %.not.i.not.i.i.i53.i, i1 true, i1 %.not5.i.i.i55.i
  br i1 %.not.i.i.i56.i, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !207, !noalias !356 ; 2 uses
  %i.hq = ptrtoint ptr %.08.i.i.i.i54.i to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.hp, i64 noundef %i.hs)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i59.i unwind label %bb.cd, !noalias !330 ; 0 uses

bb.cd:                                            ; preds = %bb.ce, %bb.cc
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load ptr, ptr %11, align 8, !tbaa !24, !alias.scope !355, !noalias !330 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.hh
  br i1 %i.hw, label %.body.i51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57.i: ; preds = %bb.cd
  call void @_ZdlPv(ptr noundef %i.hv) #28, !noalias !330
  br label %.body.i51.i

bb.ce:                                            ; preds = %bb.cb
  %i.hx = getelementptr inbounds nuw i8, ptr %7, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.hx)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i59.i unwind label %bb.cd, !noalias !330

end_hunk_1
