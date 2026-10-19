Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_processing_engine-29623f8a98fce32b.influxdb3_processing_engine.c6e3dd7cfd28d213-cgu.14?download=true
inline.NumInlined: 847
inline.NumDeleted: 393
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMsn_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_7RawIterTNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16TriggerRuntimeIdNtBY_12TriggerStateEE13drop_elementsB10_:bb.a
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -1408 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16TriggerRuntimeIdNtB15_12TriggerStateEE9next_implKb0_EB17_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.d, align 8, !alias.scope !1634
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [88 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.f, -1                         ; 3 uses
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -88
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16TriggerRuntimeIdNtBE_12TriggerStateEEBG_(ptr noalias noundef align 8 dereferenceable(88) %i.u)
  %.old3 = icmp eq i64 %i.t, 0
  br i1 %.old3, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(440) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 14 uses
  %i.k = alloca [8 x i8], align 8                 ; 11 uses
  %i.l = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.n, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.o = load i64, ptr %i.d, align 8, !range !7, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !1657, !noundef !4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.s, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp ule i64 %i.n, %i.r
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.r, ptr %i.l, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ab, 6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %.noexc, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.d

.thread64:                                        ; preds = %bb.ah, %bb.h, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsh4GC5dvIChH_27influxdb3_processing_engine.exit39
  %.sroa.0.083 = phi ptr [ %i.z, %.lr.ph ], [ %i.al, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsh4GC5dvIChH_27influxdb3_processing_engine.exit39 ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.an = invoke noundef ptr @_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8databaseNtB4_14DatabaseSchema22table_definition_by_id(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(440) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.am)
          to label %bb.h unwind label %.thread64

.noexc.loopexit:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsh4GC5dvIChH_27influxdb3_processing_engine.exit39
  %.sroa.049.0.copyload.pre = load i64, ptr %i.l, align 8
  %.sroa.450.0.copyload.pre = load ptr, ptr %i.w, align 8
  %.sroa.551.0.copyload.pre = load i64, ptr %i.x, align 8
  br label %.noexc

.noexc:                                           ; preds = %.noexc.loopexit, %bb.c
  %.sroa.551.0.copyload = phi i64 [ %.sroa.551.0.copyload.pre, %.noexc.loopexit ], [ 0, %bb.c ] ; 3 uses
  %.sroa.450.0.copyload = phi ptr [ %.sroa.450.0.copyload.pre, %.noexc.loopexit ], [ %i.u, %bb.c ] ; 2 uses
  %.sroa.049.0.copyload = phi i64 [ %.sroa.049.0.copyload.pre, %.noexc.loopexit ], [ %i.r, %bb.c ]
  %i.ao = icmp ult i64 %.sroa.551.0.copyload, 192153584101141163
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1658
  store i64 %.sroa.551.0.copyload, ptr %i.c, align 8, !noalias !1658
  %i.ap = mul nuw nsw i64 %.sroa.551.0.copyload, 48 ; 2 uses
  %i.aq = call { ptr, i64 } @_RINvMso_NtCscdodAO9FK5_5alloc4syncINtB6_3ArcSNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementE19allocate_for_layoutNCNvMsr_B6_Bw_21allocate_for_slice_in0NCB20_s_0ECsh4GC5dvIChH_27influxdb3_processing_engine(i64 noundef 8, i64 noundef %i.ap, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1658
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull align 8 %.sroa.450.0.copyload, i64 %i.ap, i1 false), !noalias !1658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1658
  store i64 %.sroa.049.0.copyload, ptr %i.b, align 8, !noalias !1658
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.450.0.copyload, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1658
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !1658
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.at, align 8, !noalias !1658
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementRNtNtB7_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementRNtNtBG_5alloc6GlobalEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i unwind label %bb.e, !noalias !1658

bb.e:                                             ; preds = %.noexc
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementRNtNtB7_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.f, !noalias !1658

bb.f:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1658
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementRNtNtBG_5alloc6GlobalEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %.noexc
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementRNtNtB7_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1658
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.aw = extractvalue { ptr, i64 } %i.aq, 1
  store ptr %i.ar, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aw, ptr %i.ax, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementEECsh4GC5dvIChH_27influxdb3_processing_engine.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementRNtNtBG_5alloc6GlobalEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.h:                                             ; preds = %bb.d
  %i.ay = invoke { i64, ptr } @_RINvXs_NtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEINtB7_7ContextB1b_NtNtBE_7convert10InfallibleE7contextReECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noundef %i.an, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15)
          to label %bb.i unwind label %.thread64  ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.az = extractvalue { i64, ptr } %i.ay, 0
  %i.ba = extractvalue { i64, ptr } %i.ay, 1      ; 3 uses
  %i.bb = trunc nuw i64 %i.az to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  br i1 %i.bb, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bc, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementEECsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.thread, %bb.e, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %.pn2860, %.thread ], [ %i.au, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementEECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %bb.g

.body32:                                          ; preds = %.loopexit.split-lp, %bb.y, %bb.u, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.u ], [ %i.dd, %bb.y ], [ %i.cx, %bb.v ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer11TableBufferECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(48) %i.j) #26
          to label %.body34 unwind label %bb.ai

.loopexit.split-lp:                               ; preds = %.loopexit, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body32

bb.m:                                             ; preds = %bb.i
  store ptr %i.ba, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr null, ptr %i.ae, align 8
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  store i64 0, ptr %i.j, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.418.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.519.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !1659, !noundef !4 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %._crit_edge, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.m
  %i.bi = load ptr, ptr %.sroa.0.083, align 8, !alias.scope !1659, !nonnull !4, !noundef !4 ; 3 uses
  %.val24.i = load <16 x i8>, ptr %i.bi, align 16, !noalias !1660
  %i.bj = icmp sgt <16 x i8> %.val24.i, splat (i8 -1)
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  br label %bb.o

bb.n:                                             ; preds = %.loopexit
  %i.bm = add i16 %.lcssa.i, -1
  %i.bn = and i16 %i.bm, %.lcssa.i
  %i.bo = add i64 %.sroa.1043.0135, -1            ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %.lr.ph139, %bb.n
  %.sroa.040.0138 = phi ptr [ %i.bi, %.lr.ph139 ], [ %.sroa.040.1, %bb.n ] ; 2 uses
  %.sroa.641.0137 = phi ptr [ %i.bl, %.lr.ph139 ], [ %.sroa.641.1, %bb.n ] ; 2 uses
  %.sroa.842.0136 = phi i16 [ %i.bk, %.lr.ph139 ], [ %i.bn, %bb.n ] ; 2 uses
  %.sroa.1043.0135 = phi i64 [ %i.bg, %.lr.ph139 ], [ %i.bo, %bb.n ]
  %.not11.i = icmp eq i16 %.sroa.842.0136, 0
  br i1 %.not11.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %i.bq = phi ptr [ %i.bu, %.lr.ph.i ], [ %.sroa.641.0137, %bb.o ] ; 2 uses
  %i.br = phi ptr [ %i.bt, %.lr.ph.i ], [ %.sroa.040.0138, %bb.o ]
  %.val79.i = load <16 x i8>, ptr %i.bq, align 16, !noalias !1661
  %i.bs = icmp sgt <16 x i8> %.val79.i, splat (i8 -1)
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -512 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.bs to i16       ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit

._crit_edge:                                      ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bv = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.q, label %bb.p

.loopexit:                                        ; preds = %.lr.ph.i, %bb.o
  %.sroa.641.1 = phi ptr [ %.sroa.641.0137, %bb.o ], [ %i.bu, %.lr.ph.i ]
  %.sroa.040.1 = phi ptr [ %.sroa.040.0138, %bb.o ], [ %i.bt, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i16 [ %.sroa.842.0136, %bb.o ], [ %.cast.i, %.lr.ph.i ] ; 3 uses
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [32 x i8], ptr %.sroa.040.1, i64 %i.ca ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -32
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !4
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 -16
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !4
  invoke void @_RNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB2_11TableBuffer12buffer_chunk(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j, i64 noundef %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cf, i64 noundef %i.ch)
          to label %bb.n unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %._crit_edge
  %i.ci = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  invoke void @_RNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB2_11TableBuffer8snapshot(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull %i.ci, i64 noundef 9223372036854775807)
          to label %bb.r unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cj = load i32, ptr %i.am, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ck = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1168 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !4, !noundef !4
  %i.cn = atomicrmw add ptr %i.cm, i64 1 monotonic, align 8
  %i.co = icmp slt i64 %i.cn, 0
  br i1 %i.co, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 1176
  %i.cq = load ptr, ptr %i.cl, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cr = load i64, ptr %i.cp, align 8, !noundef !4 ; 2 uses
  store ptr %i.cq, ptr %i.g, align 8
  store i64 %i.cr, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cs = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ct = load i64, ptr %i.i, align 8, !range !11, !noundef !4
  %i.cu = load i64, ptr %i.ah, align 8, !noundef !4 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 115292150460684698
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw [80 x i8], ptr %i.cs, i64 %i.cu
  store ptr %i.cs, ptr %i.e, align 8
  store ptr %i.cs, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %i.ct, ptr %.sroa.512.0..sroa_idx, align 8
  store ptr %i.cw, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content0ENtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchEB3J_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.w unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !1662
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.v, label %.body32

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.body32 unwind label %bb.ai

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 %i.cj, ptr %i.ai, align 8
  store ptr %i.cq, ptr %i.aj, align 8
  store i64 %i.cr, ptr %i.ak, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.da = load i64, ptr %i.x, align 8, !alias.scope !1663, !noundef !4 ; 3 uses
  %i.db = load i64, ptr %i.l, align 8, !range !11, !alias.scope !1663, !noundef !4
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementE8grow_oneCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.aa unwind label %bb.y, !noalias !1664

bb.y:                                             ; preds = %bb.x
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h) #26
          to label %.body32 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.df = load ptr, ptr %i.w, align 8, !alias.scope !1663, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %i.df, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dg, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.dh = add i64 %i.da, 1
  store i64 %i.dh, ptr %i.x, align 8, !alias.scope !1663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapxINtNtB8_3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapxINtNtBK_3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j) #26
          to label %.body34 unwind label %bb.ae

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapxINtNtBK_3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %bb.aa
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapxINtNtBK_3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %.body34 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapxINtNtBK_3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer11TableBufferECsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

.body34:                                          ; preds = %bb.ag, %bb.ac, %bb.ab, %.body32
  %.pn26 = phi { ptr, i32 } [ %.pn, %.body32 ], [ %i.dp, %bb.ag ], [ %i.dj, %bb.ac ], [ %i.di, %bb.ab ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  %i.dm = load ptr, ptr %i.k, align 8, !alias.scope !1667, !nonnull !4, !noundef !4
  %i.dn = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !1667
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.af, label %.thread

bb.af:                                            ; preds = %.body34
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.thread unwind label %bb.ai

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body34

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer11TableBufferECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  call void @llvm.experimental.noalias.scope.decl(metadata !1669)
  %i.dq = load ptr, ptr %i.k, align 8, !alias.scope !1670, !nonnull !4, !noundef !4
  %i.dr = atomicrmw sub ptr %i.dq, i64 1 release, align 8, !noalias !1670
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsh4GC5dvIChH_27influxdb3_processing_engine.exit39

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer11TableBufferECsh4GC5dvIChH_27influxdb3_processing_engine.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsh4GC5dvIChH_27influxdb3_processing_engine.exit39 unwind label %.thread64

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsh4GC5dvIChH_27influxdb3_processing_engine.exit39: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer11TableBufferECsh4GC5dvIChH_27influxdb3_processing_engine.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dt = icmp eq ptr %i.al, %i.ac
  br i1 %i.dt, label %.noexc.loopexit, label %bb.d

bb.ai:                                            ; preds = %bb.af, %bb.v, %.thread, %.body32
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread:                                          ; preds = %bb.af, %.body34, %.thread64
  %.pn2860 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread64 ], [ %.pn26, %.body34 ], [ %.pn26, %bb.af ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskkCPRT7oCWw_16influxdb3_py_api3wal15WalFlushElementEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(24) %i.l) #26
          to label %common.resume unwind label %bb.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs0_NtCsPDBpS1owJq_14http_body_util4fullINtB5_4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtCshmaE5oGZBqQ_9http_body4Body9size_hintCsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !4
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsh4GC5dvIChH_27influxdb3_processing_engine.exit

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !noundef !4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %.val.sink6 = phi i64 [ %.val, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsh4GC5dvIChH_27influxdb3_processing_engine.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val.sink6, ptr %i.c, align 8
  store i64 1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val.sink6, ptr %i.d, align 8
  ret void
end_hunk_0
