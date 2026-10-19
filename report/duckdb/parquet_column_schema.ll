Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/parquet_column_schema?download=true
inline.NumInlined: 272
inline.NumDeleted: 157
begin_hunk_0_@_ZN6duckdb19ParquetColumnSchema16FromChildSchemasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeEmmmmONS_6vectorIS0_Lb1ESaIS0_EEENS_23ParquetColumnSchemaTypeE:bb.a
  br i1 %i.az, label %bb.m, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !61

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #18
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !62 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bf = load <2 x ptr>, ptr %7, align 8, !tbaa !65
  store <2 x ptr> %i.bf, ptr %i.ba, align 8, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !64
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZSt8_DestroyIPN6duckdb19ParquetColumnSchemaEEvT_S3_(ptr noundef %i.bb, ptr noundef %i.bd)
          to label %_ZSt8_DestroyIPN6duckdb19ParquetColumnSchemaES1_EvT_S3_RSaIT0_E.exit.i.i.i.i unwind label %bb.o, !inline_history !1

_ZSt8_DestroyIPN6duckdb19ParquetColumnSchemaES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %.not.i.i.i.i.i.i12 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i12, label %_ZN6duckdb6vectorINS_19ParquetColumnSchemaELb1ESaIS1_EEaSEOS3_.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6duckdb19ParquetColumnSchemaES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bb) #20, !inline_history !1
  br label %_ZN6duckdb6vectorINS_19ParquetColumnSchemaELb1ESaIS1_EEaSEOS3_.exit

bb.o:                                             ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #21, !inline_history !1
  unreachable

_ZN6duckdb6vectorINS_19ParquetColumnSchemaELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb19ParquetColumnSchemaES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.n
  ret void

bb.p:                                             ; preds = %_ZN6duckdb19ParquetColumnSchemaC2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.q ], [ %i.bk, %bb.p ]
  call void @_ZN6duckdb19ParquetColumnSchemaD2Ev(ptr noundef nonnull align 8 dead_on_return(157) dereferenceable(157) %0) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb19ParquetColumnSchema13FileRowNumberEv(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::ParquetColumnSchema") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !20
  store i8 0, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZN6duckdb19ParquetColumnSchemaC2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.f) #20
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb19ParquetColumnSchemaC2Ev.exit:         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 -1, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.i, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.j, align 4, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.l, i8 0, i64 28, i1 false)
  store i64 -1, ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i32 1, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 0, ptr %i.o, align 4, !tbaa !47
  %i.p = load i64, ptr %i.b, align 8, !tbaa !20
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.p, ptr noundef nonnull @.str, i64 noundef 15)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZN6duckdb19ParquetColumnSchemaC2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.s, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef zeroext 14)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.e

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.c
  %i.t = load i8, ptr %1, align 8, !tbaa !52
  store i8 %i.t, ptr %i.d, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.v, ptr %i.w, align 1, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !55
  %i.aa = load <2 x ptr>, ptr %i.x, align 8, !tbaa !55
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !55
  store <2 x ptr> %i.aa, ptr %i.y, align 8, !tbaa !55
  store i32 1, ptr %i.n, align 8, !tbaa !46
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

bb.d:                                             ; preds = %_ZN6duckdb19ParquetColumnSchemaC2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %i.ab, %bb.d ]
  call void @_ZN6duckdb19ParquetColumnSchemaD2Ev(ptr noundef nonnull align 8 dead_on_return(157) dereferenceable(157) %0) #18
  br label %common.resume
}

declare void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6duckdb19ParquetColumnSchema5StatsERKN14duckdb_parquet12FileMetaDataERKNS_14ParquetOptionsEmRKNS_6vectorINS1_11ColumnChunkELb1ESaIS9_EEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(157) %1, ptr noundef nonnull align 8 dereferenceable(361) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::BaseStatistics", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  switch i32 %i.b, label %bb.w [
    i32 2, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !75
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  invoke void @_ZN6duckdb12NumericStats13CreateUnknownENS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %6, ptr noundef nonnull %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #18
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.015.lcssa = phi i64 [ 0, %bb.d ], [ %i.i, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %8, i64 noundef %.015.lcssa)
          to label %bb.g unwind label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #18
  br label %bb.v

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.031 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.d ]   ; 2 uses
  %.01530 = phi i64 [ %i.i, %bb.f ], [ 0, %bb.d ]
  %i.f = invoke noundef nonnull align 8 dereferenceable(91) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.031)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !91
  %i.i = add i64 %i.h, %.01530                    ; 2 uses
  %i.j = add nuw i64 %.031, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72

bb.g:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb12NumericStats6SetMinERNS_14BaseStatisticsERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.k = invoke noundef nonnull align 8 dereferenceable(91) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %4)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !91
  %i.n = add i64 %i.m, %.015.lcssa
  invoke void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %9, i64 noundef %i.n)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb12NumericStats6SetMaxERNS_14BaseStatisticsERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  invoke void @_ZN6duckdb14BaseStatistics3SetENS_9StatsInfoE(ptr noundef nonnull align 8 dereferenceable(128) %6, i8 noundef zeroext 1)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.x

bb.n:                                             ; preds = %._crit_edge
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.p, %bb.o ], [ %i.o, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.u

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn24 = phi { ptr, i32 } [ %i.r, %bb.r ], [ %i.q, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph, %bb.l, %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.p
  %.pn26 = phi { ptr, i32 } [ %.pn, %bb.p ], [ %.pn24, %bb.s ], [ %i.s, %bb.t ]
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.e
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.u ], [ %i.e, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn26.pn

bb.w:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !103, !range !104, !noundef !105
  %i.v = trunc nuw i8 %i.u to i1
  tail call void @_ZN6duckdb22ParquetStatisticsUtils25TransformColumnStatisticsERKNS_19ParquetColumnSchemaERKNS_6vectorIN14duckdb_parquet11ColumnChunkELb1ESaIS6_EEEb(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(157) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext %i.v)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.m, %bb.b
  ret void
}

declare void @_ZN6duckdb12NumericStats13CreateUnknownENS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::BaseStatistics") align 8, ptr noundef) local_unnamed_addr #3

declare void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(91) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.e = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  store i64 %i.i, ptr %i.b, align 8, !tbaa !11
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EE3getILb1EEERKS2_m.exit, label %bb.b, !prof !110

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EE3getILb1EEERKS2_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare void @_ZN6duckdb12NumericStats6SetMinERNS_14BaseStatisticsERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #4

declare void @_ZN6duckdb12NumericStats6SetMaxERNS_14BaseStatisticsERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN6duckdb14BaseStatistics3SetENS_9StatsInfoE(ptr noundef nonnull align 8 dereferenceable(128), i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128)) unnamed_addr #4

declare void @_ZN6duckdb22ParquetStatisticsUtils25TransformColumnStatisticsERKNS_19ParquetColumnSchemaERKNS_6vectorIN14duckdb_parquet11ColumnChunkELb1ESaIS6_EEEb(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(157), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

declare void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPN6duckdb19ParquetColumnSchemaEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i2 = icmp eq ptr %0, %1
  br i1 %.not.i2, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb19ParquetColumnSchemaEEEvT_S5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb19ParquetColumnSchemaEEvPT_.exit
  %.0.i3 = phi ptr [ %i.l, %_ZSt8_DestroyIN6duckdb19ParquetColumnSchemaEEvPT_.exit ], [ %0, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i3, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i3, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  invoke void @_ZSt8_DestroyIPN6duckdb19ParquetColumnSchemaEEvT_S3_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZNSt6vectorIN6duckdb19ParquetColumnSchemaESaIS1_EED2Ev.exit.i.i unwind label %bb.b, !inline_history !111

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21, !inline_history !111
  unreachable

_ZNSt6vectorIN6duckdb19ParquetColumnSchemaESaIS1_EED2Ev.exit.i.i: ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6duckdb19ParquetColumnSchemaESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb19ParquetColumnSchemaESaIS1_EED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #20
  br label %_ZNSt12_Vector_baseIN6duckdb19ParquetColumnSchemaESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb19ParquetColumnSchemaESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb19ParquetColumnSchemaESaIS1_EED2Ev.exit.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i3, i64 72
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #18, !inline_history !112
  %i.i = load ptr, ptr %.0.i3, align 8, !tbaa !18 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i3, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyIN6duckdb19ParquetColumnSchemaEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb19ParquetColumnSchemaESaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.i) #20, !inline_history !112
  br label %_ZSt8_DestroyIN6duckdb19ParquetColumnSchemaEEvPT_.exit

_ZSt8_DestroyIN6duckdb19ParquetColumnSchemaEEvPT_.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb19ParquetColumnSchemaESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
end_hunk_0
