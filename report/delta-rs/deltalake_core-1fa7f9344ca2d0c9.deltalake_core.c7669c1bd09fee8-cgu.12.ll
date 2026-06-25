inline.NumInlined: 12919
inline.NumDeleted: 5719
begin_hunk_0_@_RINvMs1_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_readerNtB6_19ArrowReaderMetadata4loadNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ci:                                            ; preds = %.body.i
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !844
  unreachable

_RINvMs_NtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6readerNtB5_21ParquetMetaDataReader16parse_and_finishNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataEECs14kWLkQVSKO_14deltalake_core.exit.i14.i, %bb.by, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6reader21ParquetMetaDataReaderECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i
  %i.gx = load i64, ptr %i.ah, align 8, !range !59, !noundef !10 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, -9223372036854775808
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.gz, i64 32, i1 false)
  br i1 %i.gy, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_RINvMs_NtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6readerNtB5_21ParquetMetaDataReader16parse_and_finishNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader18ArrowReaderOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %2)
  br label %bb.cp

bb.ck:                                            ; preds = %_RINvMs_NtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6readerNtB5_21ParquetMetaDataReader16parse_and_finishNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.68.0..sroa_idx, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 1, ptr %i.af, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 1, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  store i64 %i.gx, ptr %i.hb, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !975
  %i.hc = call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2673) 184, i64 noundef range(i64 8, 17) 8) #41, !noalias !975 ; 3 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.cl, label %bb.co, !prof !49

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #46
          to label %.noexc18 unwind label %bb.cm

.noexc18:                                         ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.cl
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(168) %i.hb)
          to label %.thread unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.co:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.hc, ptr noundef nonnull align 8 dereferenceable(184) %i.af, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  call void @_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_readerNtB5_19ArrowReaderMetadata7try_new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %i.hc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cj
  ret void

bb.cq:                                            ; preds = %.thread
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.cr:                                            ; preds = %.thread
  resume { ptr, i32 } %.pn33

.thread:                                          ; preds = %bb.cm, %bb.cf, %bb.ce, %bb.cd, %bb.bx, %bb.bw, %bb.bv, %.body.i, %bb.g, %.thread40
  %.pn33 = phi { ptr, i32 } [ %i.az, %bb.g ], [ %i.gv, %.thread40 ], [ %eh.lpad-body.i, %.body.i ], [ %i.he, %bb.cm ], [ %i.gj, %bb.cd ], [ %i.fu, %bb.bv ], [ %i.fu, %bb.bx ], [ %i.fu, %bb.bw ], [ %i.gj, %bb.cf ], [ %i.gj, %bb.ce ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader18ArrowReaderOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %2) #44
          to label %bb.cr unwind label %bb.cq
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder13create_vectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = mul nuw nsw i64 %2, 24                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !10
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.e, i64 8)
  store i64 %.sroa.0.0.i, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !10 ; 3 uses
  %i.h = sub i64 0, %i.g
  %i.i = and i64 %i.h, 7                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.val1.i = load i64, ptr %i.j, align 8, !alias.scope !978, !noundef !10 ; 3 uses
  %i.k = icmp sgt i64 %.val1.i, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = sub i64 %.val1.i, %i.g
  %.not.i = icmp ult i64 %i.l, %i.i
  br i1 %.not.i, label %.lr.ph.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  tail call void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %0)
  %.val.i = load i64, ptr %i.j, align 8, !alias.scope !978, !noundef !10 ; 3 uses
  %i.m = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load i64, ptr %i.f, align 8, !alias.scope !978, !noundef !10 ; 2 uses
  %i.o = sub i64 %.val.i, %i.n
  %i.p = icmp ult i64 %i.o, %i.i
  br i1 %i.p, label %.lr.ph.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i, %bb.a
  %.val1.i4 = phi i64 [ %.val1.i, %bb.a ], [ %.val.i, %.lr.ph.i ] ; 2 uses
  %i.q = phi i64 [ %i.g, %bb.a ], [ %i.n, %.lr.ph.i ]
  %i.r = add i64 %i.q, %i.i                       ; 3 uses
  store i64 %i.r, ptr %i.f, align 8
  %i.s = or disjoint i64 %i.c, 4                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.t = sub i64 %.val1.i4, %i.r                  ; 2 uses
  %.not.i5 = icmp ult i64 %i.t, %i.s
  br i1 %.not.i5, label %bb.b, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit8

bb.b:                                             ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit
  %i.u = icmp samesign ult i64 %i.s, 2147483649
  br i1 %i.u, label %.lr.ph.i6, label %bb.c, !prof !984

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @266, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #49, !noalias !981
  unreachable

.lr.ph.i6:                                        ; preds = %bb.b, %.lr.ph.i6
  tail call void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %0)
  %.val.i7 = load i64, ptr %i.j, align 8, !alias.scope !981, !noundef !10 ; 3 uses
  %i.v = icmp sgt i64 %.val.i7, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.f, align 8, !alias.scope !981, !noundef !10 ; 2 uses
  %i.x = sub i64 %.val.i7, %i.w                   ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.s
  br i1 %i.y, label %.lr.ph.i6, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit8

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit8: ; preds = %.lr.ph.i6, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit
  %.pre-phi = phi i64 [ %i.t, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.x, %.lr.ph.i6 ] ; 3 uses
  %.val3 = phi i64 [ %.val1.i4, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit ], [ %.val.i7, %.lr.ph.i6 ] ; 3 uses
  %i.z = phi i64 [ %i.r, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.w, %.lr.ph.i6 ] ; 2 uses
  %i.aa = add i64 %i.z, %i.c                      ; 2 uses
  store i64 %i.aa, ptr %i.f, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = sub i64 %.val3, %i.aa                   ; 4 uses
  %i.ad = icmp ult i64 %.pre-phi, %i.ac
  %.not.i9 = icmp ugt i64 %i.z, %.val3
  %or.cond.i = or i1 %.not.i9, %i.ad
  br i1 %or.cond.i, label %bb.d, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit, !prof !985

bb.d:                                             ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit8
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %.pre-phi, i64 noundef range(i64 0, -9223372036854775808) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #49, !noalias !986
  unreachable

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit8
  %.val = load ptr, ptr %i.ab, align 8, !nonnull !10, !noundef !10
  %i.ae = sub nuw i64 %.pre-phi, %i.ac            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ac ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  %i.ah = urem i64 %i.ae, 24                      ; 2 uses
  %i.ai = sub nuw nsw i64 %i.ae, %i.ah            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !989
  store ptr %i.aj, ptr %i.a, align 8, !alias.scope !993, !noalias !997
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !993, !noalias !997
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.af, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !993, !noalias !997
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ai, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !993, !noalias !997
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 24, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !993, !noalias !997
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %1, ptr noundef nonnull %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !noalias !998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !989
  %.sroa.013.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.415.0.copyload = load ptr, ptr %.sroa.415.0..sroa_idx, align 8 ; 2 uses
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.517.0.copyload = load i64, ptr %.sroa.517.0..sroa_idx, align 8 ; 2 uses
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.618.0.copyload = load i64, ptr %.sroa.618.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.ak = icmp ult i64 %.sroa.618.0.copyload, %.sroa.8.0.copyload
  br i1 %i.ak, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph: ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.0.copyload), "nonnull"(ptr %.sroa.415.0.copyload) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.618.028 = phi i64 [ %.sroa.618.0.copyload, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph ], [ %i.ao, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.sroa.013.0.copyload, i64 %.sroa.618.028
  %i.am = mul i64 %.sroa.618.028, %.sroa.517.0.copyload
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.415.0.copyload, i64 %i.am
  %i.ao = add i64 %.sroa.618.028, 1               ; 2 uses
  call void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implhECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull %i.an, i64 noundef range(i64 0, -9223372036854775808) %.sroa.517.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(24) %i.al, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @498)
  %exitcond.not = icmp eq i64 %i.ao, %.sroa.8.0.copyload
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit
  %i.ap = load i64, ptr %i.d, align 8, !alias.scope !999, !noundef !10
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ap, i64 4)
  store i64 %.sroa.0.0.i.i, ptr %i.d, align 8, !alias.scope !999
  %i.aq = load i64, ptr %i.f, align 8, !alias.scope !999, !noundef !10 ; 3 uses
  %i.ar = sub i64 0, %i.aq
  %i.as = and i64 %i.ar, 3                        ; 3 uses
  %.val1.i.i = load i64, ptr %i.j, align 8, !alias.scope !1002, !noundef !10 ; 3 uses
  %i.at = icmp sgt i64 %.val1.i.i, -1
  call void @llvm.assume(i1 %i.at)
  %i.au = sub i64 %.val1.i.i, %i.aq
  %.not.i.i = icmp ult i64 %i.au, %i.as
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i:                                       ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, %.lr.ph.i.i
  call void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %0)
  %.val.i.i = load i64, ptr %i.j, align 8, !alias.scope !1002, !noundef !10 ; 3 uses
  %i.av = icmp sgt i64 %.val.i.i, -1
  call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.f, align 8, !alias.scope !1002, !noundef !10 ; 2 uses
  %i.ax = sub i64 %.val.i.i, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.as
  br i1 %i.ay, label %.lr.ph.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.i.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.val1.i3.i = phi i64 [ %.val1.i.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.val.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.az = phi i64 [ %i.aq, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B26_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.aw, %.lr.ph.i.i ]
  %i.ba = add i64 %i.az, %i.as                    ; 3 uses
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !999
  %i.bb = sub i64 %.val1.i3.i, %i.ba
  %.not.i4.i = icmp ult i64 %i.bb, 4
  br i1 %.not.i4.i, label %.lr.ph.i5.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i

.lr.ph.i5.i:                                      ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i5.i
  call void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %0)
  %.val.i6.i = load i64, ptr %i.j, align 8, !alias.scope !1005, !noundef !10 ; 3 uses
  %i.bc = icmp sgt i64 %.val.i6.i, -1
  call void @llvm.assume(i1 %i.bc)
  %i.bd = load i64, ptr %i.f, align 8, !alias.scope !1005, !noundef !10 ; 2 uses
  %i.be = sub i64 %.val.i6.i, %i.bd
  %i.bf = icmp ult i64 %i.be, 4
  br i1 %i.bf, label %.lr.ph.i5.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i: ; preds = %.lr.ph.i5.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i
  %.val1.i11 = phi i64 [ %.val1.i3.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.val.i6.i, %.lr.ph.i5.i ] ; 4 uses
  %i.bg = phi i64 [ %i.ba, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.bd, %.lr.ph.i5.i ] ; 2 uses
  %i.bh = add i64 %i.bg, 4                        ; 3 uses
  store i64 %i.bh, ptr %i.f, align 8, !alias.scope !999
  %i.bi = sub i64 %.val1.i11, %i.bh               ; 2 uses
  %i.bj = icmp ult i64 %.val1.i11, %i.bh
  br i1 %i.bj, label %bb.e, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !985

bb.e:                                             ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.bi, i64 noundef %.val1.i11, i64 noundef range(i64 0, -9223372036854775808) %.val1.i11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #49, !noalias !1008
  unreachable

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i
  %.not.i9.i = icmp ugt i64 %i.bg, -5
  br i1 %.not.i9.i, label %bb.f, label %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit, !prof !49

bb.f:                                             ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @241, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #49, !noalias !1011
  unreachable

_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bk = trunc i64 %2 to i32
  %.val.i12 = load ptr, ptr %i.ab, align 8, !alias.scope !999, !nonnull !10, !noundef !10
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i12, i64 %i.bi
  store i32 %i.bk, ptr %i.bl, align 1, !alias.scope !1015
  %i.bm = load i64, ptr %i.f, align 8, !alias.scope !999, !noundef !10
  %i.bn = trunc i64 %i.bm to i32
  ret i32 %i.bn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder16push_slot_alwaysINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, i16 noundef range(i16 8, 11) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1020, !noundef !10
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 4)
  store i64 %.sroa.0.0.i.i, ptr %i.a, align 8, !alias.scope !1020
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1020, !noundef !10 ; 3 uses
  %i.e = sub i64 0, %i.d
  %i.f = and i64 %i.e, 3                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val1.i.i = load i64, ptr %i.g, align 8, !alias.scope !1023, !noundef !10 ; 3 uses
  %i.h = icmp sgt i64 %.val1.i.i, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 %.val1.i.i, %i.d
  %.not.i.i = icmp ult i64 %i.i, %i.f
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  tail call void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %0)
  %.val.i.i = load i64, ptr %i.g, align 8, !alias.scope !1023, !noundef !10 ; 3 uses
  %i.j = icmp sgt i64 %.val.i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = load i64, ptr %i.c, align 8, !alias.scope !1023, !noundef !10 ; 2 uses
  %i.l = sub i64 %.val.i.i, %i.k
  %i.m = icmp ult i64 %i.l, %i.f
  br i1 %i.m, label %.lr.ph.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %.val1.i2.i = phi i64 [ %.val1.i.i, %bb.a ], [ %.val.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.n = phi i64 [ %i.d, %bb.a ], [ %i.k, %.lr.ph.i.i ]
  %i.o = add i64 %i.n, %i.f                       ; 3 uses
  store i64 %i.o, ptr %i.c, align 8, !alias.scope !1020
  %i.p = sub i64 %.val1.i2.i, %i.o
  %.not.i3.i = icmp ult i64 %i.p, 4
  br i1 %.not.i3.i, label %.lr.ph.i4.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i

.lr.ph.i4.i:                                      ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i4.i
  tail call void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %0)
  %.val.i5.i = load i64, ptr %i.g, align 8, !alias.scope !1026, !noundef !10 ; 3 uses
  %i.q = icmp sgt i64 %.val.i5.i, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load i64, ptr %i.c, align 8, !alias.scope !1026, !noundef !10 ; 2 uses
  %i.s = sub i64 %.val.i5.i, %i.r
  %i.t = icmp ult i64 %i.s, 4
  br i1 %i.t, label %.lr.ph.i4.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i: ; preds = %.lr.ph.i4.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i
  %.val1.i = phi i64 [ %.val1.i2.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.val.i5.i, %.lr.ph.i4.i ] ; 4 uses
  %i.u = phi i64 [ %i.o, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.r, %.lr.ph.i4.i ] ; 3 uses
  %i.v = add i64 %i.u, 4                          ; 3 uses
  store i64 %i.v, ptr %i.c, align 8, !alias.scope !1020
  %i.w = sub i64 %.val1.i, %i.v                   ; 2 uses
  %i.x = icmp ult i64 %.val1.i, %i.v
  br i1 %i.x, label %bb.b, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !985

bb.b:                                             ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.w, i64 noundef %.val1.i, i64 noundef range(i64 0, -9223372036854775808) %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #49, !noalias !1029
  unreachable

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i
  %.not.i8.i = icmp ugt i64 %i.u, -5
  br i1 %.not.i8.i, label %bb.c, label %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core.exit, !prof !49

bb.c:                                             ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @241, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #49, !noalias !1032
  unreachable

_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !1020, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.w
  %i.aa = trunc i64 %i.u to i32
  %reass.sub = sub i32 %i.aa, %2
  %i.ab = add i32 %reass.sub, 4
  store i32 %i.ab, ptr %i.z, align 1, !alias.scope !1036, !noalias !1039
  %i.ac = load i64, ptr %i.c, align 8, !alias.scope !1020, !noundef !10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1041, !noundef !10 ; 3 uses
  %i.ag = load i64, ptr %i.ad, align 8, !range !312, !alias.scope !1041, !noundef !10
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.d, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8grow_oneCsdl0l68gAy31_9arrow_ipc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  %i.ai = trunc i64 %i.ac to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !1041, !nonnull !10, !noundef !10
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.af ; 2 uses
  store i32 %i.ai, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i16 %1, ptr %i.am, align 4
  %i.an = add i64 %i.af, 1
  store i64 %i.an, ptr %i.ae, align 8, !alias.scope !1041
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtB6_9DeltaScan14with_log_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtBc_8logstore8LogStoreEL_EEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(168) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1044, !noundef !10 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1047
  %i.e = icmp eq i64 %i.d, 1
end_hunk_0
begin_hunk_1_@_RINvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts_1__NtB5_17MissingFilePolicyNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2O_4read9SliceReadEEBb_:bb.a
  store i8 %.sink9.i, ptr %0, align 8, !alias.scope !12696, !noalias !12699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12701
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts_1__NtB2t_17MissingFilePolicyNtB1l_11Deserialize11deserialize9___VisitorEB2z_.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts_1__NtB2t_17MissingFilePolicyNtB1l_11Deserialize11deserialize9___VisitorEB2z_.exit: ; preds = %bb.f, %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts_1__NtBb_17MissingFilePolicyNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1T_7Visitor10visit_enumINtNtCseqDwI8vvjGQ_10serde_json2de17UnitVariantAccessNtNtB3z_4read9SliceReadEEBh_.exit.i, %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts_1__NtBb_17MissingFilePolicyNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1T_7Visitor10visit_enumINtNtCseqDwI8vvjGQ_10serde_json2de13VariantAccessNtNtB3z_4read9SliceReadEEBh_.exit.thread.i, %bb.q, %bb.s, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12701
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts0_1__NtB8_13FileSelectionNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeNtB3_15___SerializeWithB1L_9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEBe_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !304, !noundef !10
  %i.b = tail call noundef align 8 ptr @_RINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next17serde_file_id_set9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts3_1__NtB8_15SnapshotWrapperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1P_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  switch i64 %2, label %bb.e [
    i64 8, label %bb.b
    i64 13, label %bb.d
  ], !prof !12722

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 1
  %i.b = icmp ne i64 %i.a, 8390039475830484563
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.e, align 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 1
  %i.g = xor i64 %i.f, 7020640619909833029
  %i.h = getelementptr i8, ptr %1, i64 5
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 8390039475830484563
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e, !prof !984

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  %i.o = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error15unknown_variantCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @125, i64 noundef 2)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.q, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %bb.e ], [ 0, %bb.c ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts_1__NtB8_17MissingFilePolicyNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1Q_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  switch i64 %2, label %bb.e [
    i64 5, label %bb.b
    i64 6, label %bb.d
  ], !prof !12722

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = xor i32 %i.a, 1869771333
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = xor i32 %i.e, 114
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.k, align 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 1
  %i.m = xor i32 %i.l, 1869506377
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i16, ptr %i.n, align 1
  %i.p = zext i16 %i.o to i32
  %i.q = xor i32 %i.p, 25970
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.e, !prof !984

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  %i.v = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error15unknown_variantCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @133, i64 noundef 2)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.x, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %bb.e ], [ 0, %bb.c ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts1_1__NtBe_13FileSelectionNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1T_7Visitor9visit_mapNtB3_17___DeserializeWithB1R_11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB4e_4read9SliceReadEEBk_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next17serde_file_id_set11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1T_4read9SliceReadEEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.b = load <2 x ptr>, ptr %i.a, align 16
  %i.c = load ptr, ptr %i.a, align 16, !noundef !10
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610.0..sroa_idx, i64 32, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store <2 x ptr> %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts1_1__NtBe_13FileSelectionNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1T_7Visitor9visit_seqNtB3_17___DeserializeWithB1R_11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB4e_4read9SliceReadEEBk_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next17serde_file_id_set11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1T_4read9SliceReadEEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.b = load <2 x ptr>, ptr %i.a, align 16
  %i.c = load ptr, ptr %i.a, align 16, !noundef !10
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610.0..sroa_idx, i64 32, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store <2 x ptr> %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCs68df2UN7hGg_6either8iteratorINtB8_6EitherIBD_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtBY_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB10_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2g_3vec9into_iter8IntoIterbEENCNvNtB3y_16delta_datafusion24files_matching_predicate0EINtNtBY_3map3MapB2b_NCB5q_s_0EEIB6j_INtNtBY_7flatten7FlatMapINtNtNtB12_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB6j_INtNtNtB12_3ops5range5RangejENCNCNvMs1_NtB3u_8log_dataNtB9m_14LogDataHandler4iter00ENCB9g_0ENCNvMNtNtB3w_11transaction16conflict_checkerNtBai_15TransactionInfo10read_filess_0EEB2L_4folduNCINvB6l_8map_foldNtNtNtB3w_6models7actions3AddNtNtB2g_6string6StringuNCNvMs0_Bai_NtBai_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIBbM_Bcu_TBcu_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBeN_7HashSetBcu_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2P_7collect6ExtendBcu_E6extendIB6j_BC_BcR_EE0NCINvNvB2L_8for_each4callBew_NCINvXs1i_NtBeP_3mapINtBhQ_7HashMapBcu_uBfA_EIBgp_Bew_E6extendIB6j_BgY_BeE_EE0E0E0E0EB3y_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [272 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [272 x i8], align 8               ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.6.i.i.i.i.i.i = alloca [264 x i8], align 8 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.8.i.i.i.i.i = alloca [40 x i8], align 8  ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = load i64, ptr %0, align 8, !range !343, !noundef !10
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBO_INtNtNtBc_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3o_14LogDataHandler4iter00ENCB3i_0ENCNvMNtNtB3s_11transaction16conflict_checkerNtB54_15TransactionInfo10read_filess_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtNtB3s_6models7actions3AddNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvMs0_B54_NtB54_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB71_B7I_TB7I_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBah_7HashSetB7I_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB6o_7collect6ExtendB7I_E6extendIBO_INtCs68df2UN7hGg_6either6EitherIBcx_INtNtB8_10filter_map9FilterMapINtNtB8_3zip3ZipINtNtB7M_5boxed3BoxDB6k_p4ItemNtNtB3q_9iterators15LogicalFileViewEL_EINtNtNtB7M_3vec9into_iter8IntoIterbEENCNvNtB3u_16delta_datafusion24files_matching_predicate0EIBO_BdQ_NCBfA_s_0EEBN_EB8l_EE0NCINvNvB6k_8for_each4callBa0_NCINvXs1i_NtBaj_3mapINtBhz_7HashMapB7I_uBb4_EIBbT_Ba0_E6extendIBO_Bcs_Ba8_EE0E0E0E0EB3u_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %_RINvXs0_NtCs68df2UN7hGg_6either8iteratorINtB8_6EitherINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtBU_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBW_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2c_3vec9into_iter8IntoIterbEENCNvNtB3t_16delta_datafusion24files_matching_predicate0EINtNtBU_3map3MapB27_NCB5l_s_0EEB2H_4folduNCINvB6g_8map_foldNtNtNtB3r_6models7actions3AddNtNtB2c_6string6StringuNCNvMs0_NtNtB3r_11transaction16conflict_checkerNtB88_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB6V_B7D_TB7D_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBav_7HashSetB7D_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2L_7collect6ExtendB7D_E6extendIB6e_IBD_BC_IB6e_INtNtBU_7flatten7FlatMapINtNtNtBY_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB6e_INtNtNtBY_3ops5range5RangejENCNCNvMs1_NtB3p_8log_dataNtBfp_14LogDataHandler4iter00ENCBfj_0ENCNvMB88_NtB8

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %i.k, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %i.l = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload) ]
  tail call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvNtB2j_16delta_datafusion24files_matching_predicates_0EB1x_4folduNCINvB6_8map_foldNtNtNtB2h_6models7actions3AddNtNtB12_6string6StringuNCNvMs0_NtNtB2h_11transaction16conflict_checkerNtB5T_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB4H_B5o_TB5o_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB8g_7HashSetB5o_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1B_7collect6ExtendB5o_E6extendIBO_INtCs68df2UN7hGg_6either6EitherIBaw_INtNtB8_10filter_map9FilterMapINtNtB8_3zip3ZipBX_INtNtNtB12_3vec9into_iter8IntoIterbEENCB3A_0EBN_EIBO_INtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBO_INtNtNtBc_3ops5range5RangejENCNCNvMs1_NtB2f_8log_dataNtBfa_14LogDataHandler4iter00ENCBf4_0ENCNvMB5T_NtB5T_15TransactionInfo10read_filess_0EEB5L_EE0NCINvNvB1x_8for_each4callB7Z_NCINvXs1i_NtB8i_3mapINtBhy_7HashMapB5o_uB93_EIB9S_B7Z_E6extendIBO_Bar_B87_EE0E0E0E0EB2j_(ptr noundef nonnull %.sroa.3.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.4.0.copyload, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !12723
  br label %_RINvXs0_NtCs68df2UN7hGg_6either8iteratorINtB8_6EitherINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtBU_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBW_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2c_3vec9into_iter8IntoIterbEENCNvNtB3t_16delta_datafusion24files_matching_predicate0EINtNtBU_3map3MapB27_NCB5l_s_0EEB2H_4folduNCINvB6g_8map_foldNtNtNtB3r_6models7actions3AddNtNtB2c_6string6StringuNCNvMs0_NtNtB3r_11transaction16conflict_checkerNtB88_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB6V_B7D_TB7D_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBav_7HashSetB7D_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2L_7collect6ExtendB7D_E6extendIB6e_IBD_BC_IB6e_INtNtBU_7flatten7FlatMapINtNtNtBY_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB6e_INtNtNtBY_3ops5range5RangejENCNCNvMs1_NtB3p_8log_dataNtBfp_14LogDataHandler4iter00ENCBfj_0ENCNvMB88_NtB8

bb.e:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12726
  store ptr %.sroa.0.0.copyload, ptr %i.h, align 8, !noalias !12731
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx2, align 8, !noalias !12731
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx4, align 8, !noalias !12731
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12738)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.8.0..sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.415.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.r, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !12741)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12744
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EBM_4nextB1V_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !12749

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  %i.o = load i64, ptr %i.f, align 8, !range !59, !noalias !12744, !noundef !10
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !12744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12744
  call void @llvm.experimental.noalias.scope.decl(metadata !12750)
  %i.p = load ptr, ptr %i.m, align 8, !alias.scope !12753, !noalias !12754, !nonnull !10, !noundef !10
  %i.q = load ptr, ptr %.sroa.5.0..sroa_idx6, align 8, !alias.scope !12753, !noalias !12754, !nonnull !10, !noundef !10 ; 3 uses
  %i.r = icmp eq ptr %i.q, %i.p
  br i1 %i.r, label %bb.i, label %bb.j

bb.h:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12744
  br label %.thread.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.thread.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !12749

.loopexit.i.i.i.i.i:                              ; preds = %.noexc7.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvMs0_NtNtB10_11transaction16conflict_checkerNtB2H_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB2_B1W_TB1W_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB53_7HashSetB1W_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1W_E6extendINtB4_3MapINtCs68df2UN7hGg_6either6EitherIB7x_INtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtNtB20_5boxed3BoxDNtNtB6J_8iterator8Iteratorp4ItemNtNtNtB10_8snapshot9iterators15LogicalFileViewEL_EINtNtNtB20_3vec9into_iter8IntoIterbEENCNvNtB12_16delta_datafusion24files_matching_predicate0EIB7n_B8Q_NCBb7_s_0EEIB7n_INtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB7n_INtNtNtBa_3ops5range5RangejENCNCNvMs1_NtB9K_8log_dataNtBeQ_14LogDataHandler4iter00ENCBeK_0ENCNvMB2H_NtB2H_15TransactionInfo10read_filess_0E, %_RNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion24files_matching_predicate0B5_.exit.i.i.i.i.i.i, %_RNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion24files_matching_predicate0B5_.exit.thread.i.i.i.i.i.i, %bb.f
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.i
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.p, %bb.m, %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.x, %bb.p ], [ %i.v, %bb.m ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB1j_3vec9into_iter8IntoIterbEEEB2A_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h) #44
          to label %bb.t unwind label %bb.s, !noalias !12749

.thread.i.i.i.i.i:                                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12744
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB1w_3vec9into_iter8IntoIterbEENCNvNtB2N_16delta_datafusion24files_matching_predicate0EB21_4folduNCINvNtB8_3map8map_foldNtNtNtB2L_6models7actions3AddNtNtB1w_6string6StringuNCNvMs0_NtNtB2L_11transaction16conflict_checkerNtB72_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB5K_B6x_TB6x_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB9p_7HashSetB6x_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB25_7collect6ExtendB6x_E6extendINtB5M_3MapINtCs68df2UN7hGg_6either6EitherIBbM_BV_IBbB_B1r_NCB4F_s_0EEIBbB_INtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBbB_INtNtNtBc_3ops5range5RangejENCNCNvMs1_NtB2J_8log_dataNtBff_14LogDataHandler4iter00ENCBf9_0ENCNvMB72_NtB72_15Transa

bb.j:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx6, align 8, !alias.scope !12753, !noalias !12754
  %i.t = load i8, ptr %i.q, align 1, !range !349, !noalias !12755, !noundef !10
  %.sroa.09.0.copyload10.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !12756 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx11.i.i.i.i.i, i64 40, i1 false), !noalias !12756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12744
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.09.0.copyload10.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB1w_3vec9into_iter8IntoIterbEENCNvNtB2N_16delta_datafusion24files_matching_predicate0EB21_4folduNCINvNtB8_3map8map_foldNtNtNtB2L_6models7actions3AddNtNtB1w_6string6StringuNCNvMs0_NtNtB2L_11transaction16conflict_checkerNtB72_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB5K_B6x_TB6x_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB9p_7HashSetB6x_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB25_7collect6ExtendB6x_E6extendINtB5M_3MapINtCs68df2UN7hGg_6either6EitherIBbM_BV_IBbB_B1r_NCB4F_s_0EEIBbB_INtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBbB_INtNtNtBc_3ops5range5RangejENCNCNvMs1_NtB2J_8log_dataNtBff_14LogDataHandler4iter00ENCBf9_0ENCNvMB72_NtB72_15Transa, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.415.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i.i.i.i, i64 40, i1 false), !noalias !12763
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  store i64 %.sroa.09.0.copyload10.i.i.i.i.i, ptr %i.e, align 8, !noalias !12764
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.l, label %_RNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion24files_matching_predicate0B5_.exit.thread.i.i.i.i.i.i

_RNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion24files_matching_predicate0B5_.exit.thread.i.i.i.i.i.i: ; preds = %bb.k
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.noexc5.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !12749

.noexc5.i.i.i.i.i:                                ; preds = %_RNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion24files_matching_predicate0B5_.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12757
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12757
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView10add_action(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %_RNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion24files_matching_predicate0B5_.exit.i.i.i.i.i.i unwind label %bb.m, !noalias !12765

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.body.i.i.i.i.i unwind label %bb.n, !noalias !12765

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !12765
  unreachable

_RNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion24files_matching_predicate0B5_.exit.i.i.i.i.i.i: ; preds = %bb.l
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !12766 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 264, i1 false), !noalias !12766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12757
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.noexc6.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !12749

.noexc6.i.i.i.i.i:                                ; preds = %_RNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion24files_matching_predicate0B5_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12757
  %.not.i4.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, 2
  br i1 %.not.i4.i.i.i.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.noexc6.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.46.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6.i.i.i.i.i.i, i64 264, i1 false), !noalias !12770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12767
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !12770
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvMs0_NtNtB10_11transaction16conflict_checkerNtB2H_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB2_B1W_TB1W_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB53_7HashSetB1W_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1W_E6extendINtB4_3MapINtCs68df2UN7hGg_6either6EitherIB7x_INtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtNtB20_5boxed3BoxDNtNtB6J_8iterator8Iteratorp4ItemNtNtNtB10_8snapshot9iterators15LogicalFileViewEL_EINtNtNtB20_3vec9into_iter8IntoIterbEENCNvNtB12_16delta_datafusion24files_matching_predicate0EIB7n_B8Q_NCBb7_s_0EEIB7n_INtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB7n_INtNtNtBa_3ops5range5RangejENCNCNvMs1_NtB9K_8log_dataNtBeQ_14LogDataHandler4iter00ENCBeK_0ENCNvMB2H_NtB2H_15TransactionInfo10read_filess_0E unwind label %bb.p, !noalias !12771

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.b) #44
          to label %.body.i.i.i.i.i unwind label %bb.q, !noalias !12772

bb.q:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !12772
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvMs0_NtNtB10_11transaction16conflict_checkerNtB2H_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB2_B1W_TB1W_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB53_7HashSetB1W_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1W_E6extendINtB4_3MapINtCs68df2UN7hGg_6either6EitherIB7x_INtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtNtB20_5boxed3BoxDNtNtB6J_8iterator8Iteratorp4ItemNtNtNtB10_8snapshot9iterators15LogicalFileViewEL_EINtNtNtB20_3vec9into_iter8IntoIterbEENCNvNtB12_16delta_datafusion24files_matching_predicate0EIB7n_B8Q_NCBb7_s_0EEIB7n_INtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB7n_INtNtNtBa_3ops5range5RangejENCNCNvMs1_NtB9K_8log_dataNtBeQ_14LogDataHandler4iter00ENCBeK_0ENCNvMB2H_NtB2H_15TransactionInfo10read_filess_0E: ; preds = %bb.o
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.b)
          to label %.noexc7.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !12749

.noexc7.i.i.i.i.i:                                ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvMs0_NtNtB10_11transaction16conflict_checkerNtB2H_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB2_B1W_TB1W_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB53_7HashSetB1W_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1W_E6extendINtB4_3MapINtCs68df2UN7hGg_6either6EitherIB7x_INtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtNtB20_5boxed3BoxDNtNtB6J_8iterator8Iteratorp4ItemNtNtNtB10_8snapshot9iterators15LogicalFileViewEL_EINtNtNtB20_3vec9into_iter8IntoIterbEENCNvNtB12_16delta_datafusion24files_matching_predicate0EIB7n_B8Q_NCBb7_s_0EEIB7n_INtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB7n_INtNtNtBa_3ops5range5RangejENCNCNvMs1_NtB9K_8log_dataNtBeQ_14LogDataHandler4iter00ENCBeK_0ENCNvMB2H_NtB2H_15TransactionInfo10read_filess_0E
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !12767
  %i.z = invoke noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc8.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !12749 ; 0 uses

.noexc8.i.i.i.i.i:                                ; preds = %.noexc7.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12767
  br label %bb.r

bb.r:                                             ; preds = %.noexc8.i.i.i.i.i, %.noexc6.i.i.i.i.i, %.noexc5.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  br label %bb.f

bb.s:                                             ; preds = %.body.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !12749
  unreachable

bb.t:                                             ; preds = %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB1w_3vec9into_iter8IntoIterbEENCNvNtB2N_16delta_datafusion24files_matching_predicate0EB21_4folduNCINvNtB8_3map8map_foldNtNtNtB2L_6models7actions3AddNtNtB1w_6string6StringuNCNvMs0_NtNtB2L_11transaction16conflict_checkerNtB72_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB5K_B6x_TB6x_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB9p_7HashSetB6x_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB25_7collect6ExtendB6x_E6extendINtB5M_3MapINtCs68df2UN7hGg_6either6EitherIBbM_BV_IBbB_B1r_NCB4F_s_0EEIBbB_INtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBbB_INtNtNtBc_3ops5range5RangejENCNCNvMs1_NtB2J_8log_dataNtBff_14LogDataHandler4iter00ENCBf9_0ENCNvMB72_NtB72_15Transa: ; preds = %bb.j, %.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB1j_3vec9into_iter8IntoIterbEEEB2A_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h), !noalias !12749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12726
  br label %_RINvXs0_NtCs68df2UN7hGg_6either8iteratorINtB8_6EitherINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtBU_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBW_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2c_3vec9into_iter8IntoIterbEENCNvNtB3t_16delta_datafusion24files_matching_predicate0EINtNtBU_3map3MapB27_NCB5l_s_0EEB2H_4folduNCINvB6g_8map_foldNtNtNtB3r_6models7actions3AddNtNtB2c_6string6StringuNCNvMs0_NtNtB3r_11transaction16conflict_checkerNtB88_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB6V_B7D_TB7D_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBav_7HashSetB7D_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2L_7collect6ExtendB7D_E6extendIB6e_IBD_BC_IB6e_INtNtBU_7flatten7FlatMapINtNtNtBY_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB6e_INtNtNtBY_3ops5range5RangejENCNCNvMs1_NtB3p_8log_dataNtBfp_14LogDataHandler4iter00ENCBfj_0ENCNvMB88_NtB8

_RINvXs0_NtCs68df2UN7hGg_6either8iteratorINtB8_6EitherINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtBU_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBW_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2c_3vec9into_iter8IntoIterbEENCNvNtB3t_16delta_datafusion24files_matching_predicate0EINtNtBU_3map3MapB27_NCB5l_s_0EEB2H_4folduNCINvB6g_8map_foldNtNtNtB3r_6models7actions3AddNtNtB2c_6string6StringuNCNvMs0_NtNtB3r_11transaction16conflict_checkerNtB88_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB6V_B7D_TB7D_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBav_7HashSetB7D_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2L_7collect6ExtendB7D_E6extendIB6e_IBD_BC_IB6e_INtNtBU_7flatten7FlatMapINtNtNtBY_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB6e_INtNtNtBY_3ops5range5RangejENCNCNvMs1_NtB3p_8log_dataNtBfp_14LogDataHandler4iter00ENCBfj_0ENCNvMB88_NtB8: ; preds = %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB1w_3vec9into_iter8IntoIterbEENCNvNtB2N_16delta_datafusion24files_matching_predicate0EB21_4folduNCINvNtB8_3map8map_foldNtNtNtB2L_6models7actions3AddNtNtB1w_6string6StringuNCNvMs0_NtNtB2L_11transaction16conflict_checkerNtB72_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0NCIB5K_B6x_TB6x_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB9p_7HashSetB6x_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB25_7collect6ExtendB6x_E6extendINtB5M_3MapINtCs68df2UN7hGg_6either6EitherIBbM_BV_IBbB_B1r_NCB4F_s_0EEIBbB_INtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBbB_INtNtNtBc_3ops5range5RangejENCNCNvMs1_NtB2J_8log_dataNtBff_14LogDataHandler4iter00ENCBf9_0ENCNvMB72_NtB72_15Transa, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvMsg_NtNtB1R_8adapters7flattenINtB2X_13FlattenCompatppE9iter_fold7flattenBX_uNCINvNvXsi_B2X_B3m_B1L_4fold7flattenINtNtNtB1T_5array4iter8IntoIterBY_KB1H_EuNCINvNvB1L_8for_each4callBY_NCINvMsj_B8_INtB8_3VecBY_E14extend_trustedINtB2X_7FlattenBI_EE0E0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.c
  br i1 %.not2, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropTINtNtBa_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB3i_EENCINvNtNtB1J_8adapters3map12map_try_foldBX_INtNtB1L_6result6ResultB3h_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2H_INtNtNtB1L_3ops12control_flow11ControlFlowIB58_B2H_zEB2H_ENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB7G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27sql_case_identifier_to_expr0NCINvXB4x_INtB4x_12GenericShuntINtB4v_3MapBI_B7x_EIB58_NtNtB1L_7convert10InfallibleB5y_EEB1D_8try_foldB2H_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3h_E0B7h_E0E0B6B_EB8X_:bb.a
.thread.i:                                        ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.al, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !13934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13934
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13927
  br label %bb.ac

bb.r:                                             ; preds = %.thread28.i.i, %.body.i.i, %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13944
  unreachable

bb.s:                                             ; preds = %bb.m
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 112, i64 noundef 16) #41, !noalias !13938, !inline_history !1184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13934
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.10.i)
  br label %bb.u

.thread28.i.i:                                    ; preds = %bb.h, %.thread32.i.i
  %eh.lpad-body1831.i.i = phi { ptr, i32 } [ %i.ab, %.thread32.i.i ], [ %i.ag, %bb.h ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.s) #44
          to label %bb.z unwind label %bb.r, !noalias !13944

bb.t:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.s, %bb.e
  %.sroa.85.0.i = phi ptr [ %.sroa.7.i.sroa.9.0.copyload14.i, %bb.e ], [ %.sroa.6.i.sroa.8.0.copyload23.i, %bb.s ] ; 3 uses
  %.sroa.63.0.i = phi ptr [ %.sroa.7.i.sroa.8.0.copyload11.i, %bb.e ], [ %.sroa.6.i.sroa.7.0.copyload20.i, %bb.s ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %.sroa.7.i.sroa.0.0.copyload8.i, %bb.e ], [ %.sroa.6.i.sroa.0.0.copyload17.i, %bb.s ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13927
  store ptr %2, ptr %i.a, align 8, !noalias !13948
  store ptr %.sroa.4.032, ptr %i.u, align 8, !noalias !13948
  %.not.i.i.i = icmp eq i64 %.sroa.01.0.i, 20
  br i1 %.not.i.i.i, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.ar, align 8, !nonnull !10, !noundef !10 ; 10 uses
  %i.as = load i64, ptr %.val.le, align 8, !range !1072, !alias.scope !13952, !noalias !13948, !noundef !10
  %i.at = icmp eq i64 %i.as, 20
  br i1 %i.at, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.ab unwind label %bb.x, !noalias !13948

bb.x:                                             ; preds = %bb.w
  %i.au = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.01.0.i, ptr %.val.le, align 8, !noalias !13948
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.63.0.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !noalias !13948
  %.sroa.612.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  store ptr %.sroa.85.0.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i, align 8, !noalias !13948
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, i64 16, i1 false), !noalias !13927
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1E_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.a) #44
          to label %.body.i unwind label %bb.y, !noalias !13948

bb.y:                                             ; preds = %bb.x
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13948
  unreachable

.body.i:                                          ; preds = %bb.z, %bb.x
  %eh.lpad-body27.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.z ], [ %i.au, %bb.x ]
  resume { ptr, i32 } %eh.lpad-body27.i

bb.z:                                             ; preds = %bb.t, %.thread28.i.i, %.body.i.i, %bb.k, %bb.c
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.aq, %bb.t ], [ %i.ai, %bb.k ], [ %eh.lpad-body1831.i.i, %.thread28.i.i ], [ %i.aa, %bb.c ], [ %i.an, %.body.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1E_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.j) #44
          to label %.body.i unwind label %bb.aa, !noalias !13927

bb.aa:                                            ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13927
  unreachable

._crit_edge:                                      ; preds = %bb.ac, %bb.a, %bb.ab
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.032, %bb.ab ], [ %3, %bb.a ], [ %i.ba, %bb.ac ]
  %storemerge = phi i64 [ 1, %bb.ab ], [ 0, %bb.a ], [ 0, %bb.ac ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.ay, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.ab:                                            ; preds = %bb.v, %bb.w
  store i64 %.sroa.01.0.i, ptr %.val.le, align 8, !noalias !13948
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.63.0.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !noalias !13948
  %.sroa.612.0..8.val.sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  store ptr %.sroa.85.0.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i, align 8, !noalias !13948
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, i64 16, i1 false), !noalias !13927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13927
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  br label %._crit_edge

bb.ac:                                            ; preds = %bb.u, %.thread.i
  %.sroa.63.034.i = phi ptr [ %i.ae, %.thread.i ], [ %.sroa.63.0.i, %bb.u ]
  %.sroa.85.033.i = phi ptr [ %i.al, %.thread.i ], [ %.sroa.85.0.i, %bb.u ]
  store ptr %.sroa.63.034.i, ptr %.sroa.4.032, align 8, !noalias !13955
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.4.032, i64 8
  store ptr %.sroa.85.033.i, ptr %i.az, align 8, !noalias !13955
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.4.032, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13927
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  %.not = icmp eq ptr %i.w, %i.m
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters3map12map_try_foldBX_IBJ_INtNtBa_5boxed3BoxNtBZ_4ExprEEuINtNtNtB1L_3ops12control_flow11ControlFlowIB3Z_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5B_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0NCINvNvMsg_NtB2P_7flattenINtB8s_13FlattenCompatppE13iter_try_fold7flattenB3p_uB3Y_NCINvNvXsi_B8s_B8G_B1D_8try_fold7flattenB3p_uB3Y_NCIB2L_B3t_INtNtB1L_6result6ResultB4J_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB3Y_NCB5w_s_0NCINvXB2P_INtB2P_12GenericShuntINtB2N_3MapINtB8s_7FlatMapBI_B3p_B5u_EBc4_EIBaA_NtNtB1L_7convert10InfallibleBb0_EEB1D_8try_folduNCINvNvB1D_12try_for_each4callB4J_B4E_NcNtB4E_5Break0E0B4E_E0E0E0E0E0B3Y_EB6G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not21 = icmp eq ptr %.promoted, %i.e
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3 = load ptr, ptr %i.g, align 8            ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.53.0..8.val.sroa_idx4.i = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  %.sroa.66.0..8.val.sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16 ; 2 uses
  %.sroa.7.0..8.val.sroa_idx9.i = getelementptr inbounds nuw i8, ptr %.val3, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.j ] ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !align !304, !noundef !10 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !10, !align !304, !noundef !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13959
  store ptr %i.j, ptr %i.c, align 8, !noalias !13964
  store ptr %i.l, ptr %i.h, align 8, !noalias !13964
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13969
  %i.n = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2673) 16, i64 noundef range(i64 8, 17) 8) #41, !noalias !13969 ; 8 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0B1a_.exit.i, !prof !49

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #46
          to label %.noexc.i.i unwind label %bb.d, !noalias !13969

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #44
          to label %bb.f unwind label %bb.e, !noalias !13969

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13969
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #44
          to label %common.resume.i unwind label %bb.e, !noalias !13969

common.resume.i:                                  ; preds = %bb.h, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.p, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0B1a_.exit.i: ; preds = %bb.b
  store ptr %i.j, ptr %i.n, align 8, !noalias !13969
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.r, align 8, !noalias !13969
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13959
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val3) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13970)
  %i.t = load ptr, ptr %.val3, align 8, !alias.scope !13973, !noalias !13977, !noundef !10
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0B1a_.exit.i
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %.val3)
          to label %._RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs14kWLkQVSKO_14deltalake_core.exit.i_crit_edge.i unwind label %bb.h, !noalias !13981

._RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs14kWLkQVSKO_14deltalake_core.exit.i_crit_edge.i: ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.n, align 8, !noalias !13982
  br label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %.val3, align 8, !alias.scope !13989, !noalias !13990
  store ptr %i.n, ptr %.sroa.53.0..8.val.sroa_idx4.i, align 8, !alias.scope !13989, !noalias !13990
  store i64 2, ptr %.sroa.66.0..8.val.sroa_idx7.i, align 8, !alias.scope !13989, !noalias !13990
  store ptr %i.s, ptr %.sroa.7.0..8.val.sroa_idx9.i, align 8, !alias.scope !13989, !noalias !13990
  br label %common.resume.i

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %._RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs14kWLkQVSKO_14deltalake_core.exit.i_crit_edge.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0B1a_.exit.i
  %i.w = phi ptr [ %.pre.i, %._RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs14kWLkQVSKO_14deltalake_core.exit.i_crit_edge.i ], [ %i.j, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0B1a_.exit.i ]
  store ptr %i.n, ptr %.val3, align 8, !alias.scope !13989, !noalias !13990
  store i64 2, ptr %.sroa.66.0..8.val.sroa_idx7.i, align 8, !alias.scope !13989, !noalias !13990
  store ptr %i.s, ptr %.sroa.7.0..8.val.sroa_idx9.i, align 8, !alias.scope !13989, !noalias !13990
  call void @llvm.experimental.noalias.scope.decl(metadata !13991)
  call void @llvm.experimental.noalias.scope.decl(metadata !13992)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13993
  store ptr %.val, ptr %i.b, align 8, !noalias !13995
  store ptr %i.r, ptr %.sroa.53.0..8.val.sroa_idx4.i, align 8, !alias.scope !13997, !noalias !13998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13995
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBb_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtB9_12control_flow11ControlFlowIB4P_B35_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5F_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literals_0NCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_7flatten7FlatMapINtNtNtB1D_3vec9into_iter8IntoIterNtB29_8MapEntryEIB9p_B1y_ENCB5A_0EB5y_EIB2K_NtNtBb_7convert10InfallibleB3O_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBbb_12try_for_each4callB35_B5n_NcNtB5n_5Break0E0B5n_E0E0INtB7_5FnMutTuB1y_EE8call_mutB6K_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %i.w), !noalias !13982
  %i.x = load i64, ptr %i.a, align 16, !range !6540, !alias.scope !13999, !noalias !14002, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.x, 38
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.1.i, label %bb.i

.lr.ph.i.i.i.1.i:                                 ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13995
  %i.y = load ptr, ptr %i.r, align 8, !noalias !13982, !nonnull !10, !align !304, !noundef !10
  store ptr %i.s, ptr %.sroa.53.0..8.val.sroa_idx4.i, align 8, !alias.scope !13997, !noalias !13998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13995
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBb_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtB9_12control_flow11ControlFlowIB4P_B35_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5F_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literals_0NCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_7flatten7FlatMapINtNtNtB1D_3vec9into_iter8IntoIterNtB29_8MapEntryEIB9p_B1y_ENCB5A_0EB5y_EIB2K_NtNtBb_7convert10InfallibleB3O_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBbb_12try_for_each4callB35_B5n_NcNtB5n_5Break0E0B5n_E0E0INtB7_5FnMutTuB1y_EE8call_mutB6K_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %i.y), !noalias !13982
  %i.z = load i64, ptr %i.a, align 16, !range !6540, !alias.scope !13999, !noalias !14002, !noundef !10 ; 2 uses
  %.not.i.i.i.i.1.i = icmp eq i64 %i.z, 38
  br i1 %.not.i.i.i.i.1.i, label %bb.j, label %bb.i

._crit_edge:                                      ; preds = %bb.j, %bb.a, %bb.i
  %storemerge = phi i64 [ %.lcssa.i, %bb.i ], [ 38, %bb.a ], [ 38, %bb.j ]
  store i64 %storemerge, ptr %0, align 16
  ret void

bb.i:                                             ; preds = %.lr.ph.i.i.i.1.i, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.lcssa.i = phi i64 [ %i.x, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.z, %.lr.ph.i.i.i.1.i ]
  %.sroa.7.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx4.i.i.i.i, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13993
  br label %._crit_edge

bb.j:                                             ; preds = %.lr.ph.i.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13993
  %.not = icmp eq ptr %i.m, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldBX_NtBZ_10PushedDownuNCNvMs2_BZ_INtBZ_25FilterPushdownPropagationINtNtBa_4sync3ArcDNtNtB11_14execution_plan13ExecutionPlanEL_EE6if_all0NCINvNvB2o_8for_each4callB41_NCINvMsj_B8_INtB8_3VecB41_E14extend_trustedINtB3u_3MapBI_B4j_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not6 = icmp eq ptr %.promoted, %i.c
  br i1 %.not6, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted7 = load i64, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.val3 = phi i64 [ %.promoted7, %.lr.ph ], [ %i.p, %bb.f ] ; 3 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8
  %i.j = invoke noundef zeroext i1 @_RNvMs1_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownNtB5_25ChildFilterPushdownResult3all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %_RNCNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB7_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB9_14execution_plan13ExecutionPlanEL_EE6if_all0Cs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c, !noalias !14004

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #44
          to label %.body unwind label %bb.d, !noalias !14004

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14004
  unreachable

_RNCNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB7_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB9_14execution_plan13ExecutionPlanEL_EE6if_all0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.f unwind label %bb.e

._crit_edge:                                      ; preds = %bb.f, %.._crit_edge_crit_edge
  %.val5 = phi i64 [ %.val5.pre, %.._crit_edge_crit_edge ], [ %i.p, %bb.f ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !10, !align !304, !noundef !10
  store i64 %.val5, ptr %.val4, align 8
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.e:                                             ; preds = %_RNCNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB7_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB9_14execution_plan13ExecutionPlanEL_EE6if_all0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.k, %bb.c ]
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !align !304, !noundef !10
  store i64 %.val3, ptr %.val, align 8
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.f:                                             ; preds = %_RNCNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB7_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB9_14execution_plan13ExecutionPlanEL_EE6if_all0Cs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14004
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.val3
  %i.o = zext i1 %i.j to i8
  store i8 %i.o, ptr %i.n, align 1, !noalias !14008
  %i.p = add i64 %.val3, 1                        ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callBX_NCINvMsj_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB22_8adapters5chain5ChainINtNtNtB22_7sources4once4OnceBX_EBI_EE0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8        ; 3 uses
  %.not7 = icmp eq ptr %.promoted, %i.d
  br i1 %.not7, label %._crit_edge14, label %.lr.ph

._crit_edge14:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !14013, !noalias !14018, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted10 = load i64, ptr %i.h, align 8, !alias.scope !14013, !noalias !14018
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %._crit_edge14
  %.val5 = phi i64 [ %.val5.pre, %._crit_edge14 ], [ %i.aa, %bb.e ]
  %.lcssa = phi ptr [ %.promoted, %._crit_edge14 ], [ %i.y, %bb.e ] ; 2 uses
  %.val4 = load ptr, ptr %1, align 8, !nonnull !10, !align !304, !noundef !10
  store i64 %.val5, ptr %.val4, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14024)
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %.lcssa to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 %.lcssa, i64 noundef %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b, !noalias !14027

bb.b:                                             ; preds = %._crit_edge
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14027
  %i.n = load ptr, ptr %0, align 8, !alias.scope !14027, !nonnull !10, !noundef !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_2
begin_hunk_3_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB24_8adapters3map8map_foldBX_NtB11_9PredicateuINtNtBa_5boxed3BoxDINtNtNtB26_3ops8function2FnTBX_EEp6OutputB3B_EL_ENCINvNvB1Y_8for_each4callB3B_NCINvMsj_B8_INtB8_3VecB3B_E14extend_trustedINtB34_3MapBI_B3S_EE0E0E0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !295, !invariant.load !10, !noalias !15855
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #41, !noalias !15855
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB1p_9PredicateuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTB1l_EEp6OutputB2l_EL_ENCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4callB2l_NCINvMsj_NtB2H_3vecINtB55_3VecB2l_E14extend_trustedINtBL_3MapINtNtB55_9into_iter8IntoIterB1l_EB2C_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.d
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB1p_9PredicateuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTB1l_EEp6OutputB2l_EL_ENCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4callB2l_NCINvMsj_NtB2H_3vecINtB55_3VecB2l_E14extend_trustedINtBL_3MapINtNtB55_9into_iter8IntoIterB1l_EB2C_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %1) #44
          to label %.body unwind label %bb.j

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15858
  call void @llvm.experimental.noalias.scope.decl(metadata !15863)
  call void @llvm.experimental.noalias.scope.decl(metadata !15866)
  %i.z = load ptr, ptr %i.g, align 8, !alias.scope !15869, !noalias !15870, !noundef !10
  %i.aa = load i64, ptr %i.h, align 8, !alias.scope !15869, !noalias !15870, !noundef !10 ; 2 uses
  %i.ab = getelementptr inbounds nuw [112 x i8], ptr %i.z, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ab, ptr noundef nonnull readonly align 16 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !15873
  %i.ac = add i64 %i.aa, 1                        ; 2 uses
  store i64 %i.ac, ptr %i.h, align 8, !alias.scope !15869, !noalias !15870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15858
  %.not = icmp eq ptr %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

bb.j:                                             ; preds = %.body, %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

.body:                                            ; preds = %bb.g, %bb.f, %bb.h
  %.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.s, %bb.f ], [ %i.s, %bb.g ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1W_8adapters3map12map_try_foldBX_BX_uINtNtNtB1Y_3ops12control_flow11ControlFlowBX_ENCINvXs4_B11_NtB11_4PathINtNtB1U_7collect12FromIteratorBX_E9from_iterINtB8_3VecBX_EE0NCINvNvB1Q_4find5checkBX_QNCB4s_s_0E0E0B3G_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 5 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not18 = icmp eq ptr %.promoted, %i.e
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.g = phi ptr [ %.promoted, %.lr.ph ], [ %i.h, %bb.k ] ; 3 uses
  %.sroa.09.0.copyload = load i64, ptr %i.g, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !15874)
  call void @llvm.experimental.noalias.scope.decl(metadata !15877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15879
  store i64 %.sroa.09.0.copyload, ptr %i.a, align 8, !noalias !15881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, i64 16, i1 false)
  %i.i = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvXs4_NtCsjyY8HP3IvQ6_12object_store4pathNtBX_4PathINtNtNtNtBb_4iter6traits7collect12FromIteratorNtNtBX_5parts8PathPartE9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecB2q_EEs_0INtB7_5FnMutTRB2q_EE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !noalias !15882

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #44
          to label %common.resume.i.i unwind label %bb.i, !noalias !15882

bb.d:                                             ; preds = %bb.b
  br i1 %i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNvNtNtB37_8iterator8Iterator4find5checkBZ_QNCB2G_s_0E0E0Cs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.a, align 8, !range !59, !alias.scope !15885, !noalias !15891, !noundef !10
  %i.l = icmp eq i64 %i.k, -9223372036854775808
  br i1 %i.l, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNvNtNtB37_8iterator8Iterator4find5checkBZ_QNCB2G_s_0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.g, !noalias !15882

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i unwind label %bb.h, !noalias !15882

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15882
  unreachable

common.resume.i.i:                                ; preds = %bb.g, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.j, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !15882
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNvNtNtB37_8iterator8Iterator4find5checkBZ_QNCB2G_s_0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread

bb.i:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15882
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNvNtNtB37_8iterator8Iterator4find5checkBZ_QNCB2G_s_0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15879
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.k

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNvNtNtB37_8iterator8Iterator4find5checkBZ_QNCB2G_s_0E0E0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false), !alias.scope !15893, !noalias !15894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15879
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not.i = icmp eq i64 %.sroa.09.0.copyload, -9223372036854775807
  br i1 %.not.i, label %bb.k, label %bb.j

._crit_edge:                                      ; preds = %bb.k, %bb.a, %bb.j
  %storemerge = phi i64 [ %.sroa.09.0.copyload, %bb.j ], [ -9223372036854775807, %bb.a ], [ -9223372036854775807, %bb.k ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNvNtNtB37_8iterator8Iterator4find5checkBZ_QNCB2G_s_0E0E0Cs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.211.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %._crit_edge

bb.k:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNvNtNtB37_8iterator8Iterator4find5checkBZ_QNCB2G_s_0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNvNtNtB37_8iterator8Iterator4find5checkBZ_QNCB2G_s_0E0E0Cs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.not = icmp eq ptr %i.h, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1W_8adapters3map12map_try_foldBX_BX_uINtNtNtB1Y_3ops9try_trait17NeverShortCircuituENCINvXs4_B11_NtB11_4PathINtNtB1U_7collect12FromIteratorBX_E9from_iterINtB8_3VecBX_EE0NCINvNtB32_6filter15filter_try_foldBX_uB3G_NCB4s_s_0NCIB2Y_BX_INtNtBa_6borrow3CoweEuB3G_NCB4s_s0_0NCINvMs0_B3J_B3G_10wrap_mut_2uB6N_NCINvNvB1Q_8for_each4callB6N_NCNvYINtB30_3MapINtB5S_6FilterIB8u_BI_B4q_EB6u_EB7d_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B3G_ECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not3 = icmp eq ptr %.promoted, %i.f
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load ptr, ptr %i.i, align 8            ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNtB6_6filter15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtB3Y_6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB5u_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB5u_NCNvYINtB4_3MapINtB4B_6FilterIB7y_INtNtB3W_9into_iter8IntoIterBZ_EB2E_EB5c_EB5V_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNtB6_6filter15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtB3Y_6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB5u_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB5u_NCNvYINtB4_3MapINtB4B_6FilterIB7y_INtNtB3W_9into_iter8IntoIterBZ_EB2E_EB5c_EB5V_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !15898)
  %.val.i.i = load i64, ptr %i.j, align 8, !alias.scope !15898, !noalias !15895, !noundef !10
  %.not.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i.i, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !15908)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val2) ]
  %i.p = load ptr, ptr %.val2, align 8, !noalias !15911, !nonnull !10, !noundef !10
  %i.q = load i64, ptr %i.k, align 8, !noalias !15911, !noundef !10 ; 4 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.q)
          to label %.noexc19.i.i.i.i.i.i unwind label %.loopexit, !noalias !15911

.noexc19.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.r = load i64, ptr %i.l, align 8, !alias.scope !15912, !noalias !15911, !noundef !10 ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc19.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.m, align 8, !alias.scope !15912, !noalias !15911, !nonnull !10, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.p, i64 %i.q, i1 false), !noalias !15911
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !15912, !noalias !15911
  br label %bb.f

.loopexit:                                        ; preds = %bb.c, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #44
          to label %common.resume.i.i unwind label %bb.l, !noalias !15901

bb.f:                                             ; preds = %bb.d, %.noexc19.i.i.i.i.i.i
  %i.v = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.d ], [ %i.r, %.noexc19.i.i.i.i.i.i ]
  %i.w = add i64 %i.v, %i.q
  store i64 %i.w, ptr %i.l, align 8, !alias.scope !15912, !noalias !15911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15911
  store ptr %i.c, ptr %i.b, align 8, !noalias !15911
  store ptr @_RNvXsb_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !15911
  %i.x = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @224, ptr noundef nonnull @52, ptr noundef nonnull %i.b)
          to label %bb.g unwind label %.loopexit, !noalias !15901

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, !prof !49

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @244, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #46
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp, !noalias !15901

.noexc.i.i.i.i.i.i:                               ; preds = %bb.h
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15911
  %i.y = load i64, ptr %i.c, align 8, !range !59, !alias.scope !15915, !noalias !15901, !noundef !10
  %i.z = icmp eq i64 %i.y, -9223372036854775808
  br i1 %i.z, label %bb.q, label %bb.i

bb.i:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i unwind label %bb.j, !noalias !15901

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i.i unwind label %bb.k, !noalias !15901

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15901
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !15918
  br label %bb.q

bb.l:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15901
  unreachable

bb.m:                                             ; preds = %bb.b
  %i.ad = load i64, ptr %i.d, align 8, !range !59, !alias.scope !15919, !noalias !15895, !noundef !10
  %i.ae = icmp eq i64 %i.ad, -9223372036854775808
  br i1 %i.ae, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNtB6_6filter15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtB3Y_6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB5u_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB5u_NCNvYINtB4_3MapINtB4B_6FilterIB7y_INtNtB3W_9into_iter8IntoIterBZ_EB2E_EB5c_EB5V_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.o, !noalias !15895

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i.i unwind label %bb.p, !noalias !15895

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15895
  unreachable

common.resume.i.i:                                ; preds = %bb.o, %bb.j, %bb.e
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.af, %bb.o ], [ %lpad.phi, %bb.e ], [ %i.aa, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.n
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !15895
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNtB6_6filter15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtB3Y_6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB5u_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB5u_NCNvYINtB4_3MapINtB4B_6FilterIB7y_INtNtB3W_9into_iter8IntoIterBZ_EB2E_EB5c_EB5V_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15901
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNtB6_6filter15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtB3Y_6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB5u_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB5u_NCNvYINtB4_3MapINtB4B_6FilterIB7y_INtNtB3W_9into_iter8IntoIterBZ_EB2E_EB5c_EB5V_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNtB6_6filter15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtB3Y_6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB5u_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB5u_NCNvYINtB4_3MapINtB4B_6FilterIB7y_INtNtB3W_9into_iter8IntoIterBZ_EB2E_EB5c_EB5V_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15895
  %.not = icmp eq ptr %i.o, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EE0NCINvNtB6_6filter15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtB3Y_6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB5u_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB5u_NCNvYINtB4_3MapINtB4B_6FilterIB7y_INtNtB3W_9into_iter8IntoIterBZ_EB2E_EB5c_EB5V_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB26_8adapters3map8map_foldBX_NtB11_6ActionuNCNCINvMs7_NtNtB15_10operations8optimizeNtB42_9MergePlan13rewrite_filesINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB28_6result6ResultINtNtB28_3pin3PinINtNtBa_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5T_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB28_6marker4SendEL_EENtNtB15_6errors15DeltaTableErrorEEE0s0_0NCINvNvB20_8for_each4callB3D_NCINvMsj_B8_INtB8_3VecB3D_E14extend_trustedINtB36_3MapBI_B3R_EE0E0E0EB15_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [200 x i8], align 8           ; 4 uses
  %.sroa.5 = alloca [56 x i8], align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not8 = icmp eq ptr %.promoted, %i.b
  br i1 %.not8, label %._crit_edge12, label %.lr.ph

._crit_edge12:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !15924, !noalias !15929, !nonnull !10, !align !304, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !15924, !noalias !15929, !nonnull !10, !align !304, !noundef !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !15924, !noalias !15929, !nonnull !10, !align !304, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !15924, !noalias !15929, !nonnull !10, !align !304, !noundef !10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !15924, !noalias !15929, !nonnull !10, !align !304, !noundef !10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !15933, !noalias !15938, !noundef !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted9 = load i64, ptr %i.p, align 8, !alias.scope !15933, !noalias !15938
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  store ptr %i.s, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge12, %._crit_edge
  %.val5 = phi i64 [ %.val5.pre, %._crit_edge12 ], [ %i.ac, %._crit_edge ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !10, !align !304, !noundef !10
  store i64 %.val5, ptr %.val4, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.q = phi i64 [ %.promoted9, %.lr.ph ], [ %i.ac, %bb.c ] ; 2 uses
  %i.r = phi ptr [ %.promoted, %.lr.ph ], [ %i.s, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(200) %i.r, i64 200, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx, i64 56, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 264
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 272 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15942)
  %i.t = load i64, ptr %i.e, align 8, !noalias !15943, !noundef !10
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.e, align 8, !noalias !15943
  %i.v = load i64, ptr %i.g, align 8, !noalias !15943, !noundef !10
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.g, align 8, !noalias !15943
  %i.x = load i64, ptr %i.i, align 8, !noalias !15943, !noundef !10
  %i.y = add i64 %i.x, %.sroa.2.0.copyload
  store i64 %i.y, ptr %i.i, align 8, !noalias !15943
  %i.z = load i64, ptr %i.k, align 8, !noalias !15943, !noundef !10
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.2.0.copyload, i64 %i.z)
  store i64 %.sroa.0.0.i.i.i, ptr %i.k, align 8, !noalias !15943
end_hunk_3
begin_hunk_4_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB7_21ConvertToDeltaBuilder19into_create_builder0Bb_:bb.a
          to label %bb.fv unwind label %bb.fx, !noalias !16929

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.rn = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 8
  %i.ro = load i64, ptr %i.rn, align 8, !range !312, !invariant.load !10, !noalias !16929 ; 2 uses
  %i.rp = icmp eq i64 %i.ro, 0
  br i1 %i.rp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.rq = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.rr = load i64, ptr %i.rq, align 8, !range !295, !invariant.load !10, !noalias !16929
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.ro, i64 noundef range(i64 1, 536870913) %i.rr) #41, !noalias !16929
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.fx:                                            ; preds = %bb.fu
  %i.rs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 8
  %i.ru = load i64, ptr %i.rt, align 8, !range !312, !invariant.load !10, !noalias !16929 ; 2 uses
  %i.rv = icmp eq i64 %i.ru, 0
  br i1 %i.rv, label %.body.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.rw = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.rx = load i64, ptr %i.rw, align 8, !range !295, !invariant.load !10, !noalias !16929
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.ru, i64 noundef range(i64 1, 536870913) %i.rx) #41, !noalias !16929
  br label %.body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.fw, %bb.fv
  %.not.i.i.i.i = icmp eq i64 %i.rj, 8
  br i1 %.not.i.i.i.i, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16924
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 1385 ; 2 uses
  store i8 0, ptr %i.ry, align 1, !noalias !16924
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 1296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.rz, i64 72, i1 false), !noalias !16924
  invoke void @_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_readerNtB5_19ArrowReaderMetadata7try_new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noundef nonnull %.sroa.3.0.copyload.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.u)
          to label %bb.gg unwind label %bb.ga, !noalias !16929

bb.ga:                                            ; preds = %bb.fz
  %i.sa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16924
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ga, %bb.fy, %bb.fx, %bb.fq, %bb.fm
  %i.sb = phi ptr [ %i.rc, %bb.ga ], [ %i.ql, %bb.fm ], [ %i.rc, %bb.fq ], [ %i.rc, %bb.fx ], [ %i.rc, %bb.fy ] ; 2 uses
  %i.sc = phi ptr [ %i.rd, %bb.ga ], [ %i.qm, %bb.fm ], [ %i.rd, %bb.fq ], [ %i.rd, %bb.fx ], [ %i.rd, %bb.fy ] ; 2 uses
  %i.sd = phi ptr [ %i.re, %bb.ga ], [ %i.qn, %bb.fm ], [ %i.re, %bb.fq ], [ %i.re, %bb.fx ], [ %i.re, %bb.fy ] ; 2 uses
  %i.se = phi ptr [ %i.rf, %bb.ga ], [ %i.qo, %bb.fm ], [ %i.rf, %bb.fq ], [ %i.rf, %bb.fx ], [ %i.rf, %bb.fy ] ; 2 uses
  %i.sf = phi ptr [ %i.rg, %bb.ga ], [ %i.qq, %bb.fm ], [ %i.rg, %bb.fq ], [ %i.rg, %bb.fx ], [ %i.rg, %bb.fy ] ; 2 uses
  %i.sg = phi ptr [ %i.rh, %bb.ga ], [ %i.qr, %bb.fm ], [ %i.rh, %bb.fq ], [ %i.rh, %bb.fx ], [ %i.rh, %bb.fy ] ; 2 uses
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.sa, %bb.ga ], [ %i.qv, %bb.fm ], [ %i.ra, %bb.fq ], [ %i.rs, %bb.fx ], [ %i.rs, %bb.fy ] ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 1385
  %i.si = load i8, ptr %i.sh, align 1, !range !349, !noalias !16924, !noundef !10
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %bb.gf, label %bb.gc

bb.gb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.314.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.314.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !16924
  store i64 %i.rj, ptr %i.t, align 8, !alias.scope !16930, !noalias !16924
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.3.0.copyload.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !16930, !noalias !16924
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 1296
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader18ArrowReaderOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.sk)
          to label %.thread84.i.i unwind label %bb.gd, !noalias !16929

bb.gc:                                            ; preds = %bb.gf, %bb.gd, %.body.i.i.i
  %i.sl = phi ptr [ %i.rc, %bb.gd ], [ %i.sb, %bb.gf ], [ %i.sb, %.body.i.i.i ]
  %i.sm = phi ptr [ %i.rd, %bb.gd ], [ %i.sc, %bb.gf ], [ %i.sc, %.body.i.i.i ]
  %i.sn = phi ptr [ %i.re, %bb.gd ], [ %i.sd, %bb.gf ], [ %i.sd, %.body.i.i.i ]
  %i.so = phi ptr [ %i.rf, %bb.gd ], [ %i.se, %bb.gf ], [ %i.se, %.body.i.i.i ]
  %i.sp = phi ptr [ %i.rg, %bb.gd ], [ %i.sf, %bb.gf ], [ %i.sf, %.body.i.i.i ]
  %i.sq = phi ptr [ %i.rh, %bb.gd ], [ %i.sg, %bb.gf ], [ %i.sg, %.body.i.i.i ]
  %.pn3.i.i.i = phi { ptr, i32 } [ %i.ss, %bb.gd ], [ %.pn.pn.i.i.i, %bb.gf ], [ %.pn.pn.i.i.i, %.body.i.i.i ]
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 1385
  store i8 0, ptr %i.sr, align 1, !noalias !16924
  store i8 2, ptr %i.sp, align 8, !noalias !16924
  br label %.body.i.i

bb.gd:                                            ; preds = %bb.gb
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

.thread84.i.i:                                    ; preds = %bb.gb
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 1385
  store i8 0, ptr %i.st, align 1, !noalias !16924
  %.sroa.814.sroa.6.0.copyload88.i.i = load ptr, ptr %.sroa.314.0..sroa_idx.i.i.i, align 8, !noalias !16934
  %.sroa.814.sroa.7.0..sroa.814.0..sroa_idx15.sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.814.sroa.7.0.copyload90.i.i = load ptr, ptr %.sroa.814.sroa.7.0..sroa.814.0..sroa_idx15.sroa_idx89.i.i, align 8, !noalias !16934
  store i8 1, ptr %i.rg, align 8, !noalias !16924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16919
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  br label %bb.gh

bb.ge:                                            ; preds = %bb.gf, %bb.fq
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16929
  unreachable

bb.gf:                                            ; preds = %.body.i.i.i
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 1296
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader18ArrowReaderOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.sv) #44
          to label %bb.gc unwind label %bb.ge, !noalias !16929

bb.gg:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16924
  store i8 0, ptr %i.ry, align 1, !noalias !16924
  %.sroa.012.0.copyload13.pre.i.i = load i64, ptr %i.t, align 8, !noalias !16934 ; 2 uses
  %.sroa.814.0..sroa_idx15.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.814.sroa.0.0.copyload.pre.i.i = load ptr, ptr %.sroa.814.0..sroa_idx15.phi.trans.insert.i.i, align 8, !noalias !16934
  %.sroa.814.sroa.6.0..sroa.814.0..sroa_idx15.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.814.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.814.sroa.6.0..sroa.814.0..sroa_idx15.sroa_idx.i.i, align 8, !noalias !16934
  %.sroa.814.sroa.7.0..sroa.814.0..sroa_idx15.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.814.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.814.sroa.7.0..sroa.814.0..sroa_idx15.sroa_idx.i.i, align 8, !noalias !16934
  store i8 1, ptr %i.rg, align 8, !noalias !16924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16919
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.sw = icmp eq i64 %.sroa.012.0.copyload13.pre.i.i, 9
  br i1 %i.sw, label %.thread.i377, label %bb.gh

.thread.i377:                                     ; preds = %bb.gg, %.thread.i.i
  store i8 3, ptr %i.re, align 8, !noalias !16919
  br label %bb.gs

bb.gh:                                            ; preds = %bb.gg, %.thread84.i.i
  %.sroa.814.sroa.7.0.copyload94.i.i = phi ptr [ %.sroa.814.sroa.7.0.copyload90.i.i, %.thread84.i.i ], [ %.sroa.814.sroa.7.0.copyload.i.i, %bb.gg ] ; 2 uses
  %.sroa.814.sroa.6.0.copyload93.i.i = phi ptr [ %.sroa.814.sroa.6.0.copyload88.i.i, %.thread84.i.i ], [ %.sroa.814.sroa.6.0.copyload.i.i, %bb.gg ] ; 3 uses
  %.sroa.012.0.copyload1392.i.i = phi i64 [ %i.rj, %.thread84.i.i ], [ %.sroa.012.0.copyload13.pre.i.i, %bb.gg ] ; 2 uses
  %.sroa.814.sroa.0.0.copyload91.i.i = phi ptr [ %.sroa.3.0.copyload.i.i.i, %.thread84.i.i ], [ %.sroa.814.sroa.0.0.copyload.pre.i.i, %bb.gg ] ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerNtNtBR_12arrow_reader19ArrowReaderMetadata10load_asyncNtNtBP_5store19ParquetObjectReaderE0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.rh)
          to label %bb.gj unwind label %bb.gi, !noalias !16923

bb.gi:                                            ; preds = %bb.gh
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.gj:                                            ; preds = %bb.gh
  %.not.i.i.i374 = icmp eq i64 %.sroa.012.0.copyload1392.i.i, 8
  br i1 %.not.i.i.i374, label %bb.gp, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 1120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5store19ParquetObjectReaderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.sy)
          to label %.thread1348 unwind label %bb.gm, !noalias !16923

bb.gl:                                            ; preds = %bb.go, %bb.gm, %bb.fg
  %i.sz = phi ptr [ %i.rc, %bb.gm ], [ %i.px, %bb.go ], [ %i.px, %bb.fg ]
  %i.ta = phi ptr [ %i.rd, %bb.gm ], [ %i.py, %bb.go ], [ %i.py, %bb.fg ]
  %i.tb = phi ptr [ %i.re, %bb.gm ], [ %i.pz, %bb.go ], [ %i.pz, %bb.fg ]
  %i.tc = phi ptr [ %i.rf, %bb.gm ], [ %i.qa, %bb.go ], [ %i.qa, %bb.fg ]
  %.pn3.i.i = phi { ptr, i32 } [ %i.te, %bb.gm ], [ %.pn.i.i, %bb.go ], [ %.pn.i.i, %bb.fg ]
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 1393
  store i8 0, ptr %i.td, align 1, !noalias !16919
  store i8 2, ptr %i.tb, align 8, !noalias !16919
  br label %.body.i373

bb.gm:                                            ; preds = %bb.gk
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

.thread1348:                                      ; preds = %bb.gk
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 1393
  store i8 0, ptr %i.tf, align 1, !noalias !16919
  store i8 1, ptr %i.re, align 8, !noalias !16919
  br label %bb.gq

bb.gn:                                            ; preds = %bb.go, %.body.i.i
  %i.tg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16923
  unreachable

bb.go:                                            ; preds = %bb.fg
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 1120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5store19ParquetObjectReaderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.th) #44
          to label %bb.gl unwind label %bb.gn, !noalias !16923

bb.gp:                                            ; preds = %bb.gj
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 1393
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %.sroa.064.0.copyload.i.i = load i64, ptr %i.tj, align 8, !noalias !16919 ; 2 uses
  %.sroa.565.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %.sroa.565.0.copyload.i.i = load i64, ptr %.sroa.565.0..sroa_idx.i.i, align 8, !noalias !16919
  %.sroa.666.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %.sroa.666.0.copyload.i.i = load ptr, ptr %.sroa.666.0..sroa_idx.i.i, align 8, !noalias !16919
  %.sroa.767.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %.sroa.767.0.copyload.i.i = load ptr, ptr %.sroa.767.0..sroa_idx.i.i, align 8, !noalias !16919
  %.sroa.868.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %.sroa.868.0.copyload.i.i = load ptr, ptr %.sroa.868.0..sroa_idx.i.i, align 8, !noalias !16919
  %.sroa.969.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1160
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.814.sroa.0.0.copyload91.i.i), "nonnull"(ptr %.sroa.814.sroa.6.0.copyload93.i.i) ]
  store i8 0, ptr %i.ti, align 1, !noalias !16919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12891, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.969.0..sroa_idx.i.i, i64 56, i1 false)
  store i8 1, ptr %i.re, align 8, !noalias !16919
  %i.tk = icmp eq i64 %.sroa.064.0.copyload.i.i, 3
  br i1 %i.tk, label %bb.gs, label %bb.gq

bb.gq:                                            ; preds = %.thread1348, %bb.gp
  %.sroa.23.0.i.i1364 = phi ptr [ undef, %.thread1348 ], [ %.sroa.814.sroa.7.0.copyload94.i.i, %bb.gp ]
  %.sroa.22.0.i.i1363 = phi ptr [ undef, %.thread1348 ], [ %.sroa.814.sroa.6.0.copyload93.i.i, %bb.gp ]
  %.sroa.21.0.i.i1362 = phi ptr [ undef, %.thread1348 ], [ %.sroa.814.sroa.0.0.copyload91.i.i, %bb.gp ]
  %.sroa.649.0.i.i1361 = phi ptr [ %.sroa.814.sroa.7.0.copyload94.i.i, %.thread1348 ], [ %.sroa.868.0.copyload.i.i, %bb.gp ] ; 2 uses
  %.sroa.547.0.i.i1360 = phi ptr [ %.sroa.814.sroa.6.0.copyload93.i.i, %.thread1348 ], [ %.sroa.767.0.copyload.i.i, %bb.gp ] ; 2 uses
  %.sroa.4.0.i.i1359 = phi ptr [ %.sroa.814.sroa.0.0.copyload91.i.i, %.thread1348 ], [ %.sroa.666.0.copyload.i.i, %bb.gp ] ; 2 uses
  %.sroa.3.0.i.i1358 = phi i64 [ %.sroa.012.0.copyload1392.i.i, %.thread1348 ], [ %.sroa.565.0.copyload.i.i, %bb.gp ] ; 3 uses
  %.sroa.043.0.i.i1357 = phi i64 [ 2, %.thread1348 ], [ %.sroa.064.0.copyload.i.i, %bb.gp ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtBQ_12arrow_reader18ArrowReaderBuilderINtBO_11AsyncReaderNtNtBO_5store19ParquetObjectReaderEE16new_with_options0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.rf)
          to label %bb.gu unwind label %bb.gr, !noalias !16918

bb.gr:                                            ; preds = %bb.gq
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.gs:                                            ; preds = %.thread.i377, %bb.gp
  store i8 3, ptr %i.rc, align 8, !noalias !16914
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12891)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13879)
  br label %common.ret

bb.gt:                                            ; preds = %.body379
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13879)
  br label %bb.jw

bb.gu:                                            ; preds = %bb.gq
  store i8 1, ptr %i.rc, align 8, !noalias !16914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9920, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12891, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12891)
  %i.tm = icmp eq i64 %.sroa.043.0.i.i1357, 2
  br i1 %i.tm, label %bb.sn, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %.sroa.8950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8950.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9920, i64 56, i1 false)
  store i64 %.sroa.043.0.i.i1357, ptr %i.bs, align 8
  %.sroa.4946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %.sroa.3.0.i.i1358, ptr %.sroa.4946.0..sroa_idx, align 8
  %.sroa.5947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %.sroa.4.0.i.i1359, ptr %.sroa.5947.0..sroa_idx, align 8
  %.sroa.6948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %.sroa.547.0.i.i1360, ptr %.sroa.6948.0..sroa_idx, align 8
  %.sroa.7949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store ptr %.sroa.649.0.i.i1361, ptr %.sroa.7949.0..sroa_idx, align 8
  %.sroa.9951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  store i64 0, ptr %.sroa.9951.0..sroa_idx, align 8
  %.sroa.11953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  store i64 0, ptr %.sroa.11953.0..sroa_idx, align 8
  %.sroa.13955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  store i64 2, ptr %.sroa.13955.0..sroa_idx, align 8
  %.sroa.14956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  store i64 32, ptr %.sroa.14956.0..sroa_idx, align 8
  %.sroa.15957.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  store i64 -9223372036854775808, ptr %.sroa.15957.0..sroa_idx, align 8
  %.sroa.17959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 168
  store i64 -9223372036854775808, ptr %.sroa.17959.0..sroa_idx, align 8
  %.sroa.19961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 192
  store i64 -9223372036854775808, ptr %.sroa.19961.0..sroa_idx, align 8
  %.sroa.21963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 216
  store i64 -9223372036854775808, ptr %.sroa.21963.0..sroa_idx, align 8
  %.sroa.23965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 240 ; 2 uses
  store ptr %.sroa.21.0.i.i1362, ptr %.sroa.23965.0..sroa_idx, align 8
  %.sroa.24966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 248 ; 2 uses
  store ptr %.sroa.22.0.i.i1363, ptr %.sroa.24966.0..sroa_idx, align 8
  %.sroa.25967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 256
  store ptr %.sroa.23.0.i.i1364, ptr %.sroa.25967.0..sroa_idx, align 8
  %.sroa.26968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 264
  store i64 1024, ptr %.sroa.26968.0..sroa_idx, align 8
  %.sroa.27969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 272
  store ptr null, ptr %.sroa.27969.0..sroa_idx, align 8
  %.sroa.28970.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 280
  store i64 104857600, ptr %.sroa.28970.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13879)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7972.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 1568 ; 2 uses
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.tn)
          to label %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bm, i64 48, i1 false), !noalias !16939
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.s)
          to label %bb.gz unwind label %bb.gy

bb.gx:                                            ; preds = %bb.gy, %bb.gw
  %.pn143 = phi { ptr, i32 } [ %i.tp, %bb.gy ], [ %i.to, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.ha

bb.gy:                                            ; preds = %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gz:                                            ; preds = %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke void @_RINvXs9_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTBO_B1q_EE9from_iterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterBO_B1q_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.bn)
          to label %bb.hc unwind label %bb.hb

bb.ha:                                            ; preds = %bb.hb, %bb.gx
  %.pn145 = phi { ptr, i32 } [ %i.tq, %bb.hb ], [ %.pn143, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.sj

bb.hb:                                            ; preds = %bb.gz
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.hc:                                            ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %.val303 = load ptr, ptr %.sroa.23965.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  %i.tr = getelementptr inbounds nuw i8, ptr %.val303, i64 16
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 1552
  %i.tt = load i64, ptr %i.ts, align 8, !range !343, !noundef !10
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 1560
  %i.tv = load i64, ptr %i.tu, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 808
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats27stats_from_parquet_metadata(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.tr, i64 noundef %i.tt, i64 %i.tv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tw)
          to label %bb.he unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.he:                                            ; preds = %bb.hc
  call void @llvm.experimental.noalias.scope.decl(metadata !16940)
  call void @llvm.experimental.noalias.scope.decl(metadata !16943)
  %i.ty = load i64, ptr %i.bp, align 16, !range !343, !alias.scope !16943, !noalias !16940, !noundef !10
  %i.tz = trunc nuw i64 %i.ty to i1
  br i1 %i.tz, label %bb.hf, label %bb.hi

bb.hf:                                            ; preds = %bb.he
  %i.ua = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.r, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.ua, i64 96, i1 false), !noalias !16940
  %i.ub = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core6writerNtNtB4_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_16DeltaWriterErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ub, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.r)
          to label %bb.si unwind label %bb.hh

bb.hg:                                            ; preds = %bb.hh, %bb.hd
  %.pn147 = phi { ptr, i32 } [ %i.uc, %bb.hh ], [ %i.tx, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.bo) #44
          to label %bb.sj unwind label %bb.ad

bb.hh:                                            ; preds = %bb.hf
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.hi:                                            ; preds = %bb.he
  %i.ud = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ue = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ue, ptr noundef nonnull readonly align 8 dereferenceable(152) %i.ud, i64 152, i1 false), !alias.scope !16945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %.sroa.7972.sroa.9.0..sroa_idx1221 = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.7972.sroa.11.0..sroa_idx1225 = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %.sroa.7972.sroa.13.0..sroa_idx1229 = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7972.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7972.sroa.13.0..sroa_idx1229, i64 56, i1 false), !alias.scope !16946
  %.sroa.7972.sroa.14.0..sroa_idx1230 = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %.sroa.101238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.101238.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7972.sroa.14.0..sroa_idx1230, i64 48, i1 false)
  %.sroa.91237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 5 uses
  %i.uf = load <2 x i64>, ptr %i.ue, align 8, !alias.scope !16946
  %.sroa.51233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ug = load <2 x i64>, ptr %.sroa.7972.sroa.9.0..sroa_idx1221, align 8, !alias.scope !16946
  %.sroa.71235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.uh = load <2 x i64>, ptr %.sroa.7972.sroa.11.0..sroa_idx1225, align 8, !alias.scope !16946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.91237.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7972.sroa.13, i64 56, i1 false)
  store <2 x i64> %i.uf, ptr %i.br, align 16
  store <2 x i64> %i.ug, ptr %.sroa.51233.0..sroa_idx, align 16
  store <2 x i64> %i.uh, ptr %.sroa.71235.0..sroa_idx, align 16
end_hunk_4
begin_hunk_5_@_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan14execution_plan0Bb_:bb.a
  %.pn96.i.i = phi { ptr, i32 } [ %.pn93.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8rZONnIQGB5_29datafusion_datasource_parquet6reader30CachedParquetFileReaderFactoryEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.pn93.pn246.i.i, %bb.rc ] ; 2 uses
  %.sroa.021.5.i.i = phi i1 [ %.sroa.021.4.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8rZONnIQGB5_29datafusion_datasource_parquet6reader30CachedParquetFileReaderFactoryEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.021.4247.i.i, %bb.rc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !17704
  br i1 %.sroa.021.5.i.i, label %bb.rd, label %.body183.i.i

bb.qy:                                            ; preds = %bb.qv
  %i.ako = landingpad { ptr, i32 }
          cleanup
  br label %.thread248.i.i

.thread248.i.i:                                   ; preds = %bb.qy, %bb.qu
  %eh.lpad-body188.i.i = phi { ptr, i32 } [ %i.ako, %bb.qy ], [ %i.akm, %bb.qu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !17704
  br label %bb.rd

.body183.i.i:                                     ; preds = %bb.rd, %bb.qz, %bb.qx, %bb.qr
  %.pn98.i.i = phi { ptr, i32 } [ %.pn96.i.i, %bb.qx ], [ %.pn96251.i.i, %bb.rd ], [ %i.akp, %bb.qz ], [ %i.akj, %bb.qr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !17704
  br label %bb.ko

bb.qz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.akp = landingpad { ptr, i32 }
          cleanup
  br label %.body183.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !17704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !17704
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionIB22_bEEEEEENtNtNtB3y_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB2L_bEEEEEECs14kWLkQVSKO_14deltalake_core.exit190.i.i unwind label %bb.ks, !noalias !17704

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB2L_bEEEEEECs14kWLkQVSKO_14deltalake_core.exit190.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !17704
  br label %bb.ly

bb.ra:                                            ; preds = %bb.re, %bb.ly
  %.sroa.15.i.sroa.0.4.i = phi i64 [ %.sroa.83.sroa.10.i.sroa.0.0.copyload.i, %bb.re ], [ %i.afu, %bb.ly ]
  %.sroa.15.i.sroa.8.4.i = phi i64 [ %.sroa.83.sroa.10.i.sroa.7.0.copyload.i, %bb.re ], [ %i.afv, %bb.ly ]
  %.sroa.074.5.i.i = phi i64 [ %.sroa.83.sroa.0.0.copyload103.i.i, %bb.re ], [ %.sroa.074.1.i.i, %bb.ly ] ; 2 uses
  %.sroa.777.5.i.i = phi ptr [ %.sroa.83.sroa.8.0.copyload105.i.i, %bb.re ], [ %.sroa.777.1.i.i, %bb.ly ] ; 2 uses
  %.sroa.1182.5.i.i = phi ptr [ %.sroa.83.sroa.9.0.copyload107.i.i, %bb.re ], [ %.sroa.1182.1.i.i, %bb.ly ] ; 2 uses
  %.sroa.010.7.i.i = phi i8 [ 1, %bb.re ], [ 0, %bb.ly ] ; 5 uses
  %.sroa.03.9.i.i = phi i8 [ 1, %bb.re ], [ %.sroa.03.7.i.i, %bb.ly ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !17704
  call void @llvm.experimental.noalias.scope.decl(metadata !17927)
  call void @llvm.experimental.noalias.scope.decl(metadata !17930)
  %i.akq = load ptr, ptr %i.bu, align 8, !alias.scope !17933, !noalias !17704, !nonnull !10, !noundef !10
  %i.akr = atomicrmw sub ptr %i.akq, i64 1 release, align 8, !noalias !17934
  %i.aks = icmp eq i64 %i.akr, 1
  br i1 %i.aks, label %bb.rb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit192.i.i

bb.rb:                                            ; preds = %bb.ra
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bu) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit192.i.i unwind label %bb.lp, !noalias !17704

bb.rc:                                            ; preds = %.thread242.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8rZONnIQGB5_29datafusion_datasource_parquet6reader30CachedParquetFileReaderFactoryEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.021.4247.i.i = phi i1 [ true, %.thread242.i.i ], [ %.sroa.021.4.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8rZONnIQGB5_29datafusion_datasource_parquet6reader30CachedParquetFileReaderFactoryEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.pn93.pn246.i.i = phi { ptr, i32 } [ %.pn93.i.i, %.thread242.i.i ], [ %.pn93.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8rZONnIQGB5_29datafusion_datasource_parquet6reader30CachedParquetFileReaderFactoryEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIBH_bEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bl) #44
          to label %bb.qx unwind label %bb.pv, !noalias !17704

bb.rd:                                            ; preds = %.thread248.i.i, %bb.qx
  %.pn96251.i.i = phi { ptr, i32 } [ %eh.lpad-body188.i.i, %.thread248.i.i ], [ %.pn96.i.i, %bb.qx ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.bm) #44
          to label %.body183.i.i unwind label %bb.pv, !noalias !17704

bb.re:                                            ; preds = %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !17704
  br label %bb.ra

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit192.i.i: ; preds = %bb.rb, %bb.ra
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !17704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !17704
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6config19TableParquetOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(688) %i.ca)
          to label %bb.rf unwind label %bb.lr, !noalias !17704

bb.rf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit192.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !17704
  %i.akt = trunc nuw i8 %.sroa.03.9.i.i to i1
  br i1 %i.akt, label %bb.rg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit198.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit198.i.i: ; preds = %bb.ri, %bb.rf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !17704
  %i.aku = trunc nuw i8 %.sroa.010.7.i.i to i1
  br i1 %i.aku, label %bb.rk, label %bb.rv

bb.rg:                                            ; preds = %bb.rf
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %bb.ri unwind label %bb.rh, !noalias !17704

bb.rh:                                            ; preds = %bb.rg
  %i.akv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %.body152.i.i unwind label %bb.rj, !noalias !17704

bb.ri:                                            ; preds = %bb.rg
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit198.i.i unwind label %bb.jb, !noalias !17704

bb.rj:                                            ; preds = %bb.rh
  %i.akw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17704
  unreachable

bb.rk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit198.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionIB1Y_bEEEEEENtNtNtB3u_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cc)
          to label %bb.rv unwind label %bb.rl, !noalias !17704

.body.thread.i:                                   ; preds = %bb.rs, %bb.rl, %.body152.thread.i.i, %.body152.i.i
  %.pn117.i.i = phi { ptr, i32 } [ %i.akx, %bb.rl ], [ %.pn115.i.i, %.body152.i.i ], [ %.pn115.i.i, %bb.rs ], [ %i.afq, %.body152.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !17704
  store i8 2, ptr %i.aad, align 8, !noalias !17704
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit85.i

bb.rl:                                            ; preds = %bb.rk
  %i.akx = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.rm:                                            ; preds = %bb.lp, %bb.ll, %bb.lk, %.body137.i.i
  %.pn108.i.i = phi { ptr, i32 } [ %i.afm, %bb.lp ], [ %.pn25.i.i, %.body137.i.i ], [ %.pn105.pn.i.i, %bb.ll ], [ %.pn105.pn.i.i, %bb.lk ]
  %.sroa.010.3.i.i = phi i8 [ %.sroa.010.4.i.i, %bb.lp ], [ 1, %.body137.i.i ], [ %.sroa.010.2.i.i, %bb.ll ], [ %.sroa.010.2.i.i, %bb.lk ]
  %.sroa.03.3.i.i = phi i8 [ %.sroa.03.4.i.i, %bb.lp ], [ 1, %.body137.i.i ], [ %.sroa.03.1.i.i, %bb.ll ], [ %.sroa.03.1.i.i, %bb.lk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !17704
  br label %bb.rn

bb.rn:                                            ; preds = %bb.ro, %bb.rm, %.body.i.i
  %.pn108.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.ro ], [ %.pn108.i.i, %bb.rm ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %.sroa.010.9.i.i = phi i8 [ 1, %bb.ro ], [ %.sroa.010.3.i.i, %bb.rm ], [ 1, %.body.i.i ]
  %.sroa.03.11.i.i = phi i8 [ 1, %bb.ro ], [ %.sroa.03.3.i.i, %bb.rm ], [ 1, %.body.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !17704
  br label %bb.rp

bb.ro:                                            ; preds = %bb.jz, %.body135.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.abu, %bb.jz ], [ %eh.lpad-body136.i.i, %.body135.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !17704
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema13SchemaBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.bx) #44
          to label %bb.rn unwind label %bb.pv, !noalias !17704

bb.rp:                                            ; preds = %bb.rn, %bb.ji
  %.pn108.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn108.pn.pn.i.i, %bb.rn ], [ %i.aat, %bb.ji ]
  %.sroa.010.10.i.i = phi i8 [ %.sroa.010.9.i.i, %bb.rn ], [ 1, %bb.ji ]
  %.sroa.03.12.i.i = phi i8 [ %.sroa.03.11.i.i, %bb.rn ], [ 1, %bb.ji ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6config19TableParquetOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(688) %i.ca) #44
          to label %bb.lq unwind label %bb.pv, !noalias !17704

bb.rq:                                            ; preds = %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !17704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !17704
  br label %.thread.i.i

bb.rr:                                            ; preds = %bb.lq, %.thread.i.i
  %.sroa.010.5128.i.i = phi i8 [ 1, %.thread.i.i ], [ %.sroa.010.5.i.i, %bb.lq ]
  %.pn113127.i.i = phi { ptr, i32 } [ %.pn113.ph.i.i, %.thread.i.i ], [ %.pn113.i.i, %bb.lq ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cb) #44
          to label %.body152.i.i unwind label %bb.pv, !noalias !17704

bb.rs:                                            ; preds = %.body152.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionIB1Y_bEEEEEENtNtNtB3u_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cc)
          to label %.body.thread.i unwind label %bb.pv, !noalias !17704

bb.rt:                                            ; preds = %bb.ja
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #49
          to label %.noexc58.i unwind label %.body.i96, !noalias !17661

.noexc58.i:                                       ; preds = %bb.rt
  unreachable

bb.ru:                                            ; preds = %bb.ja
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #49
          to label %.noexc59.i unwind label %.body.i96, !noalias !17661

.noexc59.i:                                       ; preds = %bb.ru
  unreachable

bb.rv:                                            ; preds = %bb.rk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit198.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !17704
  store i8 1, ptr %i.aad, align 8, !noalias !17704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !17661
  switch i64 %.sroa.074.5.i.i, label %bb.sz [
    i64 21, label %.thread326
    i64 20, label %bb.rw
  ]

.thread326:                                       ; preds = %bb.rv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !17661
  store i8 3, ptr %i.zu, align 1, !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.tv

bb.rw:                                            ; preds = %bb.rv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB4o_bEEEEEE0EBT_.exit61.thread.i
  %i.aky = phi ptr [ %.sroa.02.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB4o_bEEEEEE0EBT_.exit61.thread.i ], [ %.sroa.777.5.i.i, %bb.rv ] ; 5 uses
  %i.akz = phi ptr [ %.sroa.4.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB4o_bEEEEEE0EBT_.exit61.thread.i ], [ %.sroa.1182.5.i.i, %bb.rv ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aky), "nonnull"(ptr %i.akz) ]
  store ptr %i.aky, ptr %i.cj, align 8, !noalias !17661
  %i.ala = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.akz, ptr %i.ala, align 8, !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !17661
  %i.alb = getelementptr inbounds nuw i8, ptr %1, i64 1298 ; 2 uses
  store i8 0, ptr %i.alb, align 2, !noalias !17661
  %i.alc = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.ald = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.ald, ptr noundef nonnull align 16 dereferenceable(176) %i.alc, i64 176, i1 false), !noalias !17661
  store i64 1, ptr %i.c, align 16, !noalias !17935
  %i.ale = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.ale, align 8, !noalias !17935
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17938
  %i.alf = call noundef align 16 dereferenceable_or_null(192) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2673) 192, i64 noundef range(i64 8, 17) 16) #41, !noalias !17938 ; 4 uses
  %i.alg = icmp eq ptr %i.alf, null
  br i1 %i.alg, label %bb.rx, label %bb.sa, !prof !49

bb.rx:                                            ; preds = %bb.rw
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 192) #46
          to label %.noexc.i63.i unwind label %bb.ry, !noalias !17935

.noexc.i63.i:                                     ; preds = %bb.rx
  unreachable

bb.ry:                                            ; preds = %bb.rx
  %i.alh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan14KernelScanPlanEBS_(ptr noalias noundef align 16 dereferenceable(176) %i.ald)
          to label %bb.sx unwind label %bb.rz, !noalias !17935

bb.rz:                                            ; preds = %bb.ry
  %i.ali = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17935
  unreachable

bb.sa:                                            ; preds = %bb.rw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.alf, ptr noundef nonnull align 16 dereferenceable(192) %i.c, i64 192, i1 false), !noalias !17935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17935
  store ptr %i.alf, ptr %i.ch, align 8, !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !17661
  store ptr %i.aky, ptr %i.cg, align 8, !noalias !17661
  %i.alj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.akz, ptr %i.alj, align 8, !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !17661
  %i.alk = getelementptr inbounds nuw i8, ptr %1, i64 1296
  store i8 0, ptr %i.alk, align 16, !noalias !17661
  %i.all = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.alm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.alm, ptr noundef nonnull align 8 dereferenceable(40) %i.all, i64 40, i1 false), !noalias !17661
  store i64 1, ptr %i.b, align 8, !noalias !17941
  %i.aln = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.aln, align 8, !noalias !17941
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17944
  %i.alo = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2673) 56, i64 noundef range(i64 8, 17) 8) #41, !noalias !17944 ; 5 uses
  %i.alp = icmp eq ptr %i.alo, null
  br i1 %i.alp, label %bb.sb, label %bb.se, !prof !49

bb.sb:                                            ; preds = %bb.sa
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc.i66.i unwind label %bb.sc, !noalias !17941

.noexc.i66.i:                                     ; preds = %bb.sb
  unreachable

bb.sc:                                            ; preds = %bb.sb
  %i.alq = landingpad { ptr, i32 }
          cleanup
  %i.alr = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.alm, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.alr, i64 noundef 32, i64 noundef 16)
          to label %.body67.i unwind label %bb.sd, !noalias !17941

bb.sd:                                            ; preds = %bb.sc
  %i.als = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17941
  unreachable

bb.se:                                            ; preds = %bb.sa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.alo, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !17941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17941
  store ptr %i.alo, ptr %i.cf, align 8, !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.655.i)
  %i.alt = getelementptr inbounds nuw i8, ptr %1, i64 1295
  store i8 0, ptr %i.alt, align 1, !noalias !17661
  %i.alu = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %.sroa.053.0.copyload.i = load ptr, ptr %i.alu, align 16, !noalias !17661 ; 3 uses
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1176
  %.sroa.554.0.copyload.i = load i64, ptr %.sroa.554.0..sroa_idx.i, align 8, !noalias !17661 ; 2 uses
  %.sroa.655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.655.0..sroa_idx.i, i64 24, i1 false), !noalias !17661
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17947
  %i.alv = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2673) 56, i64 noundef range(i64 8, 17) 8) #41, !noalias !17947 ; 7 uses
  %i.alw = icmp eq ptr %i.alv, null
  br i1 %i.alw, label %bb.sf, label %bb.si, !prof !49

bb.sf:                                            ; preds = %bb.se
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc.i73.i unwind label %bb.sg, !noalias !17952

.noexc.i73.i:                                     ; preds = %bb.sf
  unreachable

bb.sg:                                            ; preds = %bb.sf
  %i.alx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.053.0.copyload.i) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtCs3JXekYNd0JR_7dashmap7DashMapNtNtBL_6string6StringINtNtBL_3vec3VecbEEEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.sroa.053.0.copyload.i, i64 %.sroa.554.0.copyload.i) #44
          to label %bb.sq unwind label %bb.sh, !noalias !17952

bb.sh:                                            ; preds = %bb.sg
  %i.aly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17952
  unreachable

bb.si:                                            ; preds = %bb.se
  store i64 1, ptr %i.alv, align 8, !noalias !17952
  %.sroa.4.0..sroa_idx.i69.i = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i69.i, align 8, !noalias !17952
  %.sroa.5.0..sroa_idx.i70.i = getelementptr inbounds nuw i8, ptr %i.alv, i64 16
  store ptr %.sroa.053.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i70.i, align 8, !noalias !17952
  %.sroa.7.0..sroa_idx.i71.i = getelementptr inbounds nuw i8, ptr %i.alv, i64 24
  store i64 %.sroa.554.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i71.i, align 8, !noalias !17952
  %.sroa.8.0..sroa_idx.i72.i = getelementptr inbounds nuw i8, ptr %i.alv, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i72.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655.i, i64 24, i1 false), !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !17661
  %i.alz = getelementptr inbounds nuw i8, ptr %1, i64 1293 ; 2 uses
  store i8 0, ptr %i.alz, align 1, !noalias !17661
  %i.ama = getelementptr inbounds nuw i8, ptr %1, i64 1224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull align 8 dereferenceable(40) %i.ama, i64 40, i1 false), !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !17661
  %i.amb = getelementptr inbounds nuw i8, ptr %1, i64 1291 ; 2 uses
  store i8 0, ptr %i.amb, align 1, !noalias !17661
  %i.amc = getelementptr inbounds nuw i8, ptr %1, i64 1264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 16 dereferenceable(24) %i.amc, i64 24, i1 false), !noalias !17661
  %i.amd = getelementptr inbounds nuw i8, ptr %1, i64 1290
  %i.ame = load i8, ptr %i.amd, align 2, !range !349, !noalias !17661, !noundef !10
  %i.amf = trunc nuw i8 %i.ame to i1
  %i.amg = getelementptr inbounds nuw i8, ptr %1, i64 1294 ; 2 uses
  store i8 0, ptr %i.amg, align 2, !noalias !17661
  %i.amh = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.ami = load ptr, ptr %i.amh, align 8, !noalias !17661, !nonnull !10, !noundef !10
  invoke void @_RNvMs_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4execNtB4_13DeltaScanExec3new(ptr noalias noundef nonnull sret([472 x i8]) align 8 captures(none) dereferenceable(472) %i.ci, ptr noundef nonnull %i.alf, ptr noundef nonnull %i.aky, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.akz, ptr noundef nonnull %i.alo, ptr noundef nonnull %i.alv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ce, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cd, i1 noundef zeroext %i.amf, ptr noundef nonnull %i.ami)
          to label %bb.sj unwind label %bb.st, !noalias !17661

bb.sj:                                            ; preds = %bb.si
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17953
  store i64 1, ptr %i.a, align 8, !noalias !17953
  %i.amj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.amj, align 8, !noalias !17953
  %i.amk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.amk, ptr noundef nonnull readonly align 8 dereferenceable(472) %i.ci, i64 472, i1 false), !noalias !17661
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17956
  %i.aml = call noundef align 8 dereferenceable_or_null(488) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2673) 488, i64 noundef range(i64 8, 17) 8) #41, !noalias !17956 ; 3 uses
  %i.amm = icmp eq ptr %i.aml, null
  br i1 %i.amm, label %bb.sk, label %bb.sn, !prof !49

bb.sk:                                            ; preds = %bb.sj
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 488) #46
          to label %.noexc.i76.i unwind label %bb.sl, !noalias !17953

.noexc.i76.i:                                     ; preds = %bb.sk
  unreachable

bb.sl:                                            ; preds = %bb.sk
  %i.amn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4exec13DeltaScanExecEBS_(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.amk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit85.i unwind label %bb.sm, !noalias !17953

bb.sm:                                            ; preds = %bb.sl
  %i.amo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17953
  unreachable

bb.sn:                                            ; preds = %bb.sj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.aml, ptr noundef nonnull align 8 dereferenceable(488) %i.a, i64 488, i1 false), !noalias !17953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17953
  %i.amp = ptrtoint ptr %i.aml to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !17661
  store i8 0, ptr %i.amb, align 1, !noalias !17661
  %i.amq = getelementptr inbounds nuw i8, ptr %1, i64 1292
  store i8 0, ptr %i.amq, align 4, !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !17661
  store i8 0, ptr %i.alz, align 1, !noalias !17661
  %i.amr = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17959)
  call void @llvm.experimental.noalias.scope.decl(metadata !17962)
  %i.ams = load ptr, ptr %i.amr, align 16, !alias.scope !17965, !noalias !17661, !nonnull !10, !noundef !10
  %i.amt = atomicrmw sub ptr %i.ams, i64 1 release, align 8, !noalias !17966
end_hunk_5
begin_hunk_6_@_RNCNvXsn_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtB7_9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan0Bd_:bb.a
  switch i8 %i.g, label %default.unreachable73 [
    i8 0, label %bb.b
    i8 1, label %bb.ae
    i8 2, label %bb.af
    i8 3, label %bb.ah
  ]

default.unreachable73:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1602 ; 4 uses
  store i8 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1601 ; 4 uses
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1552
  %i.k = load ptr, ptr %i.j, align 16, !nonnull !10, !align !304, !noundef !10 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1560
  %i.m = load ptr, ptr %i.l, align 8, !align !304, !noundef !10 ; 3 uses
  %i.n = load <2 x i64>, ptr %1, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 16, !nonnull !10, !noundef !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !10, !align !304, !noundef !10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1568 ; 5 uses
  %i.t = invoke noundef nonnull ptr @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engineNtB2_16DataFusionEngine16new_from_session(ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.r)
          to label %bb.d unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEEB1k_.exit46: ; preds = %bb.ar, %bb.as, %.body, %bb.c
  %.pn21 = phi { ptr, i32 } [ %i.v, %bb.c ], [ %.pn19, %.body ], [ %.pn19, %bb.as ], [ %.pn19, %bb.ar ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1602
  store i8 0, ptr %i.u, align 2
  store i8 2, ptr %i.f, align 16
  resume { ptr, i32 } %.pn21

bb.c:                                             ; preds = %bb.ab, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEEB1k_.exit46

bb.d:                                             ; preds = %bb.b
  store ptr %i.t, ptr %i.s, align 16
  store i8 1, ptr %i.h, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !range !59, !alias.scope !18207, !noundef !10
  %.not.i = icmp eq i64 %i.x, -9223372036854775808
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.k, i64 136
  %.val26 = load ptr, ptr %i.y, align 8, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %.val26, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !18210, !noundef !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.02.0.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  %.sroa.3.0.i = phi i64 [ %i.aa, %bb.e ], [ undef, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i64 %.sroa.02.0.i, ptr %i.ab, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %.sroa.3.0.i, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1576 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18216)
  %.not.i29 = icmp eq ptr %i.m, null
  br i1 %.not.i29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.m, i64 8
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !18216, !noalias !18218, !nonnull !10, !noundef !10 ; 2 uses
  %i.af = getelementptr i8, ptr %i.m, i64 16
  %.val2.i = load i64, ptr %i.af, align 8, !alias.scope !18216, !noalias !18218, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18220
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.val2.i
  store ptr %.val.i, ptr %i.a, align 8, !noalias !18221
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !18221
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ab, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !18221
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtB1z_6filter6FilterINtNtNtB1D_5slice4iter4IterjENCNCNCNvXsn_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtB3q_9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan0s_00EEE9from_iterB3w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18220
  %.pre = load i64, ptr %i.ad, align 8, !range !59, !alias.scope !18225
  %i.ah = icmp eq i64 %.pre, -9223372036854775808
  %i.ai = select i1 %i.ah, ptr null, ptr %i.ad
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i64 -9223372036854775808, ptr %i.ad, align 8, !alias.scope !18213, !noalias !18228
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.h, %.noexc
  %.not.i30 = phi ptr [ null, %bb.h ], [ %i.ai, %.noexc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ak = load i64, ptr %i.k, align 8, !range !343, !alias.scope !18229, !noundef !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.am = trunc nuw i64 %i.ak to i1
  %i.an = load ptr, ptr %i.al, align 8, !alias.scope !18229, !nonnull !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.pn.in.i = select i1 %i.am, ptr %i.ao, ptr %i.al
  %.pn.i = load ptr, ptr %.pn.in.i, align 8, !nonnull !10, !noundef !10
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load ptr, ptr %i.ap, align 16, !nonnull !10, !align !1180, !noundef !10
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18232)
  call void @llvm.experimental.noalias.scope.decl(metadata !18235)
  %i.au = load i64, ptr %i.at, align 8, !range !59, !alias.scope !18235, !noalias !18232, !noundef !10
  %.not.i32 = icmp eq i64 %i.au, -9223372036854775808
  br i1 %.not.i32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at)
          to label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775808, ptr %i.d, align 8, !alias.scope !18232, !noalias !18235
  br label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.l, %bb.k
  invoke void @_RNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB2_14KernelScanPlan7try_new(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(address) dereferenceable(176) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.not.i30, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.aq, i64 noundef %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.m
  %.pn5 = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.av, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ad

bb.o:                                             ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ax = load i64, ptr %i.e, align 16, !range !6540, !alias.scope !18237, !noalias !18240, !noundef !10 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 38
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false)
  br i1 %i.ay, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.10.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.10.0..sroa_idx49, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 1, ptr %i.i, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store i64 %i.ax, ptr %i.ba, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.5, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.val27 = load ptr, ptr %i.s, align 16, !nonnull !10, !noundef !10 ; 2 uses
  %i.bb = atomicrmw add ptr %.val27, i64 1 monotonic, align 8
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.r, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBM_.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBM_.exit: ; preds = %bb.q
  %i.bd = invoke { ptr, ptr } @_RNvMs4_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtB5_9DeltaScan20scan_metadata_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.k, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ba, ptr noundef nonnull %.val27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @222)
          to label %bb.t unwind label %bb.s       ; 2 uses

bb.s:                                             ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBM_.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBM_.exit
  %i.bf = extractvalue { ptr, ptr } %i.bd, 0      ; 2 uses
  %i.bg = extractvalue { ptr, ptr } %i.bd, 1      ; 2 uses
  store i8 0, ptr %i.i, align 1
  store i8 0, ptr %i.h, align 2
  %i.bh = load ptr, ptr %i.s, align 16, !nonnull !10, !noundef !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.bk = load i8, ptr %i.bj, align 8, !range !833, !alias.scope !18242, !noundef !10
  %.not.i34 = icmp eq i8 %i.bk, 2
  %..i35 = select i1 %.not.i34, ptr null, ptr %i.bi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf), "nonnull"(ptr %i.bg) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <2 x i64> %i.n, ptr %i.bl, align 16
  %.sroa.859.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %.sroa.859.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(176) %i.ba, i64 176, i1 false)
  %.sroa.960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.bm = load <2 x ptr>, ptr %i.o, align 16
  store <2 x ptr> %i.bm, ptr %.sroa.960.0..sroa_idx, align 16
  %.sroa.1162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 448
  store ptr %i.bf, ptr %.sroa.1162.0..sroa_idx, align 16
  %.sroa.1263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 456
  store ptr %i.bg, ptr %.sroa.1263.0..sroa_idx, align 8
  %.sroa.1364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 464
  store ptr %i.bh, ptr %.sroa.1364.0..sroa_idx, align 16
  %.sroa.1465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 472
  store ptr @222, ptr %.sroa.1465.0..sroa_idx, align 8
  %.sroa.1667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 688
  store ptr %i.w, ptr %.sroa.1667.0..sroa_idx, align 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 696
  store ptr %..i35, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 712
  store i8 0, ptr %.sroa.19.0..sroa_idx, align 8
  br label %bb.ah

bb.u:                                             ; preds = %bb.as, %bb.aq, %bb.ag, %bb.ad
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.v:                                             ; preds = %bb.ag, %bb.al, %bb.s
  %.pn13.pn = phi { ptr, i32 } [ %i.be, %bb.s ], [ %i.ci, %bb.al ], [ %i.ce, %bb.ag ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 1601
  %i.bp = load i8, ptr %i.bo, align 1, !range !349, !noundef !10
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.aq, label %bb.ad

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  store i8 0, ptr %i.i, align 1
  %i.br = load i64, ptr %i.ad, align 8, !range !59, !alias.scope !18245, !noundef !10
  %i.bs = icmp eq i64 %i.br, -9223372036854775808
  br i1 %i.bs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.x
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.aa

.body:                                            ; preds = %bb.ao, %bb.y, %bb.aa, %bb.ad, %bb.i
  %.pn19 = phi { ptr, i32 } [ %i.cn, %bb.ao ], [ %.pn16.pn, %bb.ad ], [ %i.aj, %bb.i ], [ %i.by, %bb.aa ], [ %i.bt, %bb.y ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 1602
  %i.bw = load i8, ptr %i.bv, align 2, !range !349, !noundef !10
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEEB1k_.exit46

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i40, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18248)
  call void @llvm.experimental.noalias.scope.decl(metadata !18251)
  %i.bz = load ptr, ptr %i.s, align 16, !alias.scope !18254, !nonnull !10, !noundef !10
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !18254
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEEB1k_.exit

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEEB1k_.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEEB1k_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ab
  store i8 0, ptr %i.h, align 2
  br label %bb.ac

common.ret:                                       ; preds = %bb.aj, %bb.ac
  %storemerge = phi i8 [ 3, %bb.aj ], [ 1, %bb.ac ]
  store i8 %storemerge, ptr %i.f, align 16
  ret void

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit44, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEEB1k_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  br label %common.ret

bb.ad:                                            ; preds = %bb.aq, %bb.n, %bb.v
  %.pn16.pn = phi { ptr, i32 } [ %.pn5, %bb.n ], [ %.pn13.pn, %bb.aq ], [ %.pn13.pn, %bb.v ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 1601
  store i8 0, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 1576
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cd) #44
          to label %.body unwind label %bb.u

bb.ae:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #49
  unreachable

bb.af:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #49
  unreachable

bb.ag:                                            ; preds = %bb.ah
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan14execution_plan0EBS_(ptr noundef nonnull align 16 %i.cf) #44
          to label %bb.v unwind label %bb.u

bb.ah:                                            ; preds = %bb.a, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  invoke fastcc void @_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan14execution_plan0Bb_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.c, ptr noundef nonnull align 16 %i.cf, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.ai unwind label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  %i.cg = load i64, ptr %i.c, align 8, !range !18255, !noundef !10
  %i.ch = icmp eq i64 %i.cg, 21
  br i1 %i.ch, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan14execution_plan0EBS_(ptr noundef nonnull align 16 %i.cf)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.am:                                            ; preds = %bb.ak
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 1601
  store i8 0, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 1576 ; 4 uses
  %i.cl = load i64, ptr %i.ck, align 8, !range !59, !alias.scope !18256, !noundef !10
  %i.cm = icmp eq i64 %i.cl, -9223372036854775808
  br i1 %i.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit44, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i40 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %.body unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i40: ; preds = %bb.an
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit44 unwind label %bb.aa

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit44: ; preds = %bb.am, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i40
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1602
  store i8 0, ptr %i.cp, align 2
  br label %bb.ac

bb.aq:                                            ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan14KernelScanPlanEBS_(ptr noalias noundef align 16 dereferenceable(176) %i.cq) #44
          to label %bb.ad unwind label %bb.u

bb.ar:                                            ; preds = %.body
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1568 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18259)
  call void @llvm.experimental.noalias.scope.decl(metadata !18262)
  %i.cs = load ptr, ptr %i.cr, align 16, !alias.scope !18265, !nonnull !10, !noundef !10
  %i.ct = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !18265
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEEB1k_.exit46

bb.as:                                            ; preds = %bb.ar
end_hunk_6
begin_hunk_7_@_RNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args0Bc_:bb.a
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 1152921504606846976) %.val11, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  %i.n = load i64, ptr %i.b, align 8, !range !343, !noalias !18277, !noundef !10
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !59, !noalias !18277, !noundef !10 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e, !prof !49

bb.d:                                             ; preds = %.noexc
  %i.s = load i64, ptr %i.r, align 8, !noalias !18277
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #46
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.t = load ptr, ptr %i.r, align 8, !noalias !18277, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = icmp samesign ule i64 %.val11, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18277
  %.not.i.i = icmp eq i64 %.val11, 0
  br i1 %.not.i.i, label %_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Be_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw nsw i64 %.val11, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 8 %.val10, i64 %i.v, i1 false), !noalias !18282
  br label %_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Be_.exit.i

_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Be_.exit.i: ; preds = %bb.f, %bb.e
  store i64 %i.q, ptr %i.m, align 8, !alias.scope !18274, !noalias !18283
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !18274, !noalias !18283
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !18274, !noalias !18283
  %i.w = icmp eq i64 %i.q, -9223372036854775808
  %i.x = select i1 %i.w, ptr null, ptr %i.m
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.m, align 8, !alias.scope !18274, !noalias !18283
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body22

bb.i:                                             ; preds = %bb.g, %_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Be_.exit.i
  %.not.i16 = phi ptr [ null, %bb.g ], [ %i.x, %_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Be_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18284
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1552
  store ptr %i.g, ptr %i.aa, align 16, !noalias !18284
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1560
  store ptr %.not.i16, ptr %i.ab, align 8, !noalias !18284
  %i.ac = load <2 x i64>, ptr %i.h, align 8
  store <2 x i64> %i.ac, ptr %i.a, align 16, !noalias !18284
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ae = load <2 x ptr>, ptr %i.z, align 8
  store <2 x ptr> %i.ae, ptr %i.ad, align 16, !noalias !18284
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %..i, ptr %i.af, align 16, !noalias !18284
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.5.i, ptr %i.ag, align 8, !noalias !18284
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 1600
  store i8 0, ptr %i.ah, align 16, !noalias !18284
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18290
  %i.ai = tail call noundef align 16 dereferenceable_or_null(1616) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2673) 1616, i64 noundef range(i64 8, 17) 16) #41, !noalias !18290 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.m, !prof !49

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 1616) #46
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsn_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtBO_9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan0EBU_(ptr noundef nonnull align 16 dereferenceable(1616) %i.a) #44
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1616) %i.ai, ptr noundef nonnull align 16 dereferenceable(1616) %i.a, i64 1616, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18284
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.ai, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr @1231, ptr %i.an, align 8
  br label %bb.q

.body:                                            ; preds = %bb.y, %bb.x, %bb.k, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.ap, %bb.p ], [ %i.bc, %bb.y ], [ %i.bc, %bb.x ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #44
          to label %.body22 unwind label %bb.ai

.body22:                                          ; preds = %bb.ag, %bb.ab, %bb.ad, %bb.h, %.body
  %.pn3 = phi { ptr, i32 } [ %i.br, %bb.ag ], [ %.pn, %.body ], [ %i.y, %bb.h ], [ %i.bm, %bb.ab ], [ %i.bo, %bb.ad ]
  store i8 2, ptr %i.d, align 8
  resume { ptr, i32 } %.pn3

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #49
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #49
  unreachable

bb.p:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val6 = load ptr, ptr %i.ar, align 8
  %i.aq = getelementptr i8, ptr %1, i64 152
  %.val7 = load ptr, ptr %i.aq, align 8, !nonnull !10, !align !304, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val6, ptr nonnull %.val7) #44
          to label %.body unwind label %bb.ai

bb.q:                                             ; preds = %bb.a, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.as = load i64, ptr %i.c, align 8, !range !18255, !noundef !10 ; 3 uses
  %i.at = icmp eq i64 %i.as, 21
  br i1 %i.at, label %bb.s, label %bb.t

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.s
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit ], [ 3, %bb.s ]
  store i8 %storemerge, ptr %i.d, align 8
  ret void

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.t:                                             ; preds = %bb.r
  %.sroa.345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = load <2 x ptr>, ptr %.sroa.345.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %i.ar, align 8            ; 5 uses
  %i.av = getelementptr i8, ptr %1, i64 152
  %.val5 = load ptr, ptr %i.av, align 8, !nonnull !10, !align !304, !noundef !10 ; 5 uses
  %i.aw = load ptr, ptr %.val5, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i18, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.aw(ptr noundef nonnull %.val)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !312, !invariant.load !10 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !295, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ay, i64 noundef range(i64 1, 536870913) %i.bb) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.u
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !312, !invariant.load !10 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.body, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !295, !invariant.load !10
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #41
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.w, %bb.v
  %.not.i21 = icmp eq i64 %i.as, 20
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 7 uses
  br i1 %.not.i21, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.bi = extractelement <2 x ptr> %i.au, i64 0
  %i.bj = extractelement <2 x ptr> %i.au, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi), "nonnull"(ptr %i.bj) ]
  %i.bk = load i64, ptr %3, align 8, !range !59, !alias.scope !18293, !noundef !10
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i26.invoke unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body22 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i26.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i26.invoke, %bb.ae, %bb.z
  store i64 %i.as, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.au, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %i.bp = load i64, ptr %3, align 8, !range !59, !alias.scope !18296, !noundef !10
  %i.bq = icmp eq i64 %i.bp, -9223372036854775808
  br i1 %i.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i26.invoke unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body22 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i26.invoke: ; preds = %bb.aa, %bb.af
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ad

bb.ai:                                            ; preds = %bb.p, %.body
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6update0Bc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !range !833, !noundef !10
  switch i8 %i.l, label %default.unreachable60 [
    i8 0, label %bb.c
    i8 1, label %bb.x
    i8 2, label %bb.y
  ]

default.unreachable60:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body44

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @233, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !18299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18303
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc27 unwind label %bb.f

.noexc27:                                         ; preds = %bb.d
  %i.o = load i64, ptr %i.a, align 8, !range !343, !noalias !18303, !noundef !10
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !59, !noalias !18303, !noundef !10 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.h, !prof !49

bb.e:                                             ; preds = %.noexc27
  %i.t = load i64, ptr %i.s, align 8, !noalias !18303
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #46
          to label %.noexc28 unwind label %bb.f

.noexc28:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.f, %bb.g
  %.pn13 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.u, %bb.f ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #44
          to label %.body44 unwind label %bb.w

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.e, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #44
          to label %.body unwind label %bb.w

bb.h:                                             ; preds = %.noexc27
  %i.w = load ptr, ptr %i.s, align 8, !noalias !18303, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18303
  store i64 %i.r, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.559.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.555.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.x, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.557.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @146, ptr noundef nonnull %i.b)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40 unwind label %bb.g

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40:     ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i43 unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body44 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i43: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.n unwind label %bb.m

.body44:                                          ; preds = %bb.m, %bb.k, %.body, %bb.b
  %.pn15 = phi { ptr, i32 } [ %i.m, %bb.b ], [ %.pn13, %.body ], [ %i.ac, %bb.m ], [ %i.aa, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i) #44
          to label %.body49 unwind label %bb.w

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i43
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body49 unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

end_hunk_7
begin_hunk_8_@_RNvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB2_14MapSpecialCaseINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1a_7sources4once4OnceINtNtB1c_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorEEINtNtB18_7flatten7FlattenINtNtB1c_6option8IntoIterIB2M_DNtNtNtB1a_6traits8iterator8Iteratorp4ItemB2o_NtNtB1c_6marker4SendEL_EEEEINtB2_18MapSpecialCaseFnOkNCNCNvMNtB3p_11log_segmentNtB7h_10LogSegment24create_checkpoint_streams_00EEB5A_4nextCs14kWLkQVSKO_14deltalake_core:bb.a
  invoke void %i.ac(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.n unwind label %.loopexit8.i.i.i.i, !noalias !22186

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !312, !invariant.load !10, !noalias !22186 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !295, !invariant.load !10, !noalias !22186
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #41, !noalias !22186
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

.loopexit8.i.i.i.i:                               ; preds = %bb.m
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit8.i.i.i.i
  %.val.i.i.lcssa.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i, %.loopexit8.i.i.i.i ], [ %.val.i.i.peel.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  %.val4.i.i.lcssa.i.i.i.i = phi ptr [ %.val4.i.i.i.i.i.i, %.loopexit8.i.i.i.i ], [ %.val4.i.i.peel.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit8.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.val4.i.i.lcssa.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !312, !invariant.load !10, !noalias !22186 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.body.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %.val4.i.i.lcssa.i.i.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !295, !invariant.load !10, !noalias !22186
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.lcssa.i.i.i.i, i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #41, !noalias !22186
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.q, %bb.p
  store ptr null, ptr %i.i, align 8, !alias.scope !22183, !noalias !22186
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.b) #44
          to label %.body.i.i unwind label %bb.r, !noalias !22186

bb.r:                                             ; preds = %.body.i.i.i.i.i.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !22186
  unreachable

.loopexit.i.i.i.i:                                ; preds = %.noexc2.i.i, %.noexc.i.i
  %.lcssa.i.i.i.i = phi i64 [ %i.m, %.noexc.i.i ], [ %i.aa, %.noexc2.i.i ]
  %.sroa.7.0..sroa_idx29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx29.i.i.i.i.i, align 8, !noalias !22205
  %.sroa.9.sroa.7.0..sroa.7.0..sroa_idx29.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9.sroa.7.sroa.0.0.copyload14 = load i8, ptr %.sroa.9.sroa.7.0..sroa.7.0..sroa_idx29.i.i.i.i.i.sroa_idx, align 8, !noalias !22205
  %.sroa.9.sroa.7.sroa.6.0..sroa.9.sroa.7.0..sroa.7.0..sroa_idx29.i.i.i.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.9.sroa.7.sroa.6, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.9.sroa.7.sroa.6.0..sroa.9.sroa.7.0..sroa.7.0..sroa_idx29.i.i.i.i.i.sroa_idx.sroa_idx, i64 71, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22204
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.k
  store ptr null, ptr %i.i, align 8, !alias.scope !22183, !noalias !22186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22204
  %i.ap = load i64, ptr %i.g, align 16, !range !343, !alias.scope !22195, !noalias !22198, !noundef !10
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %i.ar = load <2 x ptr>, ptr %i.k, align 8, !alias.scope !22199, !noalias !22198
  %i.as = load ptr, ptr %i.k, align 8, !alias.scope !22199, !noalias !22198, !noundef !10
  store ptr null, ptr %i.k, align 8, !alias.scope !22199, !noalias !22198
  %.not5.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not5.i.i.i.i.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, !llvm.loop !22206

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.peel.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.peel.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22210
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !22212, !noalias !22213, !noundef !10
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i8.i.i.i.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24.sink.split, label %bb.s

bb.s:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.i.i, !noalias !22193

.noexc3.i.i:                                      ; preds = %bb.s
  %i.av = load i64, ptr %i.a, align 16, !noalias !22214 ; 2 uses
  %.not3.i9.i.i.i.i.i = icmp eq i64 %i.av, -9223372036854775742
  br i1 %.not3.i9.i.i.i.i.i, label %bb.t, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread36

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread36: ; preds = %.noexc3.i.i
  %.sroa.9.0..sroa_idx538 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx538, align 8, !noalias !22214
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx5.sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.9.sroa.7.sroa.0.0.copyload1343 = load i8, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx5.sroa_idx42, align 8, !noalias !22214
  %.sroa.9.sroa.7.sroa.6.0..sroa.9.sroa.7.0..sroa.9.0..sroa_idx5.sroa_idx.sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.9.sroa.7.sroa.6, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.9.sroa.7.sroa.6.0..sroa.9.sroa.7.0..sroa.9.0..sroa_idx5.sroa_idx.sroa_idx44, i64 71, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22210
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.t:                                             ; preds = %.noexc3.i.i
  %.val.i10.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !22212, !noalias !22213, !noundef !10 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val4.i11.i.i.i.i.i = load ptr, ptr %i.ax, align 16, !alias.scope !22212, !noalias !22213 ; 6 uses
  %i.ay = icmp eq ptr %.val.i10.i.i.i.i.i, null
  br i1 %i.ay, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i11.i.i.i.i.i) ]
  %i.az = load ptr, ptr %.val4.i11.i.i.i.i.i, align 8, !invariant.load !10, !noalias !22213 ; 2 uses
  %.not.i.i.i12.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i12.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void %i.az(ptr noundef nonnull %.val.i10.i.i.i.i.i)
          to label %bb.w unwind label %bb.y, !noalias !22213

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %.val4.i11.i.i.i.i.i, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !312, !invariant.load !10, !noalias !22213 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %.val4.i11.i.i.i.i.i, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !range !295, !invariant.load !10, !noalias !22213
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i10.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bb, i64 noundef range(i64 1, 536870913) %i.be) #41, !noalias !22213
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %bb.v
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val4.i11.i.i.i.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !312, !invariant.load !10, !noalias !22213 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.body.i13.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %.val4.i11.i.i.i.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !295, !invariant.load !10, !noalias !22213
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i10.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #41, !noalias !22213
  br label %.body.i13.i.i.i.i.i

.body.i13.i.i.i.i.i:                              ; preds = %bb.z, %bb.y
  store ptr null, ptr %i.at, align 8, !alias.scope !22212, !noalias !22213
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.a) #44
          to label %.body.i.i unwind label %bb.aa, !noalias !22213

bb.aa:                                            ; preds = %.body.i13.i.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !22213
  unreachable

.loopexit.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.s, %bb.e
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %.body.i13.i.i.i.i.i, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.bf, %.body.i13.i.i.i.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.c) #44
          to label %common.resume.i.i unwind label %bb.ab, !noalias !22215

common.resume.i.i:                                ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.ab:                                            ; preds = %.body.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !22215
  unreachable

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.t, %bb.w, %bb.x
  store ptr null, ptr %i.at, align 8, !alias.scope !22212, !noalias !22213
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24.sink.split

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %.loopexit.i.i.i.i, %bb.b, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread36
  %.sroa.0.123 = phi i64 [ %i.av, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread36 ], [ %.lcssa.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.9.sroa.7.sroa.0.122 = phi i8 [ %.sroa.9.sroa.7.sroa.0.0.copyload1343, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread36 ], [ %.sroa.9.sroa.7.sroa.0.0.copyload14, %.loopexit.i.i.i.i ], [ %.sroa.9.sroa.7.sroa.0.0.copyload, %bb.b ]
  %i.bn = phi <2 x ptr> [ %i.aw, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread36 ], [ %i.ao, %.loopexit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22149
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %.not.i = icmp eq i64 %.sroa.0.123, -9223372036854775743
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.9.sroa.7.sroa.6, i64 71, i1 false)
  br label %_RNvXs1_NtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5_18MapSpecialCaseFnOkNCNCNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB1h_10LogSegment24create_checkpoint_streams_00EINtB5_16MapSpecialCaseFnINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1j_11engine_data10EngineDataEL_ENtNtB1j_5error5ErrorEE4callCs14kWLkQVSKO_14deltalake_core.exit

bb.ad:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.bo = extractelement <2 x ptr> %i.bn, i64 0
  %i.bp = extractelement <2 x ptr> %i.bn, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo), "nonnull"(ptr %i.bp) ]
  br label %_RNvXs1_NtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5_18MapSpecialCaseFnOkNCNCNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB1h_10LogSegment24create_checkpoint_streams_00EINtB5_16MapSpecialCaseFnINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1j_11engine_data10EngineDataEL_ENtNtB1j_5error5ErrorEE4callCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5_18MapSpecialCaseFnOkNCNCNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB1h_10LogSegment24create_checkpoint_streams_00EINtB5_16MapSpecialCaseFnINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1j_11engine_data10EngineDataEL_ENtNtB1j_5error5ErrorEE4callCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ac, %bb.ad
  %.sroa.9.0 = phi i8 [ 0, %bb.ad ], [ %.sroa.9.sroa.7.sroa.0.122, %bb.ac ]
  store i64 %.sroa.0.123, ptr %0, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.bn, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.11, i64 71, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.ae

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24.sink.split: ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22210
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24: ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24.sink.split, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22149
  store i64 -9223372036854775742, ptr %0, align 16
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24, %_RNvXs1_NtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5_18MapSpecialCaseFnOkNCNCNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB1h_10LogSegment24create_checkpoint_streams_00EINtB5_16MapSpecialCaseFnINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1j_11engine_data10EngineDataEL_ENtNtB1j_5error5ErrorEE4callCs14kWLkQVSKO_14deltalake_core.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB2_14MapSpecialCaseINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1a_7sources4once4OnceINtNtB1c_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorEEINtNtB18_7flatten7FlattenINtNtB1c_6option8IntoIterIB2M_DNtNtNtB1a_6traits8iterator8Iteratorp4ItemB2o_NtNtB1c_6marker4SendEL_EEEEINtB2_18MapSpecialCaseFnOkNCNCNvMNtB3p_11log_segmentNtB7h_10LogSegment24create_checkpoint_streams_00EEB5A_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca i64, align 8                ; 6 uses
  %.sroa.8.i = alloca i64, align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22219)
  %i.e = load i64, ptr %1, align 16, !range !22156, !alias.scope !22219, !noalias !22216, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %i.e, -9223372036854775741
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load i64, ptr %i.f, align 16, !range !84, !alias.scope !22219, !noalias !22216, !noundef !10 ; 3 uses
  %.not7.i = icmp eq i64 %i.g, 2                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i64 %i.e, -9223372036854775742
  %i.i = zext i1 %i.h to i64                      ; 5 uses
  br i1 %.not7.i, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22231
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !22232, !noalias !22233, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.j), !noalias !22234
  %.pre.i.i.i = load i64, ptr %i.d, align 8, !noalias !22231
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre72.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !range !343, !noalias !22231
  %.phi.trans.insert73.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre74.i.i.i = load i64, ptr %.phi.trans.insert73.i.i.i, align 8, !noalias !22231
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %.pre74.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.m = phi i64 [ %.pre72.i.i.i, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.n = phi i64 [ %.pre.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22231
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !22232, !noalias !22233, !noundef !10
  %.not54.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not54.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.o), !noalias !22237
  %.pre75.i.i.i = load i64, ptr %i.c, align 8, !noalias !22231
  %.phi.trans.insert76.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre77.i.i.i = load i64, ptr %.phi.trans.insert76.i.i.i, align 8, !range !343, !noalias !22231
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre79.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i, align 8, !noalias !22231
  %i.q = call i64 @llvm.uadd.sat.i64(i64 %i.n, i64 %.pre75.i.i.i)
  %i.r = freeze i64 %.pre77.i.i.i
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i: ; preds = %bb.f, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.s = phi i64 [ %.pre79.i.i.i, %bb.f ], [ 0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.fr6 = phi i64 [ %i.r, %bb.f ], [ 1, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ] ; 2 uses
  %i.t = phi i64 [ %i.q, %bb.f ], [ %i.n, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22231
  %i.u = trunc nuw i64 %i.g to i1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !22232, !noalias !22233, !noundef !10
  %.not71.i.i.i = icmp eq ptr %.val.i.i.i, null
  %i.w = trunc nuw i64 %i.m to i1
  %i.x = trunc i64 %.fr6 to i1
  %op.rdx = and i1 %.not71.i.i.i, %i.x
  %op.rdx2 = select i1 %op.rdx, i1 %i.w, i1 false
  br i1 %op.rdx2, label %bb.j, label %bb.i

bb.h:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i
  %i.y = and i64 %.fr6, %i.m
  %or.cond55.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %or.cond55.not.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  store i64 %i.t, ptr %0, align 8, !alias.scope !22233, !noalias !22232
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.z = add i64 %i.s, %i.l                       ; 2 uses
  %i.aa = icmp uge i64 %i.z, %i.l
  %.56.i.i.i = zext i1 %i.aa to i64
  store i64 %i.t, ptr %0, align 8, !alias.scope !22233, !noalias !22232
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.56.i.i.i, ptr %i.ab, align 8, !alias.scope !22233, !noalias !22232
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.k:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !22216, !noalias !22219
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ac, align 8, !alias.scope !22216, !noalias !22219
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22250
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !22251, !noalias !22252, !noundef !10
  %.not.i.i11.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i11.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.ad), !noalias !22253
  %.pre.i.i12.i = load i64, ptr %i.b, align 8, !noalias !22250
  %.phi.trans.insert.i.i13.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre72.i.i14.i = load i64, ptr %.phi.trans.insert.i.i13.i, align 8, !range !343, !noalias !22250
  %.phi.trans.insert73.i.i15.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre74.i.i16.i = load i64, ptr %.phi.trans.insert73.i.i15.i, align 8, !noalias !22250
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i: ; preds = %bb.m, %bb.l
  %i.af = phi i64 [ %.pre74.i.i16.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ag = phi i64 [ %.pre72.i.i14.i, %bb.m ], [ 1, %bb.l ] ; 2 uses
  %i.ah = phi i64 [ %.pre.i.i12.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22250
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !22251, !noalias !22252, !noundef !10
  %.not54.i.i18.i = icmp eq ptr %i.aj, null
  br i1 %.not54.i.i18.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.ai), !noalias !22256
  %.pre75.i.i19.i = load i64, ptr %i.a, align 8, !noalias !22250
  %.phi.trans.insert76.i.i20.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre77.i.i21.i = load i64, ptr %.phi.trans.insert76.i.i20.i, align 8, !range !343, !noalias !22250
  %.phi.trans.insert78.i.i22.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre79.i.i23.i = load i64, ptr %.phi.trans.insert78.i.i22.i, align 8, !noalias !22250
  %i.ak = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 %.pre75.i.i19.i)
  %i.al = freeze i64 %.pre77.i.i21.i
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i: ; preds = %bb.n, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i
  %i.am = phi i64 [ %.pre79.i.i23.i, %bb.n ], [ 0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i ]
  %.fr5 = phi i64 [ %i.al, %bb.n ], [ 1, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i ] ; 2 uses
  %i.an = phi i64 [ %i.ak, %bb.n ], [ %i.ah, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22250
  %i.ao = trunc nuw i64 %i.g to i1
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i.i29.i = load ptr, ptr %i.ap, align 8, !alias.scope !22251, !noalias !22252, !noundef !10
  %.not71.i.i30.i = icmp eq ptr %.val.i.i29.i, null
  %i.aq = trunc nuw i64 %i.ag to i1
  %i.ar = trunc i64 %.fr5 to i1
  %op.rdx3 = and i1 %.not71.i.i30.i, %i.ar
  %op.rdx4 = select i1 %op.rdx3, i1 %i.aq, i1 false
  br i1 %op.rdx4, label %bb.q, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1t_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorENtNtBb_6marker4SendEL_EEEB22_9size_hintCs14kWLkQVSKO_14deltalake_core.exit34.i

bb.p:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i
end_hunk_8
begin_hunk_9_@_RNvXs2F_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6SelectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void

bb.cj:                                            ; preds = %bb.cc, %bb.bu, %bb.bd, %bb.ba, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit45, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit43, %bb.bl, %bb.bi, %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ak, %bb.ah, %bb.ae, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3TopEECs14kWLkQVSKO_14deltalake_core.exit, %bb.g
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.ck:                                            ; preds = %bb.g
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineNtB5_5AsAny6as_anyBD_(ptr noundef nonnull %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @408, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineNtB5_5AsAny7any_refBD_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @408, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineNtB5_5AsAny8into_anyBD_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @408, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineNtB5_5AsAny9type_nameBD_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @409, i64 58 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formats27DataFusionFileFormatHandlerNtB5_5AsAny6as_anyBF_(ptr noundef nonnull %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @410, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formats27DataFusionFileFormatHandlerNtB5_5AsAny7any_refBF_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @410, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formats27DataFusionFileFormatHandlerNtB5_5AsAny8into_anyBF_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @410, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formats27DataFusionFileFormatHandlerNtB5_5AsAny9type_nameBF_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @411, i64 83 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage24DataFusionStorageHandlerNtB5_5AsAny6as_anyBF_(ptr noundef nonnull %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @412, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage24DataFusionStorageHandlerNtB5_5AsAny7any_refBF_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @412, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage24DataFusionStorageHandlerNtB5_5AsAny8into_anyBF_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @412, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage24DataFusionStorageHandlerNtB5_5AsAny9type_nameBF_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @413, i64 75 }
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader24ParquetRecordBatchStreamNtNtBJ_5store19ParquetObjectReaderENtB5_9TryStream13try_poll_nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(128) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [24 x i8], align 8        ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [120 x i8], align 8               ; 8 uses
  %i.h = alloca [96 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 16               ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [96 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [96 x i8], align 8                ; 5 uses
  %.sroa.595.i.i = alloca [24 x i8], align 8      ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.720.i.i = alloca [32 x i8], align 8      ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 5 uses
  %i.p = alloca [96 x i8], align 8                ; 12 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.9.i = alloca [32 x i8], align 8          ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22838)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22840)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !22843
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.720.i.i)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 23 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  %.sroa.328.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.365.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.8.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.9.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.560.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.r, align 8, !alias.scope !22845, !noalias !22846 ; 2 uses
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !22845, !noalias !22846 ; 3 uses
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !22845, !noalias !22846 ; 3 uses
  store i64 3, ptr %i.r, align 8, !alias.scope !22845, !noalias !22846
  %i.w = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload.i.i, i64 1)
  switch i64 %i.w, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.i, %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !22849
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.p, align 8, !noalias !22849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, i64 24, i1 false), !noalias !22846
  store ptr %.sroa.7.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx3.i.i, align 8, !noalias !22849
  store ptr %.sroa.8.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx5.i.i, align 8, !noalias !22849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx7.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx.i.i, i64 48, i1 false), !noalias !22846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !22849
  invoke void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12push_decoderNtB4_18ParquetPushDecoder10try_decode(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.g unwind label %.thread112.i.i, !noalias !22850

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !22849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, i64 24, i1 false), !noalias !22846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !22849
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i), "nonnull"(ptr %.sroa.8.0.copyload.i.i) ]
  store ptr %.sroa.7.0.copyload.i.i, ptr %i.i, align 16, !noalias !22849
  store ptr %.sroa.8.0.copyload.i.i, ptr %i.s, align 8, !noalias !22849
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5store19ParquetObjectReaderINtNtB10_3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEENtNtB2k_6errors12ParquetErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ae unwind label %.loopexit.i.i, !noalias !22850

bb.f:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader12RequestStateNtNtBJ_5store19ParquetObjectReaderEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.r)
          to label %.thread26.i unwind label %bb.bk, !noalias !22850

.thread112.i.i:                                   ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.g:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.o, align 8, !range !22851, !noalias !22849, !noundef !10 ; 6 uses
  %i.z = icmp eq i64 %i.y, -9223372036854775805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.720.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.560.0..sroa_idx.i.i, i64 32, i1 false), !noalias !22849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !22849
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.720.i.i, i64 32, i1 false), !noalias !22852
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  %i.aa = icmp ne i64 %i.y, -9223372036854775807
  call void @llvm.assume(i1 %i.aa)
  %i.ab = xor i64 %i.y, -9223372036854775808
  %i.ac = icmp slt i64 %i.y, 0
  %i.ad = select i1 %i.ac, i64 %i.ab, i64 1
  switch i64 %i.ad, label %bb.c [
    i64 0, label %bb.j
    i64 1, label %bb.s
    i64 2, label %bb.t
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.720.i.i, i64 24, i1 false), !noalias !22849
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.595.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !22849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.p, i64 96, i1 false), !noalias !22849
  call void @llvm.experimental.noalias.scope.decl(metadata !22853)
  call void @llvm.experimental.noalias.scope.decl(metadata !22856)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22858
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBM_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.l unwind label %bb.k, !noalias !22860

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.n, %bb.k
  %.sroa.0.0.lpad-body.i.i.i = phi i1 [ true, %bb.k ], [ false, %bb.n ]
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %i.ah, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #44
          to label %bb.q unwind label %bb.p, !noalias !22860

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.m, i64 96, i1 false), !noalias !22861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !22858
  store i8 0, ptr %i.u, align 8, !noalias !22858
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !22862
  %i.af = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2673) 144, i64 noundef range(i64 8, 17) 8) #41, !noalias !22862 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.m, label %bb.u, !prof !49

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #46
          to label %.noexc.i.i.i unwind label %bb.n, !noalias !22860

.noexc.i.i.i:                                     ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtBO_12RequestStateNtNtBO_5store19ParquetObjectReaderE13begin_request0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(144) %i.a) #44
          to label %.body.i.i.i unwind label %bb.o, !noalias !22860

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !22860
  unreachable

bb.p:                                             ; preds = %bb.r, %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !22865
  unreachable

bb.q:                                             ; preds = %.body.i.i.i
  br i1 %.sroa.0.0.lpad-body.i.i.i, label %bb.r, label %common.resume.i

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5store19ParquetObjectReaderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.m) #44
          to label %common.resume.i unwind label %bb.p, !noalias !22865

bb.s:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !22849
  store i64 %i.y, ptr %i.l, align 8, !noalias !22849
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.720.i.i, i64 32, i1 false), !noalias !22849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %i.p, i64 96, i1 false), !noalias !22849
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader12RequestStateNtNtBJ_5store19ParquetObjectReaderEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.r)
          to label %bb.y unwind label %bb.x, !noalias !22850

bb.t:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader12RequestStateNtNtBJ_5store19ParquetObjectReaderEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.r)
          to label %bb.ab unwind label %.thread108.i.i, !noalias !22850

bb.u:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.af, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !22860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.595.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !alias.scope !22866, !noalias !22867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !22849
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader12RequestStateNtNtBJ_5store19ParquetObjectReaderEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.r)
          to label %bb.w unwind label %bb.v, !noalias !22850

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.r, align 8, !alias.scope !22845, !noalias !22846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.595.i.i, i64 24, i1 false), !noalias !22846
  store ptr %i.af, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !22845, !noalias !22846
  store ptr @272, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !22845, !noalias !22846
  br label %common.resume.i

bb.w:                                             ; preds = %bb.u
  store i64 2, ptr %i.r, align 8, !alias.scope !22845, !noalias !22846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.595.i.i, i64 24, i1 false), !noalias !22846
  store ptr %i.af, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !22845, !noalias !22846
  store ptr @272, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !22845, !noalias !22846
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.595.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22849
  br label %.backedge

bb.x:                                             ; preds = %bb.s
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false), !noalias !22846
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.l) #44
          to label %common.resume.i unwind label %bb.aa, !noalias !22850

bb.y:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false), !noalias !22846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.720.i.i, i64 32, i1 false), !noalias !22843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !22849
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %bb.y
  %.sroa.0.2.i = phi i64 [ %storemerge.i.i, %bb.ac ], [ %i.y, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22849
  br label %_RNvMs9_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtB5_24ParquetRecordBatchStreamNtNtB5_5store19ParquetObjectReaderE15poll_next_innerCs14kWLkQVSKO_14deltalake_core.exit.i

bb.aa:                                            ; preds = %.body81.thread132.i.i, %bb.bj, %bb.be, %bb.ad, %bb.x
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !22850
  unreachable

.thread108.i.i:                                   ; preds = %bb.t
  %i.an = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.r, align 8, !alias.scope !22845, !noalias !22846
  br label %bb.ad

bb.ab:                                            ; preds = %bb.t
  store i64 3, ptr %i.r, align 8, !alias.scope !22845, !noalias !22846
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.h
  %storemerge.i.i = phi i64 [ -9223372036854775808, %bb.ab ], [ -9223372036854775806, %bb.h ]
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5store19ParquetObjectReaderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.p), !noalias !22850
  br label %bb.z

common.resume.i:                                  ; preds = %bb.bp, %bb.bk, %.body81.thread132.i.i, %bb.bf, %bb.bd, %bb.bc, %bb.ax, %bb.aw, %bb.av, %.thread126.i.i, %bb.ad, %bb.x, %bb.v, %bb.r, %bb.q
  %common.resume.op.i = phi { ptr, i32 } [ %i.cg, %bb.bf ], [ %i.bz, %bb.bd ], [ %.pn71111.i.i, %bb.ad ], [ %i.ak, %bb.v ], [ %.pn68.pn129.i.i, %.body81.thread132.i.i ], [ %.pn68.ph.i.i, %bb.ax ], [ %i.ci, %bb.bk ], [ %eh.lpad-body.i.i.i, %bb.q ], [ %eh.lpad-body.i.i.i, %bb.r ], [ %i.ao, %.thread126.i.i ], [ %i.bz, %bb.bc ], [ %i.al, %bb.x ], [ %i.bn, %bb.av ], [ %i.bn, %bb.aw ], [ %i.cj, %bb.bp ]
  resume { ptr, i32 } %common.resume.op.i

bb.ad:                                            ; preds = %.thread108.i.i, %.thread112.i.i
  %.pn71111.i.i = phi { ptr, i32 } [ %i.an, %.thread108.i.i ], [ %i.x, %.thread112.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5store19ParquetObjectReaderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.p) #44
          to label %common.resume.i unwind label %bb.aa, !noalias !22850

.thread126.i.i:                                   ; preds = %bb.af
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.r, align 8, !alias.scope !22845, !noalias !22846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, i64 24, i1 false), !noalias !22846
  %i.ap = extractelement <2 x ptr> %i.as, i64 0
  store ptr %i.ap, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !22845, !noalias !22846
  %i.aq = extractelement <2 x ptr> %i.as, i64 1
  store ptr %i.aq, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !22845, !noalias !22846
end_hunk_9
