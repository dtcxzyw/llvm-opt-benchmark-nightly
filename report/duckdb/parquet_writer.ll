inline.NumInlined: 5305
inline.NumDeleted: 2879
begin_hunk_0_@_ZN6duckdb25ParquetWriteTransformData14ApplyTransformERNS_20ColumnDataCollectionE:bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ab:                                            ; preds = %bb.af, %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ac:                                            ; preds = %bb.h
  %i.by = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv(ptr noundef nonnull align 8 dereferenceable(168) %4)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6duckdb18ExpressionExecutor7ExecuteEPNS_9DataChunkERS1_(ptr noundef nonnull align 8 dereferenceable(65) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.by, ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_ZN6duckdb18ExpressionExecutor7ExecuteERNS_9DataChunkES2_.exit unwind label %bb.ag

_ZN6duckdb18ExpressionExecutor7ExecuteERNS_9DataChunkES2_.exit: ; preds = %bb.ae
  invoke void @_ZN6duckdb20ColumnDataCollection6AppendERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %_ZN6duckdb18ExpressionExecutor7ExecuteERNS_9DataChunkES2_.exit
  %i.bz = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorppEv(ptr noundef nonnull align 8 dereferenceable(168) %4)
          to label %bb.g unwind label %bb.ab      ; 0 uses

bb.ag:                                            ; preds = %bb.ae, %_ZN6duckdb18ExpressionExecutor7ExecuteERNS_9DataChunkES2_.exit, %bb.ad, %bb.ac
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.ab ], [ %i.ca, %bb.ag ]
  call void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %5) #22
  br label %.body

.body:                                            ; preds = %bb.f, %bb.e, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ah ], [ %i.b, %bb.e ], [ %i.b, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %4) #22
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.bw, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i16, label %_ZN6duckdb30ColumnDataChunkIterationHelperD2Ev.exit17, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef nonnull %i.cc) #24
  br label %_ZN6duckdb30ColumnDataChunkIterationHelperD2Ev.exit17

_ZN6duckdb30ColumnDataChunkIterationHelperD2Ev.exit17: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN6duckdb20ColumnDataCollection5ResetEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare void @_ZNK6duckdb20ColumnDataCollection6ChunksEv(ptr dead_on_unwind writable sret(%"class.duckdb::ColumnDataChunkIterationHelper") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb30ColumnDataChunkIterationHelper5beginEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ColumnDataChunkIterationHelper::ColumnDataChunkIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector.258", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !158, !nonnull !165, !align !166
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !141  ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i, label %.thread4, label %bb.b

.thread4:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds i8, ptr null, i64 %i.h ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !168
  br label %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.l, label %.noexc.i.i.i, label %bb.c, !prof !83

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25 ; 5 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !167
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !168
  %i.q = icmp samesign ugt i64 %i.h, 8
  br i1 %i.q, label %bb.d, label %bb.e, !prof !169

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.h, 8
  br i1 %i.r, label %bb.f, label %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.e, align 8, !tbaa !170
  store i64 %i.s, ptr %i.m, align 8, !tbaa !170
  br label %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit

_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit:       ; preds = %.thread4, %bb.d, %bb.e, %bb.f
  %i.t = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.j, %.thread4 ]
  %i.u = phi ptr [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.i, %.thread4 ]
  store ptr %i.t, ptr %i.u, align 8, !tbaa !167
  invoke void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorC1ENS_12optional_ptrIKNS_20ColumnDataCollectionELb1EEENS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nonnull %i.a, ptr noundef nonnull %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit
  %i.v = load ptr, ptr %2, align 8, !tbaa !141    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.v) #24
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %2, align 8, !tbaa !141    ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorImSaImEED2Ev.exit3, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #24
  br label %_ZNSt6vectorImSaImEED2Ev.exit3

_ZNSt6vectorImSaImEED2Ev.exit3:                   ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.w
}

declare noundef zeroext i1 @_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorneERKS1_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN6duckdb20ColumnDataCollection6AppendERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorppEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.b) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #24
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.c) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb13ParquetWriterC2ERNS_13ClientContextERNS_10FileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaISC_EEENSB_ISA_Lb1ESaISA_EEEN14duckdb_parquet16CompressionCodec4typeENS_13ChildFieldIDsENS_13ShreddingTypeERKNSB_ISt4pairISA_SA_ELb1ESaISN_EEENS_10shared_ptrINS_23ParquetEncryptionConfigELb1EEENS_12optional_idxEmbdlNS_14ParquetVersionENS_17GeoParquetVersionE(ptr noundef nonnull align 8 dereferenceable(744) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr nofree noundef captures(none) %7, ptr noundef %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %9, ptr nofree noundef captures(none) %10, i64 %11, i64 noundef %12, i1 noundef zeroext %13, double noundef %14, i64 noundef %15, i8 noundef zeroext %16, i8 noundef zeroext %17) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %18 = alloca %"class.std::vector.962", align 8  ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.duckdb::unique_ptr.114", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %20 = alloca %"class.duckdb::FileOpenFlags", align 8 ; 6 uses
  %21 = alloca %"class.duckdb::shared_ptr.110", align 16 ; 7 uses
  %22 = alloca %"class.duckdb_apache::thrift::protocol::TCompactProtocolFactoryT", align 8 ; 9 uses
  %23 = alloca %"class.std::shared_ptr.123", align 16 ; 7 uses
  %24 = alloca %"class.std::shared_ptr.181", align 8 ; 4 uses
  %25 = alloca %"class.std::shared_ptr.587", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.duckdb_parquet::KeyValue", align 8 ; 10 uses
  %29 = alloca %"class.duckdb::vector.82", align 8 ; 5 uses
  %30 = alloca %"class.duckdb::unique_ptr.596", align 8 ; 10 uses
  %31 = alloca %"class.duckdb::vector.82", align 8 ; 7 uses
  %i.e = zext i1 %13 to i8
  store ptr %1, ptr %0, align 8, !tbaa !171
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !173
  %i.h = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !174  ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.h, ptr %i.f, align 8, !tbaa !19
  %i.o = load i64, ptr %i.i, align 8, !tbaa !102
  store i64 %i.o, ptr %i.g, align 8, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !174
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !174
  store ptr %i.i, ptr %3, align 8, !tbaa !19
  store i64 0, ptr %i.p, align 8, !tbaa !174
  store i8 0, ptr %i.i, align 8, !tbaa !102
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load <2 x ptr>, ptr %4, align 8, !tbaa !175
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !175
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !176
  store ptr %i.x, ptr %i.v, align 8, !tbaa !176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.z = load <2 x ptr>, ptr %5, align 8, !tbaa !177
  store <2 x ptr> %i.z, ptr %i.y, align 8, !tbaa !177
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !179
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !179
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %6, ptr %i.ad, align 8, !tbaa !181
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.af = load i64, ptr %7, align 8, !tbaa !294
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !294
  store ptr null, ptr %7, align 8, !tbaa !294
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ah = load i8, ptr %8, align 8, !tbaa !295, !range !296, !noundef !165
  store i8 %i.ah, ptr %i.ag, align 8, !tbaa !295
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #22
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !297
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !297
  store ptr null, ptr %i.al, align 8, !tbaa !297
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.ao, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = load <2 x ptr>, ptr %10, align 8, !tbaa !298
  store ptr null, ptr %i.ap, align 8, !tbaa !101
  store <2 x ptr> %i.aq, ptr %i.an, align 8, !tbaa !298
  store ptr null, ptr %10, align 8, !tbaa !84
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %11, ptr %i.ar, align 8, !tbaa !170
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %12, ptr %i.as, align 8, !tbaa !299
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.e, ptr %i.at, align 8, !tbaa !300
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double %14, ptr %i.au, align 8, !tbaa !301
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %15, ptr %i.av, align 8, !tbaa !302
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %16, ptr %i.ax, align 8, !tbaa !303
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 217
  store i8 %17, ptr %i.ay, align 1, !tbaa !304
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, i8 0, i64 40, i1 false)
  tail call void @_ZN14duckdb_parquet12FileMetaDataC1Ev(ptr noundef nonnull align 8 dereferenceable(361) %i.bb) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bc, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !19
  store ptr %i.bh, ptr %i.d, align 8, !tbaa !305
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store i64 18, ptr %20, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i24 66048, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_ZN6duckdb9make_uniqINS_18BufferedFileWriterEJRNS_10FileSystemEPKcNS_13FileOpenFlagsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.114") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(11) %20)
          to label %bb.d unwind label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.bi = load ptr, ptr %19, align 8, !tbaa !306
  store ptr null, ptr %19, align 8, !tbaa !306
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !306 ; 3 uses
  store ptr %i.bi, ptr %i.az, align 8, !tbaa !306
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb18BufferedFileWriterESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_18BufferedFileWriterESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_18BufferedFileWriterESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.d
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !90
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(80) %i.bj) #22, !inline_history !307
  %.pr = load ptr, ptr %19, align 8, !tbaa !306   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb18BufferedFileWriterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18BufferedFileWriterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18BufferedFileWriterEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_18BufferedFileWriterESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bn = load ptr, ptr %.pr, align 8, !tbaa !90
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(80) %.pr) #22, !inline_history !308
  br label %_ZNSt10unique_ptrIN6duckdb18BufferedFileWriterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18BufferedFileWriterESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZN6duckdb10unique_ptrINS_18BufferedFileWriterESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb18BufferedFileWriterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.bq = load ptr, ptr %i.an, align 8, !tbaa !84
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %bb.y, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18BufferedFileWriterESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16DatabaseInstanceELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br)
          to label %bb.f unwind label %bb.w

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb16DatabaseInstance17GetEncryptionUtilEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.110") align 8 %21, ptr noundef nonnull align 8 dereferenceable(1560) %i.bs, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bv = load <2 x ptr>, ptr %21, align 16, !tbaa !298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !101 ; 8 uses
  store <2 x ptr> %i.bv, ptr %i.aw, align 8, !tbaa !298
  %.not.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_14EncryptionUtilELb1EEaSEOS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bx, align 8, !tbaa !104
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !106
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !90
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #22, !inline_history !309
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !90
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #22, !inline_history !309
  br label %_ZN6duckdb10shared_ptrINS_14EncryptionUtilELb1EEaSEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i.i46 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb13ParquetWriterC2ERNS_13ClientContextERNS_10FileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaISC_EEENSB_ISA_Lb1ESaISA_EEEN14duckdb_parquet16CompressionCodec4typeENS_13ChildFieldIDsENS_13ShreddingTypeERKNSB_ISt4pairISA_SA_ELb1ESaISN_EEENS_10shared_ptrINS_23ParquetEncryptionConfigELb1EEENS_12optional_idxEmbdlNS_14ParquetVersionENS_17GeoParquetVersionE:bb.a
  br i1 %i.fg, label %bb.ap, label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift8protocol9TProtocolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #22
  br label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift8protocol9TProtocolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN13duckdb_apache6thrift8protocol9TProtocolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN13duckdb_apache6thrift8protocol9TProtocolEEaSEOS4_.exit, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ap
  %i.fh = load ptr, ptr %i.dx, align 8, !tbaa !101 ; 8 uses
  %.not.i.i53 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i53, label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt12__shared_ptrIN13duckdb_apache6thrift8protocol9TProtocolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 4 uses
  %i.fj = load atomic i64, ptr %i.fi acquire, align 8 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 4294967297
  %i.fl = trunc i64 %i.fj to i32                  ; 2 uses
  br i1 %i.fk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.fi, align 8, !tbaa !104
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  store i32 0, ptr %i.fm, align 4, !tbaa !106
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !90
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #22, !inline_history !107
  %i.fq = load ptr, ptr %i.fh, align 8, !tbaa !90
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #22, !inline_history !107
  br label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.ft = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i54 = icmp eq i8 %i.ft, 0
  br i1 %.not.i.i.i54, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fu = add nsw i32 %i.fl, -1
  store i32 %i.fu, ptr %i.fi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55

bb.au:                                            ; preds = %bb.as
  %i.fv = atomicrmw volatile add ptr %i.fi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i56 = phi i32 [ %i.fl, %bb.at ], [ %i.fv, %bb.au ]
  %i.fw = icmp eq i32 %.0.i.i.i.i56, 1
  br i1 %i.fw, label %bb.av, label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #22
  br label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN13duckdb_apache6thrift8protocol9TProtocolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55, %bb.av
  %i.fx = load ptr, ptr %i.dr, align 8, !tbaa !101 ; 8 uses
  %.not.i.i57 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i57, label %_ZNSt12__shared_ptrIN6duckdb11MyTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 4 uses
  %i.fz = load atomic i64, ptr %i.fy acquire, align 8 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 4294967297
  %i.gb = trunc i64 %i.fz to i32                  ; 2 uses
  br i1 %i.ga, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.fy, align 8, !tbaa !104
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i32 0, ptr %i.gc, align 4, !tbaa !106
  %i.gd = load ptr, ptr %i.fx, align 8, !tbaa !90
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fx) #22, !inline_history !325
  %i.gg = load ptr, ptr %i.fx, align 8, !tbaa !90
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(16) %i.fx) #22, !inline_history !325
  br label %_ZNSt12__shared_ptrIN6duckdb11MyTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ay:                                            ; preds = %bb.aw
  %i.gj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i58 = icmp eq i8 %i.gj, 0
  br i1 %.not.i.i.i58, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gk = add nsw i32 %i.gb, -1
  store i32 %i.gk, ptr %i.fy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

bb.ba:                                            ; preds = %bb.ay
  %i.gl = atomicrmw volatile add ptr %i.fy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i60 = phi i32 [ %i.gb, %bb.az ], [ %i.gl, %bb.ba ]
  %i.gm = icmp eq i32 %.0.i.i.i.i60, 1
  br i1 %i.gm, label %bb.bb, label %_ZNSt12__shared_ptrIN6duckdb11MyTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fx) #22
  br label %_ZNSt12__shared_ptrIN6duckdb11MyTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb11MyTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %i.gn, align 8, !tbaa !326
  %i.go = zext i8 %16 to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.go, ptr %i.gp, align 8, !tbaa !327
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  %i.gr = load i8, ptr %i.gq, align 8
  %i.gs = or i8 %i.gr, 2
  store i8 %i.gs, ptr %i.gq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.gt = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  store ptr %i.gt, ptr %27, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 28, ptr %i.c, align 8, !tbaa !170
  %i.gu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.bq    ; 2 uses

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN6duckdb11MyTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr %i.gu, ptr %27, align 8, !tbaa !19
  %i.gv = load i64, ptr %i.c, align 8, !tbaa !170 ; 3 uses
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.gu, ptr noundef nonnull align 1 dereferenceable(28) @.str.4, i64 28, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !174
  %i.gx = load ptr, ptr %27, align 8, !tbaa !19
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gv
  store i8 0, ptr %i.gy, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.gz = invoke noundef ptr @_ZN6duckdb6DuckDB14LibraryVersionEv()
          to label %bb.bc unwind label %bb.br

bb.bc:                                            ; preds = %.noexc
  %i.ha = invoke noundef ptr @_ZN6duckdb6DuckDB8SourceIDEv()
          to label %bb.bd unwind label %bb.br

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.gz, ptr %i.a, align 8, !tbaa !305, !noalias !328
  store ptr %i.ha, ptr %i.b, align 8, !tbaa !305, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22, !noalias !331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !noalias !331
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIPKcJRKS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_RSt6vectorINS_20ExceptionFormatValueESaISF_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.hb = load ptr, ptr %18, align 8, !tbaa !31, !noalias !331 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !34, !noalias !331 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.hb, %i.hd
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.be, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.hi, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.hb, %bb.be ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !19 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.hf) #24
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %i.hi, %i.hd
  br i1 %.not.i.i.i.i.i61, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %18, align 8, !tbaa !31, !noalias !331
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.be
  %i.hj = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.hb, %bb.be ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i1.i.i.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.hj) #24
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22, !noalias !331
  br label %.body

bb.bh:                                            ; preds = %bb.bf, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22, !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !19 ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  %i.hp = load ptr, ptr %26, align 8, !tbaa !19   ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq                ; 2 uses
  br i1 %i.ho, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i63: ; preds = %bb.bh
  br i1 %i.hr, label %bb.bi, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.bh
  br i1 %i.hr, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i63
  %i.hs = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !174 ; 3 uses
  %i.hu = icmp ult i64 %i.ht, 16
  call void @llvm.assume(i1 %i.hu)
  switch i64 %i.ht, label %bb.bk [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.hv = load i8, ptr %i.hp, align 1, !tbaa !102
  store i8 %i.hv, ptr %i.hm, align 1, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr align 1 %i.hp, i64 %i.ht, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.hw = load i64, ptr %i.hs, align 8, !tbaa !174 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !174
  %i.hy = load ptr, ptr %i.hl, align 8, !tbaa !19
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hw
  store i8 0, ptr %i.hz, align 1, !tbaa !102
  %.pre.i = load ptr, ptr %26, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i63
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.hp, ptr %i.hl, align 8, !tbaa !19
  %i.ib = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ic = load <2 x i64>, ptr %i.ib, align 8, !tbaa !102
  store <2 x i64> %i.ic, ptr %i.ia, align 8, !tbaa !102
  br label %bb.bm

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.id = load i64, ptr %i.hn, align 8, !tbaa !102
  store ptr %i.hp, ptr %i.hl, align 8, !tbaa !19
  %i.ie = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ig = load <2 x i64>, ptr %i.ie, align 8, !tbaa !102
  store <2 x i64> %i.ig, ptr %i.if, align 8, !tbaa !102
  %.not.i62 = icmp eq ptr %i.hm, null
  br i1 %.not.i62, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hm, ptr %26, align 8, !tbaa !19
  store i64 %i.id, ptr %i.hq, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hq, ptr %26, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bl, %bb.bm
  %32 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.hm, %bb.bl ], [ %i.hq, %bb.bm ]
  %i.ih = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.ih, align 8, !tbaa !174
  store i8 0, ptr %32, align 1, !tbaa !102
  %i.ii = load ptr, ptr %26, align 8, !tbaa !19   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.ii) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.il = load ptr, ptr %27, align 8, !tbaa !19   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.gt
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.il) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %i.in = load ptr, ptr %9, align 8, !tbaa !334   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !334 ; 2 uses
  %.not115116 = icmp eq ptr %i.in, %i.ip
  br i1 %.not115116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.bs

._crit_edge:                                      ; preds = %_ZNSt6vectorIN14duckdb_parquet8KeyValueESaIS1_EE9push_backERKS1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.it = icmp ne i8 %17, 0
  %i.iu = load ptr, ptr %i.t, align 8, !tbaa !112
  %i.iv = load ptr, ptr %i.s, align 8, !tbaa !109
  %.not120 = icmp eq ptr %i.iu, %i.iv
  br i1 %.not120, label %._crit_edge119, label %.noexc76.lr.ph

.noexc76.lr.ph:                                   ; preds = %._crit_edge
  %i.iw = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.ix = ptrtoint ptr %i.ae to i64
  %i.iy = ptrtoint ptr %i.ag to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  br label %.noexc76

bb.bn:                                            ; preds = %bb.ab, %bb.aa
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.ac
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #22
  call void @_ZNSt12__shared_ptrIN6duckdb11MyTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #22
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.jc, %bb.bo ], [ %i.jb, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.ck

bb.bq:                                            ; preds = %_ZNSt12__shared_ptrIN6duckdb11MyTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.br:                                            ; preds = %bb.bc, %.noexc
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bg, %bb.br
  %eh.lpad-body = phi { ptr, i32 } [ %i.je, %bb.br ], [ %i.hk, %bb.bg ] ; 2 uses
  %i.jf = load ptr, ptr %27, align 8, !tbaa !19   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.gt
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.jf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.bq
  %.pn38 = phi { ptr, i32 } [ %i.jd, %bb.bq ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.ck

bb.bs:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN14duckdb_parquet8KeyValueESaIS1_EE9push_backERKS1_.exit
  %.sroa.0108.0117 = phi ptr [ %i.in, %.lr.ph ], [ %i.jo, %_ZNSt6vectorIN14duckdb_parquet8KeyValueESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @_ZN14duckdb_parquet8KeyValueC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %28) #22
  invoke void @_ZN14duckdb_parquet8KeyValue9__set_keyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %28, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0108.0117)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0108.0117, i64 32
  invoke void @_ZN14duckdb_parquet8KeyValue11__set_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %28, ptr noundef nonnull align 8 dereferenceable(32) %i.jh)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.ji = load ptr, ptr %i.iq, align 8, !tbaa !336 ; 3 uses
  %i.jj = load ptr, ptr %i.ir, align 8, !tbaa !337
  %.not.i70 = icmp eq ptr %i.ji, %i.jj
  br i1 %.not.i70, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN14duckdb_parquet8KeyValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(73) %i.ji, ptr noundef nonnull align 8 dereferenceable(73) %28)
          to label %.noexc71 unwind label %bb.bx

.noexc71:                                         ; preds = %bb.bv
  %i.jk = load ptr, ptr %i.iq, align 8, !tbaa !336
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 80
  store ptr %i.jl, ptr %i.iq, align 8, !tbaa !336
  br label %_ZNSt6vectorIN14duckdb_parquet8KeyValueESaIS1_EE9push_backERKS1_.exit

bb.bw:                                            ; preds = %bb.bu
  invoke void @_ZNSt6vectorIN14duckdb_parquet8KeyValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr %i.ji, ptr noundef nonnull align 8 dereferenceable(73) %28)
          to label %_ZNSt6vectorIN14duckdb_parquet8KeyValueESaIS1_EE9push_backERKS1_.exit unwind label %bb.bx

_ZNSt6vectorIN14duckdb_parquet8KeyValueESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc71, %bb.bw
  %i.jm = load i8, ptr %i.gq, align 8
  %i.jn = or i8 %i.jm, 1
  store i8 %i.jn, ptr %i.gq, align 8
  call void @_ZN14duckdb_parquet8KeyValueD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0108.0117, i64 64 ; 2 uses
  %.not115 = icmp eq ptr %i.jo, %i.ip
  br i1 %.not115, label %._crit_edge, label %bb.bs

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bt, %bb.bs
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14duckdb_parquet8KeyValueD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.ck

._crit_edge119:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit96, %._crit_edge
  call void @_ZN13duckdb_apache6thrift8protocol16TProtocolFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  ret void

.noexc76:                                         ; preds = %.noexc76.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit96
  %.0118 = phi i64 [ 0, %.noexc76.lr.ph ], [ %i.lr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit96 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %i.jq = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.ca unwind label %bb.by

bb.by:                                            ; preds = %.noexc76
  %i.jr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.js = load ptr, ptr %31, align 8, !tbaa !338  ; 2 uses
  %.not.i.i.i.i74 = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i.i74, label %.body77, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZdlPv(ptr noundef nonnull %i.js) #24
  br label %.body77

bb.ca:                                            ; preds = %.noexc76
  store ptr %i.jq, ptr %i.iw, align 8, !tbaa !339
  %i.jt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %.0118)
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  %i.ju = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %.0118)
          to label %bb.cc unwind label %bb.ci

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN6duckdb12ColumnWriter21CreateWriterRecursiveERNS_13ClientContextERNS_13ParquetWriterENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERKNS_11LogicalTypeERKSB_bNS_12optional_ptrIKNS_13ChildFieldIDsELb1EEENSJ_IKNS_13ShreddingTypeELb1EEEmmb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.596") align 8 %30, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull %31, ptr noundef nonnull align 8 dereferenceable(24) %i.jt, ptr noundef nonnull align 8 dereferenceable(32) %i.ju, i1 noundef zeroext %i.it, i64 %i.ix, i64 %i.iy, i64 noundef 0, i64 noundef 1, i1 noundef zeroext true)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %i.jv = load ptr, ptr %i.iz, align 8, !tbaa !340 ; 6 uses
  %i.jw = load ptr, ptr %i.ja, align 8, !tbaa !341
  %.not.i.i79 = icmp eq ptr %i.jv, %i.jw
  br i1 %.not.i.i79, label %bb.ce, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12ColumnWriterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12ColumnWriterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.cd
  %i.jx = load i64, ptr %30, align 8, !tbaa !342
  store i64 %i.jx, ptr %i.jv, align 8, !tbaa !342
  store ptr null, ptr %30, align 8, !tbaa !342
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store ptr %i.jy, ptr %i.iz, align 8, !tbaa !340
  br label %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit

bb.ce:                                            ; preds = %bb.cd
  %i.jz = load ptr, ptr %i.bd, align 8, !tbaa !344 ; 10 uses
  %i.ka = ptrtoint ptr %i.jv to i64               ; 3 uses
  %i.kb = ptrtoint ptr %i.jz to i64               ; 3 uses
  %i.kc = sub i64 %i.ka, %i.kb                    ; 3 uses
  %i.kd = icmp eq i64 %i.kc, 9223372036854775800
  br i1 %i.kd, label %bb.cf, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12ColumnWriterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cf:                                            ; preds = %bb.ce
end_hunk_1
