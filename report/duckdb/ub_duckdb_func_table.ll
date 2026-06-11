inline.NumInlined: 18938
inline.NumDeleted: 8313
begin_hunk_0_@_ZN6duckdb23ArrowToDuckDBConversion19ColumnArrowToDuckDBERNS_6VectorER10ArrowArraymRNS_19ArrowArrayScanStateEmRKNS_9ArrowTypeElPNS_12ValidityMaskEmb:bb.a
  %lcmp.mod1086.not = icmp eq i64 %xtraiter1085, 0
  br i1 %lcmp.mod1086.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph898.epil.preheader

.lr.ph898.epil.preheader:                         ; preds = %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit.unr-lcssa, %.lr.ph898.preheader
  %.0529896.epil.init = phi i32 [ 0, %.lr.ph898.preheader ], [ %spec.select608.1, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit.unr-lcssa ]
  %.0531895.epil.init = phi i64 [ %i.cq, %.lr.ph898.preheader ], [ %spec.select.1, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit.unr-lcssa ]
  %.0533894.epil.init = phi i64 [ 0, %.lr.ph898.preheader ], [ %i.dp, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit.unr-lcssa ]
  %lcmp.mod1087 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1087)
  %i.acq = zext nneg i32 %.0529896.epil.init to i64
  %i.acr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.acq
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !24
  %i.act = zext i8 %i.acs to i32
  %i.acu = trunc nuw nsw i64 %.0531895.epil.init to i32
  %i.acv = lshr i32 %i.act, %i.acu
  %i.acw = trunc nuw i32 %i.acv to i8
  %spec.select1024.epil = and i8 %i.acw, 1
  %i.acx = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.0533894.epil.init
  store i8 %spec.select1024.epil, ptr %i.acx, align 1, !tbaa !24
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1042.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod1081.not = icmp eq i64 %xtraiter1080, 0
  br i1 %lcmp.mod1081.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1042.unr-lcssa, %.lr.ph.i.preheader
  %.03141.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.fi, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1042.unr-lcssa ] ; 2 uses
  %lcmp.mod1082 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1082)
  %i.acy = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %.03141.i.epil.init ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %.val32.i.epil = load i64, ptr %i.acz, align 8, !tbaa !23
  %i.ada = call noundef i64 @llvm.bswap.i64(i64 %.val32.i.epil)
  %i.adb = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.03141.i.epil.init ; 2 uses
  store i64 %i.ada, ptr %i.adb, align 8, !tbaa !426
  %.val34.i.epil = load i64, ptr %i.acy, align 8, !tbaa !23
  %i.adc = xor i64 %.val34.i.epil, 128
  %i.add = call i64 @llvm.bswap.i64(i64 %i.adc)
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  store i64 %i.add, ptr %i.ade, align 8, !tbaa !428
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1045.unr-lcssa: ; preds = %.lr.ph889
  %lcmp.mod1076.not = icmp eq i64 %xtraiter1075, 0
  br i1 %lcmp.mod1076.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph889.epil.preheader

.lr.ph889.epil.preheader:                         ; preds = %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1045.unr-lcssa, %.lr.ph889.preheader
  %.0538887.epil.init = phi i64 [ 0, %.lr.ph889.preheader ], [ %i.jh, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1045.unr-lcssa ] ; 2 uses
  %lcmp.mod1077 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1077)
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.0538887.epil.init
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !23
  %i.adh = sdiv i64 %i.adg, 86400000
  %i.adi = trunc i64 %i.adh to i32
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.0538887.epil.init
  store i32 %i.adi, ptr %i.adj, align 4, !tbaa !3
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1046.unr-lcssa: ; preds = %.lr.ph886
  %lcmp.mod1071.not = icmp eq i64 %xtraiter1070, 0
  br i1 %lcmp.mod1071.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph886.epil.preheader

.lr.ph886.epil.preheader:                         ; preds = %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1046.unr-lcssa, %.lr.ph886.preheader
  %.0543884.epil.init = phi i64 [ 0, %.lr.ph886.preheader ], [ %i.kr, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1046.unr-lcssa ] ; 2 uses
  %lcmp.mod1072 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1072)
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %.0543884.epil.init
  %i.adl = load i64, ptr %i.adk, align 8, !tbaa !23
  %i.adm = sdiv i64 %i.adl, 1000
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.0543884.epil.init
  store i64 %i.adm, ptr %i.adn, align 8, !tbaa !433
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1047.unr-lcssa: ; preds = %.lr.ph883
  %lcmp.mod1066.not = icmp eq i64 %xtraiter1065, 0
  br i1 %lcmp.mod1066.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph883.epil.preheader

.lr.ph883.epil.preheader:                         ; preds = %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1047.unr-lcssa, %.lr.ph883.preheader
  %.0549881.epil.init = phi i64 [ 0, %.lr.ph883.preheader ], [ %i.mo, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1047.unr-lcssa ] ; 2 uses
  %lcmp.mod1067 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1067)
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %.0549881.epil.init
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !23
  %i.adq = sdiv i64 %i.adp, 1000
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.0549881.epil.init
  store i64 %i.adq, ptr %i.adr, align 8, !tbaa !436
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1048.unr-lcssa: ; preds = %.lr.ph880
  %lcmp.mod1061.not = icmp eq i64 %xtraiter1060, 0
  br i1 %lcmp.mod1061.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph880.epil.preheader

.lr.ph880.epil.preheader:                         ; preds = %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1048.unr-lcssa, %.lr.ph880.preheader
  %.0552878.epil.init = phi i64 [ 0, %.lr.ph880.preheader ], [ %i.oc, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1048.unr-lcssa ] ; 2 uses
  %lcmp.mod1062 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1062)
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %.0552878.epil.init
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !23
  %i.adu = sdiv i64 %i.adt, 1000
  %i.adv = getelementptr inbounds nuw [16 x i8], ptr %i.nd, i64 %.0552878.epil.init ; 3 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 8
  store i64 %i.adu, ptr %i.adw, align 8, !tbaa !439
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adv, i64 4
  store i32 0, ptr %i.adx, align 4, !tbaa !441
  store i32 0, ptr %i.adv, align 8, !tbaa !442
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit: ; preds = %bb.fs, %.lr.ph880.epil.preheader, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1048.unr-lcssa, %.lr.ph883.epil.preheader, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1047.unr-lcssa, %.lr.ph886.epil.preheader, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1046.unr-lcssa, %.lr.ph889.epil.preheader, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1045.unr-lcssa, %bb.be, %bb.ay, %.lr.ph.i.epil.preheader, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1042.unr-lcssa, %.lr.ph898.epil.preheader, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit.unr-lcssa, %bb.ff, %bb.cv, %bb.cl, %bb.br, %bb.bh, %bb.bd, %bb.au, %bb.er, %bb.eq, %bb.ep, %bb.en, %.preheader.i, %.preheader38.i, %bb.cs, %bb.ct, %bb.cu, %bb.cw, %bb.cx, %bb.ci, %bb.cj, %bb.ck, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.bo, %bb.bp, %bb.bq, %bb.bg, %bb.az, %bb.ba, %bb.bb, %bb.bc, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, %bb.eg, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, %bb.av, %bb.aq, %bb.h
  ret void

bb.ik:                                            ; preds = %bb.ih, %bb.hd, %bb.gq, %bb.fp, %bb.dv, %bb.da, %bb.co, %bb.ce, %bb.bu, %bb.bk
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !387    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.137, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL20FlattenRunEndsSwitchIsEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %11 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %12 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %13 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %14 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %15 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %16 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %17 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %18 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %19 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %20 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %21 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %22 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %23 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %24 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %25 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %26 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %27 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %28 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %29 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %30 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %31 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %32 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !329   ; 2 uses
  switch i8 %i.d, label %bb.aat [
    i8 3, label %bb.b
    i8 5, label %bb.ba
    i8 7, label %bb.cy
    i8 9, label %bb.ew
    i8 -52, label %bb.gu
    i8 2, label %bb.iv
    i8 4, label %bb.ku
    i8 6, label %bb.ms
    i8 8, label %bb.oq
    i8 1, label %bb.qo
    i8 11, label %bb.sm
    i8 12, label %bb.uk
    i8 21, label %bb.wi
    i8 -56, label %bb.yj
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %32)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %31)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %32)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %31)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !466  ; 3 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %32)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !466  ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !419  ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.not14.i.i = icmp eq i64 %2, 0
  br i1 %.not14.i.i, label %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.013.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %bb.i ] ; 2 uses
  %.01012.i.i = phi i64 [ %.111.i.i, %.lr.ph.i.i ], [ %2, %bb.i ] ; 2 uses
  %i.n = add i64 %.01012.i.i, %.013.i.i
  %i.o = lshr i64 %i.n, 1                         ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !475
  %i.r = sext i16 %i.q to i64
  %.not.i.i = icmp ult i64 %3, %i.r               ; 2 uses
  %i.s = add nuw i64 %i.o, 1
  %.111.i.i = select i1 %.not.i.i, i64 %i.o, i64 %.01012.i.i ; 2 uses
  %.1.i.i = select i1 %.not.i.i, i64 %.013.i.i, i64 %i.s ; 5 uses
  %i.t = icmp ult i64 %.1.i.i, %.111.i.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i, !llvm.loop !477

_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i:      ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !353
  %.not.i128.i = icmp eq ptr %i.v, null
  br i1 %.not.i128.i, label %.preheader.i, label %.preheader154.i

_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.thread.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !353
  %.not.i128203.i = icmp eq ptr %i.x, null
  br i1 %.not.i128203.i, label %.preheader.i, label %.loopexit.i

.preheader154.i:                                  ; preds = %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i
  %i.y = icmp ult i64 %.1.i.i, %2
  br i1 %i.y, label %.lr.ph163.i, label %.loopexit.i

.lr.ph163.i:                                      ; preds = %.preheader154.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.r

.preheader.i:                                     ; preds = %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.thread.i, %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i
  %.0.lcssa.i205.i = phi i64 [ 0, %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.thread.i ], [ %.1.i.i, %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i ] ; 2 uses
  %i.aa = icmp ult i64 %.0.lcssa.i205.i, %2
  br i1 %i.aa, label %.lr.ph169.i.preheader, label %.loopexit.i

.lr.ph169.i.preheader:                            ; preds = %.preheader.i
  %.pre1392 = load ptr, ptr %31, align 8, !tbaa !478
  br label %.lr.ph169.i

.lr.ph169.i:                                      ; preds = %.lr.ph169.i.preheader, %._crit_edge.i
  %36 = phi ptr [ %37, %._crit_edge.i ], [ %.pre1392, %.lr.ph169.i.preheader ] ; 2 uses
  %.0104167.i.a = phi i64 [ %i.aw, %._crit_edge.i ], [ %.0.lcssa.i205.i, %.lr.ph169.i.preheader ] ; 5 uses
  %.0104167.i = phi i64 [ %i.av, %._crit_edge.i ], [ 0, %.lr.ph169.i.preheader ] ; 4 uses
  %i.ab = load ptr, ptr %36, align 8, !tbaa !479  ; 2 uses
  %.not.i129.i = icmp eq ptr %i.ab, null
  br i1 %.not.i129.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph169.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.0104167.i.a
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.j, %.lr.ph169.i
  %i.af = phi i64 [ %i.ae, %bb.j ], [ %.0104167.i.a, %.lr.ph169.i ]
  %i.ag = load ptr, ptr %32, align 8, !tbaa !478
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !479 ; 2 uses
  %.not.i130.i = icmp eq ptr %i.ah, null
  br i1 %.not.i130.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.0104167.i.a
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = zext i32 %i.aj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i: ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.al = phi i64 [ %i.ak, %bb.k ], [ %.0104167.i.a, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.af
  %i.an = load i16, ptr %i.am, align 2, !tbaa !475
  %i.ao = sext i16 %i.an to i64
  %i.ap = add i64 %.0104167.i, %3
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sub i64 %4, %.0104167.i
  %i.as = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ar) ; 3 uses
  %.not173.i = icmp eq i64 %i.as, 0
  br i1 %.not173.i, label %._crit_edge.i, label %.lr.ph166.i

.lr.ph166.i:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.al
  %i.au = getelementptr i8, ptr %i.l, i64 %.0104167.i
  %.pre.i = load i8, ptr %i.at, align 1, !tbaa !24
  call void @llvm.memset.p0.i64(ptr align 1 %i.au, i8 %.pre.i, i64 %i.as, i1 false), !tbaa !24
  %.pre1391 = load ptr, ptr %31, align 8, !tbaa !478
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph166.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i
  %37 = phi ptr [ %.pre1391, %.lr.ph166.i ], [ %36, %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i ]
  %i.av = add i64 %i.as, %.0104167.i              ; 2 uses
  %.not125.i = icmp uge i64 %i.av, %4
  %i.aw = add nuw i64 %.0104167.i.a, 1            ; 2 uses
  %exitcond181.not.i = icmp eq i64 %i.aw, %2
  %or.cond.i = select i1 %.not125.i, i1 true, i1 %exitcond181.not.i
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph169.i, !llvm.loop !480

bb.l:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.m:                                             ; preds = %bb.d, %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.n:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.o:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.p:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.q:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.r:                                             ; preds = %.loopexit152.i, %.lr.ph163.i
  %.3101162.i = phi i64 [ %.1.i.i, %.lr.ph163.i ], [ %i.eg, %.loopexit152.i ] ; 5 uses
  %.1105159.i = phi i64 [ 0, %.lr.ph163.i ], [ %i.ef, %.loopexit152.i ] ; 8 uses
  %i.bd = load ptr, ptr %31, align 8, !tbaa !478
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !479 ; 2 uses
  %.not.i132.i = icmp eq ptr %i.be, null
  br i1 %.not.i132.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.3101162.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i: ; preds = %bb.s, %bb.r
  %i.bi = phi i64 [ %i.bh, %bb.s ], [ %.3101162.i, %bb.r ]
  %i.bj = load ptr, ptr %32, align 8, !tbaa !478
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !479 ; 2 uses
  %.not.i134.i = icmp eq ptr %i.bk, null
  br i1 %.not.i134.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.3101162.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = zext i32 %i.bm to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i
  %i.bo = phi i64 [ %i.bn, %bb.t ], [ %.3101162.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.bi
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !475
  %i.br = sext i16 %i.bq to i64
  %i.bs = add i64 %.1105159.i, %3
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sub i64 %4, %.1105159.i
  %i.bv = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bu) ; 9 uses
  %i.bw = lshr i64 %i.bo, 6
  %i.bx = and i64 %i.bo, 63
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !353
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !23
  %i.cb = shl nuw i64 1, %i.bx
  %i.cc = and i64 %i.ca, %i.cb
  %.not148.i = icmp eq i64 %i.cc, 0
  br i1 %.not148.i, label %.preheader151.i, label %bb.v

.preheader151.i:                                  ; preds = %bb.u
  %.not172.i = icmp eq i64 %i.bv, 0
  br i1 %.not172.i, label %.loopexit152.i, label %.lr.ph158.i

.lr.ph158.i:                                      ; preds = %.preheader151.i
  %i.cd = load ptr, ptr %i.m, align 8, !tbaa !353 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.lr.ph158.split.i, label %.lr.ph158.split.us.i.preheader

.lr.ph158.split.us.i.preheader:                   ; preds = %.lr.ph158.i
  %xtraiter2418 = and i64 %i.bv, 1
  %i.cf = icmp eq i64 %i.bv, 1
  br i1 %i.cf, label %.lr.ph158.split.us.i.epil.preheader, label %.lr.ph158.split.us.i.preheader.new

.lr.ph158.split.us.i.preheader.new:               ; preds = %.lr.ph158.split.us.i.preheader
  %unroll_iter2422 = and i64 %i.bv, -2
  br label %.lr.ph158.split.us.i

.lr.ph158.split.us.i:                             ; preds = %.lr.ph158.split.us.i, %.lr.ph158.split.us.i.preheader.new
  %.0157.us.i = phi i64 [ 0, %.lr.ph158.split.us.i.preheader.new ], [ %i.cx, %.lr.ph158.split.us.i ] ; 3 uses
  %niter2423 = phi i64 [ 0, %.lr.ph158.split.us.i.preheader.new ], [ %niter2423.next.1, %.lr.ph158.split.us.i ]
  %i.cg = add i64 %.0157.us.i, %.1105159.i        ; 2 uses
  %i.ch = lshr i64 %i.cg, 6
  %i.ci = and i64 %i.cg, 63
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = xor i64 %i.cj, -1
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ch ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !23
  %i.cn = and i64 %i.cm, %i.ck
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !23
  %i.co = or disjoint i64 %.0157.us.i, 1
  %i.cp = add i64 %i.co, %.1105159.i              ; 2 uses
  %i.cq = lshr i64 %i.cp, 6
  %i.cr = and i64 %i.cp, 63
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = xor i64 %i.cs, -1
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cq ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !23
  %i.cw = and i64 %i.cv, %i.ct
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !23
  %i.cx = add nuw i64 %.0157.us.i, 2              ; 2 uses
  %niter2423.next.1 = add i64 %niter2423, 2       ; 2 uses
  %niter2423.ncmp.1 = icmp eq i64 %niter2423.next.1, %unroll_iter2422
  br i1 %niter2423.ncmp.1, label %.loopexit152.i.loopexit2213.unr-lcssa, label %.lr.ph158.split.us.i, !llvm.loop !481

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bo
  %.not171.i = icmp eq i64 %i.bv, 0
  br i1 %.not171.i, label %.loopexit152.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i
  %.085156.i = phi i64 [ %i.dj, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i ], [ 0, %bb.v ] ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !24
  %i.da = add i64 %.085156.i, %.1105159.i         ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.da
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !24
  %i.dc = load ptr, ptr %i.m, align 8, !tbaa !353 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.dc, null
  br i1 %.not.i136.i, label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.dd = lshr i64 %i.da, 6
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dd ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !23
  %i.di = or i64 %i.dh, %i.df
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !23
  br label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i: ; preds = %bb.w, %.lr.ph.i
  %i.dj = add nuw i64 %.085156.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dj, %i.bv
  br i1 %exitcond.not.i, label %.loopexit152.i, label %.lr.ph.i, !llvm.loop !482

.lr.ph158.split.i:                                ; preds = %.lr.ph158.i, %bb.y
  %i.dk = phi ptr [ %i.dn, %bb.y ], [ null, %.lr.ph158.i ] ; 2 uses
  %.0157.i = phi i64 [ %i.dv, %bb.y ], [ 0, %.lr.ph158.i ] ; 2 uses
  %i.dl = add i64 %.0157.i, %.1105159.i           ; 2 uses
  %.not.i137.i = icmp eq ptr %i.dk, null
  br i1 %.not.i137.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph158.split.i
  %i.dm = load i64, ptr %i.z, align 8, !tbaa !359
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.dm)
          to label %.noexc.i unwind label %bb.z

.noexc.i:                                         ; preds = %bb.x
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !353
  br label %bb.y

bb.y:                                             ; preds = %.noexc.i, %.lr.ph158.split.i
  %i.dn = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.dk, %.lr.ph158.split.i ] ; 2 uses
  %i.do = lshr i64 %i.dl, 6
  %i.dp = and i64 %i.dl, 63
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = xor i64 %i.dq, -1
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !23
  %i.du = and i64 %i.dt, %i.dr
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !23
  %i.dv = add nuw i64 %.0157.i, 1                 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %i.dv, %i.bv
  br i1 %exitcond178.not.i, label %.loopexit152.i, label %.lr.ph158.split.i, !llvm.loop !483

bb.z:                                             ; preds = %bb.x
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit152.i.loopexit2213.unr-lcssa:            ; preds = %.lr.ph158.split.us.i
  %lcmp.mod2420.not = icmp eq i64 %xtraiter2418, 0
  br i1 %lcmp.mod2420.not, label %.loopexit152.i, label %.lr.ph158.split.us.i.epil.preheader

.lr.ph158.split.us.i.epil.preheader:              ; preds = %.loopexit152.i.loopexit2213.unr-lcssa, %.lr.ph158.split.us.i.preheader
  %.0157.us.i.epil.init = phi i64 [ 0, %.lr.ph158.split.us.i.preheader ], [ %i.cx, %.loopexit152.i.loopexit2213.unr-lcssa ]
  %lcmp.mod2421 = trunc i64 %i.bv to i1
  call void @llvm.assume(i1 %lcmp.mod2421)
  %i.dx = add i64 %.0157.us.i.epil.init, %.1105159.i ; 2 uses
  %i.dy = lshr i64 %i.dx, 6
end_hunk_0
begin_hunk_1_@_ZN6duckdbL20FlattenRunEndsSwitchIsEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm:bb.a

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i318:    ; preds = %bb.ig, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i316, %bb.ic, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  %i.aqv = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i.i138.i319 = icmp eq ptr %i.aqw, null
  br i1 %.not.i.i.i.i.i138.i319, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323, label %bb.ih

bb.ih:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i318
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8 ; 4 uses
  %i.aqy = load atomic i64, ptr %i.aqx acquire, align 8 ; 2 uses
  %i.aqz = icmp eq i64 %i.aqy, 4294967297
  %i.ara = trunc i64 %i.aqy to i32                ; 2 uses
  br i1 %i.aqz, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  store i32 0, ptr %i.aqx, align 8, !tbaa !45
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqw, i64 12
  store i32 0, ptr %i.arb, align 4, !tbaa !47
  %i.arc = load ptr, ptr %i.aqw, align 8, !tbaa !48
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 16
  %i.are = load ptr, ptr %i.ard, align 8
  call void %i.are(ptr noundef nonnull align 8 dereferenceable(16) %i.aqw) #29, !inline_history !539
  %i.arf = load ptr, ptr %i.aqw, align 8, !tbaa !48
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 24
  %i.arh = load ptr, ptr %i.arg, align 8
  call void %i.arh(ptr noundef nonnull align 8 dereferenceable(16) %i.aqw) #29, !inline_history !539
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323

bb.ij:                                            ; preds = %bb.ih
  %i.ari = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i139.i320 = icmp eq i8 %i.ari, 0
  br i1 %.not.i.i.i.i.i.i139.i320, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.arj = add nsw i32 %i.ara, -1
  store i32 %i.arj, ptr %i.aqx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i321

bb.il:                                            ; preds = %bb.ij
  %i.ark = atomicrmw volatile add ptr %i.aqx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i321

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i321: ; preds = %bb.il, %bb.ik
  %.0.i.i.i.i.i.i.i141.i322 = phi i32 [ %i.ara, %bb.ik ], [ %i.ark, %bb.il ]
  %i.arl = icmp eq i32 %.0.i.i.i.i.i.i.i141.i322, 1
  br i1 %i.arl, label %bb.im, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323, !prof !51

bb.im:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i321
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aqw) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323

_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323:   ; preds = %bb.im, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i321, %bb.ii, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i318
  %i.arm = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i1.i143.i324 = icmp eq ptr %i.arn, null
  br i1 %.not.i.i.i.i1.i143.i324, label %_ZN6duckdbL14FlattenRunEndsIsNS_9hugeint_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, label %bb.in

bb.in:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 8 ; 4 uses
  %i.arp = load atomic i64, ptr %i.aro acquire, align 8 ; 2 uses
  %i.arq = icmp eq i64 %i.arp, 4294967297
  %i.arr = trunc i64 %i.arp to i32                ; 2 uses
  br i1 %i.arq, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  store i32 0, ptr %i.aro, align 8, !tbaa !45
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arn, i64 12
  store i32 0, ptr %i.ars, align 4, !tbaa !47
  %i.art = load ptr, ptr %i.arn, align 8, !tbaa !48
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 16
  %i.arv = load ptr, ptr %i.aru, align 8
  call void %i.arv(ptr noundef nonnull align 8 dereferenceable(16) %i.arn) #29, !inline_history !540
  %i.arw = load ptr, ptr %i.arn, align 8, !tbaa !48
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 24
  %i.ary = load ptr, ptr %i.arx, align 8
  call void %i.ary(ptr noundef nonnull align 8 dereferenceable(16) %i.arn) #29, !inline_history !540
  br label %_ZN6duckdbL14FlattenRunEndsIsNS_9hugeint_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit

bb.ip:                                            ; preds = %bb.in
  %i.arz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i2.i144.i325 = icmp eq i8 %i.arz, 0
  br i1 %.not.i.i.i.i.i2.i144.i325, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.asa = add nsw i32 %i.arr, -1
  store i32 %i.asa, ptr %i.aro, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i326

bb.ir:                                            ; preds = %bb.ip
  %i.asb = atomicrmw volatile add ptr %i.aro, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i326

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i326: ; preds = %bb.ir, %bb.iq
  %.0.i.i.i.i.i.i4.i146.i327 = phi i32 [ %i.arr, %bb.iq ], [ %i.asb, %bb.ir ]
  %i.asc = icmp eq i32 %.0.i.i.i.i.i.i4.i146.i327, 1
  br i1 %i.asc, label %bb.is, label %_ZN6duckdbL14FlattenRunEndsIsNS_9hugeint_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, !prof !51

bb.is:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i326
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.arn) #29
  br label %_ZN6duckdbL14FlattenRunEndsIsNS_9hugeint_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit

bb.it:                                            ; preds = %bb.hu, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg
  %.pn116.pn.pn.pn.pn.pn.pn.i297 = phi { ptr, i32 } [ %i.alx, %bb.hg ], [ %i.aly, %bb.hh ], [ %i.alz, %bb.hi ], [ %i.ama, %bb.hj ], [ %i.amb, %bb.hk ], [ %i.apc, %bb.hu ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %24) #29
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.hf
  %.pn116.pn.pn.pn.pn.pn.pn.pn.i296 = phi { ptr, i32 } [ %.pn116.pn.pn.pn.pn.pn.pn.i297, %bb.it ], [ %i.alw, %bb.hf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %common.resume

_ZN6duckdbL14FlattenRunEndsIsNS_9hugeint_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323, %bb.io, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i326, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %bb.aaz

bb.iv:                                            ; preds = %bb.a
  %i.asd = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.ase = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.iw unwind label %bb.jf

bb.iw:                                            ; preds = %bb.iv
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.asd, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %21)
          to label %bb.ix unwind label %bb.jg

bb.ix:                                            ; preds = %bb.iw
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ase, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.iy unwind label %bb.jg

bb.iy:                                            ; preds = %bb.ix
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %21)
          to label %bb.iz unwind label %bb.jh

bb.iz:                                            ; preds = %bb.iy
  %i.asf = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !466 ; 3 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.ja unwind label %bb.ji

bb.ja:                                            ; preds = %bb.iz
  %i.ash = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !466 ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.jb unwind label %bb.jj

bb.jb:                                            ; preds = %bb.ja
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !419 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.jc unwind label %bb.jk

bb.jc:                                            ; preds = %bb.jb
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.not14.i.i378 = icmp eq i64 %2, 0
  br i1 %.not14.i.i378, label %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.thread.i455, label %.lr.ph.i.i379

.lr.ph.i.i379:                                    ; preds = %bb.jc, %.lr.ph.i.i379
  %.013.i.i380 = phi i64 [ %.1.i.i384, %.lr.ph.i.i379 ], [ 0, %bb.jc ] ; 2 uses
  %.01012.i.i381 = phi i64 [ %.111.i.i383, %.lr.ph.i.i379 ], [ %2, %bb.jc ] ; 2 uses
  %i.asm = add i64 %.01012.i.i381, %.013.i.i380
  %i.asn = lshr i64 %i.asm, 1                     ; 3 uses
  %i.aso = getelementptr inbounds nuw [2 x i8], ptr %i.asg, i64 %i.asn
  %i.asp = load i16, ptr %i.aso, align 2, !tbaa !475
  %i.asq = sext i16 %i.asp to i64
  %.not.i.i382 = icmp ult i64 %3, %i.asq          ; 2 uses
  %i.asr = add nuw i64 %i.asn, 1
  %.111.i.i383 = select i1 %.not.i.i382, i64 %i.asn, i64 %.01012.i.i381 ; 2 uses
  %.1.i.i384 = select i1 %.not.i.i382, i64 %.013.i.i380, i64 %i.asr ; 5 uses
  %i.ass = icmp ult i64 %.1.i.i384, %.111.i.i383
  br i1 %i.ass, label %.lr.ph.i.i379, label %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i385, !llvm.loop !477

_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i385:   ; preds = %.lr.ph.i.i379
  %i.ast = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !353
  %.not.i128.i386 = icmp eq ptr %i.asu, null
  br i1 %.not.i128.i386, label %.preheader.i437, label %.preheader154.i387

_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.thread.i455: ; preds = %bb.jc
  %i.asv = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !353
  %.not.i128203.i456 = icmp eq ptr %i.asw, null
  br i1 %.not.i128203.i456, label %.preheader.i437, label %.loopexit.i388

.preheader154.i387:                               ; preds = %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i385
  %i.asx = icmp ult i64 %.1.i.i384, %2
  br i1 %i.asx, label %.lr.ph163.i408, label %.loopexit.i388

.lr.ph163.i408:                                   ; preds = %.preheader154.i387
  %i.asy = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.jl

.preheader.i437:                                  ; preds = %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.thread.i455, %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i385
  %.0.lcssa.i205.i438 = phi i64 [ 0, %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.thread.i455 ], [ %.1.i.i384, %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i385 ] ; 2 uses
  %i.asz = icmp ult i64 %.0.lcssa.i205.i438, %2
  br i1 %i.asz, label %.lr.ph169.i439.preheader, label %.loopexit.i388

.lr.ph169.i439.preheader:                         ; preds = %.preheader.i437
  %.pre1390 = load ptr, ptr %21, align 8, !tbaa !478
  br label %.lr.ph169.i439

.lr.ph169.i439:                                   ; preds = %.lr.ph169.i439.preheader, %._crit_edge.i451
  %38 = phi ptr [ %39, %._crit_edge.i451 ], [ %.pre1390, %.lr.ph169.i439.preheader ] ; 2 uses
  %.0104167.i441.a = phi i64 [ %i.atv, %._crit_edge.i451 ], [ %.0.lcssa.i205.i438, %.lr.ph169.i439.preheader ] ; 5 uses
  %.0104167.i441 = phi i64 [ %i.atu, %._crit_edge.i451 ], [ 0, %.lr.ph169.i439.preheader ] ; 4 uses
  %i.ata = load ptr, ptr %38, align 8, !tbaa !479 ; 2 uses
  %.not.i129.i442 = icmp eq ptr %i.ata, null
  br i1 %.not.i129.i442, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i443, label %bb.jd

bb.jd:                                            ; preds = %.lr.ph169.i439
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %.0104167.i441.a
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !3
  %i.atd = zext i32 %i.atc to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i443

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i443: ; preds = %bb.jd, %.lr.ph169.i439
  %i.ate = phi i64 [ %i.atd, %bb.jd ], [ %.0104167.i441.a, %.lr.ph169.i439 ]
  %i.atf = load ptr, ptr %22, align 8, !tbaa !478
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !479 ; 2 uses
  %.not.i130.i444 = icmp eq ptr %i.atg, null
  br i1 %.not.i130.i444, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i445, label %bb.je

bb.je:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i443
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %i.atg, i64 %.0104167.i441.a
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !3
  %i.atj = zext i32 %i.ati to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i445

_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i445: ; preds = %bb.je, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i443
  %i.atk = phi i64 [ %i.atj, %bb.je ], [ %.0104167.i441.a, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i443 ]
  %i.atl = getelementptr inbounds nuw [2 x i8], ptr %i.asg, i64 %i.ate
  %i.atm = load i16, ptr %i.atl, align 2, !tbaa !475
  %i.atn = sext i16 %i.atm to i64
  %i.ato = add i64 %.0104167.i441, %3
  %i.atp = sub i64 %i.atn, %i.ato
  %i.atq = sub i64 %4, %.0104167.i441
  %i.atr = call noundef i64 @llvm.umin.i64(i64 %i.atp, i64 %i.atq) ; 3 uses
  %.not173.i446 = icmp eq i64 %i.atr, 0
  br i1 %.not173.i446, label %._crit_edge.i451, label %.lr.ph166.i447

.lr.ph166.i447:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i445
  %i.ats = getelementptr inbounds nuw i8, ptr %i.asi, i64 %i.atk
  %i.att = getelementptr i8, ptr %i.ask, i64 %.0104167.i441
  %.pre.i448 = load i8, ptr %i.ats, align 1, !tbaa !24
  call void @llvm.memset.p0.i64(ptr align 1 %i.att, i8 %.pre.i448, i64 %i.atr, i1 false), !tbaa !24
  %.pre = load ptr, ptr %21, align 8, !tbaa !478
  br label %._crit_edge.i451

._crit_edge.i451:                                 ; preds = %.lr.ph166.i447, %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i445
  %39 = phi ptr [ %.pre, %.lr.ph166.i447 ], [ %38, %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i445 ]
  %i.atu = add i64 %i.atr, %.0104167.i441         ; 2 uses
  %.not125.i452 = icmp uge i64 %i.atu, %4
  %i.atv = add nuw i64 %.0104167.i441.a, 1        ; 2 uses
  %exitcond181.not.i453 = icmp eq i64 %i.atv, %2
  %or.cond.i454 = select i1 %.not125.i452, i1 true, i1 %exitcond181.not.i453
  br i1 %or.cond.i454, label %.loopexit.i388, label %.lr.ph169.i439, !llvm.loop !541

bb.jf:                                            ; preds = %bb.iv
  %i.atw = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.jg:                                            ; preds = %bb.ix, %bb.iw
  %i.atx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.jh:                                            ; preds = %bb.iy
  %i.aty = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.ji:                                            ; preds = %bb.iz
  %i.atz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.jj:                                            ; preds = %bb.ja
  %i.aua = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.jk:                                            ; preds = %bb.jb
  %i.aub = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.jl:                                            ; preds = %.loopexit152.i421, %.lr.ph163.i408
  %.3101162.i409 = phi i64 [ %.1.i.i384, %.lr.ph163.i408 ], [ %i.axf, %.loopexit152.i421 ] ; 5 uses
  %.1105159.i410 = phi i64 [ 0, %.lr.ph163.i408 ], [ %i.axe, %.loopexit152.i421 ] ; 8 uses
  %i.auc = load ptr, ptr %21, align 8, !tbaa !478
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !479 ; 2 uses
  %.not.i132.i411 = icmp eq ptr %i.aud, null
  br i1 %.not.i132.i411, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i412, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %i.aud, i64 %.3101162.i409
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !3
  %i.aug = zext i32 %i.auf to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i412

_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i412: ; preds = %bb.jm, %bb.jl
  %i.auh = phi i64 [ %i.aug, %bb.jm ], [ %.3101162.i409, %bb.jl ]
  %i.aui = load ptr, ptr %22, align 8, !tbaa !478
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !479 ; 2 uses
  %.not.i134.i413 = icmp eq ptr %i.auj, null
  br i1 %.not.i134.i413, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i412
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.auj, i64 %.3101162.i409
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !3
  %i.aum = zext i32 %i.aul to i64
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i412
  %i.aun = phi i64 [ %i.aum, %bb.jn ], [ %.3101162.i409, %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i412 ] ; 3 uses
  %i.auo = getelementptr inbounds nuw [2 x i8], ptr %i.asg, i64 %i.auh
  %i.aup = load i16, ptr %i.auo, align 2, !tbaa !475
  %i.auq = sext i16 %i.aup to i64
  %i.aur = add i64 %.1105159.i410, %3
  %i.aus = sub i64 %i.auq, %i.aur
  %i.aut = sub i64 %4, %.1105159.i410
  %i.auu = call noundef i64 @llvm.umin.i64(i64 %i.aus, i64 %i.aut) ; 9 uses
  %i.auv = lshr i64 %i.aun, 6
  %i.auw = and i64 %i.aun, 63
  %i.aux = load ptr, ptr %i.ast, align 8, !tbaa !353
  %i.auy = getelementptr inbounds nuw [8 x i8], ptr %i.aux, i64 %i.auv
  %i.auz = load i64, ptr %i.auy, align 8, !tbaa !23
  %i.ava = shl nuw i64 1, %i.auw
  %i.avb = and i64 %i.auz, %i.ava
  %.not148.i414 = icmp eq i64 %i.avb, 0
  br i1 %.not148.i414, label %.preheader151.i425, label %bb.jp

.preheader151.i425:                               ; preds = %bb.jo
  %.not172.i426 = icmp eq i64 %i.auu, 0
  br i1 %.not172.i426, label %.loopexit152.i421, label %.lr.ph158.i427

.lr.ph158.i427:                                   ; preds = %.preheader151.i425
  %i.avc = load ptr, ptr %i.asl, align 8, !tbaa !353 ; 4 uses
  %i.avd = icmp eq ptr %i.avc, null
  br i1 %i.avd, label %.lr.ph158.split.i431, label %.lr.ph158.split.us.i428.preheader

.lr.ph158.split.us.i428.preheader:                ; preds = %.lr.ph158.i427
  %xtraiter2363 = and i64 %i.auu, 1
  %i.ave = icmp eq i64 %i.auu, 1
  br i1 %i.ave, label %.lr.ph158.split.us.i428.epil.preheader, label %.lr.ph158.split.us.i428.preheader.new

.lr.ph158.split.us.i428.preheader.new:            ; preds = %.lr.ph158.split.us.i428.preheader
  %unroll_iter2367 = and i64 %i.auu, -2
  br label %.lr.ph158.split.us.i428

.lr.ph158.split.us.i428:                          ; preds = %.lr.ph158.split.us.i428, %.lr.ph158.split.us.i428.preheader.new
  %.0157.us.i429 = phi i64 [ 0, %.lr.ph158.split.us.i428.preheader.new ], [ %i.avw, %.lr.ph158.split.us.i428 ] ; 3 uses
  %niter2368 = phi i64 [ 0, %.lr.ph158.split.us.i428.preheader.new ], [ %niter2368.next.1, %.lr.ph158.split.us.i428 ]
  %i.avf = add i64 %.0157.us.i429, %.1105159.i410 ; 2 uses
  %i.avg = lshr i64 %i.avf, 6
  %i.avh = and i64 %i.avf, 63
  %i.avi = shl nuw i64 1, %i.avh
  %i.avj = xor i64 %i.avi, -1
  %i.avk = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %i.avg ; 2 uses
  %i.avl = load i64, ptr %i.avk, align 8, !tbaa !23
  %i.avm = and i64 %i.avl, %i.avj
  store i64 %i.avm, ptr %i.avk, align 8, !tbaa !23
  %i.avn = or disjoint i64 %.0157.us.i429, 1
  %i.avo = add i64 %i.avn, %.1105159.i410         ; 2 uses
  %i.avp = lshr i64 %i.avo, 6
  %i.avq = and i64 %i.avo, 63
  %i.avr = shl nuw i64 1, %i.avq
  %i.avs = xor i64 %i.avr, -1
  %i.avt = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %i.avp ; 2 uses
  %i.avu = load i64, ptr %i.avt, align 8, !tbaa !23
  %i.avv = and i64 %i.avu, %i.avs
  store i64 %i.avv, ptr %i.avt, align 8, !tbaa !23
  %i.avw = add nuw i64 %.0157.us.i429, 2          ; 2 uses
  %niter2368.next.1 = add i64 %niter2368, 2       ; 2 uses
  %niter2368.ncmp.1 = icmp eq i64 %niter2368.next.1, %unroll_iter2367
  br i1 %niter2368.ncmp.1, label %.loopexit152.i421.loopexit2234.unr-lcssa, label %.lr.ph158.split.us.i428, !llvm.loop !542

bb.jp:                                            ; preds = %bb.jo
  %i.avx = getelementptr inbounds nuw i8, ptr %i.asi, i64 %i.aun
  %.not171.i415 = icmp eq i64 %i.auu, 0
  br i1 %.not171.i415, label %.loopexit152.i421, label %.lr.ph.i416

.lr.ph.i416:                                      ; preds = %bb.jp, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i419
  %.085156.i417 = phi i64 [ %i.awi, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i419 ], [ 0, %bb.jp ] ; 2 uses
  %i.avy = load i8, ptr %i.avx, align 1, !tbaa !24
  %i.avz = add i64 %.085156.i417, %.1105159.i410  ; 3 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.ask, i64 %i.avz
  store i8 %i.avy, ptr %i.awa, align 1, !tbaa !24
  %i.awb = load ptr, ptr %i.asl, align 8, !tbaa !353 ; 2 uses
  %.not.i136.i418 = icmp eq ptr %i.awb, null
  br i1 %.not.i136.i418, label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i419, label %bb.jq

bb.jq:                                            ; preds = %.lr.ph.i416
  %i.awc = lshr i64 %i.avz, 6
  %i.awd = and i64 %i.avz, 63
  %i.awe = shl nuw i64 1, %i.awd
  %i.awf = getelementptr inbounds nuw [8 x i8], ptr %i.awb, i64 %i.awc ; 2 uses
  %i.awg = load i64, ptr %i.awf, align 8, !tbaa !23
  %i.awh = or i64 %i.awg, %i.awe
  store i64 %i.awh, ptr %i.awf, align 8, !tbaa !23
  br label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i419

_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i419: ; preds = %bb.jq, %.lr.ph.i416
  %i.awi = add nuw i64 %.085156.i417, 1           ; 2 uses
  %exitcond.not.i420 = icmp eq i64 %i.awi, %i.auu
  br i1 %exitcond.not.i420, label %.loopexit152.i421, label %.lr.ph.i416, !llvm.loop !543

.lr.ph158.split.i431:                             ; preds = %.lr.ph158.i427, %bb.js
  %i.awj = phi ptr [ %i.awm, %bb.js ], [ null, %.lr.ph158.i427 ] ; 2 uses
  %.0157.i432 = phi i64 [ %i.awu, %bb.js ], [ 0, %.lr.ph158.i427 ] ; 2 uses
  %i.awk = add i64 %.0157.i432, %.1105159.i410    ; 2 uses
  %.not.i137.i433 = icmp eq ptr %i.awj, null
  br i1 %.not.i137.i433, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %.lr.ph158.split.i431
  %i.awl = load i64, ptr %i.asy, align 8, !tbaa !359
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.asl, i64 noundef %i.awl)
          to label %.noexc.i435 unwind label %bb.jt

.noexc.i435:                                      ; preds = %bb.jr
  %.pre.i.i436 = load ptr, ptr %i.asl, align 8, !tbaa !353
  br label %bb.js

bb.js:                                            ; preds = %.noexc.i435, %.lr.ph158.split.i431
  %i.awm = phi ptr [ %.pre.i.i436, %.noexc.i435 ], [ %i.awj, %.lr.ph158.split.i431 ] ; 2 uses
  %i.awn = lshr i64 %i.awk, 6
  %i.awo = and i64 %i.awk, 63
  %i.awp = shl nuw i64 1, %i.awo
  %i.awq = xor i64 %i.awp, -1
  %i.awr = getelementptr inbounds nuw [8 x i8], ptr %i.awm, i64 %i.awn ; 2 uses
  %i.aws = load i64, ptr %i.awr, align 8, !tbaa !23
  %i.awt = and i64 %i.aws, %i.awq
  store i64 %i.awt, ptr %i.awr, align 8, !tbaa !23
  %i.awu = add nuw i64 %.0157.i432, 1             ; 2 uses
  %exitcond178.not.i434 = icmp eq i64 %i.awu, %i.auu
  br i1 %exitcond178.not.i434, label %.loopexit152.i421, label %.lr.ph158.split.i431, !llvm.loop !544

bb.jt:                                            ; preds = %bb.jr
  %i.awv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

.loopexit152.i421.loopexit2234.unr-lcssa:         ; preds = %.lr.ph158.split.us.i428
  %lcmp.mod2365.not = icmp eq i64 %xtraiter2363, 0
  br i1 %lcmp.mod2365.not, label %.loopexit152.i421, label %.lr.ph158.split.us.i428.epil.preheader

.lr.ph158.split.us.i428.epil.preheader:           ; preds = %.loopexit152.i421.loopexit2234.unr-lcssa, %.lr.ph158.split.us.i428.preheader
  %.0157.us.i429.epil.init = phi i64 [ 0, %.lr.ph158.split.us.i428.preheader ], [ %i.avw, %.loopexit152.i421.loopexit2234.unr-lcssa ]
  %lcmp.mod2366 = trunc i64 %i.auu to i1
  call void @llvm.assume(i1 %lcmp.mod2366)
  %i.aww = add i64 %.0157.us.i429.epil.init, %.1105159.i410 ; 2 uses
  %i.awx = lshr i64 %i.aww, 6
end_hunk_1
begin_hunk_2_@_ZN6duckdbL20FlattenRunEndsSwitchIsEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm:bb.a
  %i.dvp = getelementptr inbounds nuw i8, ptr %i.dvo, i64 24
  %i.dvq = load ptr, ptr %i.dvp, align 8
  call void %i.dvq(ptr noundef nonnull align 8 dereferenceable(16) %i.dvf) #29, !inline_history !649
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i1161

bb.aah:                                           ; preds = %bb.aaf
  %i.dvr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i139.i1158 = icmp eq i8 %i.dvr, 0
  br i1 %.not.i.i.i.i.i.i139.i1158, label %bb.aaj, label %bb.aai

bb.aai:                                           ; preds = %bb.aah
  %i.dvs = add nsw i32 %i.dvj, -1
  store i32 %i.dvs, ptr %i.dvg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i1159

bb.aaj:                                           ; preds = %bb.aah
  %i.dvt = atomicrmw volatile add ptr %i.dvg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i1159

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i1159: ; preds = %bb.aaj, %bb.aai
  %.0.i.i.i.i.i.i.i141.i1160 = phi i32 [ %i.dvj, %bb.aai ], [ %i.dvt, %bb.aaj ]
  %i.dvu = icmp eq i32 %.0.i.i.i.i.i.i.i141.i1160, 1
  br i1 %i.dvu, label %bb.aak, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i1161, !prof !51

bb.aak:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i1159
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dvf) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i1161

_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i1161:  ; preds = %bb.aak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i1159, %bb.aag, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1156
  %i.dvv = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dvw = load ptr, ptr %i.dvv, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i1.i143.i1162 = icmp eq ptr %i.dvw, null
  br i1 %.not.i.i.i.i1.i143.i1162, label %_ZN6duckdbL14FlattenRunEndsIsNS_8string_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, label %bb.aal

bb.aal:                                           ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i1161
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvw, i64 8 ; 4 uses
  %i.dvy = load atomic i64, ptr %i.dvx acquire, align 8 ; 2 uses
  %i.dvz = icmp eq i64 %i.dvy, 4294967297
  %i.dwa = trunc i64 %i.dvy to i32                ; 2 uses
  br i1 %i.dvz, label %bb.aam, label %bb.aan

bb.aam:                                           ; preds = %bb.aal
  store i32 0, ptr %i.dvx, align 8, !tbaa !45
  %i.dwb = getelementptr inbounds nuw i8, ptr %i.dvw, i64 12
  store i32 0, ptr %i.dwb, align 4, !tbaa !47
  %i.dwc = load ptr, ptr %i.dvw, align 8, !tbaa !48
  %i.dwd = getelementptr inbounds nuw i8, ptr %i.dwc, i64 16
  %i.dwe = load ptr, ptr %i.dwd, align 8
  call void %i.dwe(ptr noundef nonnull align 8 dereferenceable(16) %i.dvw) #29, !inline_history !650
  %i.dwf = load ptr, ptr %i.dvw, align 8, !tbaa !48
  %i.dwg = getelementptr inbounds nuw i8, ptr %i.dwf, i64 24
  %i.dwh = load ptr, ptr %i.dwg, align 8
  call void %i.dwh(ptr noundef nonnull align 8 dereferenceable(16) %i.dvw) #29, !inline_history !650
  br label %_ZN6duckdbL14FlattenRunEndsIsNS_8string_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit

bb.aan:                                           ; preds = %bb.aal
  %i.dwi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i2.i144.i1163 = icmp eq i8 %i.dwi, 0
  br i1 %.not.i.i.i.i.i2.i144.i1163, label %bb.aap, label %bb.aao

bb.aao:                                           ; preds = %bb.aan
  %i.dwj = add nsw i32 %i.dwa, -1
  store i32 %i.dwj, ptr %i.dvx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i1164

bb.aap:                                           ; preds = %bb.aan
  %i.dwk = atomicrmw volatile add ptr %i.dvx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i1164

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i1164: ; preds = %bb.aap, %bb.aao
  %.0.i.i.i.i.i.i4.i146.i1165 = phi i32 [ %i.dwa, %bb.aao ], [ %i.dwk, %bb.aap ]
  %i.dwl = icmp eq i32 %.0.i.i.i.i.i.i4.i146.i1165, 1
  br i1 %i.dwl, label %bb.aaq, label %_ZN6duckdbL14FlattenRunEndsIsNS_8string_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, !prof !51

bb.aaq:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i1164
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dvw) #29
  br label %_ZN6duckdbL14FlattenRunEndsIsNS_8string_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit

bb.aar:                                           ; preds = %bb.zs, %bb.zi, %bb.zh, %bb.zg, %bb.zf, %bb.ze
  %.pn116.pn.pn.pn.pn.pn.pn.i1135 = phi { ptr, i32 } [ %i.dqg, %bb.ze ], [ %i.dqh, %bb.zf ], [ %i.dqi, %bb.zg ], [ %i.dqj, %bb.zh ], [ %i.dqk, %bb.zi ], [ %i.dtl, %bb.zs ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #29
  br label %bb.aas

bb.aas:                                           ; preds = %bb.aar, %bb.zd
  %.pn116.pn.pn.pn.pn.pn.pn.pn.i1134 = phi { ptr, i32 } [ %.pn116.pn.pn.pn.pn.pn.pn.i1135, %bb.aar ], [ %i.dqf, %bb.zd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %common.resume

_ZN6duckdbL14FlattenRunEndsIsNS_8string_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i1161, %bb.aam, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i1164, %bb.aaq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.aaz

bb.aat:                                           ; preds = %bb.a
  %i.dwm = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.258, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %bb.aau unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1216.thread

bb.aau:                                           ; preds = %bb.aat
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  invoke void @_ZN6duckdb14TypeIdToStringB5cxx11ENS_12PhysicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, i8 noundef zeroext %i.d)
          to label %bb.aav unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.aav:                                           ; preds = %bb.aau
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dwm, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.aaw unwind label %bb.aax

bb.aaw:                                           ; preds = %bb.aav
  invoke void @__cxa_throw(ptr nonnull %i.dwm, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.aba unwind label %bb.aax

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1216.thread: ; preds = %bb.aat
  %i.dwn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.aax:                                           ; preds = %bb.aaw, %bb.aav
  %.0 = phi i1 [ false, %bb.aaw ], [ true, %bb.aav ] ; 2 uses
  %i.dwo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dwp = load ptr, ptr %35, align 8, !tbaa !18  ; 2 uses
  %i.dwq = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.dwr = icmp eq ptr %i.dwp, %i.dwq
  br i1 %i.dwr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aax
  call void @_ZdlPv(ptr noundef %i.dwp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  %i.dws = load ptr, ptr %33, align 8, !tbaa !18  ; 2 uses
  %i.dwt = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.dwu = icmp eq ptr %i.dws, %i.dwt
  br i1 %i.dwu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aau
  %i.dwv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  %i.dww = load ptr, ptr %33, align 8, !tbaa !18  ; 2 uses
  %i.dwx = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.dwy = icmp eq ptr %i.dww, %i.dwx
  br i1 %i.dwy, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1214.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1214.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.dww) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.dws) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br i1 %.0, label %bb.aay, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br i1 %.0, label %bb.aay, label %common.resume

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1216.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1214.thread
  %.pn.pn1221.ph = phi { ptr, i32 } [ %i.dwv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1214.thread ], [ %i.dwn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1216.thread ], [ %i.dwv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br label %bb.aay

bb.aay:                                           ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1216
  %.pn.pn1221 = phi { ptr, i32 } [ %i.dwo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1214 ], [ %i.dwo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1216 ], [ %.pn.pn1221.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.dwm) #29
  br label %common.resume

bb.aaz:                                           ; preds = %_ZN6duckdbL14FlattenRunEndsIsNS_8string_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIsNS_10interval_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIsdEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIsfEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIsbEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIsmEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIsjEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIstEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIshEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIsNS_9hugeint_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIslEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIsiEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIssEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, %_ZN6duckdbL14FlattenRunEndsIsaEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit
  ret void

bb.aba:                                           ; preds = %bb.aaw
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL20FlattenRunEndsSwitchIiEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %11 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %12 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %13 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %14 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %15 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %16 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %17 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %18 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %19 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %20 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %21 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %22 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %23 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %24 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %25 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %26 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %27 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %28 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %29 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %30 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %31 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %32 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !329   ; 2 uses
  switch i8 %i.d, label %bb.aat [
    i8 3, label %bb.b
    i8 5, label %bb.ba
    i8 7, label %bb.cy
    i8 9, label %bb.ew
    i8 -52, label %bb.gu
    i8 2, label %bb.iv
    i8 4, label %bb.ku
    i8 6, label %bb.ms
    i8 8, label %bb.oq
    i8 1, label %bb.qo
    i8 11, label %bb.sm
    i8 12, label %bb.uk
    i8 21, label %bb.wi
    i8 -56, label %bb.yj
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %32)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %31)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %32)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %31)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !466  ; 3 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %32)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !466  ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !419  ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.not14.i.i = icmp eq i64 %2, 0
  br i1 %.not14.i.i, label %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.013.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %bb.i ] ; 2 uses
  %.01012.i.i = phi i64 [ %.111.i.i, %.lr.ph.i.i ], [ %2, %bb.i ] ; 2 uses
  %i.n = add i64 %.01012.i.i, %.013.i.i
  %i.o = lshr i64 %i.n, 1                         ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = sext i32 %i.q to i64
  %.not.i.i = icmp ult i64 %3, %i.r               ; 2 uses
  %i.s = add nuw i64 %i.o, 1
  %.111.i.i = select i1 %.not.i.i, i64 %i.o, i64 %.01012.i.i ; 2 uses
  %.1.i.i = select i1 %.not.i.i, i64 %.013.i.i, i64 %i.s ; 5 uses
  %i.t = icmp ult i64 %.1.i.i, %.111.i.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.i, !llvm.loop !651

_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.i:      ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !353
  %.not.i128.i = icmp eq ptr %i.v, null
  br i1 %.not.i128.i, label %.preheader.i, label %.preheader154.i

_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.thread.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !353
  %.not.i128203.i = icmp eq ptr %i.x, null
  br i1 %.not.i128203.i, label %.preheader.i, label %.loopexit.i

.preheader154.i:                                  ; preds = %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.i
  %i.y = icmp ult i64 %.1.i.i, %2
  br i1 %i.y, label %.lr.ph163.i, label %.loopexit.i

.lr.ph163.i:                                      ; preds = %.preheader154.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.r

.preheader.i:                                     ; preds = %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.thread.i, %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.i
  %.0.lcssa.i205.i = phi i64 [ 0, %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.thread.i ], [ %.1.i.i, %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.i ] ; 2 uses
  %i.aa = icmp ult i64 %.0.lcssa.i205.i, %2
  br i1 %i.aa, label %.lr.ph169.i.preheader, label %.loopexit.i

.lr.ph169.i.preheader:                            ; preds = %.preheader.i
  %.pre1392 = load ptr, ptr %31, align 8, !tbaa !478
  br label %.lr.ph169.i

.lr.ph169.i:                                      ; preds = %.lr.ph169.i.preheader, %._crit_edge.i
  %36 = phi ptr [ %37, %._crit_edge.i ], [ %.pre1392, %.lr.ph169.i.preheader ] ; 2 uses
  %.0104167.i.a = phi i64 [ %i.aw, %._crit_edge.i ], [ %.0.lcssa.i205.i, %.lr.ph169.i.preheader ] ; 5 uses
  %.0104167.i = phi i64 [ %i.av, %._crit_edge.i ], [ 0, %.lr.ph169.i.preheader ] ; 4 uses
  %i.ab = load ptr, ptr %36, align 8, !tbaa !479  ; 2 uses
  %.not.i129.i = icmp eq ptr %i.ab, null
  br i1 %.not.i129.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph169.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.0104167.i.a
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.j, %.lr.ph169.i
  %i.af = phi i64 [ %i.ae, %bb.j ], [ %.0104167.i.a, %.lr.ph169.i ]
  %i.ag = load ptr, ptr %32, align 8, !tbaa !478
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !479 ; 2 uses
  %.not.i130.i = icmp eq ptr %i.ah, null
  br i1 %.not.i130.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.0104167.i.a
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = zext i32 %i.aj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i: ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.al = phi i64 [ %i.ak, %bb.k ], [ %.0104167.i.a, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.af
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = sext i32 %i.an to i64
  %i.ap = add i64 %.0104167.i, %3
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sub i64 %4, %.0104167.i
  %i.as = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ar) ; 3 uses
  %.not173.i = icmp eq i64 %i.as, 0
  br i1 %.not173.i, label %._crit_edge.i, label %.lr.ph166.i

.lr.ph166.i:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.al
  %i.au = getelementptr i8, ptr %i.l, i64 %.0104167.i
  %.pre.i = load i8, ptr %i.at, align 1, !tbaa !24
  call void @llvm.memset.p0.i64(ptr align 1 %i.au, i8 %.pre.i, i64 %i.as, i1 false), !tbaa !24
  %.pre1391 = load ptr, ptr %31, align 8, !tbaa !478
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph166.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i
  %37 = phi ptr [ %.pre1391, %.lr.ph166.i ], [ %36, %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i ]
  %i.av = add i64 %i.as, %.0104167.i              ; 2 uses
  %.not125.i = icmp uge i64 %i.av, %4
  %i.aw = add nuw i64 %.0104167.i.a, 1            ; 2 uses
  %exitcond181.not.i = icmp eq i64 %i.aw, %2
  %or.cond.i = select i1 %.not125.i, i1 true, i1 %exitcond181.not.i
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph169.i, !llvm.loop !652

bb.l:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.m:                                             ; preds = %bb.d, %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.n:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.o:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.p:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.q:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.r:                                             ; preds = %.loopexit152.i, %.lr.ph163.i
  %.3101162.i = phi i64 [ %.1.i.i, %.lr.ph163.i ], [ %i.eg, %.loopexit152.i ] ; 5 uses
  %.1105159.i = phi i64 [ 0, %.lr.ph163.i ], [ %i.ef, %.loopexit152.i ] ; 8 uses
  %i.bd = load ptr, ptr %31, align 8, !tbaa !478
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !479 ; 2 uses
  %.not.i132.i = icmp eq ptr %i.be, null
  br i1 %.not.i132.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.3101162.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i: ; preds = %bb.s, %bb.r
  %i.bi = phi i64 [ %i.bh, %bb.s ], [ %.3101162.i, %bb.r ]
  %i.bj = load ptr, ptr %32, align 8, !tbaa !478
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !479 ; 2 uses
  %.not.i134.i = icmp eq ptr %i.bk, null
  br i1 %.not.i134.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.3101162.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = zext i32 %i.bm to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i
  %i.bo = phi i64 [ %i.bn, %bb.t ], [ %.3101162.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bi
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = sext i32 %i.bq to i64
  %i.bs = add i64 %.1105159.i, %3
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sub i64 %4, %.1105159.i
  %i.bv = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bu) ; 9 uses
  %i.bw = lshr i64 %i.bo, 6
  %i.bx = and i64 %i.bo, 63
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !353
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !23
  %i.cb = shl nuw i64 1, %i.bx
  %i.cc = and i64 %i.ca, %i.cb
  %.not148.i = icmp eq i64 %i.cc, 0
  br i1 %.not148.i, label %.preheader151.i, label %bb.v

.preheader151.i:                                  ; preds = %bb.u
  %.not172.i = icmp eq i64 %i.bv, 0
  br i1 %.not172.i, label %.loopexit152.i, label %.lr.ph158.i

.lr.ph158.i:                                      ; preds = %.preheader151.i
  %i.cd = load ptr, ptr %i.m, align 8, !tbaa !353 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.lr.ph158.split.i, label %.lr.ph158.split.us.i.preheader

.lr.ph158.split.us.i.preheader:                   ; preds = %.lr.ph158.i
  %xtraiter2418 = and i64 %i.bv, 1
  %i.cf = icmp eq i64 %i.bv, 1
  br i1 %i.cf, label %.lr.ph158.split.us.i.epil.preheader, label %.lr.ph158.split.us.i.preheader.new

.lr.ph158.split.us.i.preheader.new:               ; preds = %.lr.ph158.split.us.i.preheader
  %unroll_iter2422 = and i64 %i.bv, -2
  br label %.lr.ph158.split.us.i

.lr.ph158.split.us.i:                             ; preds = %.lr.ph158.split.us.i, %.lr.ph158.split.us.i.preheader.new
  %.0157.us.i = phi i64 [ 0, %.lr.ph158.split.us.i.preheader.new ], [ %i.cx, %.lr.ph158.split.us.i ] ; 3 uses
  %niter2423 = phi i64 [ 0, %.lr.ph158.split.us.i.preheader.new ], [ %niter2423.next.1, %.lr.ph158.split.us.i ]
  %i.cg = add i64 %.0157.us.i, %.1105159.i        ; 2 uses
  %i.ch = lshr i64 %i.cg, 6
  %i.ci = and i64 %i.cg, 63
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = xor i64 %i.cj, -1
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ch ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !23
  %i.cn = and i64 %i.cm, %i.ck
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !23
  %i.co = or disjoint i64 %.0157.us.i, 1
  %i.cp = add i64 %i.co, %.1105159.i              ; 2 uses
  %i.cq = lshr i64 %i.cp, 6
  %i.cr = and i64 %i.cp, 63
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = xor i64 %i.cs, -1
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cq ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !23
  %i.cw = and i64 %i.cv, %i.ct
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !23
  %i.cx = add nuw i64 %.0157.us.i, 2              ; 2 uses
  %niter2423.next.1 = add i64 %niter2423, 2       ; 2 uses
  %niter2423.ncmp.1 = icmp eq i64 %niter2423.next.1, %unroll_iter2422
  br i1 %niter2423.ncmp.1, label %.loopexit152.i.loopexit2213.unr-lcssa, label %.lr.ph158.split.us.i, !llvm.loop !653

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bo
  %.not171.i = icmp eq i64 %i.bv, 0
  br i1 %.not171.i, label %.loopexit152.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i
  %.085156.i = phi i64 [ %i.dj, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i ], [ 0, %bb.v ] ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !24
  %i.da = add i64 %.085156.i, %.1105159.i         ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.da
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !24
  %i.dc = load ptr, ptr %i.m, align 8, !tbaa !353 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.dc, null
  br i1 %.not.i136.i, label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.dd = lshr i64 %i.da, 6
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dd ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !23
  %i.di = or i64 %i.dh, %i.df
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !23
  br label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i: ; preds = %bb.w, %.lr.ph.i
  %i.dj = add nuw i64 %.085156.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dj, %i.bv
  br i1 %exitcond.not.i, label %.loopexit152.i, label %.lr.ph.i, !llvm.loop !654

.lr.ph158.split.i:                                ; preds = %.lr.ph158.i, %bb.y
  %i.dk = phi ptr [ %i.dn, %bb.y ], [ null, %.lr.ph158.i ] ; 2 uses
  %.0157.i = phi i64 [ %i.dv, %bb.y ], [ 0, %.lr.ph158.i ] ; 2 uses
  %i.dl = add i64 %.0157.i, %.1105159.i           ; 2 uses
  %.not.i137.i = icmp eq ptr %i.dk, null
  br i1 %.not.i137.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph158.split.i
  %i.dm = load i64, ptr %i.z, align 8, !tbaa !359
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.dm)
          to label %.noexc.i unwind label %bb.z

.noexc.i:                                         ; preds = %bb.x
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !353
  br label %bb.y

bb.y:                                             ; preds = %.noexc.i, %.lr.ph158.split.i
  %i.dn = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.dk, %.lr.ph158.split.i ] ; 2 uses
  %i.do = lshr i64 %i.dl, 6
  %i.dp = and i64 %i.dl, 63
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = xor i64 %i.dq, -1
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !23
  %i.du = and i64 %i.dt, %i.dr
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !23
  %i.dv = add nuw i64 %.0157.i, 1                 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %i.dv, %i.bv
  br i1 %exitcond178.not.i, label %.loopexit152.i, label %.lr.ph158.split.i, !llvm.loop !655

bb.z:                                             ; preds = %bb.x
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit152.i.loopexit2213.unr-lcssa:            ; preds = %.lr.ph158.split.us.i
  %lcmp.mod2420.not = icmp eq i64 %xtraiter2418, 0
  br i1 %lcmp.mod2420.not, label %.loopexit152.i, label %.lr.ph158.split.us.i.epil.preheader

.lr.ph158.split.us.i.epil.preheader:              ; preds = %.loopexit152.i.loopexit2213.unr-lcssa, %.lr.ph158.split.us.i.preheader
  %.0157.us.i.epil.init = phi i64 [ 0, %.lr.ph158.split.us.i.preheader ], [ %i.cx, %.loopexit152.i.loopexit2213.unr-lcssa ]
  %lcmp.mod2421 = trunc i64 %i.bv to i1
  call void @llvm.assume(i1 %lcmp.mod2421)
  %i.dx = add i64 %.0157.us.i.epil.init, %.1105159.i ; 2 uses
  %i.dy = lshr i64 %i.dx, 6
end_hunk_2
begin_hunk_3_@_ZN6duckdbL20FlattenRunEndsSwitchIiEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm:bb.a

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i318:    ; preds = %bb.ig, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i316, %bb.ic, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  %i.aqv = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i.i138.i319 = icmp eq ptr %i.aqw, null
  br i1 %.not.i.i.i.i.i138.i319, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323, label %bb.ih

bb.ih:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i318
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8 ; 4 uses
  %i.aqy = load atomic i64, ptr %i.aqx acquire, align 8 ; 2 uses
  %i.aqz = icmp eq i64 %i.aqy, 4294967297
  %i.ara = trunc i64 %i.aqy to i32                ; 2 uses
  br i1 %i.aqz, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  store i32 0, ptr %i.aqx, align 8, !tbaa !45
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqw, i64 12
  store i32 0, ptr %i.arb, align 4, !tbaa !47
  %i.arc = load ptr, ptr %i.aqw, align 8, !tbaa !48
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 16
  %i.are = load ptr, ptr %i.ard, align 8
  call void %i.are(ptr noundef nonnull align 8 dereferenceable(16) %i.aqw) #29, !inline_history !708
  %i.arf = load ptr, ptr %i.aqw, align 8, !tbaa !48
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 24
  %i.arh = load ptr, ptr %i.arg, align 8
  call void %i.arh(ptr noundef nonnull align 8 dereferenceable(16) %i.aqw) #29, !inline_history !708
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323

bb.ij:                                            ; preds = %bb.ih
  %i.ari = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i139.i320 = icmp eq i8 %i.ari, 0
  br i1 %.not.i.i.i.i.i.i139.i320, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.arj = add nsw i32 %i.ara, -1
  store i32 %i.arj, ptr %i.aqx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i321

bb.il:                                            ; preds = %bb.ij
  %i.ark = atomicrmw volatile add ptr %i.aqx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i321

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i321: ; preds = %bb.il, %bb.ik
  %.0.i.i.i.i.i.i.i141.i322 = phi i32 [ %i.ara, %bb.ik ], [ %i.ark, %bb.il ]
  %i.arl = icmp eq i32 %.0.i.i.i.i.i.i.i141.i322, 1
  br i1 %i.arl, label %bb.im, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323, !prof !51

bb.im:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i321
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aqw) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323

_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323:   ; preds = %bb.im, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i140.i321, %bb.ii, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i318
  %i.arm = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i1.i143.i324 = icmp eq ptr %i.arn, null
  br i1 %.not.i.i.i.i1.i143.i324, label %_ZN6duckdbL14FlattenRunEndsIiNS_9hugeint_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, label %bb.in

bb.in:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 8 ; 4 uses
  %i.arp = load atomic i64, ptr %i.aro acquire, align 8 ; 2 uses
  %i.arq = icmp eq i64 %i.arp, 4294967297
  %i.arr = trunc i64 %i.arp to i32                ; 2 uses
  br i1 %i.arq, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  store i32 0, ptr %i.aro, align 8, !tbaa !45
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arn, i64 12
  store i32 0, ptr %i.ars, align 4, !tbaa !47
  %i.art = load ptr, ptr %i.arn, align 8, !tbaa !48
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 16
  %i.arv = load ptr, ptr %i.aru, align 8
  call void %i.arv(ptr noundef nonnull align 8 dereferenceable(16) %i.arn) #29, !inline_history !709
  %i.arw = load ptr, ptr %i.arn, align 8, !tbaa !48
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 24
  %i.ary = load ptr, ptr %i.arx, align 8
  call void %i.ary(ptr noundef nonnull align 8 dereferenceable(16) %i.arn) #29, !inline_history !709
  br label %_ZN6duckdbL14FlattenRunEndsIiNS_9hugeint_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit

bb.ip:                                            ; preds = %bb.in
  %i.arz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i2.i144.i325 = icmp eq i8 %i.arz, 0
  br i1 %.not.i.i.i.i.i2.i144.i325, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.asa = add nsw i32 %i.arr, -1
  store i32 %i.asa, ptr %i.aro, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i326

bb.ir:                                            ; preds = %bb.ip
  %i.asb = atomicrmw volatile add ptr %i.aro, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i326

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i326: ; preds = %bb.ir, %bb.iq
  %.0.i.i.i.i.i.i4.i146.i327 = phi i32 [ %i.arr, %bb.iq ], [ %i.asb, %bb.ir ]
  %i.asc = icmp eq i32 %.0.i.i.i.i.i.i4.i146.i327, 1
  br i1 %i.asc, label %bb.is, label %_ZN6duckdbL14FlattenRunEndsIiNS_9hugeint_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit, !prof !51

bb.is:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i326
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.arn) #29
  br label %_ZN6duckdbL14FlattenRunEndsIiNS_9hugeint_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit

bb.it:                                            ; preds = %bb.hu, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg
  %.pn116.pn.pn.pn.pn.pn.pn.i297 = phi { ptr, i32 } [ %i.alx, %bb.hg ], [ %i.aly, %bb.hh ], [ %i.alz, %bb.hi ], [ %i.ama, %bb.hj ], [ %i.amb, %bb.hk ], [ %i.apc, %bb.hu ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %24) #29
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.hf
  %.pn116.pn.pn.pn.pn.pn.pn.pn.i296 = phi { ptr, i32 } [ %.pn116.pn.pn.pn.pn.pn.pn.i297, %bb.it ], [ %i.alw, %bb.hf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %common.resume

_ZN6duckdbL14FlattenRunEndsIiNS_9hugeint_tEEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i142.i323, %bb.io, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i145.i326, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %bb.aaz

bb.iv:                                            ; preds = %bb.a
  %i.asd = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.ase = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.iw unwind label %bb.jf

bb.iw:                                            ; preds = %bb.iv
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.asd, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %21)
          to label %bb.ix unwind label %bb.jg

bb.ix:                                            ; preds = %bb.iw
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ase, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.iy unwind label %bb.jg

bb.iy:                                            ; preds = %bb.ix
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %21)
          to label %bb.iz unwind label %bb.jh

bb.iz:                                            ; preds = %bb.iy
  %i.asf = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !466 ; 3 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.ja unwind label %bb.ji

bb.ja:                                            ; preds = %bb.iz
  %i.ash = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !466 ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.jb unwind label %bb.jj

bb.jb:                                            ; preds = %bb.ja
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !419 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.jc unwind label %bb.jk

bb.jc:                                            ; preds = %bb.jb
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.not14.i.i378 = icmp eq i64 %2, 0
  br i1 %.not14.i.i378, label %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.thread.i455, label %.lr.ph.i.i379

.lr.ph.i.i379:                                    ; preds = %bb.jc, %.lr.ph.i.i379
  %.013.i.i380 = phi i64 [ %.1.i.i384, %.lr.ph.i.i379 ], [ 0, %bb.jc ] ; 2 uses
  %.01012.i.i381 = phi i64 [ %.111.i.i383, %.lr.ph.i.i379 ], [ %2, %bb.jc ] ; 2 uses
  %i.asm = add i64 %.01012.i.i381, %.013.i.i380
  %i.asn = lshr i64 %i.asm, 1                     ; 3 uses
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.asg, i64 %i.asn
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !3
  %i.asq = sext i32 %i.asp to i64
  %.not.i.i382 = icmp ult i64 %3, %i.asq          ; 2 uses
  %i.asr = add nuw i64 %i.asn, 1
  %.111.i.i383 = select i1 %.not.i.i382, i64 %i.asn, i64 %.01012.i.i381 ; 2 uses
  %.1.i.i384 = select i1 %.not.i.i382, i64 %.013.i.i380, i64 %i.asr ; 5 uses
  %i.ass = icmp ult i64 %.1.i.i384, %.111.i.i383
  br i1 %i.ass, label %.lr.ph.i.i379, label %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.i385, !llvm.loop !651

_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.i385:   ; preds = %.lr.ph.i.i379
  %i.ast = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !353
  %.not.i128.i386 = icmp eq ptr %i.asu, null
  br i1 %.not.i128.i386, label %.preheader.i437, label %.preheader154.i387

_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.thread.i455: ; preds = %bb.jc
  %i.asv = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !353
  %.not.i128203.i456 = icmp eq ptr %i.asw, null
  br i1 %.not.i128203.i456, label %.preheader.i437, label %.loopexit.i388

.preheader154.i387:                               ; preds = %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.i385
  %i.asx = icmp ult i64 %.1.i.i384, %2
  br i1 %i.asx, label %.lr.ph163.i408, label %.loopexit.i388

.lr.ph163.i408:                                   ; preds = %.preheader154.i387
  %i.asy = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.jl

.preheader.i437:                                  ; preds = %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.thread.i455, %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.i385
  %.0.lcssa.i205.i438 = phi i64 [ 0, %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.thread.i455 ], [ %.1.i.i384, %_ZN6duckdbL12FindRunIndexIiEEmPKT_mm.exit.i385 ] ; 2 uses
  %i.asz = icmp ult i64 %.0.lcssa.i205.i438, %2
  br i1 %i.asz, label %.lr.ph169.i439.preheader, label %.loopexit.i388

.lr.ph169.i439.preheader:                         ; preds = %.preheader.i437
  %.pre1390 = load ptr, ptr %21, align 8, !tbaa !478
  br label %.lr.ph169.i439

.lr.ph169.i439:                                   ; preds = %.lr.ph169.i439.preheader, %._crit_edge.i451
  %38 = phi ptr [ %39, %._crit_edge.i451 ], [ %.pre1390, %.lr.ph169.i439.preheader ] ; 2 uses
  %.0104167.i441.a = phi i64 [ %i.atv, %._crit_edge.i451 ], [ %.0.lcssa.i205.i438, %.lr.ph169.i439.preheader ] ; 5 uses
  %.0104167.i441 = phi i64 [ %i.atu, %._crit_edge.i451 ], [ 0, %.lr.ph169.i439.preheader ] ; 4 uses
  %i.ata = load ptr, ptr %38, align 8, !tbaa !479 ; 2 uses
  %.not.i129.i442 = icmp eq ptr %i.ata, null
  br i1 %.not.i129.i442, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i443, label %bb.jd

bb.jd:                                            ; preds = %.lr.ph169.i439
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %.0104167.i441.a
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !3
  %i.atd = zext i32 %i.atc to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i443

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i443: ; preds = %bb.jd, %.lr.ph169.i439
  %i.ate = phi i64 [ %i.atd, %bb.jd ], [ %.0104167.i441.a, %.lr.ph169.i439 ]
  %i.atf = load ptr, ptr %22, align 8, !tbaa !478
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !479 ; 2 uses
  %.not.i130.i444 = icmp eq ptr %i.atg, null
  br i1 %.not.i130.i444, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i445, label %bb.je

bb.je:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i443
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %i.atg, i64 %.0104167.i441.a
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !3
  %i.atj = zext i32 %i.ati to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i445

_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i445: ; preds = %bb.je, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i443
  %i.atk = phi i64 [ %i.atj, %bb.je ], [ %.0104167.i441.a, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i443 ]
  %i.atl = getelementptr inbounds nuw [4 x i8], ptr %i.asg, i64 %i.ate
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !3
  %i.atn = sext i32 %i.atm to i64
  %i.ato = add i64 %.0104167.i441, %3
  %i.atp = sub i64 %i.atn, %i.ato
  %i.atq = sub i64 %4, %.0104167.i441
  %i.atr = call noundef i64 @llvm.umin.i64(i64 %i.atp, i64 %i.atq) ; 3 uses
  %.not173.i446 = icmp eq i64 %i.atr, 0
  br i1 %.not173.i446, label %._crit_edge.i451, label %.lr.ph166.i447

.lr.ph166.i447:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i445
  %i.ats = getelementptr inbounds nuw i8, ptr %i.asi, i64 %i.atk
  %i.att = getelementptr i8, ptr %i.ask, i64 %.0104167.i441
  %.pre.i448 = load i8, ptr %i.ats, align 1, !tbaa !24
  call void @llvm.memset.p0.i64(ptr align 1 %i.att, i8 %.pre.i448, i64 %i.atr, i1 false), !tbaa !24
  %.pre = load ptr, ptr %21, align 8, !tbaa !478
  br label %._crit_edge.i451

._crit_edge.i451:                                 ; preds = %.lr.ph166.i447, %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i445
  %39 = phi ptr [ %.pre, %.lr.ph166.i447 ], [ %38, %_ZNK6duckdb15SelectionVector9get_indexEm.exit131.i445 ]
  %i.atu = add i64 %i.atr, %.0104167.i441         ; 2 uses
  %.not125.i452 = icmp uge i64 %i.atu, %4
  %i.atv = add nuw i64 %.0104167.i441.a, 1        ; 2 uses
  %exitcond181.not.i453 = icmp eq i64 %i.atv, %2
  %or.cond.i454 = select i1 %.not125.i452, i1 true, i1 %exitcond181.not.i453
  br i1 %or.cond.i454, label %.loopexit.i388, label %.lr.ph169.i439, !llvm.loop !710

bb.jf:                                            ; preds = %bb.iv
  %i.atw = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.jg:                                            ; preds = %bb.ix, %bb.iw
  %i.atx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.jh:                                            ; preds = %bb.iy
  %i.aty = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.ji:                                            ; preds = %bb.iz
  %i.atz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.jj:                                            ; preds = %bb.ja
  %i.aua = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.jk:                                            ; preds = %bb.jb
  %i.aub = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.jl:                                            ; preds = %.loopexit152.i421, %.lr.ph163.i408
  %.3101162.i409 = phi i64 [ %.1.i.i384, %.lr.ph163.i408 ], [ %i.axf, %.loopexit152.i421 ] ; 5 uses
  %.1105159.i410 = phi i64 [ 0, %.lr.ph163.i408 ], [ %i.axe, %.loopexit152.i421 ] ; 8 uses
  %i.auc = load ptr, ptr %21, align 8, !tbaa !478
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !479 ; 2 uses
  %.not.i132.i411 = icmp eq ptr %i.aud, null
  br i1 %.not.i132.i411, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i412, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %i.aud, i64 %.3101162.i409
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !3
  %i.aug = zext i32 %i.auf to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i412

_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i412: ; preds = %bb.jm, %bb.jl
  %i.auh = phi i64 [ %i.aug, %bb.jm ], [ %.3101162.i409, %bb.jl ]
  %i.aui = load ptr, ptr %22, align 8, !tbaa !478
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !479 ; 2 uses
  %.not.i134.i413 = icmp eq ptr %i.auj, null
  br i1 %.not.i134.i413, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i412
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.auj, i64 %.3101162.i409
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !3
  %i.aum = zext i32 %i.aul to i64
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i412
  %i.aun = phi i64 [ %i.aum, %bb.jn ], [ %.3101162.i409, %_ZNK6duckdb15SelectionVector9get_indexEm.exit133.i412 ] ; 3 uses
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %i.asg, i64 %i.auh
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !3
  %i.auq = sext i32 %i.aup to i64
  %i.aur = add i64 %.1105159.i410, %3
  %i.aus = sub i64 %i.auq, %i.aur
  %i.aut = sub i64 %4, %.1105159.i410
  %i.auu = call noundef i64 @llvm.umin.i64(i64 %i.aus, i64 %i.aut) ; 9 uses
  %i.auv = lshr i64 %i.aun, 6
  %i.auw = and i64 %i.aun, 63
  %i.aux = load ptr, ptr %i.ast, align 8, !tbaa !353
  %i.auy = getelementptr inbounds nuw [8 x i8], ptr %i.aux, i64 %i.auv
  %i.auz = load i64, ptr %i.auy, align 8, !tbaa !23
  %i.ava = shl nuw i64 1, %i.auw
  %i.avb = and i64 %i.auz, %i.ava
  %.not148.i414 = icmp eq i64 %i.avb, 0
  br i1 %.not148.i414, label %.preheader151.i425, label %bb.jp

.preheader151.i425:                               ; preds = %bb.jo
  %.not172.i426 = icmp eq i64 %i.auu, 0
  br i1 %.not172.i426, label %.loopexit152.i421, label %.lr.ph158.i427

.lr.ph158.i427:                                   ; preds = %.preheader151.i425
  %i.avc = load ptr, ptr %i.asl, align 8, !tbaa !353 ; 4 uses
  %i.avd = icmp eq ptr %i.avc, null
  br i1 %i.avd, label %.lr.ph158.split.i431, label %.lr.ph158.split.us.i428.preheader

.lr.ph158.split.us.i428.preheader:                ; preds = %.lr.ph158.i427
  %xtraiter2363 = and i64 %i.auu, 1
  %i.ave = icmp eq i64 %i.auu, 1
  br i1 %i.ave, label %.lr.ph158.split.us.i428.epil.preheader, label %.lr.ph158.split.us.i428.preheader.new

.lr.ph158.split.us.i428.preheader.new:            ; preds = %.lr.ph158.split.us.i428.preheader
  %unroll_iter2367 = and i64 %i.auu, -2
  br label %.lr.ph158.split.us.i428

.lr.ph158.split.us.i428:                          ; preds = %.lr.ph158.split.us.i428, %.lr.ph158.split.us.i428.preheader.new
  %.0157.us.i429 = phi i64 [ 0, %.lr.ph158.split.us.i428.preheader.new ], [ %i.avw, %.lr.ph158.split.us.i428 ] ; 3 uses
  %niter2368 = phi i64 [ 0, %.lr.ph158.split.us.i428.preheader.new ], [ %niter2368.next.1, %.lr.ph158.split.us.i428 ]
  %i.avf = add i64 %.0157.us.i429, %.1105159.i410 ; 2 uses
  %i.avg = lshr i64 %i.avf, 6
  %i.avh = and i64 %i.avf, 63
  %i.avi = shl nuw i64 1, %i.avh
  %i.avj = xor i64 %i.avi, -1
  %i.avk = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %i.avg ; 2 uses
  %i.avl = load i64, ptr %i.avk, align 8, !tbaa !23
  %i.avm = and i64 %i.avl, %i.avj
  store i64 %i.avm, ptr %i.avk, align 8, !tbaa !23
  %i.avn = or disjoint i64 %.0157.us.i429, 1
  %i.avo = add i64 %i.avn, %.1105159.i410         ; 2 uses
  %i.avp = lshr i64 %i.avo, 6
  %i.avq = and i64 %i.avo, 63
  %i.avr = shl nuw i64 1, %i.avq
  %i.avs = xor i64 %i.avr, -1
  %i.avt = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %i.avp ; 2 uses
  %i.avu = load i64, ptr %i.avt, align 8, !tbaa !23
  %i.avv = and i64 %i.avu, %i.avs
  store i64 %i.avv, ptr %i.avt, align 8, !tbaa !23
  %i.avw = add nuw i64 %.0157.us.i429, 2          ; 2 uses
  %niter2368.next.1 = add i64 %niter2368, 2       ; 2 uses
  %niter2368.ncmp.1 = icmp eq i64 %niter2368.next.1, %unroll_iter2367
  br i1 %niter2368.ncmp.1, label %.loopexit152.i421.loopexit2234.unr-lcssa, label %.lr.ph158.split.us.i428, !llvm.loop !711

bb.jp:                                            ; preds = %bb.jo
  %i.avx = getelementptr inbounds nuw i8, ptr %i.asi, i64 %i.aun
  %.not171.i415 = icmp eq i64 %i.auu, 0
  br i1 %.not171.i415, label %.loopexit152.i421, label %.lr.ph.i416

.lr.ph.i416:                                      ; preds = %bb.jp, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i419
  %.085156.i417 = phi i64 [ %i.awi, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i419 ], [ 0, %bb.jp ] ; 2 uses
  %i.avy = load i8, ptr %i.avx, align 1, !tbaa !24
  %i.avz = add i64 %.085156.i417, %.1105159.i410  ; 3 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.ask, i64 %i.avz
  store i8 %i.avy, ptr %i.awa, align 1, !tbaa !24
  %i.awb = load ptr, ptr %i.asl, align 8, !tbaa !353 ; 2 uses
  %.not.i136.i418 = icmp eq ptr %i.awb, null
  br i1 %.not.i136.i418, label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i419, label %bb.jq

bb.jq:                                            ; preds = %.lr.ph.i416
  %i.awc = lshr i64 %i.avz, 6
  %i.awd = and i64 %i.avz, 63
  %i.awe = shl nuw i64 1, %i.awd
  %i.awf = getelementptr inbounds nuw [8 x i8], ptr %i.awb, i64 %i.awc ; 2 uses
  %i.awg = load i64, ptr %i.awf, align 8, !tbaa !23
  %i.awh = or i64 %i.awg, %i.awe
  store i64 %i.awh, ptr %i.awf, align 8, !tbaa !23
  br label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i419

_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i419: ; preds = %bb.jq, %.lr.ph.i416
  %i.awi = add nuw i64 %.085156.i417, 1           ; 2 uses
  %exitcond.not.i420 = icmp eq i64 %i.awi, %i.auu
  br i1 %exitcond.not.i420, label %.loopexit152.i421, label %.lr.ph.i416, !llvm.loop !712

.lr.ph158.split.i431:                             ; preds = %.lr.ph158.i427, %bb.js
  %i.awj = phi ptr [ %i.awm, %bb.js ], [ null, %.lr.ph158.i427 ] ; 2 uses
  %.0157.i432 = phi i64 [ %i.awu, %bb.js ], [ 0, %.lr.ph158.i427 ] ; 2 uses
  %i.awk = add i64 %.0157.i432, %.1105159.i410    ; 2 uses
  %.not.i137.i433 = icmp eq ptr %i.awj, null
  br i1 %.not.i137.i433, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %.lr.ph158.split.i431
  %i.awl = load i64, ptr %i.asy, align 8, !tbaa !359
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.asl, i64 noundef %i.awl)
          to label %.noexc.i435 unwind label %bb.jt

.noexc.i435:                                      ; preds = %bb.jr
  %.pre.i.i436 = load ptr, ptr %i.asl, align 8, !tbaa !353
  br label %bb.js

bb.js:                                            ; preds = %.noexc.i435, %.lr.ph158.split.i431
  %i.awm = phi ptr [ %.pre.i.i436, %.noexc.i435 ], [ %i.awj, %.lr.ph158.split.i431 ] ; 2 uses
  %i.awn = lshr i64 %i.awk, 6
  %i.awo = and i64 %i.awk, 63
  %i.awp = shl nuw i64 1, %i.awo
  %i.awq = xor i64 %i.awp, -1
  %i.awr = getelementptr inbounds nuw [8 x i8], ptr %i.awm, i64 %i.awn ; 2 uses
  %i.aws = load i64, ptr %i.awr, align 8, !tbaa !23
  %i.awt = and i64 %i.aws, %i.awq
  store i64 %i.awt, ptr %i.awr, align 8, !tbaa !23
  %i.awu = add nuw i64 %.0157.i432, 1             ; 2 uses
  %exitcond178.not.i434 = icmp eq i64 %i.awu, %i.auu
  br i1 %exitcond178.not.i434, label %.loopexit152.i421, label %.lr.ph158.split.i431, !llvm.loop !713

bb.jt:                                            ; preds = %bb.jr
  %i.awv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

.loopexit152.i421.loopexit2234.unr-lcssa:         ; preds = %.lr.ph158.split.us.i428
  %lcmp.mod2365.not = icmp eq i64 %xtraiter2363, 0
  br i1 %lcmp.mod2365.not, label %.loopexit152.i421, label %.lr.ph158.split.us.i428.epil.preheader

.lr.ph158.split.us.i428.epil.preheader:           ; preds = %.loopexit152.i421.loopexit2234.unr-lcssa, %.lr.ph158.split.us.i428.preheader
  %.0157.us.i429.epil.init = phi i64 [ 0, %.lr.ph158.split.us.i428.preheader ], [ %i.avw, %.loopexit152.i421.loopexit2234.unr-lcssa ]
  %lcmp.mod2366 = trunc i64 %i.auu to i1
  call void @llvm.assume(i1 %lcmp.mod2366)
  %i.aww = add i64 %.0157.us.i429.epil.init, %.1105159.i410 ; 2 uses
  %i.awx = lshr i64 %i.aww, 6
end_hunk_3
