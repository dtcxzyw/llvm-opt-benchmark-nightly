Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.09?download=true
inline.NumInlined: 2887
inline.NumDeleted: 1258
begin_hunk_0_@_RNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB2_11TableBuffer17timestamp_min_max:bb.a

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.01.049 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ac, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.01.049, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.01.049, i64 56
  %i.aj = call { i64, i64 } @_RNvMs1j_CsIdnmPPg5ba_10data_typesNtB6_15TimestampMinMax5union(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai) ; 3 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %i.al = extractvalue { i64, i64 } %i.aj, 1
  store i64 %i.ak, ptr %i.d, align 8
  store i64 %i.al, ptr %i.aa, align 8
  %i.am = icmp eq ptr %i.ah, %i.af
  br i1 %i.am, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.merged.lcssa = phi { i64, i64 } [ %i.x, %bb.c ], [ %i.aj, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { i64, i64 } %.merged.lcssa
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB2_11TableBuffer25remove_snapshotting_chunk(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 5 uses
  %.idx = mul nuw nsw i64 %i.e, 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4_11TableBuffer25remove_snapshotting_chunk0B8_.exit.thread.i
  %.sroa.02.012.i = phi i64 [ %i.n, %_RNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4_11TableBuffer25remove_snapshotting_chunk0B8_.exit.thread.i ], [ 0, %bb.a ] ; 3 uses
  %i.h = phi ptr [ %i.i, %_RNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4_11TableBuffer25remove_snapshotting_chunk0B8_.exit.thread.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 48
  %.val8.i = load i64, ptr %i.j, align 8, !noalias !6771, !noundef !8
  %i.k = icmp eq i64 %.val8.i, %1
  br i1 %i.k, label %_RNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4_11TableBuffer25remove_snapshotting_chunk0B8_.exit.i, label %_RNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4_11TableBuffer25remove_snapshotting_chunk0B8_.exit.thread.i

_RNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4_11TableBuffer25remove_snapshotting_chunk0B8_.exit.i: ; preds = %.lr.ph.i
  %i.l = getelementptr i8, ptr %i.h, i64 72
  %.val9.i = load i32, ptr %i.l, align 8, !noalias !6771
  %i.m = icmp eq i32 %.val9.i, %2
  br i1 %i.m, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkE11swap_removeBJ_.exit, label %_RNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4_11TableBuffer25remove_snapshotting_chunk0B8_.exit.thread.i

_RNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4_11TableBuffer25remove_snapshotting_chunk0B8_.exit.thread.i: ; preds = %_RNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4_11TableBuffer25remove_snapshotting_chunk0B8_.exit.i, %.lr.ph.i
  %i.n = add nuw nsw i64 %.sroa.02.012.i, 1
  %i.o = icmp eq ptr %i.i, %i.f
  br i1 %i.o, label %.loopexit, label %.lr.ph.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkE11swap_removeBJ_.exit: ; preds = %_RNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4_11TableBuffer25remove_snapshotting_chunk0B8_.exit.i
  %i.p = icmp samesign ult i64 %.sroa.02.012.i, %i.e
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6772)
  %i.q = icmp ult i64 %i.e, 115292150460684698
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %.sroa.02.012.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false), !noalias !6772
  %i.s = add nsw i64 %i.e, -1                     ; 2 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 80, i1 false), !noalias !6773
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !6772
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkE11swap_removeBJ_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6774)
  call void @llvm.experimental.noalias.scope.decl(metadata !6775)
  call void @llvm.experimental.noalias.scope.decl(metadata !6776)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !6777, !nonnull !8, !noundef !8
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !6778
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsjGL2vCcvtUM_6schema6SchemaECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaE9drop_slowCs6ePPILGZvJ2_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsjGL2vCcvtUM_6schema6SchemaECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.f

bb.d:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkE11swap_removeBJ_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6779)
  call void @llvm.experimental.noalias.scope.decl(metadata !6780)
  call void @llvm.experimental.noalias.scope.decl(metadata !6781)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !6782, !nonnull !8, !noundef !8
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !6783
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkEBH_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaE9drop_slowCs6ePPILGZvJ2_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkEBH_.exit

bb.f:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsjGL2vCcvtUM_6schema6SchemaECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.u

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkEBH_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4_11TableBuffer25remove_snapshotting_chunk0B8_.exit.thread.i, %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkEBH_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB2_11TableBuffer26partitioned_record_batches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [112 x i8], align 8               ; 6 uses
  %i.f = alloca [160 x i8], align 8               ; 7 uses
  %i.g = alloca [136 x i8], align 8               ; 6 uses
  %i.h = alloca [112 x i8], align 8               ; 6 uses
  %i.i = alloca [112 x i8], align 8               ; 6 uses
  %i.j = alloca [112 x i8], align 8               ; 6 uses
  %i.k = alloca [104 x i8], align 8               ; 7 uses
  %i.l = alloca [96 x i8], align 8                ; 4 uses
  %i.m = alloca [144 x i8], align 8               ; 4 uses
  %i.n = alloca [120 x i8], align 8               ; 4 uses
  %i.o = alloca [96 x i8], align 8                ; 4 uses
  %i.p = alloca [96 x i8], align 8                ; 4 uses
  %i.q = alloca [96 x i8], align 8                ; 4 uses
  %i.r = alloca [88 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 11 uses
  %i.x = alloca [72 x i8], align 8                ; 12 uses
  %i.y = alloca [8 x i8], align 8                 ; 6 uses
  %i.z = alloca [48 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [40 x i8], align 8               ; 4 uses
  %.sroa.6173 = alloca [32 x i8], align 8         ; 4 uses
  %.sroa.625 = alloca [32 x i8], align 8          ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [72 x i8], align 8               ; 13 uses
  %i.af = alloca [40 x i8], align 8               ; 4 uses
  %i.ag = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.69 = alloca [32 x i8], align 8           ; 6 uses
  %i.ah = alloca [40 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 2 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [8 x i8], align 8                ; 13 uses
  %i.am = alloca [32 x i8], align 8               ; 17 uses
  %i.an = alloca [8 x i8], align 8                ; 8 uses
  store ptr %2, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) @147, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1184
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.d, label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapxTNtCsIdnmPPg5ba_10data_types15TimestampMinMaxINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchEEEECs92BnbMq7p8c_15influxdb3_write.exit156: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit
  %.pn82 = phi { ptr, i32 } [ %.pn80179, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit.thread ], [ %i.ep, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6916)
  call void @llvm.experimental.noalias.scope.decl(metadata !6917)
  %i.as = load ptr, ptr %i.an, align 8, !alias.scope !6918, !nonnull !8, !noundef !8
  %i.at = atomicrmw add ptr %i.as, i64 -1 release, align 8, !noalias !6918
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECs92BnbMq7p8c_15influxdb3_write.exit

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapxTNtCsIdnmPPg5ba_10data_types15TimestampMinMaxINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchEEEECs92BnbMq7p8c_15influxdb3_write.exit156
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.dv

bb.c:                                             ; preds = %bb.a
  store ptr %i.ap, ptr %i.al, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !8 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ay, 80
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 4 uses
  %i.ba = icmp eq i64 %i.ay, 0
  %.pre = load i64, ptr %3, align 8, !range !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre430 = load i64, ptr %.phi.trans.insert, align 8 ; 4 uses
  %.phi.trans.insert431 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre432 = load i64, ptr %.phi.trans.insert431, align 8, !range !14 ; 3 uses
  %.phi.trans.insert433 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre434 = load i64, ptr %.phi.trans.insert433, align 8 ; 4 uses
  %.pre435 = trunc nuw i64 %.pre to i1            ; 3 uses
  br i1 %i.ba, label %.loopexit226, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %bb.c
  %i.bb = trunc nuw i64 %.pre432 to i1            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i148 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %.lr.ph.i

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.du
  %.sroa.0.0357 = phi ptr [ %i.aw, %.lr.ph.i.lr.ph ], [ %.sroa.0.1, %bb.du ] ; 5 uses
  br i1 %.pre435, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %i.bb, label %.split.us.us.i, label %.split5.us.i

.split.us.us.i:                                   ; preds = %.lr.ph.split.us.i, %bb.e
  %i.bk = phi ptr [ %i.bl, %bb.e ], [ %.sroa.0.0357, %.lr.ph.split.us.i ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !6919, !noundef !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !6919, !noundef !8
  %.not.i.i.us.us.i = icmp sle i64 %i.bn, %.pre434
  %i.bq = icmp sge i64 %i.bp, %.pre430
  %spec.select9.i.i.us.us.i = select i1 %.not.i.i.us.us.i, i1 %i.bq, i1 false
  br i1 %spec.select9.i.i.us.us.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batches0EBW_.exit, label %bb.e

bb.e:                                             ; preds = %.split.us.us.i
  %i.br = icmp eq ptr %i.bl, %i.az
  br i1 %i.br, label %.loopexit226, label %.split.us.us.i

.split5.us.i:                                     ; preds = %.lr.ph.split.us.i, %bb.f
  %i.bs = phi ptr [ %i.bt, %bb.f ], [ %.sroa.0.0357, %.lr.ph.split.us.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !6919, !noundef !8
  %.not.us.i = icmp slt i64 %i.bv, %.pre430
  br i1 %.not.us.i, label %bb.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batches0EBW_.exit

bb.f:                                             ; preds = %.split5.us.i
  %i.bw = icmp eq ptr %i.bt, %i.az
  br i1 %i.bw, label %.loopexit226, label %.split5.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.bb, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batches0INtB7_5FnMutTRRNtBT_13SnapshotChunkEE8call_mutBX_.exit.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batches0INtB7_5FnMutTRRNtBT_13SnapshotChunkEE8call_mutBX_.exit.us.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batches0INtB7_5FnMutTRRNtBT_13SnapshotChunkEE8call_mutBX_.exit.us.i: ; preds = %.lr.ph.split.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0357, i64 80
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batches0EBW_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batches0INtB7_5FnMutTRRNtBT_13SnapshotChunkEE8call_mutBX_.exit.i: ; preds = %.lr.ph.split.i, %bb.g
  %i.by = phi ptr [ %i.bz, %bb.g ], [ %.sroa.0.0357, %.lr.ph.split.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 80 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !6919, !noundef !8
  %i.cc = icmp sgt i64 %i.cb, %.pre434
  br i1 %i.cc, label %bb.g, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batches0EBW_.exit

bb.g:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batches0INtB7_5FnMutTRRNtBT_13SnapshotChunkEE8call_mutBX_.exit.i
  %i.cd = icmp eq ptr %i.bz, %i.az
  br i1 %i.cd, label %.loopexit226, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batches0INtB7_5FnMutTRRNtBT_13SnapshotChunkEE8call_mutBX_.exit.i

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ds, %bb.cv, %bb.ah, %bb.co, %bb.cp, %.loopexit.split-lp222.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp642, %.loopexit.split-lp222.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.mn, %bb.cv ], [ %.pn19.i, %bb.ah ], [ %i.pj, %bb.ds ], [ %.pn19.i, %bb.cp ], [ %.pn19.i, %bb.co ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6920)
  call void @llvm.experimental.noalias.scope.decl(metadata !6921)
  %i.ce = load ptr, ptr %i.al, align 8, !alias.scope !6922, !nonnull !8, !noundef !8
  %i.cf = atomicrmw add ptr %i.ce, i64 -1 release, align 8, !noalias !6922
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit.thread

bb.h:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaE9drop_slowCs6ePPILGZvJ2_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit.thread unwind label %bb.dv

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batchess1_0EBW_.exit, %bb.x, %bb.p, %bb.v, %bb.cj, %bb.s, %.loopexit210, %bb.dd, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batches0EBW_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batches0EBW_.exit: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batches0INtB7_5FnMutTRRNtBT_13SnapshotChunkEE8call_mutBX_.exit.i, %.split5.us.i, %.split.us.us.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batches0INtB7_5FnMutTRRNtBT_13SnapshotChunkEE8call_mutBX_.exit.us.i
  %.sroa.0.1 = phi ptr [ %i.bx, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batches0INtB7_5FnMutTRRNtBT_13SnapshotChunkEE8call_mutBX_.exit.us.i ], [ %i.bt, %.split5.us.i ], [ %i.bl, %.split.us.us.i ], [ %i.bz, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batches0INtB7_5FnMutTRRNtBT_13SnapshotChunkEE8call_mutBX_.exit.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0357, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batches0INtB7_5FnMutTRRNtBT_13SnapshotChunkEE8call_mutBX_.exit.us.i ], [ %i.bs, %.split5.us.i ], [ %i.bk, %.split.us.us.i ], [ %i.by, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batches0INtB7_5FnMutTRRNtBT_13SnapshotChunkEE8call_mutBX_.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ch = load ptr, ptr %i.al, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !8, !noundef !8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  store ptr %i.cm, ptr %i.aj, align 8
  store ptr %i.cn, ptr %i.bc, align 8
  store ptr %.sroa.0.0.i, ptr %i.bd, align 8
  invoke void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEENCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB2S_11TableBuffer26partitioned_record_batchess_0EIB1x_DNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB2S_5ErrorENCINvXso_B5C_IB5A_INtNtB1B_3vec3VecB4I_EB6m_EINtNtNtB4_6traits7collect12FromIteratorIB5A_B4I_B6m_EE9from_iterBQ_E0B6R_EB2W_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aj)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit226:                                     ; preds = %bb.du, %bb.g, %bb.f, %bb.e, %bb.c
  %.pre-phi = phi i1 [ true, %bb.f ], [ false, %bb.g ], [ %.pre435, %bb.c ], [ true, %bb.e ], [ %.pre435, %bb.du ]
  %i.co = phi i64 [ 0, %bb.f ], [ 1, %bb.g ], [ %.pre432, %bb.c ], [ 1, %bb.e ], [ %.pre432, %bb.du ]
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !noundef !8 ; 3 uses
  %.not75 = icmp ne ptr %i.cq, null               ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cu = load i64, ptr %i.ct, align 8
  %.sroa.013.sroa.4.0 = zext i1 %.not75 to i64    ; 2 uses
  %.sroa.314.0 = select i1 %.not75, i64 %i.cu, i64 0
  %.sroa.013.sroa.3.sroa.4.0 = select i1 %.not75, i64 %i.cs, i64 undef ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 %.sroa.013.sroa.4.0, ptr %i.ae, align 8
  %.sroa.013.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr null, ptr %.sroa.013.sroa.3.0..sroa_idx, align 8
  %.sroa.013.sroa.3.sroa.3.0..sroa.013.sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.cq, ptr %.sroa.013.sroa.3.sroa.3.0..sroa.013.sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.013.sroa.3.sroa.4.0..sroa.013.sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %.sroa.013.sroa.3.sroa.4.0, ptr %.sroa.013.sroa.3.sroa.4.0..sroa.013.sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.013.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %.sroa.013.sroa.4.0, ptr %.sroa.013.sroa.4.0..sroa_idx, align 8
  %.sroa.013.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr null, ptr %.sroa.013.sroa.5.0..sroa_idx, align 8
  %.sroa.013.sroa.5.sroa.3.0..sroa.013.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store ptr %i.cq, ptr %.sroa.013.sroa.5.sroa.3.0..sroa.013.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.013.sroa.5.sroa.4.0..sroa.013.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store i64 %.sroa.013.sroa.3.sroa.4.0, ptr %.sroa.013.sroa.5.sroa.4.0..sroa.013.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store i64 %.sroa.314.0, ptr %.sroa.314.0..sroa_idx, align 8
  %i.cv = trunc nuw i64 %i.co to i1               ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.4.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.6.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.7.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.u, i64 19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.625.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %.loopexit210

.loopexit210:                                     ; preds = %.loopexit210.backedge, %.loopexit226
  %i.ec = invoke { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterxINtNtBb_3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1p_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.i:                                             ; preds = %.loopexit210
  %i.ed = extractvalue { ptr, ptr } %i.ec, 0      ; 2 uses
  %.not76 = icmp eq ptr %i.ed, null
  br i1 %.not76, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ee = extractvalue { ptr, ptr } %i.ec, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !8 ; 2 uses
  %.idx359 = mul nuw nsw i64 %i.ei, 80
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx359 ; 4 uses
  %i.ek = icmp eq i64 %i.ei, 0
  br i1 %i.ek, label %.loopexit210.backedge, label %.lr.ph.i92

.loopexit210.backedge:                            ; preds = %bb.cx, %bb.o, %bb.n, %bb.m, %bb.j
  br label %.loopexit210

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6923)
  call void @llvm.experimental.noalias.scope.decl(metadata !6924)
  %i.em = load ptr, ptr %i.al, align 8, !alias.scope !6925, !nonnull !8, !noundef !8
  %i.en = atomicrmw add ptr %i.em, i64 -1 release, align 8, !noalias !6925
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit89

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaE9drop_slowCs6ePPILGZvJ2_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit89 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit119, %bb.l
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapxTNtCsIdnmPPg5ba_10data_types15TimestampMinMaxINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchEEEECs92BnbMq7p8c_15influxdb3_write.exit156

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit89: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.experimental.noalias.scope.decl(metadata !6926)
  call void @llvm.experimental.noalias.scope.decl(metadata !6927)
  %i.eq = load ptr, ptr %i.an, align 8, !alias.scope !6928, !nonnull !8, !noundef !8
  %i.er = atomicrmw add ptr %i.eq, i64 -1 release, align 8, !noalias !6928
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECs92BnbMq7p8c_15influxdb3_write.exit90.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECs92BnbMq7p8c_15influxdb3_write.exit90

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECs92BnbMq7p8c_15influxdb3_write.exit90.sink.split: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit89, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapxTNtCsIdnmPPg5ba_10data_types15TimestampMinMaxINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchEEEECs92BnbMq7p8c_15influxdb3_write.exit
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECs92BnbMq7p8c_15influxdb3_write.exit90

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECs92BnbMq7p8c_15influxdb3_write.exit90: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECs92BnbMq7p8c_15influxdb3_write.exit90.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapxTNtCsIdnmPPg5ba_10data_types15TimestampMinMaxINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchEEEECs92BnbMq7p8c_15influxdb3_write.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs92BnbMq7p8c_15influxdb3_write.exit89
  ret void

.lr.ph.i92:                                       ; preds = %bb.j, %bb.cx
  %.sroa.0163.0358 = phi ptr [ %.sroa.0163.1, %bb.cx ], [ %i.eg, %bb.j ] ; 5 uses
  br i1 %.pre-phi, label %.lr.ph.split.us.i99, label %.lr.ph.split.i94

.lr.ph.split.us.i99:                              ; preds = %.lr.ph.i92
  br i1 %i.cv, label %.split.us.us.i102, label %.split5.us.i100

.split.us.us.i102:                                ; preds = %.lr.ph.split.us.i99, %bb.m
  %i.et = phi ptr [ %i.eu, %bb.m ], [ %.sroa.0163.0358, %.lr.ph.split.us.i99 ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 80 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !6929, !noundef !8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !6929, !noundef !8
  %.not.i.i.us.us.i103 = icmp sle i64 %i.ew, %.pre434
  %i.ez = icmp sge i64 %i.ey, %.pre430
  %spec.select9.i.i.us.us.i104 = select i1 %.not.i.i.us.us.i103, i1 %i.ez, i1 false
  br i1 %spec.select9.i.i.us.us.i104, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batchess1_0EBW_.exit, label %bb.m

bb.m:                                             ; preds = %.split.us.us.i102
  %i.fa = icmp eq ptr %i.eu, %i.ej
  br i1 %i.fa, label %.loopexit210.backedge, label %.split.us.us.i102

.split5.us.i100:                                  ; preds = %.lr.ph.split.us.i99, %bb.n
  %i.fb = phi ptr [ %i.fc, %bb.n ], [ %.sroa.0163.0358, %.lr.ph.split.us.i99 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 80 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !6929, !noundef !8
  %.not.us.i101 = icmp slt i64 %i.fe, %.pre430
  br i1 %.not.us.i101, label %bb.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batchess1_0EBW_.exit

bb.n:                                             ; preds = %.split5.us.i100
  %i.ff = icmp eq ptr %i.fc, %i.ej
  br i1 %i.ff, label %.loopexit210.backedge, label %.split5.us.i100

.lr.ph.split.i94:                                 ; preds = %.lr.ph.i92
  br i1 %i.cv, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batchess1_0INtB7_5FnMutTRRNtBT_17MutableTableChunkEE8call_mutBX_.exit.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batchess1_0INtB7_5FnMutTRRNtBT_17MutableTableChunkEE8call_mutBX_.exit.us.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batchess1_0INtB7_5FnMutTRRNtBT_17MutableTableChunkEE8call_mutBX_.exit.us.i: ; preds = %.lr.ph.split.i94
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0163.0358, i64 80
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batchess1_0EBW_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batchess1_0INtB7_5FnMutTRRNtBT_17MutableTableChunkEE8call_mutBX_.exit.i: ; preds = %.lr.ph.split.i94, %bb.o
  %i.fh = phi ptr [ %i.fi, %bb.o ], [ %.sroa.0163.0358, %.lr.ph.split.i94 ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 80 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fk = load i64, ptr %i.fj, align 8, !noalias !6929, !noundef !8
  %i.fl = icmp sgt i64 %i.fk, %.pre434
  br i1 %i.fl, label %bb.o, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batchess1_0EBW_.exit

bb.o:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batchess1_0INtB7_5FnMutTRRNtBT_17MutableTableChunkEE8call_mutBX_.exit.i
  %i.fm = icmp eq ptr %i.fi, %i.ej
  br i1 %i.fm, label %.loopexit210.backedge, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batchess1_0INtB7_5FnMutTRRNtBT_17MutableTableChunkEE8call_mutBX_.exit.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batchess1_0EBW_.exit: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batchess1_0INtB7_5FnMutTRRNtBT_17MutableTableChunkEE8call_mutBX_.exit.i, %.split5.us.i100, %.split.us.us.i102, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batchess1_0INtB7_5FnMutTRRNtBT_17MutableTableChunkEE8call_mutBX_.exit.us.i
  %.sroa.0163.1 = phi ptr [ %i.fg, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batchess1_0INtB7_5FnMutTRRNtBT_17MutableTableChunkEE8call_mutBX_.exit.us.i ], [ %i.fc, %.split5.us.i100 ], [ %i.eu, %.split.us.us.i102 ], [ %i.fi, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batchess1_0INtB7_5FnMutTRRNtBT_17MutableTableChunkEE8call_mutBX_.exit.i ] ; 2 uses
  %.sroa.0.0.i98 = phi ptr [ %.sroa.0163.0358, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batchess1_0INtB7_5FnMutTRRNtBT_17MutableTableChunkEE8call_mutBX_.exit.us.i ], [ %i.fb, %.split5.us.i100 ], [ %i.et, %.split.us.us.i102 ], [ %i.fh, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtBT_11TableBuffer26partitioned_record_batchess1_0INtB7_5FnMutTRRNtBT_17MutableTableChunkEE8call_mutBX_.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i98, i64 32
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !8
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i98, i64 40
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !8
  %i.fr = invoke { i64, i64 } @_RNvMs1j_CsIdnmPPg5ba_10data_typesNtB6_15TimestampMinMax3new(i64 noundef %i.fo, i64 noundef %i.fq)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer17MutableTableChunkENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBS_NtBS_11TableBuffer26partitioned_record_batchess1_0EBW_.exit
  %i.fs = extractvalue { i64, i64 } %i.fr, 0      ; 2 uses
  %i.ft = extractvalue { i64, i64 } %i.fr, 1      ; 2 uses
  store i64 %i.fs, ptr %i.ad, align 8
  store i64 %i.ft, ptr %i.cw, align 8
  %i.fu = load i64, ptr %i.ed, align 8, !noundef !8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6930)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %i.fu, ptr %i.ab, align 8, !noalias !6931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !6932
  invoke void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx)
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %bb.p
  %i.fv = load i64, ptr %i.cy, align 8, !alias.scope !6933, !noalias !6932, !noundef !8
  %i.fw = xor i64 %i.fv, %i.fu
  %i.fx = zext i64 %i.fw to i128
  %i.fy = mul nuw nsw i128 %i.fx, 6364136223846793005 ; 2 uses
  %i.fz = lshr i128 %i.fy, 64
  %i.ga = xor i128 %i.fz, %i.fy                   ; 2 uses
  %i.gb = trunc i128 %i.ga to i64
  %.val1.i.i = load i64, ptr %i.cz, align 8, !noalias !6932, !noundef !8
  %i.gc = and i128 %i.ga, 18446744073709551615
  %i.gd = zext i64 %.val1.i.i to i128
  %i.ge = mul nuw i128 %i.gc, %i.gd               ; 2 uses
  %i.gf = lshr i128 %i.ge, 64
  %i.gg = xor i128 %i.gf, %i.ge
  %i.gh = trunc i128 %i.gg to i64                 ; 2 uses
  %i.gi = call noundef i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 %i.gb) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6932
  call void @llvm.experimental.noalias.scope.decl(metadata !6934)
  call void @llvm.experimental.noalias.scope.decl(metadata !6935)
  %i.gj = lshr i64 %i.gi, 57
  %i.gk = trunc nuw nsw i64 %i.gj to i8
  %i.gl = load i64, ptr %i.da, align 8, !alias.scope !6936, !noundef !8 ; 2 uses
  %i.gm = load ptr, ptr %i.am, align 8, !alias.scope !6936, !nonnull !8, !noundef !8 ; 2 uses
  %i.gn = insertelement <16 x i8> poison, i8 %i.gk, i64 0
  %i.go = shufflevector <16 x i8> %i.gn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.noexc105
  %.sroa.011.0.i.i.i = phi i64 [ 0, %.noexc105 ], [ %i.hf, %bb.u ]
  %.pn.i.i.i = phi i64 [ %i.gi, %.noexc105 ], [ %i.hg, %bb.u ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.gl   ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.gp, align 1, !noalias !6937 ; 2 uses
  %i.gq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.go
  %i.gr = bitcast <16 x i1> %i.gq to i16
  br label %bb.r

bb.r:                                             ; preds = %.noexc106, %bb.q
  %.sroa.05.0.i.i.i = phi i16 [ %i.gr, %bb.q ], [ %i.hb, %.noexc106 ] ; 4 uses
  %.not.i.not.i.i = icmp eq i16 %.sroa.05.0.i.i.i, 0
  br i1 %.not.i.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i.i.i, i1 true)
  %i.gt = zext nneg i16 %i.gs to i64
  %i.gu = add i64 %.sroa.01.0.i.i.i, %i.gt
  %i.gv = and i64 %i.gu, %i.gl
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds [48 x i8], ptr %i.gm, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -48
  %i.gz = invoke noundef zeroext i1 @_RNvXCsc96bKABWO34_9hashbrownxINtB2_10EquivalentxE10equivalentCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gy)
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %bb.s
  %i.ha = add i16 %.sroa.05.0.i.i.i, -1
  %i.hb = and i16 %i.ha, %.sroa.05.0.i.i.i
  br i1 %i.gz, label %bb.w, label %bb.r

bb.t:                                             ; preds = %bb.r
  %i.hc = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.hd = bitcast <16 x i1> %i.hc to i16
  %i.he = icmp eq i16 %i.hd, 0
  br i1 %i.he, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hf = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.hg = add i64 %.sroa.01.0.i.i.i, %i.hf
  br label %bb.q

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6938
  store i64 %i.fu, ptr %i.z, align 8, !noalias !6938
  store i64 %i.fs, ptr %i.db, align 8, !noalias !6938
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx.i108, align 8, !noalias !6938
  store i64 0, ptr %.sroa.5.0..sroa_idx.i109, align 8, !noalias !6938
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx.i110, align 8, !noalias !6938
  store i64 0, ptr %.sroa.7.0..sroa_idx.i111, align 8, !noalias !6938
  %i.hh = invoke fastcc noundef nonnull ptr @_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTxTNtCsIdnmPPg5ba_10data_types15TimestampMinMaxINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchEEEE6insertNCINvNtBa_3map11make_hasherxBZ_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0ECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.am, i64 noundef %i.gi, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6938
  br label %bb.x

bb.w:                                             ; preds = %.noexc106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.noexc112
  %.pn.i = phi ptr [ %i.hh, %.noexc112 ], [ %i.gx, %bb.w ] ; 5 uses
  %.sroa.0.0.i107 = getelementptr inbounds i8, ptr %.pn.i, i64 -40 ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.hj = invoke { i64, i64 } @_RNvMs1j_CsIdnmPPg5ba_10data_typesNtB6_15TimestampMinMax5union(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i107, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.hk = extractvalue { i64, i64 } %i.hj, 0
  %i.hl = extractvalue { i64, i64 } %i.hj, 1
  store i64 %i.hk, ptr %.sroa.0.0.i107, align 8
  %i.hm = getelementptr inbounds i8, ptr %.pn.i, i64 -32
  store i64 %i.hl, ptr %i.hm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6173)
  %i.hn = load ptr, ptr %i.an, align 8, !nonnull !8, !noundef !8
  %i.ho = atomicrmw add ptr %i.hn, i64 1 monotonic, align 8
  %i.hp = icmp slt i64 %i.ho, 0
  br i1 %i.hp, label %bb.cq, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hq = load ptr, ptr %i.an, align 8, !nonnull !8, !noundef !8 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6939)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6940
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1184
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !6940, !nonnull !8, !noundef !8 ; 5 uses
  %i.ht = atomicrmw add ptr %i.hs, i64 1 monotonic, align 8, !noalias !6940
  %i.hu = icmp slt i64 %i.ht, 0
  br i1 %i.hu, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.hs, ptr %i.y, align 8, !noalias !6940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6940
  call void @llvm.experimental.noalias.scope.decl(metadata !6941)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 1220
  %i.hw = load i32, ptr %i.hv, align 4, !noalias !6942, !noundef !8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 1168 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !6942, !nonnull !8, !noundef !8
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !noalias !6943
  %i.ia = icmp slt i64 %i.hz, 0
  br i1 %i.ia, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hq, i64 1176
  %i.ic = load ptr, ptr %i.hx, align 8, !noalias !6942, !nonnull !8, !noundef !8
  %i.id = load i64, ptr %i.ib, align 8, !noalias !6942, !noundef !8
  %i.ie = atomicrmw add ptr %i.hq, i64 1 monotonic, align 8, !noalias !6942
  %i.if = icmp slt i64 %i.ie, 0
  br i1 %i.if, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ig = atomicrmw add ptr %i.hq, i64 1 monotonic, align 8, !noalias !6942
  %i.ih = icmp slt i64 %i.ig, 0
  br i1 %i.ih, label %bb.af, label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable
end_hunk_0
