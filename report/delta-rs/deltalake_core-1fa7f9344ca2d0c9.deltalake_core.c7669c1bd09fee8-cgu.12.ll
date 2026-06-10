inline.NumInlined: 12919
inline.NumDeleted: 5719
begin_hunk_0_@_RINvMs1_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_readerNtB6_19ArrowReaderMetadata4loadNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core:bb.a
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.415.0.copyload) ]
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
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %3, align 8, !alias.scope !1020, !nonnull !10, !noundef !10
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.w
  %i.z = trunc i64 %i.u to i32
  %reass.sub = sub i32 %i.z, %2
  %i.aa = add i32 %reass.sub, 4
  store i32 %i.aa, ptr %i.y, align 1, !alias.scope !1036, !noalias !1039
  %i.ab = load i64, ptr %i.c, align 8, !alias.scope !1020, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1041, !noundef !10 ; 3 uses
  %i.af = load i64, ptr %i.ac, align 8, !range !312, !alias.scope !1041, !noundef !10
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8grow_oneCsdl0l68gAy31_9arrow_ipc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  %i.ah = trunc i64 %i.ab to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1041, !nonnull !10, !noundef !10
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ae ; 2 uses
  store i32 %i.ah, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i16 %1, ptr %i.al, align 4
  %i.am = add i64 %i.ae, 1
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !1041
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
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %3, ptr %i.g, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanEBO_(ptr noalias noundef align 8 dereferenceable(168) %1) #44
          to label %bb.f unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr %2, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %3, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtB6_9DeltaScan28with_file_skipping_predicateINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(168) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.03.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !1052, !noalias !1055
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !1052, !noalias !1055, !nonnull !10, !noundef !10 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !1052, !noalias !1055 ; 2 uses
  %i.d = icmp ult i64 %.sroa.55.0.copyload.i, 82351536043346213
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [112 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1057
  store ptr %.sroa.44.0.copyload.i, ptr %i.a, align 8, !alias.scope !1064, !noalias !1068
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1064, !noalias !1068
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1064, !noalias !1068
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1064, !noalias !1068
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.f, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanEBO_(ptr noalias noundef align 8 dereferenceable(168) %1) #44
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !range !59, !alias.scope !1069, !noundef !10
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.j, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  ret void

bb.i:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtB6_9DeltaScan3newNtB6_15SnapshotWrapperEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, i64 noundef range(i64 0, 2) %1, ptr noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  store ptr %2, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = trunc nuw i64 %1 to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.c
  %.pn36 = phi { ptr, i32 } [ %i.l, %bb.c ], [ %.pn33.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef align 8 dereferenceable(40) %3) #44
          to label %bb.aj unwind label %bb.ag

bb.c:                                             ; preds = %bb.l, %bb.j
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsdl0l68gAy31_9arrow_ipc6writerINtB5_10FileWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.t, label %bb.aw, label %bb.ax, !prof !49

bb.j:                                             ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs2_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder3new(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.k)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !10
  %i.ab = invoke fastcc noundef i32 @_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder13create_vectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa)
          to label %bb.l unwind label %bb.k

.body:                                            ; preds = %bb.ap, %bb.aq, %bb.k, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.ac, %bb.k ], [ %i.ni, %bb.aq ], [ %i.nh, %bb.ap ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2TwJzntlzha_11flatbuffers7builder17FlatBufferBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %i.k) #44
          to label %bb.av unwind label %bb.au

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.m, %bb.l, %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !10, !noundef !10
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !noundef !10
  %i.ah = invoke fastcc noundef i32 @_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder13create_vectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs1_NtCsdl0l68gAy31_9arrow_ipc6writerNtB5_17DictionaryTracker3new(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.k

.loopexit:                                        ; preds = %.lr.ph.i4.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i131
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i.i133
  %lpad.loopexit153 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ab
  %lpad.loopexit155 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i5.i.i.i103
  %lpad.loopexit160 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i.i105
  %lpad.loopexit163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i4.i.i.i81
  %lpad.loopexit165 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i.i83
  %lpad.loopexit168 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i4.i.i.i
  %lpad.loopexit170 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i.i60
  %lpad.loopexit173 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i5.i.i.i
  %lpad.loopexit175 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke262, %.invoke, %bb.n, %bb.p, %bb.s, %bb.t, %bb.u, %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE16add_dictionariesCs14kWLkQVSKO_14deltalake_core.exit, %bb.w, %bb.y, %._crit_edge.i.i.i, %bb.ad, %bb.ae, %bb.ai, %bb.am, %bb.ao, %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit144
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit150, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit153, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit155, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit158, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit160, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit165, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit168, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit170, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit173, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit175, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit178, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdl0l68gAy31_9arrow_ipc6writer17DictionaryTrackerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(80) %i.j) #44
          to label %.body unwind label %bb.au

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !10, !noundef !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = invoke noundef i32 @_RNvMs_NtCsdl0l68gAy31_9arrow_ipc7convertNtB4_16IpcSchemaEncoder19schema_to_fb_offset(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ak)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.an = load i64, ptr %i.am, align 8, !noundef !10
  %.not38.not = icmp eq i64 %i.an, 0              ; 2 uses
  br i1 %.not38.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ap = invoke noundef i32 @_RNvNtCsdl0l68gAy31_9arrow_ipc7convert14metadata_to_fb(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sroa.68.0 = phi i32 [ undef, %bb.o ], [ %i.ap, %bb.p ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  store i8 1, ptr %i.aq, align 8, !alias.scope !18796
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 38 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !18796, !noundef !10 ; 5 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = load i16, ptr %i.p, align 2, !noundef !10 ; 2 uses
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 114
  %i.ax = load i8, ptr %i.aw, align 2, !range !349, !alias.scope !18799
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond.i.i = select i1 %i.av, i1 true, i1 %i.ay
  br i1 %or.cond.i.i, label %bb.r, label %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !18802, !noundef !10
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 2)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.az, align 8, !alias.scope !18802
  %i.bb = and i64 %i.as, 1                        ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.val1.i.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !18805, !noundef !10 ; 3 uses
  %i.bd = icmp sgt i64 %.val1.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bd)
  %i.be = sub i64 %.val1.i.i.i.i, %i.as
  %.not.i.i.i.i = icmp ult i64 %i.be, %i.bb
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %.noexc
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %.lr.ph.i.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !18805, !noundef !10 ; 3 uses
  %i.bf = icmp sgt i64 %.val.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = load i64, ptr %i.ar, align 8, !alias.scope !18805, !noundef !10 ; 2 uses
  %i.bh = sub i64 %.val.i.i.i.i, %i.bg
  %i.bi = icmp ult i64 %i.bh, %i.bb
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %.noexc, %bb.r
  %.val1.i3.i.i.i = phi i64 [ %.val1.i.i.i.i, %bb.r ], [ %.val.i.i.i.i, %.noexc ] ; 2 uses
  %i.bj = phi i64 [ %i.as, %bb.r ], [ %i.bg, %.noexc ]
  %i.bk = add i64 %i.bj, %i.bb                    ; 3 uses
  store i64 %i.bk, ptr %i.ar, align 8, !alias.scope !18802
  %i.bl = sub i64 %.val1.i3.i.i.i, %i.bk
  %.not.i4.i.i.i = icmp ult i64 %i.bl, 2
  br i1 %.not.i4.i.i.i, label %.lr.ph.i5.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i

.lr.ph.i5.i.i.i:                                  ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %.noexc49
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc49:                                         ; preds = %.lr.ph.i5.i.i.i
  %.val.i6.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !18808, !noundef !10 ; 3 uses
  %i.bm = icmp sgt i64 %.val.i6.i.i.i, -1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = load i64, ptr %i.ar, align 8, !alias.scope !18808, !noundef !10 ; 2 uses
  %i.bo = sub i64 %.val.i6.i.i.i, %i.bn
  %i.bp = icmp ult i64 %i.bo, 2
  br i1 %i.bp, label %.lr.ph.i5.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i: ; preds = %.noexc49, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.val1.i.i.i = phi i64 [ %.val1.i3.i.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.val.i6.i.i.i, %.noexc49 ] ; 4 uses
  %i.bq = phi i64 [ %i.bk, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.bn, %.noexc49 ] ; 2 uses
  %i.br = add i64 %i.bq, 2                        ; 3 uses
  store i64 %i.br, ptr %i.ar, align 8, !alias.scope !18802
  %i.bs = sub i64 %.val1.i.i.i, %i.br             ; 2 uses
  %i.bt = icmp ult i64 %.val1.i.i.i, %i.br
  br i1 %i.bt, label %.invoke, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !985

.invoke:                                          ; preds = %.lr.ph.i.i.prol, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i, %.lr.ph.i.i, %bb.an, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i, %bb.aj, %bb.ag, %._crit_edge.i.i, %bb.z, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i
  %i.bu = phi i64 [ %i.mt, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i ], [ %i.bs, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i ], [ %i.dg, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i ], [ %i.eq, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75 ], [ %i.fx, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96 ], [ %i.gt, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 2, %bb.z ], [ %i.nb, %bb.an ], [ %i.im, %._crit_edge.i.i ], [ %i.ku, %bb.ag ], [ %i.li, %bb.aj ], [ %i.hl, %.lr.ph.i.i.prol ], [ %i.hv, %.lr.ph.i.i ], [ %i.id, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i ]
  %i.bv = phi i64 [ %.val1.i5.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i ], [ %.val1.i.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i ], [ %.val1.i.i.i57, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i ], [ %.val1.i.i.i76, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75 ], [ %.val1.i.i.i97, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96 ], [ %.pre-phi.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 2, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 4, %bb.z ], [ %i.mz, %bb.an ], [ %i.in, %._crit_edge.i.i ], [ %i.kv, %bb.ag ], [ %i.lj, %bb.aj ], [ %i.hm, %.lr.ph.i.i.prol ], [ %i.hw, %.lr.ph.i.i ], [ %i.ie, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i ]
  %i.bw = phi i64 [ %.val1.i5.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i ], [ %.val1.i.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i ], [ %.val1.i.i.i57, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i ], [ %.val1.i.i.i76, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75 ], [ %.val1.i.i.i97, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96 ], [ %.val27.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.gv, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.gv, %bb.z ], [ %i.mz, %bb.an ], [ %.val29.i.i, %._crit_edge.i.i ], [ %.val25.i.i, %bb.ag ], [ %.val.i.i101, %bb.aj ], [ %i.gv, %.lr.ph.i.i ], [ %i.gv, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i ], [ %i.gv, %.lr.ph.i.i.prol ]
  %i.bx = phi ptr [ @60, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i ], [ @60, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i ], [ @60, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i ], [ @60, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75 ], [ @60, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96 ], [ @258, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ @259, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ @260, %bb.z ], [ @270, %bb.an ], [ @261, %._crit_edge.i.i ], [ @262, %bb.ag ], [ @265, %bb.aj ], [ @239, %.lr.ph.i.i ], [ @239, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i ], [ @239, %.lr.ph.i.i.prol ]
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.bu, i64 noundef %i.bv, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #49
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i
  %.not.i9.i.i.i = icmp ugt i64 %i.bq, -3
  br i1 %.not.i9.i.i.i, label %.invoke262, label %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15MetadataVersionECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !49

.invoke262:                                       ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i129, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i99, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i78, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i59, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @241, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #49
          to label %.cont263 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont263:                                         ; preds = %.invoke262
  unreachable

_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15MetadataVersionECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %2 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val.i.i.i = load ptr, ptr %2, align 8, !alias.scope !18802, !nonnull !10, !noundef !10
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.bs
  store i16 %i.au, ptr %i.by, align 1, !alias.scope !18811
  %i.bz = load i64, ptr %i.ar, align 8, !alias.scope !18802, !noundef !10
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !18816, !noundef !10 ; 3 uses
  %i.ce = load i64, ptr %i.cb, align 8, !range !312, !alias.scope !18816, !noundef !10
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.s, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.s:                                             ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15MetadataVersionECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8grow_oneCsdl0l68gAy31_9arrow_ipc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.s, %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15MetadataVersionECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !18816, !nonnull !10, !noundef !10
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cd ; 2 uses
  store i32 %i.ca, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i16 4, ptr %i.cj, align 4
  %i.ck = add i64 %i.cd, 1
  store i64 %i.ck, ptr %i.cc, align 8, !alias.scope !18816
  %.pre = load i64, ptr %i.ar, align 8, !alias.scope !18819
  br label %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit

_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.q
  %i.cl = phi i64 [ %.pre, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.as, %bb.q ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 9 uses
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !18819, !noundef !10
  %.sroa.0.0.i.i.i.i53 = call noundef i64 @llvm.umax.i64(i64 %i.cn, i64 4)
  store i64 %.sroa.0.0.i.i.i.i53, ptr %i.cm, align 8, !alias.scope !18819
  %i.co = sub i64 0, %i.cl
  %i.cp = and i64 %i.co, 3                        ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 21 uses
  %.val1.i.i.i.i54 = load i64, ptr %i.cq, align 8, !alias.scope !18824, !noundef !10 ; 3 uses
  %i.cr = icmp sgt i64 %.val1.i.i.i.i54, -1
  call void @llvm.assume(i1 %i.cr)
  %i.cs = sub i64 %.val1.i.i.i.i54, %i.cl
  %.not.i.i.i.i55 = icmp ult i64 %i.cs, %i.cp
  br i1 %.not.i.i.i.i55, label %.lr.ph.i.i.i.i60, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56

.lr.ph.i.i.i.i60:                                 ; preds = %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit, %.noexc62
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %.lr.ph.i.i.i.i60
  %.val.i.i.i.i61 = load i64, ptr %i.cq, align 8, !alias.scope !18824, !noundef !10 ; 3 uses
  %i.ct = icmp sgt i64 %.val.i.i.i.i61, -1
  call void @llvm.assume(i1 %i.ct)
  %i.cu = load i64, ptr %i.ar, align 8, !alias.scope !18824, !noundef !10 ; 2 uses
  %i.cv = sub i64 %.val.i.i.i.i61, %i.cu
  %i.cw = icmp ult i64 %i.cv, %i.cp
  br i1 %i.cw, label %.lr.ph.i.i.i.i60, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56: ; preds = %.noexc62, %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit
  %.val1.i2.i.i.i = phi i64 [ %.val1.i.i.i.i54, %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit ], [ %.val.i.i.i.i61, %.noexc62 ] ; 2 uses
  %i.cx = phi i64 [ %i.cl, %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.cu, %.noexc62 ]
  %i.cy = add i64 %i.cx, %i.cp                    ; 3 uses
  store i64 %i.cy, ptr %i.ar, align 8, !alias.scope !18819
  %i.cz = sub i64 %.val1.i2.i.i.i, %i.cy
  %.not.i3.i.i.i = icmp ult i64 %i.cz, 4
  br i1 %.not.i3.i.i.i, label %.lr.ph.i4.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56, %.noexc63
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc63:                                         ; preds = %.lr.ph.i4.i.i.i
  %.val.i5.i.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18827, !noundef !10 ; 3 uses
  %i.da = icmp sgt i64 %.val.i5.i.i.i, -1
  call void @llvm.assume(i1 %i.da)
  %i.db = load i64, ptr %i.ar, align 8, !alias.scope !18827, !noundef !10 ; 2 uses
  %i.dc = sub i64 %.val.i5.i.i.i, %i.db
  %i.dd = icmp ult i64 %i.dc, 4
  br i1 %i.dd, label %.lr.ph.i4.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i: ; preds = %.noexc63, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56
  %.val1.i.i.i57 = phi i64 [ %.val1.i2.i.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56 ], [ %.val.i5.i.i.i, %.noexc63 ] ; 4 uses
  %i.de = phi i64 [ %i.cy, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56 ], [ %i.db, %.noexc63 ] ; 3 uses
  %i.df = add i64 %i.de, 4                        ; 3 uses
  store i64 %i.df, ptr %i.ar, align 8, !alias.scope !18819
  %i.dg = sub i64 %.val1.i.i.i57, %i.df           ; 2 uses
  %i.dh = icmp ult i64 %.val1.i.i.i57, %i.df
  br i1 %i.dh, label %.invoke, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i59, !prof !985

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i59: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i
  %.not.i8.i.i.i = icmp ugt i64 %i.de, -5
  br i1 %.not.i8.i.i.i, label %.invoke262, label %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !49

_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i59
  %3 = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 11 uses
  %.val.i.i.i59 = load ptr, ptr %3, align 8, !alias.scope !18819, !nonnull !10, !noundef !10
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i.i59, i64 %i.dg
  %i.dj = trunc i64 %i.de to i32
  %reass.sub = sub i32 %i.dj, %i.al
  %i.dk = add i32 %reass.sub, 4
  store i32 %i.dk, ptr %i.di, align 1, !alias.scope !18830, !noalias !18833
  %i.dl = load i64, ptr %i.ar, align 8, !alias.scope !18819, !noundef !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 7 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !18835, !noundef !10 ; 3 uses
  %i.dp = load i64, ptr %i.dm, align 8, !range !312, !alias.scope !18835, !noundef !10
  %i.dq = icmp eq i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8grow_oneCsdl0l68gAy31_9arrow_ipc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.t
  %i.dr = trunc i64 %i.dl to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !18835, !nonnull !10, !noundef !10
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.do ; 2 uses
  store i32 %i.dr, ptr %i.du, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i16 6, ptr %i.dv, align 4
  %i.dw = add i64 %i.do, 1
  store i64 %i.dw, ptr %i.dn, align 8, !alias.scope !18835
  invoke fastcc void @_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder16push_slot_alwaysINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k, i16 noundef 8, i32 noundef %i.ab) #47
          to label %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE16add_dictionariesCs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE16add_dictionariesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.u
  invoke fastcc void @_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder16push_slot_alwaysINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k, i16 noundef 10, i32 noundef %i.ah) #47
          to label %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE17add_recordBatchesCs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE17add_recordBatchesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE16add_dictionariesCs14kWLkQVSKO_14deltalake_core.exit
  br i1 %.not38.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE17add_recordBatchesCs14kWLkQVSKO_14deltalake_core.exit
  %i.dx = load i64, ptr %i.cm, align 8, !alias.scope !18838, !noundef !10
  %.sroa.0.0.i.i.i.i69 = call noundef i64 @llvm.umax.i64(i64 %i.dx, i64 4)
  store i64 %.sroa.0.0.i.i.i.i69, ptr %i.cm, align 8, !alias.scope !18838
  %i.dy = load i64, ptr %i.ar, align 8, !alias.scope !18838, !noundef !10 ; 3 uses
  %i.dz = sub i64 0, %i.dy
  %i.ea = and i64 %i.dz, 3                        ; 3 uses
  %.val1.i.i.i.i70 = load i64, ptr %i.cq, align 8, !alias.scope !18843, !noundef !10 ; 3 uses
  %i.eb = icmp sgt i64 %.val1.i.i.i.i70, -1
  call void @llvm.assume(i1 %i.eb)
  %i.ec = sub i64 %.val1.i.i.i.i70, %i.dy
  %.not.i.i.i.i71 = icmp ult i64 %i.ec, %i.ea
  br i1 %.not.i.i.i.i71, label %.lr.ph.i.i.i.i83, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72

.lr.ph.i.i.i.i83:                                 ; preds = %bb.v, %.noexc85
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc85:                                         ; preds = %.lr.ph.i.i.i.i83
  %.val.i.i.i.i84 = load i64, ptr %i.cq, align 8, !alias.scope !18843, !noundef !10 ; 3 uses
  %i.ed = icmp sgt i64 %.val.i.i.i.i84, -1
  call void @llvm.assume(i1 %i.ed)
  %i.ee = load i64, ptr %i.ar, align 8, !alias.scope !18843, !noundef !10 ; 2 uses
  %i.ef = sub i64 %.val.i.i.i.i84, %i.ee
  %i.eg = icmp ult i64 %i.ef, %i.ea
  br i1 %i.eg, label %.lr.ph.i.i.i.i83, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72: ; preds = %.noexc85, %bb.v
  %.val1.i2.i.i.i73 = phi i64 [ %.val1.i.i.i.i70, %bb.v ], [ %.val.i.i.i.i84, %.noexc85 ] ; 2 uses
  %i.eh = phi i64 [ %i.dy, %bb.v ], [ %i.ee, %.noexc85 ]
  %i.ei = add i64 %i.eh, %i.ea                    ; 3 uses
  store i64 %i.ei, ptr %i.ar, align 8, !alias.scope !18838
  %i.ej = sub i64 %.val1.i2.i.i.i73, %i.ei
  %.not.i3.i.i.i74 = icmp ult i64 %i.ej, 4
  br i1 %.not.i3.i.i.i74, label %.lr.ph.i4.i.i.i81, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75

.lr.ph.i4.i.i.i81:                                ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72, %.noexc86
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc86:                                         ; preds = %.lr.ph.i4.i.i.i81
  %.val.i5.i.i.i82 = load i64, ptr %i.cq, align 8, !alias.scope !18846, !noundef !10 ; 3 uses
  %i.ek = icmp sgt i64 %.val.i5.i.i.i82, -1
  call void @llvm.assume(i1 %i.ek)
  %i.el = load i64, ptr %i.ar, align 8, !alias.scope !18846, !noundef !10 ; 2 uses
  %i.em = sub i64 %.val.i5.i.i.i82, %i.el
  %i.en = icmp ult i64 %i.em, 4
  br i1 %i.en, label %.lr.ph.i4.i.i.i81, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75: ; preds = %.noexc86, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72
  %.val1.i.i.i76 = phi i64 [ %.val1.i2.i.i.i73, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72 ], [ %.val.i5.i.i.i82, %.noexc86 ] ; 4 uses
  %i.eo = phi i64 [ %i.ei, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72 ], [ %i.el, %.noexc86 ] ; 3 uses
  %i.ep = add i64 %i.eo, 4                        ; 3 uses
  store i64 %i.ep, ptr %i.ar, align 8, !alias.scope !18838
  %i.eq = sub i64 %.val1.i.i.i76, %i.ep           ; 2 uses
  %i.er = icmp ult i64 %.val1.i.i.i76, %i.ep
  br i1 %i.er, label %.invoke, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i78, !prof !985

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i78: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75
  %.not.i8.i.i.i79 = icmp ugt i64 %i.eo, -5
  br i1 %.not.i8.i.i.i79, label %.invoke262, label %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorINtB1d_15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !49

_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorINtB1d_15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i78
  %.val.i.i.i79 = load ptr, ptr %3, align 8, !alias.scope !18838, !nonnull !10, !noundef !10
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i.i.i79, i64 %i.eq
  %i.et = trunc i64 %i.eo to i32
  %reass.sub197 = sub i32 %i.et, %.sroa.68.0
  %i.eu = add i32 %reass.sub197, 4
  store i32 %i.eu, ptr %i.es, align 1, !alias.scope !18849, !noalias !18852
  %i.ev = load i64, ptr %i.ar, align 8, !alias.scope !18838, !noundef !10
  %i.ew = load i64, ptr %i.dn, align 8, !alias.scope !18854, !noundef !10 ; 3 uses
  %i.ex = load i64, ptr %i.dm, align 8, !range !312, !alias.scope !18854, !noundef !10
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.w, label %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE19add_custom_metadataCs14kWLkQVSKO_14deltalake_core.exit

bb.w:                                             ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorINtB1d_15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8grow_oneCsdl0l68gAy31_9arrow_ipc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE19add_custom_metadataCs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE19add_custom_metadataCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.w, %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorINtB1d_15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ez = trunc i64 %i.ev to i32
  %i.fa = load ptr, ptr %i.ds, align 8, !alias.scope !18854, !nonnull !10, !noundef !10
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ew ; 2 uses
  store i32 %i.ez, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i16 12, ptr %i.fc, align 4
  %i.fd = add i64 %i.ew, 1
  store i64 %i.fd, ptr %i.dn, align 8, !alias.scope !18854
  br label %bb.x

bb.x:                                             ; preds = %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE19add_custom_metadataCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE17add_recordBatchesCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !18857)
  call void @llvm.experimental.noalias.scope.decl(metadata !18860)
  %i.fe = load i64, ptr %i.cm, align 8, !alias.scope !18863, !noundef !10
  %.sroa.0.0.i.i.i.i90 = call noundef i64 @llvm.umax.i64(i64 %i.fe, i64 4)
  store i64 %.sroa.0.0.i.i.i.i90, ptr %i.cm, align 8, !alias.scope !18863
  %i.ff = load i64, ptr %i.ar, align 8, !alias.scope !18863, !noundef !10 ; 3 uses
  %i.fg = sub i64 0, %i.ff
  %i.fh = and i64 %i.fg, 3                        ; 3 uses
  %.val1.i.i.i.i91 = load i64, ptr %i.cq, align 8, !alias.scope !18866, !noundef !10 ; 3 uses
  %i.fi = icmp sgt i64 %.val1.i.i.i.i91, -1
  call void @llvm.assume(i1 %i.fi)
  %i.fj = sub i64 %.val1.i.i.i.i91, %i.ff
  %.not.i.i.i.i92 = icmp ult i64 %i.fj, %i.fh
  br i1 %.not.i.i.i.i92, label %.lr.ph.i.i.i.i105, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93

.lr.ph.i.i.i.i105:                                ; preds = %bb.x, %.noexc107
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc107:                                        ; preds = %.lr.ph.i.i.i.i105
  %.val.i.i.i.i106 = load i64, ptr %i.cq, align 8, !alias.scope !18866, !noundef !10 ; 3 uses
  %i.fk = icmp sgt i64 %.val.i.i.i.i106, -1
  call void @llvm.assume(i1 %i.fk)
  %i.fl = load i64, ptr %i.ar, align 8, !alias.scope !18866, !noundef !10 ; 2 uses
  %i.fm = sub i64 %.val.i.i.i.i106, %i.fl
  %i.fn = icmp ult i64 %i.fm, %i.fh
  br i1 %i.fn, label %.lr.ph.i.i.i.i105, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93: ; preds = %.noexc107, %bb.x
  %.val1.i3.i.i.i94 = phi i64 [ %.val1.i.i.i.i91, %bb.x ], [ %.val.i.i.i.i106, %.noexc107 ] ; 2 uses
  %i.fo = phi i64 [ %i.ff, %bb.x ], [ %i.fl, %.noexc107 ]
  %i.fp = add i64 %i.fo, %i.fh                    ; 3 uses
  store i64 %i.fp, ptr %i.ar, align 8, !alias.scope !18863
  %i.fq = sub i64 %.val1.i3.i.i.i94, %i.fp
  %.not.i4.i.i.i95 = icmp ult i64 %i.fq, 4
  br i1 %.not.i4.i.i.i95, label %.lr.ph.i5.i.i.i103, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96

.lr.ph.i5.i.i.i103:                               ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93, %.noexc108
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc108:                                        ; preds = %.lr.ph.i5.i.i.i103
  %.val.i6.i.i.i104 = load i64, ptr %i.cq, align 8, !alias.scope !18869, !noundef !10 ; 3 uses
  %i.fr = icmp sgt i64 %.val.i6.i.i.i104, -1
  call void @llvm.assume(i1 %i.fr)
  %i.fs = load i64, ptr %i.ar, align 8, !alias.scope !18869, !noundef !10 ; 2 uses
  %i.ft = sub i64 %.val.i6.i.i.i104, %i.fs
  %i.fu = icmp ult i64 %i.ft, 4
  br i1 %i.fu, label %.lr.ph.i5.i.i.i103, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96: ; preds = %.noexc108, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93
  %.val1.i.i.i97 = phi i64 [ %.val1.i3.i.i.i94, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93 ], [ %.val.i6.i.i.i104, %.noexc108 ] ; 4 uses
  %i.fv = phi i64 [ %i.fp, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93 ], [ %i.fs, %.noexc108 ] ; 2 uses
  %i.fw = add i64 %i.fv, 4                        ; 3 uses
  store i64 %i.fw, ptr %i.ar, align 8, !alias.scope !18863
  %i.fx = sub i64 %.val1.i.i.i97, %i.fw           ; 2 uses
  %i.fy = icmp ult i64 %.val1.i.i.i97, %i.fw
  br i1 %i.fy, label %.invoke, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i99, !prof !985

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i99: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96
  %.not.i9.i.i.i100 = icmp ugt i64 %i.fv, -5
  br i1 %.not.i9.i.i.i100, label %.invoke262, label %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !49

_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i99
  %.val.i.i.i100 = load ptr, ptr %3, align 8, !alias.scope !18863, !nonnull !10, !noundef !10
  %i.fz = getelementptr inbounds nuw i8, ptr %.val.i.i.i100, i64 %i.fx
  store i32 -252645136, ptr %i.fz, align 1, !alias.scope !18872
  %i.ga = load i64, ptr %i.ar, align 8, !alias.scope !18863, !noundef !10 ; 3 uses
  %i.gb = trunc i64 %i.ga to i32                  ; 6 uses
  %i.gc = load i64, ptr %i.dn, align 8, !alias.scope !18877, !noundef !10 ; 2 uses
  %.not.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %i.gc, 3
  %i.gd = load ptr, ptr %i.ds, align 8, !alias.scope !18877, !nonnull !10, !noundef !10 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.idx.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gg = getelementptr i8, ptr %i.gd, i64 4
  %.val.i.i30.i.i = load i16, ptr %i.gg, align 4, !noalias !18878, !noundef !10
  %i.gh = invoke noundef i16 @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1p_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator4foldtNCINvNvB2F_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.gf, ptr noundef nonnull %i.ge, i16 noundef %.val.i.i30.i.i)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %bb.y
  %i.gi = zext i16 %i.gh to i64
  %i.gj = add nuw nsw i64 %i.gi, 2
  %.pre.i.i = load i64, ptr %i.ar, align 8, !alias.scope !18881
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc111, %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gk = phi i64 [ %.pre.i.i, %.noexc111 ], [ %i.ga, %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.gj, %.noexc111 ], [ 4, %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 5 uses
  %.val1.i31.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18881, !noundef !10 ; 3 uses
  %i.gl = icmp sgt i64 %.val1.i31.i.i, -1
  call void @llvm.assume(i1 %i.gl)
  %i.gm = sub i64 %.val1.i31.i.i, %i.gk           ; 2 uses
  %.not.i32.i.i = icmp ult i64 %i.gm, %.sroa.0.0.i.i
  br i1 %.not.i32.i.i, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc112
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc112:                                        ; preds = %.lr.ph.i.i.i
  %.val.i33.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18881, !noundef !10 ; 3 uses
  %i.gn = icmp sgt i64 %.val.i33.i.i, -1
  call void @llvm.assume(i1 %i.gn)
  %i.go = load i64, ptr %i.ar, align 8, !alias.scope !18881, !noundef !10 ; 2 uses
  %i.gp = sub i64 %.val.i33.i.i, %i.go            ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %.sroa.0.0.i.i
  br i1 %i.gq, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc112, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.pre-phi.i.i = phi i64 [ %i.gm, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.gp, %.noexc112 ] ; 3 uses
  %.val27.i.i = phi i64 [ %.val1.i31.i.i, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.val.i33.i.i, %.noexc112 ] ; 3 uses
  %i.gr = phi i64 [ %i.gk, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.go, %.noexc112 ] ; 6 uses
  %i.gs = add i64 %i.gr, %.sroa.0.0.i.i           ; 4 uses
  store i64 %i.gs, ptr %i.ar, align 8, !alias.scope !18877
  %i.gt = sub i64 %.val27.i.i, %i.gs              ; 4 uses
  %i.gu = icmp ult i64 %.pre-phi.i.i, %i.gt
  %.not.i34.i.i = icmp ugt i64 %i.gr, %.val27.i.i
  %or.cond.i.i.i = or i1 %.not.i34.i.i, %i.gu
  br i1 %or.cond.i.i.i, label %.invoke, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !985

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val26.i.i = load ptr, ptr %3, align 8, !alias.scope !18877, !nonnull !10, !noundef !10
  %i.gv = sub nuw i64 %.pre-phi.i.i, %i.gt        ; 10 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 %i.gt ; 5 uses
  %i.gx = icmp ugt i64 %i.gv, 1
  br i1 %i.gx, label %bb.z, label %.invoke, !prof !984

bb.z:                                             ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gy = trunc i64 %.sroa.0.0.i.i to i16
  store i16 %i.gy, ptr %i.gw, align 1
  %i.gz = icmp ugt i64 %i.gv, 3
  br i1 %i.gz, label %bb.aa, label %.invoke, !prof !984

bb.aa:                                            ; preds = %bb.z
  %i.ha = sub i32 %i.gb, %i.at
  %i.hb = trunc i32 %i.ha to i16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  store i16 %i.hb, ptr %i.hc, align 1
  %i.hd = load ptr, ptr %i.ds, align 8, !alias.scope !18877, !nonnull !10, !noundef !10 ; 5 uses
  %i.he = load i64, ptr %i.dn, align 8, !alias.scope !18877, !noundef !10 ; 2 uses
  %.idx60.i.i = shl i64 %i.he, 3                  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx60.i.i
  %i.hg = icmp eq i64 %i.he, 0
  br i1 %i.hg, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.aa
  %i.hh = add i64 %.idx60.i.i, -8                 ; 2 uses
  %i.hi = and i64 %i.hh, 8
  %lcmp.mod.not.not = icmp eq i64 %i.hi, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hk = load i16, ptr %i.hj, align 4, !noundef !10
  %i.hl = zext i16 %i.hk to i64                   ; 3 uses
  %i.hm = add nuw nsw i64 %i.hl, 2                ; 2 uses
  %.not.i.i.i.prol = icmp ugt i64 %i.hm, %i.gv
  br i1 %.not.i.i.i.prol, label %.invoke, label %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.prol, !prof !985

_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.prol: ; preds = %.lr.ph.i.i.prol
  %i.hn = load i32, ptr %i.hd, align 4, !noundef !10
  %i.ho = sub i32 %i.gb, %i.hn
  %i.hp = trunc i32 %i.ho to i16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hl
  store i16 %i.hp, ptr %i.hr, align 1, !noalias !18884
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.05.059.i.i.unr = phi ptr [ %i.hd, %.lr.ph.i.i.preheader ], [ %i.hq, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.prol ]
  %i.hs = icmp eq i64 %i.hh, 0
  br i1 %i.hs, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.1
  %.sroa.05.059.i.i = phi ptr [ %i.ij, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.1 ], [ %.sroa.05.059.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.05.059.i.i, i64 4
  %i.hu = load i16, ptr %i.ht, align 4, !noundef !10
  %i.hv = zext i16 %i.hu to i64                   ; 3 uses
  %i.hw = add nuw nsw i64 %i.hv, 2                ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.hw, %i.gv
  br i1 %.not.i.i.i, label %.invoke, label %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i, !prof !985

_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i: ; preds = %.lr.ph.i.i
  %i.hx = load i32, ptr %.sroa.05.059.i.i, align 4, !noundef !10
  %i.hy = sub i32 %i.gb, %i.hx
  %i.hz = trunc i32 %i.hy to i16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hv
  store i16 %i.hz, ptr %i.ia, align 1, !noalias !18884
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.05.059.i.i, i64 12
  %i.ic = load i16, ptr %i.ib, align 4, !noundef !10
  %i.id = zext i16 %i.ic to i64                   ; 3 uses
  %i.ie = add nuw nsw i64 %i.id, 2                ; 2 uses
  %.not.i.i.i.1 = icmp ugt i64 %i.ie, %i.gv
  br i1 %.not.i.i.i.1, label %.invoke, label %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.1, !prof !985

_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.1: ; preds = %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.05.059.i.i, i64 8
  %i.ig = load i32, ptr %i.if, align 4, !noundef !10
  %i.ih = sub i32 %i.gb, %i.ig
  %i.ii = trunc i32 %i.ih to i16
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.05.059.i.i, i64 16 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.id
  store i16 %i.ii, ptr %i.ik, align 1, !noalias !18884
  %i.il = icmp eq ptr %i.ij, %i.hf
  br i1 %i.il, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.1, %bb.aa
  %.val29.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18877, !noundef !10 ; 5 uses
  %i.im = sub i64 %.val29.i.i, %i.gs              ; 4 uses
  %i.in = sub i64 %.val29.i.i, %i.gr              ; 3 uses
  %i.io = icmp ult i64 %i.in, %i.im
  %.not.i35.i.i = icmp ugt i64 %i.gr, %.val29.i.i
  %or.cond.i36.i.i = or i1 %.not.i35.i.i, %i.io
  br i1 %or.cond.i36.i.i, label %.invoke, label %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !985

_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %._crit_edge.i.i
  %.val28.i.i = load ptr, ptr %3, align 8, !alias.scope !18877, !nonnull !10, !noundef !10 ; 2 uses
  %i.ip = sub nuw i64 %i.in, %i.im                ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %i.im ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !alias.scope !18877, !nonnull !10, !noundef !10 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 5 uses
  %i.iu = load i64, ptr %i.it, align 8, !alias.scope !18877, !noundef !10 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18887)
  switch i64 %i.iu, label %.lr.ph.i38.i.i [
    i64 0, label %.thread.i.i
    i64 1, label %._crit_edge.i.i.i
  ]

.lr.ph.i38.i.i:                                   ; preds = %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.ab

._crit_edge.i.loopexit.i.i:                       ; preds = %.noexc119
  %.val.i.i39.pre.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18877, !noalias !18890
  %.val6.i.i.pre.i.i = load ptr, ptr %3, align 8, !alias.scope !18877, !noalias !18890
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val6.i.i.i.i = phi ptr [ %.val28.i.i, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.val6.i.i.pre.i.i, %._crit_edge.i.loopexit.i.i ]
  %.val.i.i39.i.i = phi i64 [ %.val29.i.i, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.val.i.i39.pre.i.i, %._crit_edge.i.loopexit.i.i ] ; 3 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ka, %._crit_edge.i.loopexit.i.i ] ; 5 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %.sroa.05.0.lcssa.i.i.i
  %.val15.i.i.i = load i32, ptr %i.ix, align 4, !alias.scope !18887, !noalias !18893, !noundef !10
  %i.iy = icmp sgt i64 %.val.i.i39.i.i, -1
  call void @llvm.assume(i1 %i.iy)
  %i.iz = zext i32 %.val15.i.i.i to i64
  %i.ja = sub nsw i64 %.val.i.i39.i.i, %i.iz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18894
  store ptr %.val6.i.i.i.i, ptr %i.b, align 8, !noalias !18894
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val.i.i39.i.i, ptr %i.jb, align 8, !noalias !18894
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ja, ptr %i.jc, align 8, !noalias !18894
  %i.jd = invoke { ptr, i64 } @_RNvMs_NtCs2TwJzntlzha_11flatbuffers6vtableNtB4_6VTable8as_bytes(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc118:                                        ; preds = %._crit_edge.i.i.i
  %i.je = extractvalue { ptr, i64 } %i.jd, 0
  %i.jf = extractvalue { ptr, i64 } %i.jd, 1      ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ip, i64 %i.jf)
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsdl0l68gAy31_9arrow_ipc6writerINtB5_10FileWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs14kWLkQVSKO_14deltalake_core:bb.a
bb.ac:                                            ; preds = %.noexc118
  %spec.select.i.lobit.i.i.i = lshr i64 %spec.select.i.i.i.i, 63
  %i.kd = add nuw nsw i64 %spec.select.i.lobit.i.i.i, %.sroa.05.0.lcssa.i.i.i ; 4 uses
  %i.ke = icmp ule i64 %i.kd, %i.iu
  call void @llvm.assume(i1 %i.ke)
  %i.kf = load i64, ptr %i.it, align 8, !alias.scope !18895, !noundef !10 ; 4 uses
  %i.kg = icmp ult i64 %i.kf, 2305843009213693952
  call void @llvm.assume(i1 %i.kg)
  %i.kh = icmp samesign ugt i64 %i.kd, %i.kf
  br i1 %i.kh, label %bb.ad, label %.thread.i.i, !prof !18898

.thread.i.i:                                      ; preds = %bb.ac, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ki = phi i64 [ %i.kf, %bb.ac ], [ %i.iu, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 4 uses
  %.sroa.4.0.i.ph54.i.i = phi i64 [ %i.kd, %bb.ac ], [ %i.iu, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %.in.i.i = load i64, ptr %i.ar, align 8, !alias.scope !18877, !noundef !10
  %i.kk = trunc i64 %.in.i.i to i32               ; 2 uses
  %i.kl = load i64, ptr %i.kj, align 8, !range !312, !alias.scope !18895, !noundef !10
  %i.km = icmp eq i64 %i.ki, %i.kl
  br i1 %i.km, label %bb.ae, label %.noexc121

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, 2305843009213693952) %i.kd, i64 noundef %i.kf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #46
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc120:                                        ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %.thread.i.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsamgJ6yo8DU_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kj)
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %bb.ae, %.thread.i.i
  %i.kn = load ptr, ptr %i.ir, align 8, !alias.scope !18895, !nonnull !10, !noundef !10
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %.sroa.4.0.i.ph54.i.i ; 3 uses
  %i.kp = icmp samesign ult i64 %.sroa.4.0.i.ph54.i.i, %i.ki
  br i1 %i.kp, label %bb.af, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecmE10insert_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.af:                                            ; preds = %.noexc121
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kr = sub nuw nsw i64 %i.ki, %.sroa.4.0.i.ph54.i.i
  %i.ks = shl nuw nsw i64 %i.kr, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kq, ptr nonnull align 4 %i.ko, i64 %i.ks, i1 false)
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecmE10insert_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecmE10insert_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.af, %.noexc121
  store i32 %i.kk, ptr %i.ko, align 4
  %i.kt = add nuw nsw i64 %i.ki, 1
  store i64 %i.kt, ptr %i.it, align 8, !alias.scope !18895
  br label %bb.aj

bb.ag:                                            ; preds = %.noexc118
  %.val25.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18877, !noundef !10 ; 4 uses
  %i.ku = sub i64 %.val25.i.i, %i.gs              ; 4 uses
  %i.kv = sub i64 %.val25.i.i, %i.gr              ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %i.ku
  %.not.i41.i.i = icmp ugt i64 %i.gr, %.val25.i.i
  %or.cond.i42.i.i = or i1 %.not.i41.i.i, %i.kw
  br i1 %or.cond.i42.i.i, label %.invoke, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit43.i.i, !prof !985

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit43.i.i: ; preds = %bb.ag
  %.val24.i.i = load ptr, ptr %3, align 8, !alias.scope !18877, !nonnull !10, !noundef !10
  %i.kx = sub nuw i64 %i.kv, %i.ku
  %i.ky = getelementptr inbounds nuw i8, ptr %.val24.i.i, i64 %i.ku
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ky, i8 0, i64 %i.kx, i1 false)
  %i.kz = load i64, ptr %i.ar, align 8, !alias.scope !18877, !noundef !10
  %i.la = sub i64 %i.kz, %.sroa.0.0.i.i
  store i64 %i.la, ptr %i.ar, align 8, !alias.scope !18877
  %i.lb = load i64, ptr %i.it, align 8, !alias.scope !18877, !noundef !10 ; 2 uses
  %i.lc = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.lb
  br i1 %i.lc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit43.i.i
  %i.ld = load ptr, ptr %i.ir, align 8, !alias.scope !18877, !nonnull !10, !noundef !10
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %.sroa.05.0.lcssa.i.i.i
  %i.lf = load i32, ptr %i.le, align 4, !noundef !10
  br label %bb.aj

bb.ai:                                            ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit43.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i, i64 noundef %i.lb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #49
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc123:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecmE10insert_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.010.0.i.i = phi i32 [ %i.kk, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecmE10insert_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.lf, %bb.ah ]
  %.val.i.i101 = load i64, ptr %i.cq, align 8, !alias.scope !18877, !noundef !10 ; 4 uses
  %i.lg = icmp sgt i64 %.val.i.i101, -1
  call void @llvm.assume(i1 %i.lg)
  %i.lh = and i64 %i.ga, 4294967295
  %i.li = sub nsw i64 %.val.i.i101, %i.lh         ; 4 uses
  %i.lj = add i64 %i.li, 4                        ; 2 uses
  %i.lk = icmp ult i64 %i.li, -4
  %i.ll = icmp ule i64 %i.lj, %.val.i.i101
  %or.cond.i.i102 = and i1 %i.lk, %i.ll
  br i1 %or.cond.i.i102, label %bb.ak, label %.invoke, !prof !8536

bb.ak:                                            ; preds = %bb.aj
  %.val22.i.i = load ptr, ptr %3, align 8, !alias.scope !18877, !nonnull !10, !noundef !10
  %i.lm = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 %i.li
  %i.ln = sub i32 %.sroa.010.0.i.i, %i.gb
  store i32 %i.ln, ptr %i.lm, align 1
  store i8 0, ptr %i.aq, align 8, !alias.scope !18857
  store i64 0, ptr %i.dn, align 8, !alias.scope !18857
  store i64 0, ptr %i.it, align 8, !alias.scope !18899
  %i.lo = load i64, ptr %i.cm, align 8, !alias.scope !18899, !noundef !10 ; 2 uses
  %i.lp = load i64, ptr %i.ar, align 8, !alias.scope !18899, !noundef !10 ; 3 uses
  %i.lq = sub i64 -4, %i.lp
  %i.lr = add i64 %i.lo, -1
  %i.ls = and i64 %i.lq, %i.lr                    ; 4 uses
  %.val1.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18902, !noundef !10 ; 3 uses
  %i.lt = icmp sgt i64 %.val1.i.i, -1
  call void @llvm.assume(i1 %i.lt)
  %i.lu = sub i64 %.val1.i.i, %i.lp
  %.not.i.i125 = icmp ult i64 %i.lu, %i.ls
  br i1 %.not.i.i125, label %bb.al, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.lv = icmp ult i64 %i.ls, 2147483649
  br i1 %i.lv, label %.lr.ph.i.i133, label %bb.am, !prof !984

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @266, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #49
          to label %.noexc135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc135:                                        ; preds = %bb.am
  unreachable

.lr.ph.i.i133:                                    ; preds = %bb.al, %.noexc136
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc136 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc136:                                        ; preds = %.lr.ph.i.i133
  %.val.i.i134 = load i64, ptr %i.cq, align 8, !alias.scope !18902, !noundef !10 ; 3 uses
  %i.lw = icmp sgt i64 %.val.i.i134, -1
  call void @llvm.assume(i1 %i.lw)
  %i.lx = load i64, ptr %i.ar, align 8, !alias.scope !18902, !noundef !10 ; 2 uses
  %i.ly = sub i64 %.val.i.i134, %i.lx
  %i.lz = icmp ult i64 %i.ly, %i.ls
  br i1 %i.lz, label %.lr.ph.i.i133, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.loopexit.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.loopexit.i: ; preds = %.noexc136
  %.pre.i = load i64, ptr %i.cm, align 8, !alias.scope !18905
  br label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.loopexit.i, %bb.ak
  %.val1.i.i.i126 = phi i64 [ %.val.i.i134, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.loopexit.i ], [ %.val1.i.i, %bb.ak ] ; 2 uses
  %i.ma = phi i64 [ %.pre.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.loopexit.i ], [ %i.lo, %bb.ak ]
  %i.mb = phi i64 [ %i.lx, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.loopexit.i ], [ %i.lp, %bb.ak ]
  %i.mc = add i64 %i.mb, %i.ls                    ; 4 uses
  store i64 %i.mc, ptr %i.ar, align 8, !alias.scope !18899
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ma, i64 4)
  store i64 %.sroa.0.0.i.i.i, ptr %i.cm, align 8, !alias.scope !18905
  %i.md = sub i64 0, %i.mc
  %i.me = and i64 %i.md, 3                        ; 3 uses
  %i.mf = sub i64 %.val1.i.i.i126, %i.mc
  %.not.i.i.i127 = icmp ult i64 %i.mf, %i.me
  br i1 %.not.i.i.i127, label %.lr.ph.i.i.i131, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i128

.lr.ph.i.i.i131:                                  ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i, %.noexc137
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc137 unwind label %.loopexit.split-lp.loopexit

.noexc137:                                        ; preds = %.lr.ph.i.i.i131
  %.val.i.i.i132 = load i64, ptr %i.cq, align 8, !alias.scope !18908, !noundef !10 ; 3 uses
  %i.mg = icmp sgt i64 %.val.i.i.i132, -1
  call void @llvm.assume(i1 %i.mg)
  %i.mh = load i64, ptr %i.ar, align 8, !alias.scope !18908, !noundef !10 ; 2 uses
  %i.mi = sub i64 %.val.i.i.i132, %i.mh
  %i.mj = icmp ult i64 %i.mi, %i.me
  br i1 %i.mj, label %.lr.ph.i.i.i131, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i128

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i128: ; preds = %.noexc137, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i
  %.val1.i2.i.i = phi i64 [ %.val1.i.i.i126, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.val.i.i.i132, %.noexc137 ] ; 2 uses
  %i.mk = phi i64 [ %i.mc, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.mh, %.noexc137 ]
  %i.ml = add i64 %i.mk, %i.me                    ; 3 uses
  store i64 %i.ml, ptr %i.ar, align 8, !alias.scope !18905
  %i.mm = sub i64 %.val1.i2.i.i, %i.ml
  %.not.i3.i.i = icmp ult i64 %i.mm, 4
  br i1 %.not.i3.i.i, label %.lr.ph.i4.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i

.lr.ph.i4.i.i:                                    ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i128, %.noexc138
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc138 unwind label %.loopexit

.noexc138:                                        ; preds = %.lr.ph.i4.i.i
  %.val.i5.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18911, !noundef !10 ; 3 uses
  %i.mn = icmp sgt i64 %.val.i5.i.i, -1
  call void @llvm.assume(i1 %i.mn)
  %i.mo = load i64, ptr %i.ar, align 8, !alias.scope !18911, !noundef !10 ; 2 uses
  %i.mp = sub i64 %.val.i5.i.i, %i.mo
  %i.mq = icmp ult i64 %i.mp, 4
  br i1 %i.mq, label %.lr.ph.i4.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i: ; preds = %.noexc138, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i128
  %.val1.i5.i = phi i64 [ %.val1.i2.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i128 ], [ %.val.i5.i.i, %.noexc138 ] ; 4 uses
  %i.mr = phi i64 [ %i.ml, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i128 ], [ %i.mo, %.noexc138 ] ; 3 uses
  %i.ms = add i64 %i.mr, 4                        ; 3 uses
  store i64 %i.ms, ptr %i.ar, align 8, !alias.scope !18905
  %i.mt = sub i64 %.val1.i5.i, %i.ms              ; 2 uses
  %i.mu = icmp ult i64 %.val1.i5.i, %i.ms
  br i1 %i.mu, label %.invoke, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i129, !prof !985

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i129: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i
  %.not.i8.i.i = icmp ugt i64 %i.mr, -5
  br i1 %.not.i8.i.i, label %.invoke262, label %bb.an, !prof !49

bb.an:                                            ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i129
  %.val.i6.i = load ptr, ptr %3, align 8, !alias.scope !18905, !nonnull !10, !noundef !10
  %i.mv = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 %i.mt
  %i.mw = trunc i64 %i.mr to i32
  %reass.sub198 = sub i32 %i.mw, %i.gb
  %i.mx = add i32 %reass.sub198, 4
  store i32 %i.mx, ptr %i.mv, align 1, !alias.scope !18914, !noalias !18917
  %i.my = getelementptr inbounds nuw i8, ptr %i.k, i64 113
  store i8 1, ptr %i.my, align 1, !alias.scope !18899
  %i.mz = load i64, ptr %i.cq, align 8, !noundef !10 ; 4 uses
  %i.na = load i64, ptr %i.ar, align 8, !noundef !10 ; 4 uses
  %i.nb = sub i64 %i.mz, %i.na                    ; 2 uses
  %i.nc = icmp ult i64 %i.mz, %i.na
  br i1 %i.nc, label %.invoke, label %bb.ao, !prof !985

bb.ao:                                            ; preds = %bb.an
  %i.nd = load ptr, ptr %3, align 8, !nonnull !10, !noundef !10
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nb
  %.val41 = load ptr, ptr %i.o, align 8, !nonnull !10, !align !304, !noundef !10
  invoke void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val41, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ne, i64 noundef range(i64 0, -9223372036854775808) %i.na)
          to label %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.nf = trunc i64 %i.na to i32
  store i32 %i.nf, ptr %i.h, align 4
  %.val40 = load ptr, ptr %i.o, align 8, !nonnull !10, !align !304, !noundef !10
  invoke void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val40, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) 4)
          to label %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit144: ; preds = %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val = load ptr, ptr %i.o, align 8, !nonnull !10, !align !304, !noundef !10
  invoke void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef range(i64 0, -9223372036854775808) 6)
          to label %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit146: ; preds = %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit144
  store i8 1, ptr %i.l, align 8
  store i64 -9223372036854775788, ptr %0, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTxNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ng)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit146
  %i.nh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.j) #44
          to label %.body unwind label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit146
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ni = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.j)
          to label %.body unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.nj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdl0l68gAy31_9arrow_ipc6writer17DictionaryTrackerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

bb.as:                                            ; preds = %bb.ap
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdl0l68gAy31_9arrow_ipc6writer17DictionaryTrackerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2TwJzntlzha_11flatbuffers7builder17FlatBufferBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.at

bb.at:                                            ; preds = %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdl0l68gAy31_9arrow_ipc6writer17DictionaryTrackerECs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.au:                                            ; preds = %.loopexit.split-lp, %.body
  %i.nl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.av:                                            ; preds = %.body
  resume { ptr, i32 } %.pn

bb.aw:                                            ; preds = %bb.i
  %i.nm = load i64, ptr %i.w, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.nm) #46
  unreachable

bb.ax:                                            ; preds = %bb.i
  %i.nn = load ptr, ptr %i.w, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.no = icmp samesign ugt i64 %i.v, 49
  tail call void @llvm.assume(i1 %i.no)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.nn, ptr noundef nonnull align 1 dereferenceable(50) @271, i64 50, i1 false)
  store i64 -9223372036854775795, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.nn, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 50, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCsdl0l68gAy31_9arrow_ipc6writerINtB5_10FileWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE7try_newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.016.sroa.0.i = alloca [128 x i8], align 8 ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 11 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %1, ptr %i.n, align 8, !noalias !18924
  store i64 18014398509744128, ptr %i.m, align 8, !noalias !18924
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef range(i64 0, -9223372036854775808) 6), !noalias !18926
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef range(i64 0, -9223372036854775808) 58), !noalias !18926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !18924
  call void @_RNvMs1_NtCsdl0l68gAy31_9arrow_ipc6writerNtB5_17DictionaryTracker3new(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.l, i1 noundef zeroext true), !noalias !18926
  invoke void @_RNvMs0_NtCsdl0l68gAy31_9arrow_ipc6writerNtB5_16IpcDataGenerator39schema_to_bytes_with_dictionary_tracker(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.l, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %bb.c unwind label %bb.b, !noalias !18919

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !18924
  invoke fastcc void @_RINvNtCsdl0l68gAy31_9arrow_ipc6writer13write_messageQQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef align 8 dereferenceable(8) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %bb.d unwind label %bb.b, !noalias !18919

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.j, align 8, !range !305, !noalias !18924, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %i.p, -9223372036854775788
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !18924 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !18924 ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.727.0.copyload.i = load i64, ptr %.sroa.727.0..sroa_idx.i, align 8, !noalias !18924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !18924
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.u, align 8, !alias.scope !18919, !noalias !18927
  %.sroa.229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %.sroa.229.0..sroa_idx.i, align 8, !alias.scope !18919, !noalias !18927
  %.sroa.330.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.t, ptr %.sroa.330.0..sroa_idx.i, align 8, !alias.scope !18919, !noalias !18927
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.727.0.copyload.i, ptr %.sroa.431.0..sroa_idx.i, align 8, !alias.scope !18919, !noalias !18927
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !18919, !noalias !18927
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTxNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.f, !noalias !18919

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.l) #44
          to label %common.resume.i unwind label %bb.i, !noalias !18919

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.e
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdl0l68gAy31_9arrow_ipc6writer17DictionaryTrackerECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !18919

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.l)
          to label %common.resume.i unwind label %bb.h, !noalias !18919

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !18919
end_hunk_2
begin_hunk_3_@_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.at, ptr %i.f, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @548, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @547)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.e, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @549, i64 noundef 8, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @509)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.d, align 8
  %i.ay = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @550, i64 noundef 20, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @509)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.c, align 8
  %i.ba = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @509)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.b, align 8
  %i.bc = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @509)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.t:                                             ; preds = %bb.a
  %i.bd = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @553, i64 noundef 26)
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  %i.be = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @554, i64 noundef 24)
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.a, align 8
  %i.bg = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @555, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @526)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.x, %bb.c ], [ %i.z, %bb.d ], [ %i.ab, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ], [ %i.ah, %bb.h ], [ %i.aj, %bb.i ], [ %i.ak, %bb.j ], [ %i.am, %bb.k ], [ %i.ao, %bb.l ], [ %i.aq, %bb.m ], [ %i.as, %bb.n ], [ %i.au, %bb.o ], [ %i.aw, %bb.p ], [ %i.ay, %bb.q ], [ %i.ba, %bb.r ], [ %i.bc, %bb.s ], [ %i.bd, %bb.t ], [ %i.be, %bb.u ], [ %i.bg, %bb.v ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !6072, !noundef !10 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !6072, !noundef !10
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %.lr.ph, %bb.p, %bb.w, %bb.a, %bb.o, %bb.n, %bb.m, %bb.an, %bb.am, %bb.ak, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.l, %bb.k, %bb.ab, %bb.j, %bb.i, %bb.h, %bb.x, %bb.b, %bb.ao, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.ak ], [ %i.ds, %bb.y ], [ %.mux, %bb.w ], [ false, %bb.b ], [ false, %bb.a ], [ %i.bo, %bb.n ], [ %i.n, %bb.c ], [ %i.s, %bb.d ], [ %i.x, %bb.e ], [ %i.ac, %bb.f ], [ %i.ah, %bb.g ], [ false, %bb.x ], [ %i.dv, %bb.z ], [ true, %bb.h ], [ %i.dy, %bb.aa ], [ false, %bb.j ], [ %i.eg, %bb.ac ], [ true, %bb.i ], [ true, %bb.ab ], [ %i.ej, %bb.ad ], [ true, %bb.k ], [ %i.em, %bb.ae ], [ true, %bb.an ], [ %i.er, %bb.af ], [ true, %bb.l ], [ false, %bb.o ], [ false, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ %i.fd, %bb.ag ], [ false, %bb.m ], [ %i.fi, %bb.ah ], [ false, %bb.q ], [ %i.fn, %bb.ai ], [ false, %bb.r ], [ %i.fs, %bb.aj ], [ false, %bb.s ], [ false, %bb.u ], [ %i.ga, %bb.al ], [ false, %bb.t ], [ false, %bb.am ], [ %i.gl, %bb.ao ], [ false, %bb.p ], [ true, %.lr.ph ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.ew, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr2969 = phi ptr [ %i.ev, %tailrecurse ], [ %1, %bb.a ] ; 33 uses
  %.tr68 = phi ptr [ %i.et, %tailrecurse ], [ %0, %bb.a ] ; 33 uses
  switch i8 %i.d, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit [
    i8 13, label %bb.b
    i8 16, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.f
    i8 21, label %bb.g
    i8 27, label %bb.h
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 32, label %bb.m
    i8 33, label %bb.o
    i8 34, label %bb.p
    i8 35, label %bb.q
    i8 36, label %bb.r
    i8 37, label %bb.s
    i8 38, label %bb.t
    i8 39, label %bb.u
    i8 40, label %bb.v
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !294, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !294, !noundef !10
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.w, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !294, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !294, !noundef !10
  %i.n = icmp eq i8 %i.k, %i.m
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !294, !noundef !10
  %i.q = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !294, !noundef !10
  %i.s = icmp eq i8 %i.p, %i.r
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !294, !noundef !10
  %i.v = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !294, !noundef !10
  %i.x = icmp eq i8 %i.u, %i.w
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !833, !noundef !10
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !833, !noundef !10
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !10
  %i.af = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !10
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.z

bb.i:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.aa

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !10
  %i.au = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !10
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.ab, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val20 = load i64, ptr %i.bh, align 8, !noundef !10 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val22 = load i64, ptr %i.bi, align 8, !noundef !10
  %i.bj = icmp eq i64 %.val20, %.val22
  br i1 %i.bj, label %bb.n, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val21.a = load ptr, ptr %i.bk, align 8, !nonnull !10, !noundef !10
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val = load ptr, ptr %i.bl, align 8, !nonnull !10, !noundef !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.val21.a, i64 16
  %i.bo = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull readonly align 8 %i.bn, ptr noundef nonnull readonly align 8 %i.bm, i64 noundef range(i64 0, 1152921504606846976) %.val20)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val24 = load i64, ptr %i.bp, align 8, !noundef !10 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val26 = load i64, ptr %i.bq, align 8, !noundef !10
  %i.br = icmp eq i64 %.val24, %.val26
  br i1 %i.br, label %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val25.a = load ptr, ptr %i.bs, align 8, !nonnull !10, !noundef !10
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val23 = load ptr, ptr %i.bt, align 8, !nonnull !10, !noundef !10
  %i.bu = getelementptr inbounds nuw i8, ptr %.val23, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.val25.a, i64 16
  %i.bw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull readonly align 8 %i.bv, ptr noundef nonnull readonly align 8 %i.bu, i64 noundef range(i64 0, 576460752303423488) %.val24)
  br i1 %i.bw, label %bb.af, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !10, !noundef !10
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !10, !noundef !10
  %i.cb = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #47
  br i1 %i.cb, label %tailrecurse, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !10
  %i.cg = icmp eq i8 %i.cd, %i.cf
  br i1 %i.cg, label %bb.ag, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !10
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !10
  %i.cl = icmp eq i8 %i.ci, %i.ck
  br i1 %i.cl, label %bb.ah, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !10
  %i.co = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !noundef !10
  %i.cq = icmp eq i8 %i.cn, %i.cp
  br i1 %i.cq, label %bb.ai, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !10
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !10
  %i.cv = icmp eq i8 %i.cs, %i.cu
  br i1 %i.cv, label %bb.aj, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !range !349, !noundef !10
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !range !349, !noundef !10
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.ak, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.df = icmp eq ptr %i.dc, %i.de
  br i1 %i.df, label %bb.an, label %bb.am

bb.w:                                             ; preds = %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noundef !10 ; 2 uses
  %.not = icmp eq ptr %i.dh, null                 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noundef !10 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null                 ; 2 uses
  %brmerge = or i1 %.not, %i.dk
  %.mux = and i1 %.not, %i.dk
  br i1 %brmerge, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.dn = load i64, ptr %i.dl, align 8, !noundef !10 ; 2 uses
  %i.do = load i64, ptr %i.dm, align 8, !noundef !10
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.y, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.dr, ptr nonnull %i.dq, i64 %i.dn)
  %i.ds = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.dv = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.du)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.dy = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dx)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ed = icmp eq ptr %i.ea, %i.ec
  br i1 %i.ed, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ef)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ej = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ei)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.em = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.el)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !range !349, !noundef !10
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !range !349, !noundef !10
  %i.er = icmp eq i8 %i.eo, %i.eq
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ew = load i8, ptr %i.et, align 8, !range !6072, !noundef !10 ; 2 uses
  %i.ex = load i8, ptr %i.ev, align 8, !range !6072, !noundef !10
  %i.ey = icmp eq i8 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fa = load i8, ptr %i.ez, align 2, !noundef !10
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fc = load i8, ptr %i.fb, align 2, !noundef !10
  %i.fd = icmp eq i8 %i.fa, %i.fc
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.r
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.ff = load i8, ptr %i.fe, align 2, !noundef !10
  %i.fg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fh = load i8, ptr %i.fg, align 2, !noundef !10
  %i.fi = icmp eq i8 %i.ff, %i.fh
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fk = load i8, ptr %i.fj, align 2, !noundef !10
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fm = load i8, ptr %i.fl, align 2, !noundef !10
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fp = load i8, ptr %i.fo, align 2, !noundef !10
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fr = load i8, ptr %i.fq, align 2, !noundef !10
  %i.fs = icmp eq i8 %i.fp, %i.fr
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.fx = icmp eq ptr %i.fu, %i.fw
  br i1 %i.fx, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ga = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fz)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.gd = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gc)
  br i1 %i.gd, label %bb.an, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.v, %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.gi = icmp eq ptr %i.gf, %i.gh
  br i1 %i.gi, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ao
end_hunk_3
