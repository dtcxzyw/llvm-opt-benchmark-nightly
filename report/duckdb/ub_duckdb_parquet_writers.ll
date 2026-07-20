inline.NumInlined: 2405
inline.NumDeleted: 1305
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6duckdb21PrimitiveColumnWriter14DictionarySizeERNS_26PrimitiveColumnWriterStateE:.noexc.i
  store i64 %i.e, ptr %i.c, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.d, ptr noundef nonnull align 1 dereferenceable(36) @.str.6, i64 36, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb21PrimitiveColumnWriter14FinalizeSchemaERNS_6vectorIN14duckdb_parquet13SchemaElementELb1ESaIS3_EEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb_parquet::SchemaElement", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !397
  %i.c = load ptr, ptr %1, align 8, !tbaa !398
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 440
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN6duckdb19ParquetColumnSchema14SetSchemaIndexEm(ptr noundef nonnull align 8 dereferenceable(157) %i.h, i64 noundef %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.l = load i8, ptr %i.k, align 4, !tbaa !599, !range !125, !noundef !126
  %i.m = trunc nuw i8 %i.l to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN14duckdb_parquet13SchemaElementC1Ev(ptr noundef nonnull align 8 dereferenceable(434) %2) #24
  %i.n = invoke noundef i32 @_ZN6duckdb13ParquetWriter23DuckDBTypeToParquetTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !514
  %i.q = load i32, ptr %i.o, align 8, !tbaa !600
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !400
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 432 ; 4 uses
  %i.t = load i16, ptr %i.s, align 8
  %i.u = and i16 %i.t, -14
  %i.v = or disjoint i16 %i.u, 5
  store i16 %i.v, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.b
  %i.x = load i64, ptr %i.i, align 8, !tbaa !435
  %.not = icmp eq i64 %i.x, -1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.y = load i16, ptr %i.s, align 8
  %i.z = or i16 %i.y, 128
  store i16 %i.z, ptr %i.s, align 8
  %i.aa = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !436
  br label %bb.f

bb.e:                                             ; preds = %bb.i, %bb.b, %bb.f, %bb.c, %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14duckdb_parquet13SchemaElementD1Ev(ptr noundef nonnull align 8 dereferenceable(434) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.ad

bb.f:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !176, !nonnull !126, !align !177
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !178, !nonnull !126, !align !177
  invoke void @_ZN6duckdb13ParquetWriter19SetSchemaPropertiesERKNS_11LogicalTypeERN14duckdb_parquet13SchemaElementEbRNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(434) %2, i1 noundef zeroext %i.m, ptr noundef nonnull align 8 dereferenceable(512) %i.ag)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !397 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !437
  %.not.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN14duckdb_parquet13SchemaElementC1EOS0_(ptr noundef nonnull align 8 dereferenceable(434) %i.ah, ptr noundef nonnull align 8 dereferenceable(434) %2) #24
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !397
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 440
  store ptr %i.al, ptr %i.a, align 8, !tbaa !397
  br label %_ZNSt6vectorIN14duckdb_parquet13SchemaElementESaIS1_EE9push_backEOS1_.exit

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorIN14duckdb_parquet13SchemaElementESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(434) %2)
          to label %_ZNSt6vectorIN14duckdb_parquet13SchemaElementESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN14duckdb_parquet13SchemaElementESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.h, %bb.i
  call void @_ZN14duckdb_parquet13SchemaElementD1Ev(ptr noundef nonnull align 8 dereferenceable(434) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i64 1
}

declare noundef i32 @_ZN6duckdb13ParquetWriter23DuckDBTypeToParquetTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN6duckdb13ParquetWriter19SetSchemaPropertiesERKNS_11LogicalTypeERN14duckdb_parquet13SchemaElementEbRNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(434), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(512)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18StructColumnWriter20InitializeWriteStateERN14duckdb_parquet8RowGroupE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(91) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.414", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !357
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !360
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.i = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27, !noalias !601 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, i8 0, i64 88, i1 false), !noalias !601
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb23StructColumnWriterStateE, i64 16), ptr %i.i, align 8, !tbaa !7, !noalias !601
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store ptr %2, ptr %i.k, align 8, !tbaa !364, !noalias !601
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i64 %i.h, ptr %i.l, align 8, !tbaa !604, !noalias !601
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false), !noalias !601
  store ptr %i.i, ptr %3, align 8, !tbaa !612, !alias.scope !601
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23StructColumnWriterStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.f       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !393  ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !394  ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 4 uses
  %i.w = icmp ugt i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #25
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !614
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !615  ; 11 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ult i64 %i.ac, %i.v
  br i1 %i.ad, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 120 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !616 ; 4 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = sub i64 %i.ag, %i.ab
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc14 unwind label %bb.f   ; 9 uses

.noexc14:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.af
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc14
  %5 = ptrtoaddr ptr %i.af to i64
  %6 = ptrtoaddr ptr %i.z to i64
  %i.aj = sub i64 %5, %6
  %i.ak = add i64 %i.aj, -8                       ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader71, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.an = add i64 %i.ag, -8
  %i.ao = sub i64 %i.an, %i.ab
  %i.ap = and i64 %i.ao, -8
  %i.aq = add i64 %i.ap, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.aq
  %scevgep42 = getelementptr i8, ptr %i.z, i64 %i.aq
  %bound0 = icmp ult ptr %i.ai, %scevgep42
  %bound1 = icmp ult ptr %i.z, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ai, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.z, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.au ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.z, i64 %i.au ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.av = getelementptr i8, ptr %next.gep43, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep43, align 8, !tbaa !9, !alias.scope !622, !noalias !617
  %wide.load44 = load <2 x i64>, ptr %i.av, align 8, !tbaa !9, !alias.scope !622, !noalias !617
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !9, !alias.scope !625, !noalias !622
  store <2 x i64> %wide.load44, ptr %i.aw, align 8, !tbaa !9, !alias.scope !625, !noalias !622
  %i.ax = getelementptr i8, ptr %next.gep43, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep43, align 8, !tbaa !9, !alias.scope !622, !noalias !617
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !9, !alias.scope !622, !noalias !617
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !627

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader71

.lr.ph.i.i.i.i.i.preheader71:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.az = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !9, !alias.scope !620, !noalias !617
  store i64 %i.az, ptr %.012.i.i.i.i.i, align 8, !tbaa !9, !alias.scope !617, !noalias !620
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !9, !alias.scope !620, !noalias !617
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %i.af
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !628

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc14
  %.not.i8.i = icmp eq ptr %i.z, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.z) #26
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.ai, ptr %i.o, align 8, !tbaa !615
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store ptr %i.bc, ptr %i.ae, align 8, !tbaa !616
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.v
  store ptr %i.bd, ptr %i.x, align 8, !tbaa !614
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !629
  %.pre30 = load ptr, ptr %i.q, align 8, !tbaa !629
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.d
  %i.be = phi ptr [ %.pre30, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.r, %bb.d ] ; 2 uses
  %i.bf = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.s, %bb.d ] ; 2 uses
  %.not28 = icmp eq ptr %i.bf, %i.be
  br i1 %.not28, label %_ZNSt10unique_ptrIN6duckdb23StructColumnWriterStateESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIN6duckdb23StructColumnWriterStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.bg = load ptr, ptr %3, align 8, !tbaa !612
  store ptr %i.bg, ptr %0, align 8, !tbaa !370
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.c, %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit
  %.sroa.024.029 = phi ptr [ %i.df, %_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit ], [ %i.bf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ] ; 2 uses
  %i.bi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23StructColumnWriterStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.m       ; 3 uses

bb.g:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12ColumnWriterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.024.029)
          to label %bb.h unwind label %bb.n       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(240) %i.bk, ptr noundef nonnull align 8 dereferenceable(91) %2)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 120 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !616 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 128 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !614
  %.not.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i, label %bb.j, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.i
  %i.bs = load i64, ptr %4, align 8, !tbaa !9
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !616
  br label %_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !615 ; 11 uses
  %i.bv = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #25
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #27
          to label %.noexc16 unwind label %.loopexit ; 10 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx
  %i.ch = load i64, ptr %4, align 8, !tbaa !9
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !9
  store ptr null, ptr %4, align 8, !tbaa !9
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.bp
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc16
  %7 = ptrtoaddr ptr %i.bp to i64
  %8 = ptrtoaddr ptr %i.bu to i64
  %i.ci = sub i64 %7, %8
  %i.cj = add i64 %i.ci, -8                       ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check55 = icmp ult i64 %i.cj, 56
  br i1 %min.iters.check55, label %.lr.ph.i.i.i.i.i.i.i.preheader70, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep47 = getelementptr i8, ptr %i.cf, i64 8
  %i.cm = add i64 %i.bv, -8
  %i.cn = sub i64 %i.cm, %i.bw
  %i.co = and i64 %i.cn, -8                       ; 2 uses
  %scevgep48 = getelementptr i8, ptr %scevgep47, i64 %i.co
  %scevgep49 = getelementptr i8, ptr %i.bu, i64 8
  %scevgep50 = getelementptr i8, ptr %scevgep49, i64 %i.co
  %bound051 = icmp ult ptr %i.cf, %scevgep50
  %bound152 = icmp ult ptr %i.bu, %scevgep48
  %found.conflict53 = and i1 %bound051, %bound152
  br i1 %found.conflict53, label %.lr.ph.i.i.i.i.i.i.i.preheader70, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck46
  %n.vec58 = and i64 %i.cl, 4611686018427387900   ; 3 uses
  %i.cp = shl i64 %n.vec58, 3                     ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cf, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bu, i64 %i.cp
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %i.cs = shl i64 %index60, 3                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.cf, i64 %i.cs ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.bu, i64 %i.cs ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.ct = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load63 = load <2 x i64>, ptr %next.gep62, align 8, !tbaa !9, !alias.scope !635, !noalias !630
  %wide.load64 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !9, !alias.scope !635, !noalias !630
  %i.cu = getelementptr i8, ptr %next.gep61, i64 16
  store <2 x i64> %wide.load63, ptr %next.gep61, align 8, !tbaa !9, !alias.scope !638, !noalias !635
  store <2 x i64> %wide.load64, ptr %i.cu, align 8, !tbaa !9, !alias.scope !638, !noalias !635
  %i.cv = getelementptr i8, ptr %next.gep62, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep62, align 8, !tbaa !9, !alias.scope !635, !noalias !630
  store <2 x ptr> splat (ptr null), ptr %i.cv, align 8, !tbaa !9, !alias.scope !635, !noalias !630
  %index.next65 = add nuw i64 %index60, 4         ; 2 uses
  %i.cw = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.cw, label %middle.block66, label %vector.body59, !llvm.loop !640

middle.block66:                                   ; preds = %vector.body59
  %cmp.n67 = icmp eq i64 %i.cl, %n.vec58
  br i1 %cmp.n67, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader70

.lr.ph.i.i.i.i.i.i.i.preheader70:                 ; preds = %vector.memcheck46, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block66
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck46 ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block66 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bu, %vector.memcheck46 ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cr, %middle.block66 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader70, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader70 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader70 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.cx = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !9, !alias.scope !633, !noalias !630
  store i64 %i.cx, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !9, !alias.scope !630, !noalias !633
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !9, !alias.scope !633, !noalias !630
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !641

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block66, %.noexc16
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.noexc16 ], [ %i.cq, %middle.block66 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bu) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.l
  store ptr %i.cf, ptr %i.bj, align 8, !tbaa !615
  store ptr %i.da, ptr %i.bo, align 8, !tbaa !616
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.db, ptr %i.bq, align 8, !tbaa !614
  %.pr = load ptr, ptr %4, align 8, !tbaa !9      ; 3 uses
  %.not.i17 = icmp eq ptr %.pr, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17ColumnWriterStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17ColumnWriterStateEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.dc = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.pr) #24, !inline_history !369
  br label %_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb17ColumnWriterStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.024.029, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.df, %i.be
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb23StructColumnWriterStateESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %bb.h, %bb.g
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit20

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.di = load ptr, ptr %4, align 8, !tbaa !9     ; 3 uses
  %.not.i18 = icmp eq ptr %i.di, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit20, label %_ZNKSt14default_deleteIN6duckdb17ColumnWriterStateEEclEPS1_.exit.i19

_ZNKSt14default_deleteIN6duckdb17ColumnWriterStateEEclEPS1_.exit.i19: ; preds = %bb.o
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.di) #24, !inline_history !369
  br label %_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit20

_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit20: ; preds = %_ZNKSt14default_deleteIN6duckdb17ColumnWriterStateEEclEPS1_.exit.i19, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.n ], [ %lpad.phi, %bb.o ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb17ColumnWriterStateEEclEPS1_.exit.i19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit20, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.f ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb17ColumnWriterStateESt14default_deleteIS1_EED2Ev.exit20 ], [ %i.dg, %bb.m ]
  %i.dm = load ptr, ptr %3, align 8, !tbaa !612   ; 3 uses
  %.not.i21 = icmp eq ptr %i.dm, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN6duckdb23StructColumnWriterStateESt14default_deleteIS1_EED2Ev.exit23, label %_ZNKSt14default_deleteIN6duckdb23StructColumnWriterStateEEclEPS1_.exit.i22

_ZNKSt14default_deleteIN6duckdb23StructColumnWriterStateEEclEPS1_.exit.i22: ; preds = %bb.p
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(136) %i.dm) #24, !inline_history !642
  br label %_ZNSt10unique_ptrIN6duckdb23StructColumnWriterStateESt14default_deleteIS1_EED2Ev.exit23

_ZNSt10unique_ptrIN6duckdb23StructColumnWriterStateESt14default_deleteIS1_EED2Ev.exit23: ; preds = %bb.p, %_ZNKSt14default_deleteIN6duckdb23StructColumnWriterStateEEclEPS1_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_23StructColumnWriterStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !612    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_23StructColumnWriterStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
end_hunk_0
