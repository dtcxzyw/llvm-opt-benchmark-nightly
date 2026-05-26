inline.NumInlined: 975
inline.NumDeleted: 448
begin_hunk_0_@_ZN6duckdbL24CreateFloatingPointStatsERKNS_11LogicalTypeERKNS_19ParquetColumnSchemaERKN14duckdb_parquet10StatisticsE:bb.a

bb.ah:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.x, %bb.r, %bb.n
  %.pn22 = phi { ptr, i32 } [ %i.v, %bb.ah ], [ %.pn20, %bb.ag ], [ %i.k, %bb.n ], [ %i.o, %bb.r ], [ %.pn, %bb.x ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.m, %bb.l
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %bb.ai ], [ %i.j, %bb.m ], [ %i.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.k, %bb.j
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %bb.aj ], [ %i.h, %bb.k ], [ %i.g, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.i
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn, %bb.ak ], [ %i.f, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn22.pn.pn.pn
}

declare void @_ZN6duckdb11StringStats13CreateUnknownENS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::BaseStatistics") align 8, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb18StringColumnReader7IsValidERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN6duckdb11StringStats6SetMinERNS_14BaseStatisticsERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN6duckdb11StringStats6SetMaxERNS_14BaseStatisticsERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN6duckdb13GeometryStats13CreateUnknownENS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::BaseStatistics") align 8, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb13GeometryStats9GetExtentERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare noundef nonnull align 1 dereferenceable(4) ptr @_ZN6duckdb13GeometryStats8GetTypesERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare void @_ZN6duckdb14BaseStatistics13CreateUnknownENS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::BaseStatistics") align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !68     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !154

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb14BaseStatistics3SetENS_9StatsInfoE(ptr noundef nonnull align 8 dereferenceable(128), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6duckdb22ParquetStatisticsUtils20BloomFilterSupportedERKNS_13LogicalTypeIdE(ptr noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !170     ; 2 uses
  %i.b = icmp ult i8 %i.a, 32
  %switch.cast = zext nneg i8 %i.a to i32
  %switch.downshift = lshr i32 -155158528, %switch.cast
  %switch.masked = trunc i32 %switch.downshift to i1
  %.0 = select i1 %i.b, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6duckdb22ParquetStatisticsUtils19BloomFilterExcludesERKNS_11TableFilterERKN14duckdb_parquet14ColumnMetaDataERN13duckdb_apache6thrift8protocol9TProtocolERNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(538) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb_parquet::BloomFilterHeader", align 8 ; 11 uses
  %5 = alloca %"class.duckdb::unique_ptr.73", align 8 ; 9 uses
  %6 = alloca %"class.duckdb::ParquetBloomFilter", align 8 ; 10 uses
  %7 = alloca %"class.duckdb::unique_ptr.73", align 8 ; 2 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZN6duckdbL18HasFilterConstantsERKNS_11TableFilterE(ptr noundef nonnull align 8 dereferenceable(9) %0)
  br i1 %i.a, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 32
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !171
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %bb.af, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !172, !noalias !175 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !178, !noalias !175 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 7 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !175
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3, !noalias !175
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !3, !noalias !175
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4, !noalias !175 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.q = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.l, align 8, !tbaa !179
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !181
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #22, !inline_history !184
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !182
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #22, !inline_history !184
  br label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ac = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.k ], [ %i.ac, %bb.l ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.m, label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !154

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #22
  br label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !171 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !185
  %i.ag = load i16, ptr %i.b, align 8
  %i.ah = and i16 %i.ag, 64
  %.not24 = icmp eq i16 %i.ah, 0
  br i1 %.not24, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !210 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  tail call void @_ZN6duckdb15ReadAheadBuffer11AddReadHeadEmmb(ptr noundef nonnull align 8 dereferenceable(88) %i.am, i64 noundef %i.ae, i64 noundef %i.al, i1 noundef zeroext false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !211
  invoke void @_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef %i.ap)
          to label %_ZN6duckdb19ThriftFileTransport8PrefetchEmm.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable

_ZN6duckdb19ThriftFileTransport8PrefetchEmm.exit: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store ptr %i.as, ptr %i.at, align 8, !tbaa !212
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store ptr %i.as, ptr %i.au, align 8, !tbaa !213
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i64 0, ptr %i.av, align 8, !tbaa !214
  tail call void @_ZN6duckdb15ReadAheadBuffer8PrefetchEv(ptr noundef nonnull align 8 dereferenceable(88) %i.am)
  br label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb19ThriftFileTransport8PrefetchEmm.exit, %bb.n, %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN14duckdb_parquet17BloomFilterHeaderC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #22
  %i.aw = invoke noundef i32 @_ZN14duckdb_parquet17BloomFilterHeader4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull %2)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ay = load i8, ptr %i.ax, align 8
  %i.az = trunc i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bb = load i8, ptr %i.ba, align 8
  %i.bc = trunc i8 %i.bb to i1
  %or.cond = select i1 %i.az, i1 %i.bc, i1 false
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = trunc i8 %i.be to i1
  %or.cond33 = select i1 %or.cond, i1 %i.bf, i1 false
  br i1 %or.cond33, label %bb.t, label %bb.ad

bb.s:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.bi = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %.noexc unwind label %bb.y     ; 3 uses

.noexc:                                           ; preds = %bb.t
  %i.bj = load i32, ptr %i.bh, align 8, !tbaa !3, !noalias !215
  %i.bk = sext i32 %i.bj to i64
  invoke void @_ZN6duckdb16ResizeableBufferC2ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bk)
          to label %bb.v unwind label %bb.u, !noalias !215

bb.u:                                             ; preds = %.noexc
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #23, !noalias !215
  br label %.body

bb.v:                                             ; preds = %.noexc
  store ptr %i.bi, ptr %5, align 8, !tbaa !218, !alias.scope !215
  %i.bm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ResizeableBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !220
  %i.bo = load i32, ptr %i.bh, align 8, !tbaa !222
  %i.bp = invoke noundef i32 @_ZN6duckdb19ThriftFileTransport4readEPhj(ptr noundef nonnull align 8 dereferenceable(129) %i.i, ptr noundef %i.bn, i32 noundef %i.bo)
          to label %_ZN6duckdb10unique_ptrINS_16ResizeableBufferESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i unwind label %bb.z ; 0 uses

_ZN6duckdb10unique_ptrINS_16ResizeableBufferESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bq = load i64, ptr %5, align 8, !tbaa !218
  store ptr null, ptr %5, align 8, !tbaa !218
  %.cast = inttoptr i64 %i.bq to ptr
  store ptr null, ptr %7, align 8, !tbaa !218
  store ptr %.cast, ptr %6, align 8, !tbaa !218
  %i.br = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ResizeableBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev.exit unwind label %.body34

.body34:                                          ; preds = %_ZN6duckdb10unique_ptrINS_16ResizeableBufferESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  call void @_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #22
  br label %bb.ab

_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_16ResizeableBufferESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !233
  %i.bv = lshr i64 %i.bu, 5
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !234
  %i.bx = invoke fastcc noundef zeroext i1 @_ZN6duckdbL16ApplyBloomFilterERKNS_11TableFilterERNS_18ParquetBloomFilterE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev.exit
  %i.by = load ptr, ptr %6, align 8, !tbaa !218   ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.by, null
  br i1 %.not.i.i36, label %_ZN6duckdb18ParquetBloomFilterD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ResizeableBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16ResizeableBufferEEclEPS1_.exit.i.i: ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bz) #22
  call void @_ZdlPv(ptr noundef nonnull %i.by) #23
  br label %_ZN6duckdb18ParquetBloomFilterD2Ev.exit

_ZN6duckdb18ParquetBloomFilterD2Ev.exit:          ; preds = %bb.x, %_ZNKSt14default_deleteIN6duckdb16ResizeableBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ca = load ptr, ptr %5, align 8, !tbaa !218   ; 3 uses
  %.not.i37 = icmp eq ptr %i.ca, null
  br i1 %.not.i37, label %_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev.exit39, label %_ZNKSt14default_deleteIN6duckdb16ResizeableBufferEEclEPS1_.exit.i38

_ZNKSt14default_deleteIN6duckdb16ResizeableBufferEEclEPS1_.exit.i38: ; preds = %_ZN6duckdb18ParquetBloomFilterD2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cb) #22
  call void @_ZdlPv(ptr noundef nonnull %i.ca) #23
  br label %_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev.exit39

_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev.exit39: ; preds = %_ZN6duckdb18ParquetBloomFilterD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ResizeableBufferEEclEPS1_.exit.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ad

bb.y:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.w, %bb.v
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb18ParquetBloomFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.body34
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.aa ], [ %i.bs, %.body34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.cd, %bb.z ]
  call void @_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  br label %.body

.body:                                            ; preds = %bb.y, %bb.u, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ac ], [ %i.cc, %bb.y ], [ %i.bl, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ae

bb.ad:                                            ; preds = %bb.r, %_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev.exit39
  %.021 = phi i1 [ %i.bx, %_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev.exit39 ], [ false, %bb.r ]
end_hunk_0
begin_hunk_1_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_:bb.a
  store i64 %i.l, ptr %i.n, align 8, !tbaa !11
  store ptr %i.e, ptr %i.b, align 8, !tbaa !15
  store i64 0, ptr %i.m, align 8, !tbaa !11
  store i8 0, ptr %i.e, align 8, !tbaa !14
  ret void
}

declare void @_ZNK6duckdb17CachingFileHandle7GetPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.02229.i = phi i64 [ %i.h, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %.02328.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %i.b = icmp ult i64 %.02229.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add i32 %.02328.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.d = icmp ult i64 %.02229.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %.02328.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i64 %.02229.i, 10000
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = add i32 %.02328.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.h = udiv i64 %.02229.i, 10000
  %i.i = add i32 %.02328.i, 4                     ; 2 uses
  %i.j = icmp ult i64 %.02229.i, 100000
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i, !llvm.loop !295

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit:      ; preds = %bb.g, %bb.a, %bb.b, %bb.d, %bb.f
  %.0.i = phi i32 [ %i.g, %bb.f ], [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ 1, %bb.a ], [ %i.i, %bb.g ]
  %i.k = zext i32 %.0.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %0, align 8, !tbaa !7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i8 noundef signext 0)
  %i.m = load ptr, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.n = icmp ugt i64 %1, 99
  br i1 %i.n, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, -1
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.preheader.i
  %.020.i = phi i64 [ %i.u, %.lr.ph.i4 ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.01819.i = phi i32 [ %i.ae, %.lr.ph.i4 ], [ %i.r, %.lr.ph.preheader.i ] ; 3 uses
  %i.s = urem i64 %.020.i, 100
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = udiv i64 %.020.i, 100                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = zext i32 %.01819.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y
  store i8 %i.x, ptr %i.z, align 1, !tbaa !14
  %i.aa = load i8, ptr %i.v, align 2, !tbaa !14
  %i.ab = add i32 %.01819.i, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !14
  %i.ae = add i32 %.01819.i, -2
  %i.af = icmp ugt i64 %.020.i, 9999
  br i1 %i.af, label %.lr.ph.i4, label %._crit_edge.i, !llvm.loop !296

._crit_edge.i:                                    ; preds = %.lr.ph.i4, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %.0.lcssa.i = phi i64 [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit ], [ %i.u, %.lr.ph.i4 ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %.0.lcssa.i, 9
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ah = shl nuw nsw i64 %.0.lcssa.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !14
  %i.am = load i8, ptr %i.ai, align 2, !tbaa !14
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.an = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.ao = or disjoint i8 %i.an, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit: ; preds = %bb.h, %bb.i
  %storemerge.i = phi i8 [ %i.ao, %bb.i ], [ %i.am, %bb.h ]
  store i8 %storemerge.i, ptr %i.m, align 1, !tbaa !14
  ret void
}

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZN6duckdb12BufferHandleC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02224.i = load ptr, ptr %i.a, align 8, !tbaa !290 ; 2 uses
  %.not25.i = icmp eq ptr %.02224.i, null
  %.pre.i.pre.pre = load ptr, ptr %1, align 8, !tbaa !288 ; 6 uses
  br i1 %.not25.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i64, ptr %.pre.i.pre.pre, align 8, !tbaa !260 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pre.i.pre.pre, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !269
  %i.f = add i64 %i.e, %i.c                       ; 3 uses
  %.not.i.i = icmp ugt i64 %i.f, -16385
  %i.g = add i64 %i.f, 16384
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.f, i64 %i.g
  %spec.select.i.fr.i = freeze i64 %spec.select.i.i
  %invariant.umax.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %spec.select.i.fr.i)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02226.i = phi ptr [ %.02224.i, %.lr.ph.i ], [ %.022.i, %bb.b ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02226.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !288  ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !260  ; 2 uses
  %i.k = icmp ugt i64 %i.j, %invariant.umax.i     ; 2 uses
  %.in.v.i = select i1 %i.k, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02226.i, i64 %.in.v.i
  %.022.i = load ptr, ptr %.in.i, align 8, !tbaa !290 ; 2 uses
  %.not.i = icmp eq ptr %.022.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !297

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.k, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.021.lcssa31.i = phi ptr [ %.02226.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !212
  %i.n = icmp eq ptr %.021.lcssa31.i, %i.m
  br i1 %i.n, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa31.i) #27 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !288 ; 2 uses
  %.pre21 = load i64, ptr %.pre, align 8, !tbaa !260
  %.pre22 = load i64, ptr %.pre.i.pre.pre, align 8, !tbaa !260
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.p = phi i64 [ %.pre22, %bb.c ], [ %i.c, %._crit_edge.i ] ; 2 uses
  %i.q = phi i64 [ %.pre21, %bb.c ], [ %i.j, %._crit_edge.i ] ; 2 uses
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %._crit_edge.i ]
  %.021.lcssa30.i = phi ptr [ %.021.lcssa31.i, %bb.c ], [ %.02226.i, %._crit_edge.i ]
  %.sroa.07.0.i = phi ptr [ %i.o, %bb.c ], [ %.02226.i, %._crit_edge.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !269
  %i.u = add i64 %i.t, %i.q                       ; 3 uses
  %.not.i5.i = icmp ugt i64 %i.u, -16385
  %i.v = add i64 %i.u, 16384
  %spec.select.i6.i = select i1 %.not.i5.i, i64 %i.u, i64 %i.v
  %i.w = icmp ult i64 %i.q, %i.p
  %i.x = icmp ult i64 %spec.select.i6.i, %i.p
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  %cond.fr = freeze i1 %i.y
  br i1 %cond.fr, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.021.lcssa31.i, %._crit_edge.thread.i ], [ %.021.lcssa30.i, %bb.d ] ; 3 uses
  %i.z = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.z, label %_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !288
  %i.ac = load i64, ptr %.pre.i.pre.pre, align 8, !tbaa !260 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i.pre.pre, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !269
  %i.af = add i64 %i.ae, %i.ac                    ; 3 uses
  %i.ag = load i64, ptr %i.ab, align 8, !tbaa !260 ; 2 uses
  %.not.i.i6 = icmp ugt i64 %i.af, -16385
  %i.ah = add i64 %i.af, 16384
  %spec.select.i.i7 = select i1 %.not.i.i6, i64 %i.af, i64 %i.ah
  %i.ai = icmp ult i64 %i.ac, %i.ag
  %i.aj = icmp ult i64 %spec.select.i.i7, %i.ag
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br label %_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit

_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit: ; preds = %select.unfold, %bb.e
  %i.al = phi i1 [ %i.ak, %bb.e ], [ true, %select.unfold ]
  %i.am = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %.pre.i.pre.pre, ptr %i.an, align 8, !tbaa !288
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #22
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !214
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !214
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit
  %.sroa.012.0 = phi ptr [ %i.am, %_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit ], [ %.sroa.07.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298
  tail call void @_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !299  ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !300

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb15ReadAheadBuffer8PrefetchEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::BufferHandle", align 8 ; 5 uses
  %.sroa.010.013 = load ptr, ptr %0, align 8, !tbaa !259 ; 2 uses
  %.not14 = icmp eq ptr %.sroa.010.013, %0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.015 = phi ptr [ %.sroa.010.013, %.lr.ph ], [ %.sroa.010.0, %bb.f ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !269
  %i.e = load i64, ptr %i.b, align 8, !tbaa !260
  %i.f = add i64 %i.e, %i.d
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !294, !nonnull !256, !align !272
  %i.h = call noundef i64 @_ZN6duckdb17CachingFileHandle11GetFileSizeEv(ptr noundef nonnull align 8 dereferenceable(168) %i.g)
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.29)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.j) #22
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !294, !nonnull !256, !align !272
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 56
  %i.n = load i64, ptr %i.c, align 8, !tbaa !269
  %i.o = load i64, ptr %i.b, align 8, !tbaa !260
  call void @_ZN6duckdb17CachingFileHandle4ReadERPhmm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %1, ptr noundef nonnull align 8 dereferenceable(168) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.n, i64 noundef %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 32
  %i.q = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1) #22 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 64
  store i8 1, ptr %i.r, align 8, !tbaa !270
  %.sroa.010.0 = load ptr, ptr %.sroa.010.015, align 8, !tbaa !259 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0, %0
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare void @_ZN6duckdb17CachingFileHandle4ReadERPhmm(ptr dead_on_unwind writable sret(%"class.duckdb::BufferHandle") align 8, ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN6duckdb17CachingFileHandle13GetFileHandleEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare void @_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvmm(ptr noundef nonnull align 8 dereferenceable(80), ptr, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

declare void @_ZNK6duckdb5Value8GetValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6duckdb5Value8GetValueIiEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef i32 @_ZNK6duckdb5Value8GetValueIjEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef i64 @_ZNK6duckdb5Value8GetValueImEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef float @_ZNK6duckdb5Value8GetValueIfEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef double @_ZNK6duckdb5Value8GetValueIdEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @_ZN6duckdb21InvalidInputExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !301
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !7
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
end_hunk_1
