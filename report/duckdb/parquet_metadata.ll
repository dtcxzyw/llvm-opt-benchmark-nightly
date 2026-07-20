inline.NumInlined: 3957
inline.NumDeleted: 1703
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6duckdb26ParquetBloomProbeProcessor7ReadRowERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS4_EEEmmRNS_13ParquetReaderE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn19 = phi { ptr, i32 } [ %i.as, %bb.l ], [ %i.ar, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ]
  resume { ptr, i32 } %.pn19
}

declare noundef zeroext i1 @_ZN6duckdb22ParquetStatisticsUtils19BloomFilterExcludesERKNS_11TableFilterERKN14duckdb_parquet14ColumnMetaDataERN13duckdb_apache6thrift8protocol9TProtocolERNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(538), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_14ConstantFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.12", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !538    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_14ConstantFilterESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !471

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_14ConstantFilterESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(176) ptr @_ZNK6duckdb10unique_ptrIN13duckdb_apache6thrift8protocol17TCompactProtocolTINS_19ThriftFileTransportEEESt14default_deleteIS6_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.12", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !530    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN13duckdb_apache6thrift8protocol17TCompactProtocolTINS_19ThriftFileTransportEEESt14default_deleteIS6_ELb1EE13AssertNotNullEb.exit, !prof !471

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrIN13duckdb_apache6thrift8protocol17TCompactProtocolTINS_19ThriftFileTransportEEESt14default_deleteIS6_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb5Value7BOOLEANEb(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb21FullMetadataProcessor16PopulateMetadataERNS_28ParquetMetadataFileProcessorERNS_6VectorEmRNS_13ParquetReaderE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(432) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::vector.169", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !208
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(432) %4) ; 6 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !553
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g) ; 2 uses
  tail call void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.d)
  tail call void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.d)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %3 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !566
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.d, ptr %i.j, align 8, !tbaa !568
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !569  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = lshr i64 %3, 6
  %i.n = and i64 %3, 63
  %i.o = shl nuw i64 1, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23
  %i.r = or i64 %i.q, %i.o
  store i64 %i.r, ptr %i.p, align 8, !tbaa !23
  br label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !570  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !570  ; 2 uses
  %.not46 = icmp eq ptr %i.s, %i.u
  br i1 %.not46, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.c

.preheader:                                       ; preds = %bb.l, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit
  %.not50 = icmp eq i64 %i.d, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph49

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.bj, %bb.l ] ; 5 uses
  %.sroa.043.047 = phi ptr [ %i.s, %.lr.ph ], [ %i.bn, %bb.l ] ; 4 uses
  %i.y = load ptr, ptr %.sroa.043.047, align 8, !tbaa !572 ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !573
  %.not.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = ptrtoint ptr %i.y to i64
  store i64 %i.aa, ptr %i.x, align 8
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !271
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !271
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %5, align 8, !tbaa !274   ; 7 uses
  %i.ae = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.f, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #29
          to label %.noexc37 unwind label %.loopexit ; 8 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  %i.aq = ptrtoint ptr %i.y to i64
  store i64 %i.aq, ptr %i.ap, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc37
  %i.ar = ptrtoaddr ptr %i.ao to i64
  %i.as = sub i64 %i.ae, %i.af
  %i.at = add i64 %i.as, -8                       ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  %i.aw = sub i64 %i.af, %i.ar
  %diff.check = icmp ugt i64 %i.aw, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ad, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ba ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.ad, i64 %i.ba ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.bb = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep61, align 8, !alias.scope !577, !noalias !574
  %wide.load62 = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !577, !noalias !574
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !574, !noalias !577
  store <2 x i64> %wide.load62, ptr %i.bc, align 8, !alias.scope !574, !noalias !577
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !579

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader64

.lr.ph.i.i.i.i.i.i.i.preheader64:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader64, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader64 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader64 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.be = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !577, !noalias !574
  store i64 %i.be, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !574, !noalias !577
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.x
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !582

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc37
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.noexc37 ], [ %i.ay, %middle.block ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ad) #28
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ao, ptr %5, align 8, !tbaa !274
  store ptr %i.bh, ptr %i.v, align 8, !tbaa !271
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bi, ptr %i.w, align 8, !tbaa !573
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.d
  %i.bj = phi ptr [ %i.bh, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ac, %bb.d ]
  %i.bk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.043.047)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.bk, i8 noundef zeroext 0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bl = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.043.047)
          to label %bb.j unwind label %bb.n       ; 2 uses

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bl)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef %i.d)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.043.047, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bn, %i.u
  br i1 %.not, label %.preheader, label %bb.c

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %bb.h, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %i.bq = load ptr, ptr %5, align 8, !tbaa !274   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #28
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

.lr.ph49:                                         ; preds = %.preheader, %bb.p
  %.048 = phi i64 [ %i.bu, %bb.p ], [ 0, %.preheader ] ; 3 uses
  %i.br = load ptr, ptr %1, align 8, !tbaa !208
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.048, i64 noundef %.048, ptr noundef nonnull align 8 dereferenceable(432) %4)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.lr.ph49
  %i.bu = add nuw i64 %.048, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph49, !llvm.loop !583

bb.q:                                             ; preds = %.lr.ph49
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %bb.n, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.q ], [ %i.bp, %bb.n ], [ %i.bo, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bw = load ptr, ptr %5, align 8, !tbaa !274   ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit40, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #28
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit40

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit40: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn.pn
}

declare noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

declare void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #2

declare void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.12", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !572    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !471

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
end_hunk_0
begin_hunk_1_@_ZN6duckdb21FullMetadataProcessor18InitializeInternalERNS_13ClientContextERNS_13ParquetReaderE
define hidden void @_ZN6duckdb21FullMetadataProcessor18InitializeInternalERNS_13ClientContextERNS_13ParquetReaderE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(432) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(432) %2), !inline_history !607
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(432) %2), !inline_history !607
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !208
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(432) %2), !inline_history !607
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(432) %2), !inline_history !607
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZN6duckdb21FullMetadataProcessor13TotalRowCountERNS_13ParquetReaderE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb21FullMetadataProcessor7ReadRowERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS4_EEEmmRNS_13ParquetReaderE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(432) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116
  tail call void @_ZN6duckdb21FullMetadataProcessor16PopulateMetadataERNS_28ParquetMetadataFileProcessorERNS_6VectorEmRNS_13ParquetReaderE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(432) %4)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  tail call void @_ZN6duckdb21FullMetadataProcessor16PopulateMetadataERNS_28ParquetMetadataFileProcessorERNS_6VectorEmRNS_13ParquetReaderE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(432) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 2)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116
  tail call void @_ZN6duckdb21FullMetadataProcessor16PopulateMetadataERNS_28ParquetMetadataFileProcessorERNS_6VectorEmRNS_13ParquetReaderE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %i.i, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(432) %4)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 3)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !116
  tail call void @_ZN6duckdb21FullMetadataProcessor16PopulateMetadataERNS_28ParquetMetadataFileProcessorERNS_6VectorEmRNS_13ParquetReaderE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(104) %i.l, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(432) %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb23ParquetMetaDataOperator10InitGlobalERNS_13ClientContextERNS_22TableFunctionInitInputE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.389") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb26ParquetMetadataGlobalStateESt14default_deleteIS1_EED2Ev.exit:
  %3 = alloca %"class.duckdb::unique_ptr.417", align 8 ; 4 uses
  tail call void @_ZNK6duckdb12optional_ptrIKNS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !608
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_ZN6duckdb9make_uniqINS_26ParquetMetadataGlobalStateEJNS_10unique_ptrINS_24ParquetMetadataFilePathsESt14default_deleteIS3_ELb1EEERNS_13ClientContextEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.417") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(512) %1)
  %i.c = load ptr, ptr %3, align 8, !tbaa !611
  store ptr %i.c, ptr %0, align 8, !tbaa !613
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb9make_uniqINS_26ParquetMetadataGlobalStateEJNS_10unique_ptrINS_24ParquetMetadataFilePathsESt14default_deleteIS3_ELb1EEERNS_13ClientContextEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.417") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(512) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.408", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !616
  store i64 %i.b, ptr %3, align 8, !tbaa !616
  store ptr null, ptr %1, align 8, !tbaa !616
  invoke void @_ZN6duckdb26ParquetMetadataGlobalStateC2ENS_10unique_ptrINS_24ParquetMetadataFilePathsESt14default_deleteIS2_ELb1EEERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(512) %2)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !611
  %i.c = load ptr, ptr %3, align 8, !tbaa !616    ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb24ParquetMetadataFilePathsESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !521  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb24ParquetMetadataFilePathsEEclEPS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.f, align 8, !tbaa !480
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !482
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !208
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !618
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !208
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !618
  br label %_ZNKSt14default_deleteIN6duckdb24ParquetMetadataFilePathsEEclEPS1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.g ], [ %i.s, %bb.h ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.i, label %_ZNKSt14default_deleteIN6duckdb24ParquetMetadataFilePathsEEclEPS1_.exit.i, !prof !471

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27
  br label %_ZNKSt14default_deleteIN6duckdb24ParquetMetadataFilePathsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb24ParquetMetadataFilePathsEEclEPS1_.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.e, %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.c) #28
  br label %_ZNSt10unique_ptrIN6duckdb24ParquetMetadataFilePathsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24ParquetMetadataFilePathsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb24ParquetMetadataFilePathsEEclEPS1_.exit.i
  ret void

bb.j:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb24ParquetMetadataFilePathsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  call void @_ZdlPv(ptr noundef nonnull %i.a) #28
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb23ParquetMetaDataOperator8FunctionERNS_13ClientContextERNS_18TableFunctionInputERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.duckdb::vector.169", align 8 ; 11 uses
  %6 = alloca %"struct.duckdb::OpenFileInfo", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_24GlobalTableFunctionStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !619  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_23LocalTableFunctionStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !621  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !624
  %i.i = load ptr, ptr %2, align 8, !tbaa !626
  %.not128 = icmp eq ptr %i.h, %i.i
  br i1 %.not128, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit
  %.047125 = phi i64 [ 0, %.lr.ph ], [ %i.bk, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.047125)
          to label %bb.c unwind label %.loopexit104 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !271  ; 5 uses
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !573
  %.not.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = ptrtoint ptr %i.y to i64
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !271
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !271
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %5, align 8, !tbaa !274   ; 7 uses
  %i.af = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.f, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #30
          to label %.noexc unwind label %.loopexit.split-lp105

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #29
          to label %.noexc71 unwind label %.loopexit104 ; 8 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  %i.ar = ptrtoint ptr %i.y to i64
  store i64 %i.ar, ptr %i.aq, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.z
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc71
  %i.as = ptrtoaddr ptr %i.ap to i64
  %i.at = sub i64 %i.af, %i.ag
  %i.au = add i64 %i.at, -8                       ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 24
  %i.ax = sub i64 %i.ag, %i.as
  %diff.check = icmp ugt i64 %i.ax, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader196, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aw, 4611686018427387900     ; 3 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ae, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.bb ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.ae, i64 %i.bb ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.bc = getelementptr i8, ptr %next.gep183, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep183, align 8, !alias.scope !630, !noalias !627
  %wide.load184 = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !630, !noalias !627
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !627, !noalias !630
  store <2 x i64> %wide.load184, ptr %i.bd, align 8, !alias.scope !627, !noalias !630
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !632

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader196

.lr.ph.i.i.i.i.i.i.i.preheader196:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader196, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader196 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader196 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !630, !noalias !627
  store i64 %i.bf, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !627, !noalias !630
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.z
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !633

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc71
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.noexc71 ], [ %i.az, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ae) #28
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ap, ptr %5, align 8, !tbaa !274
  store ptr %i.bi, ptr %i.j, align 8, !tbaa !271
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.bj, ptr %i.k, align 8, !tbaa !573
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.d
  %i.bk = add nuw i64 %.047125, 1                 ; 2 uses
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !624
  %i.bm = load ptr, ptr %2, align 8, !tbaa !626
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 104
  %i.br = icmp ult i64 %i.bk, %i.bq
  br i1 %i.br, label %bb.b, label %.preheader, !llvm.loop !634

.loopexit104:                                     ; preds = %bb.b, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit106 = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.loopexit.split-lp105:                            ; preds = %bb.f
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %.body77

bb.h:                                             ; preds = %.preheader, %bb.aq
  %.046 = phi i64 [ %i.dk, %bb.aq ], [ 0, %.preheader ] ; 5 uses
  %i.bs = icmp ult i64 %.046, 2048
  br i1 %i.bs, label %bb.i, label %bb.ar

bb.i:                                             ; preds = %bb.h
  %i.bt = load i8, ptr %i.l, align 8, !tbaa !635, !range !244, !noundef !245
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq i64 %.046, 0
  br i1 %.not, label %bb.k, label %bb.ar

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %i.m, ptr %6, align 8, !tbaa !12
  store i64 0, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.m, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.bv = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #27 ; 2 uses
  %.not.i.i72 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i72, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bv) #30
          to label %.noexc73 unwind label %bb.q

.noexc73:                                         ; preds = %bb.l
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.k
  %i.bw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24ParquetMetadataFilePathsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.m unwind label %.loopexit  ; 3 uses

bb.m:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 3 uses
  %i.by = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bx) #27 ; 2 uses
  %.not.i.i.i.i74 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i74, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.by) #30
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.n
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ca = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13MultiFileListELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz)
          to label %bb.o unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit4.i

bb.o:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.cb = invoke noundef zeroext i1 @_ZNK6duckdb13MultiFileList4ScanERNS_21MultiFileListScanDataERNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(72) %i.bw, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.p unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit4.i ; 2 uses

_ZNSt11unique_lockISt5mutexED2Ev.exit4.i:         ; preds = %bb.o, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bx) #27 ; 0 uses
  br label %.body

bb.p:                                             ; preds = %bb.o
  %i.ce = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bx) #27 ; 0 uses
  br i1 %i.cb, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit:                                        ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt11unique_lockISt5mutexED2Ev.exit4.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.cc, %_ZNSt11unique_lockISt5mutexED2Ev.exit4.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #27 ; 0 uses
  br label %bb.ab

bb.r:                                             ; preds = %bb.p
  %i.ch = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #27 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ci = load i64, ptr %i.r, align 8, !tbaa !654 ; 2 uses
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.r, align 8, !tbaa !654
  %i.ck = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #27 ; 0 uses
  invoke void @_ZN6duckdb25ParquetMetadataLocalState10InitializeERNS_13ClientContextERNS_12OpenFileInfoEm(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef %i.ci)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.cl = load ptr, ptr %i.s, align 8, !tbaa !521 ; 8 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i76, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
end_hunk_1
