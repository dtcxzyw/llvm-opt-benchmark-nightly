inline.NumInlined: 5552
inline.NumDeleted: 2531
begin_hunk_0_@_ZN6duckdbL14ColumnDataCopyINS_10interval_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.v
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i92.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i92.i, label %.noexc.i.i, label %.noexc83.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.du = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.dv, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.dw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc99.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc99.i:                                       ; preds = %.noexc.i.i
  store ptr %i.dw, ptr %5, align 8, !tbaa !72
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.dw, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !361
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  store i8 0, ptr %i.dz, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc99.i
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ad unwind label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %.noexc99.i
  %.0.i.i.i = phi i1 [ false, %bb.aa ], [ true, %.noexc99.i ] ; 2 uses
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ec = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.dv
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.ec) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.ac, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.ac, label %.body.i

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.du) #24
  br label %.body.i

bb.ad:                                            ; preds = %bb.aa
  unreachable

.noexc83.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, %.noexc90.i
  %i.ee = phi ptr [ %.pr.i, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i ], [ %i.cj, %.noexc90.i ]
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !404 ; 2 uses
  store ptr %i.ef, ptr %6, align 8, !tbaa !189
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %.noexc83.i, %bb.k
  %i.eg = phi ptr [ %i.ef, %.noexc83.i ], [ %i.bg, %bb.k ] ; 2 uses
  %i.eh = lshr i64 %i.ce, 6
  %i.ei = and i64 %i.ce, 63
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = xor i64 %i.ej, -1
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.eh ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !103
  %i.en = and i64 %i.em, %i.ek
  store i64 %i.en, ptr %i.el, align 8, !tbaa !103
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.eo = phi ptr [ %i.eg, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i ], [ %i.bg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ]
  %i.ep = add nuw nsw i64 %.067109.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ep, %i.v
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !837

.loopexit.i:                                      ; preds = %bb.ae, %bb.h, %.preheader.i, %.preheader106.i
  %i.eq = load i16, ptr %i.q, align 8, !tbaa !510
  %i.er = trunc i64 %i.v to i16
  %i.es = add i16 %i.eq, %i.er
  store i16 %i.es, ptr %i.q, align 8, !tbaa !510
  %i.et = add i64 %i.v, %.0115.i
  %i.eu = sub i64 %.065113.i, %i.v                ; 2 uses
  %.not70.i = icmp eq i64 %i.eu, 0                ; 2 uses
  br i1 %.not70.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.loopexit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !561
  %.not105.i = icmp eq i64 %i.ew, -1
  br i1 %.not105.i, label %bb.ag, label %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ex = load ptr, ptr %i.o, align 8, !tbaa !500, !nonnull !64, !align !94
  %i.ey = invoke range(i64 -164703072086692425, 164703072086692426) i64 @_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(82) %i.ex, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 %.sroa.038.0114.i)
          to label %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i unwind label %bb.e ; 0 uses

_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i: ; preds = %bb.ag, %bb.af
  %i.ez = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.038.0114.i)
          to label %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i unwind label %bb.e

_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i: ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %.sroa.038.0.copyload39.i = load i64, ptr %i.fa, align 8, !tbaa !103
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i, %.loopexit.i
  %.sroa.038.1.i = phi i64 [ %.sroa.038.0.copyload39.i, %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i ], [ %.sroa.038.0114.i, %.loopexit.i ]
  %i.fb = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.fc, align 8, !tbaa !56
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !58
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !51
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #24, !inline_history !838
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !51
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #24, !inline_history !838
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ff, %bb.al ], [ %i.fp, %bb.am ]
  %i.fq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fq, label %bb.an, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, !prof !60

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #24
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i:  ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.not70.i, label %_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyINS_10interval_tEEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit, label %bb.b, !llvm.loop !839

.body.i:                                          ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, %bb.j, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ap, %bb.e ], [ %i.co, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i ], [ %i.cc, %bb.j ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.ac ]
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn.i

_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyINS_10interval_tEEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit: ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL14ColumnDataCopyINS_8string_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 3 uses
  %9 = alloca %"struct.duckdb::VectorDataIndex", align 8 ; 10 uses
  %10 = alloca %"struct.duckdb::VectorDataIndex", align 8 ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 12 uses
  %i.i = alloca i64, align 8                      ; 9 uses
  %i.j = alloca ptr, align 8                      ; 9 uses
  %11 = alloca %"struct.duckdb::ValidityMask", align 8 ; 11 uses
  %.sroa.5 = alloca [12 x i8], align 4            ; 7 uses
  store i64 %3, ptr %i.f, align 8, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !496, !nonnull !64, !align !94
  %i.m = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.n = load i8, ptr %i.m, align 8, !tbaa !7
  %.off = add i8 %i.n, -1
  %switch = icmp ult i8 %.off, 2
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !496, !nonnull !64, !align !94 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !499, !nonnull !64, !align !94 ; 6 uses
  br i1 %switch, label %bb.b, label %bb.bd

bb.b:                                             ; preds = %bb.a
  %.not147.i = icmp eq i64 %4, 0
  br i1 %.not147.i, label %_ZN6duckdbL23TemplatedColumnDataCopyINS_15StringValueCopyEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit, label %.lr.ph152.i

.lr.ph152.i:                                      ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.038.0.copyload.i = load i64, ptr %i.r, align 8, !tbaa !103
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %.lr.ph152.i
  %.0150.i = phi i64 [ %3, %.lr.ph152.i ], [ %i.fz, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 3 uses
  %.sroa.038.0149.i = phi i64 [ %.sroa.038.0.copyload.i, %.lr.ph152.i ], [ %.sroa.038.1.i, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 4 uses
  %.065148.i = phi i64 [ %4, %.lr.ph152.i ], [ %i.ga, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 2 uses
  %i.z = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %.sroa.038.0149.i) ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 7 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !510
  %i.ac = zext i16 %i.ab to i64
  %i.ad = sub nsw i64 2048, %i.ac
  %i.ae = and i64 %i.ad, 4294967295               ; 2 uses
  %i.af = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %.065148.i) ; 5 uses
  %i.ag = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !7
  %i.ai = icmp eq i8 %i.ah, 1
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %i.z, align 8
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i

bb.e:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !155
  %i.an = load i32, ptr %i.z, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.ao = zext i32 %i.an to i64
  store i64 %i.ao, ptr %i.e, align 8, !tbaa !103
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !144
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !147
  %i.au = zext i32 %i.am to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.ak, %bb.d ], [ %i.av, %bb.e ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32768 ; 2 uses
  %i.ax = load i16, ptr %i.aa, align 8, !tbaa !510
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, label %bb.g

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i: ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.aw, i8 -1, i64 256, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i, %bb.ap
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.g:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  %i.ba = load ptr, ptr %i.t, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.ba, null
  %.not154.i = icmp eq i64 %i.ae, 0               ; 2 uses
  br i1 %.not.i.i, label %.preheader.i, label %.preheader141.i

.preheader141.i:                                  ; preds = %bb.g
  br i1 %.not154.i, label %.loopexit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.g
  br i1 %.not154.i, label %.loopexit.i, label %.lr.ph146.i

.lr.ph146.i:                                      ; preds = %.preheader.i, %bb.o
  %.069145.i = phi i64 [ %i.ci, %bb.o ], [ 0, %.preheader.i ] ; 3 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !480
  %i.bc = add i64 %.069145.i, %.0150.i            ; 2 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.bd, null
  br i1 %.not.i72.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph146.i
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = zext i32 %i.bf to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.h, %.lr.ph146.i
  %i.bh = phi i64 [ %i.bg, %bb.h ], [ %i.bc, %.lr.ph146.i ]
  %i.bi = load ptr, ptr %i.u, align 8, !tbaa !513
  %i.bj = load i16, ptr %i.aa, align 8, !tbaa !510
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bl, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !43 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload.i.i, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.w, align 8
  %i.bm = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.bn = icmp ult i32 %i.bm, 13
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.bo = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload.i.i, 0
  %i.bp = insertvalue { i64, ptr } %i.bo, ptr %.sroa.2.0.copyload.i.i, 1
  br label %bb.o

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !496, !nonnull !64, !align !94
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !840 ; 2 uses
  %.not.i92.i = icmp eq ptr %i.bs, null
  br i1 %.not.i92.i, label %.noexc.i.i, label %.noexc73.i, !prof !60

.noexc.i.i:                                       ; preds = %bb.j
  %i.bt = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bu, ptr %6, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 49, ptr %i.d, align 8, !tbaa !103
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc109.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc109.i:                                      ; preds = %.noexc.i.i
  store ptr %i.bv, ptr %6, align 8, !tbaa !72
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !103 ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.bv, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !361
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc109.i
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.n unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %.noexc109.i
  %.0.i.i.i = phi i1 [ false, %bb.k ], [ true, %.noexc109.i ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %6, align 8, !tbaa !72    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.cb) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i.i, label %bb.m, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i.i, label %bb.m, label %common.resume

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bt) #24
  br label %common.resume

bb.n:                                             ; preds = %bb.k
  unreachable

.noexc73.i:                                       ; preds = %bb.j
end_hunk_0
begin_hunk_1_@_ZN6duckdbL14ColumnDataCopyINS_8string_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  br i1 %.not.i.i.i.i162, label %common.resume, label %bb.ax

bb.ax:                                            ; preds = %.body.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.8.1, i64 8 ; 4 uses
  %i.gx = load atomic i64, ptr %i.gw acquire, align 8 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 4294967297
  %i.gz = trunc i64 %i.gx to i32                  ; 2 uses
  br i1 %i.gy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.gw, align 8, !tbaa !56
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.8.1, i64 12
  store i32 0, ptr %i.ha, align 4, !tbaa !58
  %i.hb = load ptr, ptr %.sroa.8.1, align 8, !tbaa !51
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.1) #24, !inline_history !491
  %i.he = load ptr, ptr %.sroa.8.1, align 8, !tbaa !51
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.1) #24, !inline_history !491
  br label %common.resume

bb.az:                                            ; preds = %bb.ax
  %i.hh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i163 = icmp eq i8 %i.hh, 0
  br i1 %.not.i.i.i.i.i163, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hi = add nsw i32 %i.gz, -1
  store i32 %i.hi, ptr %i.gw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i164

bb.bb:                                            ; preds = %bb.az
  %i.hj = atomicrmw volatile add ptr %i.gw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i164

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i164: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i165 = phi i32 [ %i.gz, %bb.ba ], [ %i.hj, %bb.bb ]
  %i.hk = icmp eq i32 %.0.i.i.i.i.i.i165, 1
  br i1 %i.hk, label %bb.bc, label %common.resume, !prof !60

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i164
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.1) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i164, %bb.ay, %.body.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.ck
  %common.resume.op = phi { ptr, i32 } [ %i.pl, %bb.ck ], [ %.pn.i, %bb.bc ], [ %.pn.i, %.body.i ], [ %.pn.i, %bb.ay ], [ %.pn.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i164 ], [ %.pn9.i.i.i, %bb.m ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.bd:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store i64 -1, ptr %9, align 8, !tbaa !561
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.hl, align 8, !tbaa !103
  %i.hm = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 8 uses
  %i.hn = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef %.sroa.0.0.copyload.i)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !501
  %.not183 = icmp eq i64 %i.hp, -1
  br i1 %.not183, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hq = load ptr, ptr %i.k, align 8, !tbaa !496, !nonnull !64, !align !94
  %.sroa.0.0.copyload.i135 = load i64, ptr %i.hl, align 8, !tbaa !103
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  %i.hs = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 noundef %.sroa.0.0.copyload.i135)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %.sroa.061.0.copyload = load i64, ptr %i.ht, align 8, !tbaa !103
  %i.hu = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.hv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_15VectorDataIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i64 noundef %.sroa.061.0.copyload)
  %.sroa.01.0.copyload.i = load i64, ptr %i.hv, align 8, !tbaa !103 ; 2 uses
  %i.hw = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef %.sroa.01.0.copyload.i)
  %storemerge.in198 = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  %storemerge199 = load i64, ptr %storemerge.in198, align 8, !tbaa !103 ; 2 uses
  %.not184200 = icmp eq i64 %storemerge199, -1
  br i1 %.not184200, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be, %.lr.ph
  %storemerge201 = phi i64 [ %storemerge, %.lr.ph ], [ %storemerge199, %bb.be ] ; 2 uses
  %i.hx = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef %storemerge201)
  %storemerge.in = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %storemerge = load i64, ptr %storemerge.in, align 8, !tbaa !103 ; 2 uses
  %.not184 = icmp eq i64 %storemerge, -1
  br i1 %.not184, label %.loopexit, label %.lr.ph, !llvm.loop !857

.loopexit:                                        ; preds = %.lr.ph, %bb.be
  %storemerge197.lcssa = phi i64 [ %.sroa.01.0.copyload.i, %bb.be ], [ %storemerge201, %.lr.ph ]
  store i64 %storemerge197.lcssa, ptr %9, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.hy = load i64, ptr %i.hl, align 8, !tbaa !103 ; 2 uses
  store i64 %i.hy, ptr %10, align 8, !tbaa !103
  %i.hz = load ptr, ptr %i.k, align 8, !tbaa !496, !nonnull !64, !align !94
  %i.ia = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hz)
  %i.ib = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb19ColumnDataAllocator16GetBufferManagerEv(ptr noundef nonnull align 8 dereferenceable(176) %i.ia) ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !51
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 120
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = tail call noundef i64 %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %i.ib)
  %.not219 = icmp eq i64 %4, 0
  br i1 %.not219, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %bb.bf
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph223, %bb.da
  %.0109221 = phi i64 [ %4, %.lr.ph223 ], [ %i.rx, %bb.da ] ; 2 uses
  %.sroa.0.0.copyload169220 = phi i64 [ %i.hy, %.lr.ph223 ], [ %.sroa.0.0.copyload168, %bb.da ] ; 6 uses
  %i.in = phi i64 [ %3, %.lr.ph223 ], [ %i.rw, %bb.da ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.io = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef %.sroa.0.0.copyload169220)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load i16, ptr %i.ip, align 8, !tbaa !510
  %i.ir = zext i16 %i.iq to i64
  %i.is = sub nsw i64 2048, %i.ir
  %i.it = and i64 %i.is, 4294967295               ; 2 uses
  %i.iu = call noundef i64 @llvm.umin.i64(i64 %i.it, i64 %.0109221) ; 5 uses
  store i64 %i.iu, ptr %i.g, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 0, ptr %i.h, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i64 0, ptr %i.i, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store ptr null, ptr %i.j, align 8, !tbaa !509
  %i.iv = call noundef zeroext i1 @_ZN6duckdb31ColumnDataCopyCompressedStringsERNS_18ColumnDataMetaDataERKNS_15VectorDataIndexERS2_RKNS_19UnifiedVectorFormatERNS_6VectorERKmSC_RmSD_RPh(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br i1 %i.iv, label %bb.cr, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %1)
  %i.iw = load ptr, ptr %i.ig, align 8, !tbaa !513 ; 3 uses
  %.promoted202 = load i64, ptr %i.h, align 8, !tbaa !103 ; 3 uses
  %.promoted204 = load i64, ptr %i.i, align 8     ; 2 uses
  %i.ix = icmp ult i64 %.promoted202, %i.iu
  br i1 %i.ix, label %.lr.ph206, label %._crit_edge

.lr.ph206:                                        ; preds = %bb.bh
  %i.iy = load ptr, ptr %1, align 8, !tbaa !480
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !489 ; 2 uses
  %.not.i = icmp eq ptr %i.iz, null
  %i.ja = load ptr, ptr %i.ih, align 8, !tbaa !189 ; 2 uses
  %.not.i136 = icmp eq ptr %i.ja, null
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph206, %bb.bl
  %i.jb = phi i64 [ %.promoted202, %.lr.ph206 ], [ %i.jv, %bb.bl ] ; 3 uses
  %i.jc = phi i64 [ %.promoted204, %.lr.ph206 ], [ %i.ju, %bb.bl ] ; 4 uses
  %i.jd = add i64 %i.jb, %i.in                    ; 2 uses
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !3
  %i.jg = zext i32 %i.jf to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.bi, %bb.bj
  %i.jh = phi i64 [ %i.jg, %bb.bj ], [ %i.jd, %bb.bi ] ; 3 uses
  br i1 %.not.i136, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ji = lshr i64 %i.jh, 6
  %i.jj = and i64 %i.jh, 63
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.ji
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !103
  %i.jm = shl nuw i64 1, %i.jj
  %i.jn = and i64 %i.jl, %i.jm
  %.not185 = icmp eq i64 %i.jn, 0
  br i1 %.not185, label %bb.bl, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %i.jh
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !43 ; 2 uses
  %i.jq = icmp ult i32 %i.jp, 13
  br i1 %i.jq, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.jr = zext i32 %i.jp to i64
  %i.js = add i64 %i.jc, %i.jr                    ; 2 uses
  %i.jt = icmp ugt i64 %i.js, %i.if
  br i1 %i.jt, label %._crit_edge, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ju = phi i64 [ %i.jc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ %i.jc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.js, %bb.bk ] ; 2 uses
  %i.jv = add nsw i64 %i.jb, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.jv, %i.iu
  br i1 %exitcond.not, label %._crit_edge, label %bb.bi, !llvm.loop !858

._crit_edge:                                      ; preds = %bb.bl, %bb.bk, %bb.bh
  %i.jw = phi i64 [ %.promoted204, %bb.bh ], [ %i.jc, %bb.bk ], [ %i.ju, %bb.bl ] ; 3 uses
  %.lcssa203 = phi i64 [ %.promoted202, %bb.bh ], [ %i.jb, %bb.bk ], [ %i.iu, %bb.bl ] ; 3 uses
  store i64 %.lcssa203, ptr %i.h, align 8
  store i64 %i.jw, ptr %i.i, align 8
  %i.jx = icmp ne i64 %i.it, 0
  %i.jy = icmp eq i64 %.lcssa203, 0
  %or.cond = and i1 %i.jx, %i.jy
  br i1 %or.cond, label %bb.bm, label %thread-pre-split

bb.bm:                                            ; preds = %._crit_edge
  %i.jz = load ptr, ptr %1, align 8, !tbaa !480
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !489 ; 2 uses
  %.not.i137 = icmp eq ptr %i.ka, null
  br i1 %.not.i137, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit138, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.in
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3
  %i.kd = zext i32 %i.kc to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit138

_ZNK6duckdb15SelectionVector9get_indexEm.exit138: ; preds = %bb.bm, %bb.bn
  %i.ke = phi i64 [ %i.kd, %bb.bn ], [ %i.in, %bb.bm ]
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !43
  %i.kh = zext i32 %i.kg to i64
  %i.ki = add i64 %i.jw, %i.kh                    ; 2 uses
  store i64 %i.ki, ptr %i.i, align 8, !tbaa !103
  store i64 1, ptr %i.h, align 8, !tbaa !103
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %._crit_edge, %_ZNK6duckdb15SelectionVector9get_indexEm.exit138
  %12 = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit138 ], [ %.lcssa203, %._crit_edge ] ; 2 uses
  %i.kj = phi i64 [ %i.ki, %_ZNK6duckdb15SelectionVector9get_indexEm.exit138 ], [ %i.jw, %._crit_edge ] ; 2 uses
  %.not125 = icmp eq i64 %i.kj, 0
  br i1 %.not125, label %bb.bx, label %bb.bo

bb.bo:                                            ; preds = %thread-pre-split
  %i.kk = load ptr, ptr %i.ii, align 8, !tbaa !500, !nonnull !64, !align !94
  %.sroa.042.0.copyload = load i64, ptr %9, align 8, !tbaa !103
  %i.kl = call i64 @_ZN6duckdb27ColumnDataCollectionSegment18AllocateStringHeapEmRNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %i.o, i64 noundef %i.kj, ptr noundef nonnull align 8 dereferenceable(82) %i.kk, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 %.sroa.042.0.copyload) ; 4 uses
  store i64 %i.kl, ptr %9, align 8, !tbaa !103
  %i.km = load ptr, ptr %i.k, align 8, !tbaa !496, !nonnull !64, !align !94
  %.sroa.0.0.copyload.i139 = load i64, ptr %i.hl, align 8, !tbaa !103
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 72
  %i.ko = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.kn, i64 noundef %.sroa.0.0.copyload.i139)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !501
  %.not186 = icmp eq i64 %i.kq, -1
  br i1 %.not186, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.kr = load ptr, ptr %i.k, align 8, !tbaa !496 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 96 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 104 ; 3 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !458 ; 6 uses
  %i.kv = load ptr, ptr %i.ks, align 8, !tbaa !455 ; 7 uses
  %i.kw = ptrtoint ptr %i.ku to i64               ; 2 uses
  %i.kx = ptrtoint ptr %i.kv to i64               ; 3 uses
  %i.ky = sub i64 %i.kw, %i.kx                    ; 3 uses
  %i.kz = ashr exact i64 %i.ky, 3                 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 112 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !459
  %.not.i.i140 = icmp eq ptr %i.ku, %i.lb
  br i1 %.not.i.i140, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i64 %i.kl, ptr %i.ku, align 8, !tbaa !103
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store ptr %i.lc, ptr %i.kt, align 8, !tbaa !458
  br label %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit

bb.br:                                            ; preds = %bb.bp
  %i.ld = icmp eq i64 %i.ky, 9223372036854775800
  br i1 %i.ld, label %bb.bs, label %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.br
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kz, i64 1)
  %i.le = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kz ; 2 uses
  %i.lf = icmp ult i64 %i.le, %i.kz
  %i.lg = call i64 @llvm.umin.i64(i64 %i.le, i64 1152921504606846975)
  %i.lh = select i1 %i.lf, i64 1152921504606846975, i64 %i.lg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.lh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.li = shl nuw nsw i64 %i.lh, 3
  %i.lj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #28 ; 8 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ky
  store i64 %i.kl, ptr %i.lk, align 8, !tbaa !103
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.kv, %i.ku
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ll = ptrtoaddr ptr %i.lj to i64
  %i.lm = sub i64 %i.kw, %i.kx
  %i.ln = add i64 %i.lm, -8                       ; 2 uses
  %i.lo = lshr i64 %i.ln, 3
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ln, 24
  %i.lq = sub i64 %i.ll, %i.kx
  %diff.check = icmp ult i64 %i.lq, 32
  %or.cond295 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond295, label %.lr.ph.i.i.i.i.i.i.i.preheader301, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.lp, 4611686018427387900     ; 3 uses
  %i.lr = shl i64 %n.vec, 3                       ; 2 uses
  %i.ls = getelementptr i8, ptr %i.lj, i64 %i.lr  ; 2 uses
  %i.lt = getelementptr i8, ptr %i.kv, i64 %i.lr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.lj, i64 %i.lu ; 2 uses
  %next.gep292 = getelementptr i8, ptr %i.kv, i64 %i.lu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.lv = getelementptr i8, ptr %next.gep292, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep292, align 8, !tbaa !103, !alias.scope !862, !noalias !859
  %wide.load293 = load <2 x i64>, ptr %i.lv, align 8, !tbaa !103, !alias.scope !862, !noalias !859
  %i.lw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !859, !noalias !862
  store <2 x i64> %wide.load293, ptr %i.lw, align 8, !tbaa !103, !alias.scope !859, !noalias !862
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lx = icmp eq i64 %index.next, %n.vec
  br i1 %i.lx, label %middle.block, label %vector.body, !llvm.loop !864

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader301

.lr.ph.i.i.i.i.i.i.i.preheader301:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.lj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ls, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.lt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader301, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ma, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader301 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.lz, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader301 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.ly = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !862, !noalias !859
  store i64 %i.ly, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !859, !noalias !862
  %i.lz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i141 = icmp eq ptr %i.lz, %i.ku
  br i1 %.not.i.i.i.i.i.i.i141, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !865

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.lj, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ls, %middle.block ], [ %i.ma, %.lr.ph.i.i.i.i.i.i.i ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.kv) #25
  %.pre.pre = load ptr, ptr %i.k, align 8, !tbaa !496
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bt, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.bt ], [ %i.kr, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  store ptr %i.lj, ptr %i.ks, align 8, !tbaa !455
  store ptr %i.mb, ptr %i.kt, align 8, !tbaa !458
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.lh
  store ptr %i.mc, ptr %i.la, align 8, !tbaa !459
  br label %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit

_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit: ; preds = %bb.bq, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.md = phi ptr [ %i.kr, %bb.bq ], [ %.pre, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %.sroa.0.0.copyload.i142 = load i64, ptr %i.hl, align 8, !tbaa !103
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 72
  %i.mf = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, i64 noundef %.sroa.0.0.copyload.i142)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  store i64 %i.kz, ptr %i.mg, align 8, !tbaa !103
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit, %bb.bo
  %i.mh = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef %i.kl) ; 3 uses
  %i.mi = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  %i.mj = load i8, ptr %i.mi, align 8, !tbaa !7
  %i.mk = icmp eq i8 %i.mj, 1
  br i1 %i.mk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ml = load i64, ptr %i.mh, align 8
  %i.mm = inttoptr i64 %i.ml to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit

bb.bw:                                            ; preds = %bb.bu
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !155
  %i.mp = load i32, ptr %i.mh, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.mq = zext i32 %i.mp to i64
  store i64 %i.mq, ptr %i.b, align 8, !tbaa !103
  %i.mr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ms)
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !144
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !147
  %i.mw = zext i32 %i.mo to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit: ; preds = %bb.bv, %bb.bw
  %.0.i143 = phi ptr [ %i.mm, %bb.bv ], [ %i.mx, %bb.bw ]
  store ptr %.0.i143, ptr %i.j, align 8, !tbaa !509
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit, %thread-pre-split
  %i.my = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef %.sroa.0.0.copyload169220) ; 4 uses
  %i.mz = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  %i.na = load i8, ptr %i.mz, align 8, !tbaa !7
  %i.nb = icmp eq i8 %i.na, 1
  br i1 %i.nb, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.nc = load i64, ptr %i.my, align 8
  %i.nd = inttoptr i64 %i.nc to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit145

bb.bz:                                            ; preds = %bb.bx
  %i.ne = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !155
  %i.ng = load i32, ptr %i.my, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.nh = zext i32 %i.ng to i64
  store i64 %i.nh, ptr %i.a, align 8, !tbaa !103
  %i.ni = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nj)
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !144
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !147
  %i.nn = zext i32 %i.nf to i64
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit145

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit145: ; preds = %bb.by, %bb.bz
  %.0.i144 = phi ptr [ %i.nd, %bb.by ], [ %i.no, %bb.bz ] ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.0.i144, i64 32768 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %i.np, ptr %11, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.ik, align 8, !tbaa !479
  %i.nq = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %i.nr = load i16, ptr %i.nq, align 8, !tbaa !510
  %i.ns = icmp eq i16 %i.nr, 0
  br i1 %i.ns, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit, label %bb.ca

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit: ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.np, i8 -1, i64 256, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit145
  %.not225 = icmp eq i64 %12, 0
  br i1 %.not225, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %.lr.ph217.preheader

.lr.ph217.preheader:                              ; preds = %bb.ca
  %i.nt = load ptr, ptr %i.j, align 8, !tbaa !509
  br label %.lr.ph217

._crit_edge218:                                   ; preds = %bb.cq
  %.pre235 = load ptr, ptr %i.il, align 8, !tbaa !54 ; 8 uses
  %.not.i.i.i.i149 = icmp eq ptr %.pre235, null
  br i1 %.not.i.i.i.i149, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge218
  %i.nu = getelementptr inbounds nuw i8, ptr %.pre235, i64 8 ; 4 uses
  %i.nv = load atomic i64, ptr %i.nu acquire, align 8 ; 2 uses
  %i.nw = icmp eq i64 %i.nv, 4294967297
  %i.nx = trunc i64 %i.nv to i32                  ; 2 uses
  br i1 %i.nw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.nu, align 8, !tbaa !56
  %i.ny = getelementptr inbounds nuw i8, ptr %.pre235, i64 12
  store i32 0, ptr %i.ny, align 4, !tbaa !58
  %i.nz = load ptr, ptr %.pre235, align 8, !tbaa !51
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(16) %.pre235) #24, !inline_history !491
  %i.oc = load ptr, ptr %.pre235, align 8, !tbaa !51
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(16) %.pre235) #24, !inline_history !491
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.of = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i150 = icmp eq i8 %i.of, 0
  br i1 %.not.i.i.i.i.i150, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.og = add nsw i32 %i.nx, -1
  store i32 %i.og, ptr %i.nu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.oh = atomicrmw volatile add ptr %i.nu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i.i = phi i32 [ %i.nx, %bb.ce ], [ %i.oh, %bb.cf ]
  %i.oi = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.oi, label %bb.cg, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !60

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre235) #24
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %bb.ca, %._crit_edge218, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.cr

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %bb.cq
  %i.oj = phi i64 [ %i.qb, %bb.cq ], [ %12, %.lr.ph217.preheader ] ; 2 uses
  %.0116215 = phi ptr [ %.2118, %bb.cq ], [ %i.nt, %.lr.ph217.preheader ] ; 7 uses
  %.0119214 = phi i64 [ %i.qc, %bb.cq ], [ 0, %.lr.ph217.preheader ] ; 3 uses
  %i.ok = load ptr, ptr %1, align 8, !tbaa !480
  %i.ol = add i64 %.0119214, %i.in                ; 2 uses
  %i.om = load ptr, ptr %i.ok, align 8, !tbaa !489 ; 2 uses
  %.not.i151 = icmp eq ptr %i.om, null
  br i1 %.not.i151, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph217
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.ol
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !3
  %i.op = zext i32 %i.oo to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152

_ZNK6duckdb15SelectionVector9get_indexEm.exit152: ; preds = %bb.ch, %.lr.ph217
  %i.oq = phi i64 [ %i.op, %bb.ch ], [ %i.ol, %.lr.ph217 ] ; 3 uses
  %i.or = load i16, ptr %i.nq, align 8, !tbaa !510
  %i.os = zext i16 %i.or to i64
  %i.ot = add i64 %.0119214, %i.os                ; 3 uses
  %i.ou = load ptr, ptr %i.ih, align 8, !tbaa !189 ; 2 uses
  %.not.i153 = icmp eq ptr %i.ou, null
  br i1 %.not.i153, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152
  %i.ov = lshr i64 %i.oq, 6
  %i.ow = and i64 %i.oq, 63
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.ov
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !103
  %i.oz = shl nuw i64 1, %i.ow
  %i.pa = and i64 %i.oy, %i.oz
  %.not187 = icmp eq i64 %i.pa, 0
  br i1 %.not187, label %bb.ci, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread

bb.ci:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155
  %i.pb = load ptr, ptr %11, align 8, !tbaa !189  ; 2 uses
  %.not.i156 = icmp eq ptr %i.pb, null
  br i1 %.not.i156, label %bb.cj, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.cj:                                            ; preds = %bb.ci
  %i.pc = load i64, ptr %i.ik, align 8, !tbaa !479
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.pc)
          to label %.noexc158 unwind label %bb.ck

.noexc158:                                        ; preds = %bb.cj
  %.pre.i157 = load ptr, ptr %11, align 8, !tbaa !189
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ci, %.noexc158
  %i.pd = phi ptr [ %.pre.i157, %.noexc158 ], [ %i.pb, %bb.ci ]
  %i.pe = lshr i64 %i.ot, 6
  %i.pf = and i64 %i.ot, 63
  %i.pg = shl nuw i64 1, %i.pf
  %i.ph = xor i64 %i.pg, -1
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pe ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !103
  %i.pk = and i64 %i.pj, %i.ph
  store i64 %i.pk, ptr %i.pi, align 8, !tbaa !103
  br label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  %i.pl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %i.oq ; 5 uses
  %i.pn = getelementptr inbounds nuw [16 x i8], ptr %.0.i144, i64 %i.ot ; 3 uses
  %i.po = load i32, ptr %i.pm, align 8, !tbaa !43 ; 2 uses
  %i.pp = icmp ult i32 %i.po, 13
  br i1 %i.pp, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pn, ptr noundef nonnull align 8 dereferenceable(16) %i.pm, i64 16, i1 false), !tbaa.struct !511
  br label %bb.cq

bb.cm:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = zext i32 %i.po to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0116215, ptr align 1 %i.pr, i64 %i.ps, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.pt = load i32, ptr %i.pm, align 8, !tbaa !43 ; 4 uses
  %i.pu = icmp ult i32 %i.pt, 13
  br i1 %i.pu, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i8 0, i64 12, i1 false)
  %i.pv = icmp eq i32 %i.pt, 0
  br i1 %i.pv, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pw = zext nneg i32 %i.pt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.5, ptr align 1 %.0116215, i64 %i.pw, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.cp:                                            ; preds = %bb.cm
  %i.px = load i32, ptr %.0116215, align 1
  store i32 %i.px, ptr %.sroa.5, align 4
  store ptr %.0116215, ptr %.sroa.5.4..sroa_idx, align 4, !tbaa !43
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.cp, %bb.co, %bb.cn
  store i32 %i.pt, ptr %i.pn, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false), !tbaa.struct !866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.py = load i32, ptr %i.pm, align 8, !tbaa !43
  %i.pz = zext i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw i8, ptr %.0116215, i64 %i.pz
  %.pre234 = load i64, ptr %i.h, align 8, !tbaa !103
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.cl, %_ZN6duckdb8string_tC2EPKcj.exit
  %i.qb = phi i64 [ %i.oj, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ], [ %i.oj, %bb.cl ], [ %.pre234, %_ZN6duckdb8string_tC2EPKcj.exit ] ; 2 uses
  %.2118 = phi ptr [ %.0116215, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ], [ %.0116215, %bb.cl ], [ %i.qa, %_ZN6duckdb8string_tC2EPKcj.exit ]
  %i.qc = add nuw i64 %.0119214, 1                ; 2 uses
  %i.qd = icmp ult i64 %i.qc, %i.qb
  br i1 %i.qd, label %.lr.ph217, label %._crit_edge218, !llvm.loop !867

bb.cr:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, %bb.bg
  %i.qe = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef %.sroa.0.0.copyload169220) ; 6 uses
  %i.qf = load i64, ptr %i.i, align 8, !tbaa !103
  %.not130 = icmp eq i64 %i.qf, 0
  br i1 %.not130, label %._ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12emplace_backIJRNS0_15VectorDataIndexERPhRtRmEEEvDpOT_.exit_crit_edge, label %bb.cs

._ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12emplace_backIJRNS0_15VectorDataIndexERPhRtRmEEEvDpOT_.exit_crit_edge: ; preds = %bb.cr
  %.pre236 = load i64, ptr %i.h, align 8, !tbaa !103 ; 2 uses
  %.pre238 = trunc i64 %.pre236 to i16
  br label %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12emplace_backIJRNS0_15VectorDataIndexERPhRtRmEEEvDpOT_.exit

end_hunk_1
begin_hunk_2_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_SC_T0_:bb.a
  %.not.i.i.i25 = icmp ugt i64 %i.ad, %i.w
  br i1 %.not.i.i.i25, label %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32, label %.noexc.i50, !prof !104

.noexc.i50:                                       ; preds = %bb.e
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 55, ptr %i.c, align 8, !tbaa !103
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc51 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i26 ; 3 uses

.noexc51:                                         ; preds = %.noexc.i50
  store ptr %i.ag, ptr %5, align 8, !tbaa !72
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !103 ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ag, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !361
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc51
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i26: ; preds = %.noexc.i50
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume.sink.split

bb.g:                                             ; preds = %bb.f, %.noexc51
  %.0.i.i.i29 = phi i1 [ false, %bb.f ], [ true, %.noexc51 ] ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.af
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.am) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i29, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i29, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.sink = phi ptr [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i42 ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i34 ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46 ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39 ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31 ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i26 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i42 ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i34 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47 ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46 ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39 ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31 ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i26 ]
  call void @__cxa_free_exception(ptr %.sink) #24
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31
  %common.resume.op = phi { ptr, i32 } [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46 ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31 ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39 ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  unreachable

_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ao = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %i.w
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32, %.lr.ph.i.i.i.i.i
  %i.as = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %i.ar, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32 ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.aq, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = icmp ult i32 %i.au, %i.aw
  %spec.select.i.i.i.i.i = select i1 %i.ax, ptr %i.as, ptr %.sroa.02.010.i.i.i.i.i ; 2 uses
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1144

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32
  %.sroa.02.2.i.i.i.i.i = phi ptr [ %i.aq, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32 ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = load i32, ptr %i.m, align 8, !tbaa !1143
  %i.bc = zext i32 %i.bb to i64                   ; 3 uses
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !452
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !454 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 88                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %i.bc, ptr %i.k, align 8, !tbaa !103
  store i64 %i.bi, ptr %i.l, align 8, !tbaa !103
  %.not.i.i.i = icmp ugt i64 %i.bi, %i.bc
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit, label %.noexc.i, !prof !104

.noexc.i:                                         ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i
  %i.bj = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bk, ptr %6, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 55, ptr %i.d, align 8, !tbaa !103
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bl, ptr %6, align 8, !tbaa !72
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !103 ; 3 uses
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bl, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !361
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store i8 0, ptr %i.bo, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume.sink.split

bb.j:                                             ; preds = %bb.i, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.i ], [ true, %.noexc ] ; 2 uses
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.br = load ptr, ptr %6, align 8, !tbaa !72    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bk
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.br) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

bb.k:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit: ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bt = getelementptr inbounds nuw [88 x i8], ptr %i.be, i64 %i.bc
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i7.i.i = icmp eq ptr %i.bw, null
  br i1 %.not9.i.i.i7.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit, label %.lr.ph.i.i.i8.i.i

.lr.ph.i.i.i8.i.i:                                ; preds = %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit, %.lr.ph.i.i.i8.i.i
  %i.bx = phi ptr [ %i.cd, %.lr.ph.i.i.i8.i.i ], [ %i.bw, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit ] ; 3 uses
  %.sroa.02.010.i.i.i9.i.i = phi ptr [ %spec.select.i.i.i10.i.i, %.lr.ph.i.i.i8.i.i ], [ %i.bv, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i9.i.i, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = icmp ult i32 %i.bz, %i.cb
  %spec.select.i.i.i10.i.i = select i1 %i.cc, ptr %i.bx, ptr %.sroa.02.010.i.i.i9.i.i ; 2 uses
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i11.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i11.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit, label %.lr.ph.i.i.i8.i.i, !llvm.loop !1144

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %.lr.ph.i.i.i8.i.i, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit
  %.sroa.02.2.i.i.i12.i.i = phi ptr [ %i.bv, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit ], [ %spec.select.i.i.i10.i.i, %.lr.ph.i.i.i8.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i12.i.i, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = icmp ult i32 %i.ba, %i.cf
  br i1 %i.cg, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  br label %bb.m

bb.l:                                             ; preds = %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.063.1, i64 16
  br label %bb.c, !llvm.loop !1559

bb.m:                                             ; preds = %.backedge, %.preheader
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.0.1, %.backedge ] ; 2 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -16 ; 6 uses
  %i.ci = load ptr, ptr %.sroa.0.1, align 8, !tbaa !1141 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !284 ; 2 uses
  %.not.i.i8 = icmp eq ptr %.pre, %i.cj
  br i1 %.not.i.i8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = icmp ult ptr %.pre, %i.cj
  br i1 %i.ck, label %.backedge, label %bb.v

.backedge:                                        ; preds = %bb.n, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit24
  br label %bb.m, !llvm.loop !1560

bb.o:                                             ; preds = %bb.m
  %i.cl = load i32, ptr %i.m, align 8, !tbaa !1143
  %i.cm = zext i32 %i.cl to i64                   ; 3 uses
  %i.cn = load ptr, ptr %i.p, align 8, !tbaa !452
  %i.co = load ptr, ptr %i.o, align 8, !tbaa !454 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 88                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.cm, ptr %i.e, align 8, !tbaa !103
  store i64 %i.cs, ptr %i.f, align 8, !tbaa !103
  %.not.i.i.i41 = icmp ugt i64 %i.cs, %i.cm
  br i1 %.not.i.i.i41, label %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48, label %.noexc.i58, !prof !104

.noexc.i58:                                       ; preds = %bb.o
  %i.ct = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.cu, ptr %3, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 55, ptr %i.a, align 8, !tbaa !103
  %i.cv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc59 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i42 ; 3 uses

.noexc59:                                         ; preds = %.noexc.i58
  store ptr %i.cv, ptr %3, align 8, !tbaa !72
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.cv, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !361
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc59
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.r unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i42: ; preds = %.noexc.i58
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume.sink.split

bb.q:                                             ; preds = %bb.p, %.noexc59
  %.0.i.i.i45 = phi i1 [ false, %bb.p ], [ true, %.noexc59 ] ; 2 uses
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.db = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cu
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.db) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i.i.i45, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i.i.i45, label %common.resume.sink.split, label %common.resume

bb.r:                                             ; preds = %bb.p
  unreachable

_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dd = getelementptr inbounds nuw [88 x i8], ptr %i.co, i64 %i.cm
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i.i.i10 = icmp eq ptr %i.dg, null
  br i1 %.not9.i.i.i.i.i10, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i15, label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48, %.lr.ph.i.i.i.i.i11
  %i.dh = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i11 ], [ %i.dg, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48 ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i12 = phi ptr [ %spec.select.i.i.i.i.i13, %.lr.ph.i.i.i.i.i11 ], [ %i.df, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i12, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.dm = icmp ult i32 %i.dj, %i.dl
  %spec.select.i.i.i.i.i13 = select i1 %i.dm, ptr %i.dh, ptr %.sroa.02.010.i.i.i.i.i12 ; 2 uses
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i14, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i15, label %.lr.ph.i.i.i.i.i11, !llvm.loop !1144

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i15: ; preds = %.lr.ph.i.i.i.i.i11, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48
  %.sroa.02.2.i.i.i.i.i16 = phi ptr [ %i.df, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48 ], [ %spec.select.i.i.i.i.i13, %.lr.ph.i.i.i.i.i11 ]
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i16, i64 8
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !1143
  %i.dt = zext i32 %i.ds to i64                   ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !452
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !454 ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = sdiv exact i64 %i.dz, 88                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.dt, ptr %i.g, align 8, !tbaa !103
  store i64 %i.ea, ptr %i.h, align 8, !tbaa !103
  %.not.i.i.i33 = icmp ugt i64 %i.ea, %i.dt
  br i1 %.not.i.i.i33, label %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40, label %.noexc.i54, !prof !104

.noexc.i54:                                       ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i15
  %i.eb = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ec, ptr %4, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 55, ptr %i.b, align 8, !tbaa !103
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc55 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i34 ; 3 uses

.noexc55:                                         ; preds = %.noexc.i54
  store ptr %i.ed, ptr %4, align 8, !tbaa !72
  %i.ee = load i64, ptr %i.b, align 8, !tbaa !103 ; 3 uses
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ed, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !361
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc55
  invoke void @__cxa_throw(ptr nonnull %i.eb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.u unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i34: ; preds = %.noexc.i54
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume.sink.split

bb.t:                                             ; preds = %bb.s, %.noexc55
  %.0.i.i.i37 = phi i1 [ false, %bb.s ], [ true, %.noexc55 ] ; 2 uses
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ej = load ptr, ptr %4, align 8, !tbaa !72    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ec
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.ej) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.0.i.i.i37, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.0.i.i.i37, label %common.resume.sink.split, label %common.resume

bb.u:                                             ; preds = %bb.s
  unreachable

_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40: ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.el = getelementptr inbounds nuw [88 x i8], ptr %i.dw, i64 %i.dt
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i7.i.i17 = icmp eq ptr %i.eo, null
  br i1 %.not9.i.i.i7.i.i17, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit24, label %.lr.ph.i.i.i8.i.i18

.lr.ph.i.i.i8.i.i18:                              ; preds = %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40, %.lr.ph.i.i.i8.i.i18
  %i.ep = phi ptr [ %i.ev, %.lr.ph.i.i.i8.i.i18 ], [ %i.eo, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40 ] ; 3 uses
  %.sroa.02.010.i.i.i9.i.i19 = phi ptr [ %spec.select.i.i.i10.i.i20, %.lr.ph.i.i.i8.i.i18 ], [ %i.en, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40 ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i9.i.i19, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3
  %i.eu = icmp ult i32 %i.er, %i.et
  %spec.select.i.i.i10.i.i20 = select i1 %i.eu, ptr %i.ep, ptr %.sroa.02.010.i.i.i9.i.i19 ; 2 uses
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i11.i.i21 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i11.i.i21, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit24, label %.lr.ph.i.i.i8.i.i18, !llvm.loop !1144

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit24: ; preds = %.lr.ph.i.i.i8.i.i18, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40
  %.sroa.02.2.i.i.i12.i.i23 = phi ptr [ %i.en, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40 ], [ %spec.select.i.i.i10.i.i20, %.lr.ph.i.i.i8.i.i18 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i12.i.i23, i64 8
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !3
  %i.ey = icmp ult i32 %i.dp, %i.ex
  br i1 %i.ey, label %.backedge, label %bb.v

bb.v:                                             ; preds = %bb.n, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit24
  %i.ez = icmp ult ptr %.sroa.063.1, %.sroa.0.1
  br i1 %i.ez, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  ret ptr %.sroa.063.1

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.063.1, i64 16, i1 false), !tbaa.struct !1163
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.063.1, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.1, i64 12, i1 false), !tbaa.struct !1163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !1163
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.063.1, i64 16
  br label %bb.b, !llvm.loop !1561
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb::ColumnDataConsumer::ChunkReference", align 8 ; 4 uses
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.032 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not33 = icmp eq ptr %.sroa.0.032, %1
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.0.035 = phi ptr [ %.sroa.0.032, %.lr.ph ], [ %.sroa.0.0, %bb.t ] ; 7 uses
  %.pn34 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.035, %bb.t ] ; 4 uses
  %i.j = load ptr, ptr %.sroa.0.035, align 8, !tbaa !1141 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !284  ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !1141
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !284  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %.pn34, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1143
  %i.r = zext i32 %i.q to i64
  %i.s = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !129  ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.w = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.d ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = icmp ult i32 %i.y, %i.aa
  %spec.select.i.i.i.i.i = select i1 %i.ab, ptr %i.w, ptr %.sroa.02.010.i.i.i.i.i ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1144

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.02.2.i.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = load ptr, ptr %0, align 8, !tbaa !1141
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !1143
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i7.i.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i.i7.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit, label %.lr.ph.i.i.i8.i.i

.lr.ph.i.i.i8.i.i:                                ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, %.lr.ph.i.i.i8.i.i
  %i.an = phi ptr [ %i.at, %.lr.ph.i.i.i8.i.i ], [ %i.am, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ] ; 3 uses
  %.sroa.02.010.i.i.i9.i.i = phi ptr [ %spec.select.i.i.i10.i.i, %.lr.ph.i.i.i8.i.i ], [ %i.al, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
end_hunk_2
