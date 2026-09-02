Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.13?download=true
inline.NumInlined: 1910
inline.NumDeleted: 823
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs3_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22TableIndexSnapshotPath13full_table_id:bb.a
  br label %.body

.body:                                            ; preds = %bb.u, %bb.o, %bb.j, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.ad, %bb.o ], [ %i.v, %bb.j ], [ %i.ak, %bb.u ] ; 2 uses
  %i.w = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !1755
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit

bb.k:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.y

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(128) %i.e)
          to label %bb.l unwind label %bb.j       ; 0 uses

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs92BnbMq7p8c_15influxdb3_write.exit
  %i.z = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(128) %i.e)
          to label %bb.m unwind label %bb.j       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.aa = extractvalue { ptr, i64 } %i.z, 0       ; 3 uses
  %.not63 = icmp eq ptr %i.aa, null
  br i1 %.not63, label %.invoke, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.ab = extractvalue { ptr, i64 } %i.z, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -1, ptr %i.b, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.aa, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ab, ptr %.sroa.543.0..sroa_idx, align 8
  %i.ac = invoke i64 @_RNvXsT_CsbFlE7Gjht9i_12influxdb3_idNtB5_4DbIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab)
          to label %bb.q unwind label %bb.o, !noalias !1756 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.af = trunc i64 %i.ac to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.af, label %.invoke, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.ag = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(128) %i.e)
          to label %bb.s unwind label %bb.j       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0      ; 3 uses
  %.not64 = icmp eq ptr %i.ah, null
  br i1 %.not64, label %.invoke, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -1, ptr %i.a, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ah, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ai, ptr %.sroa.559.0..sroa_idx, align 8
  %i.aj = invoke i64 @_RNvXs19_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TableIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.ai)
          to label %bb.w unwind label %bb.u, !noalias !1757 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #26
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

.invoke:                                          ; preds = %bb.w, %bb.s, %bb.q, %bb.m
  %i.am = phi ptr [ @53, %bb.q ], [ @53, %bb.m ], [ @55, %bb.s ], [ @55, %bb.w ]
  %i.an = phi i64 [ 42, %bb.q ], [ 42, %bb.m ], [ 45, %bb.s ], [ 45, %bb.w ]
  %i.ao = phi ptr [ @54, %bb.q ], [ @54, %bb.m ], [ @56, %bb.s ], [ @56, %bb.w ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao) #25
          to label %.cont unwind label %bb.j

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.ap = trunc i64 %i.aj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ap, label %.invoke, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  %.sroa.5.0.extract.shift.i83 = lshr i64 %i.aj, 32
  %.sroa.5.0.extract.trunc.i84 = trunc nuw i64 %.sroa.5.0.extract.shift.i83 to i32
  %.sroa.5.0.extract.shift.i = lshr i64 %i.ac, 32
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32
  store ptr %i.p, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.extract.trunc.i, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.5.0.extract.trunc.i84, ptr %i.as, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.y:                                             ; preds = %bb.k, %bb.d
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %.body, %bb.k, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %eh.lpad-body, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22TableIndexSnapshotPath20all_snapshots_prefix(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @57, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs3_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22TableIndexSnapshotPath21parse_sequence_number(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %1, ptr %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx, align 8
  %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx, align 8
  %.sroa.516.sroa.6.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %1, ptr %.sroa.516.sroa.6.0..sroa.516.0..sroa_idx.sroa_idx, align 8
  %.sroa.516.sroa.7.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 47, ptr %.sroa.516.sroa.7.0..sroa.516.0..sroa_idx.sroa_idx, align 8
  %.sroa.516.sroa.8.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 47, ptr %.sroa.516.sroa.8.0..sroa.516.0..sroa_idx.sroa_idx, align 4
  %.sroa.516.sroa.9.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 1, ptr %.sroa.516.sroa.9.0..sroa.516.0..sroa_idx.sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 1, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.b = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE9next_backCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(72) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %spec.select = select i1 %.not, i64 %1, i64 %i.d ; 3 uses
  %spec.select18 = select i1 %.not, ptr %0, ptr %i.c ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp samesign ult i64 %spec.select, 10
  br i1 %.not.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.a
  %i.e = getelementptr i8, ptr %spec.select18, i64 %spec.select
  %i.f = getelementptr i8, ptr %i.e, i64 -10      ; 2 uses
  %i.g = load i64, ptr %i.f, align 1
  %i.h = xor i64 8316510717887801646, %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i64
  %i.l = xor i64 28271, %i.k
  %i.m = or i64 %i.h, %i.l
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit
  %i.q = add nsw i64 %spec.select, -10            ; 3 uses
  switch i64 %i.q, label %thread-pre-split.i [
    i64 0, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = load i8, ptr %spec.select18, align 1, !alias.scope !1761, !noalias !1762, !noundef !4 ; 2 uses
  switch i8 %i.r, label %bb.d [
    i8 43, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit
    i8 45, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit
  ]

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.i = load i8, ptr %spec.select18, align 1, !alias.scope !1761, !noalias !1762
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i, %bb.c
  %i.s = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.r, %bb.c ]
  %cond.i = icmp eq i8 %i.s, 43                   ; 2 uses
  %i.t = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.q, %i.t          ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i19 = getelementptr inbounds nuw i8, ptr %spec.select18, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.u = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.u, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.d
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i44, i64 1
  %i.w = add nsw i64 %.sroa.15.1.i43, -1          ; 2 uses
  %.not52.i = icmp eq i64 %i.w, 0
  br i1 %.not52.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.d, %.preheader56.i
  %.sroa.0.1.i44 = phi ptr [ %i.v, %.preheader56.i ], [ %.sroa.0.0.i19, %bb.d ] ; 2 uses
  %.sroa.15.1.i43 = phi i64 [ %i.w, %.preheader56.i ], [ %.sroa.15.0.i, %bb.d ]
  %.sroa.042.0.i42 = phi i64 [ %i.af, %.preheader56.i ], [ 0, %bb.d ]
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i42, i64 10) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %.preheader56.i.preheader
  %i.z = extractvalue { i64, i1 } %i.x, 0         ; 2 uses
  %i.aa = load i8, ptr %.sroa.0.1.i44, align 1, !alias.scope !1761, !noalias !1762, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 9
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = add i64 %i.z, %i.ae                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.z
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ag, !prof !82
  br i1 %or.cond, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.preheader56.i, !prof !82

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.sroa.0.269.i = phi ptr [ %i.an, %bb.f ], [ %.sroa.0.0.i19, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.am, %bb.f ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ap, %bb.f ], [ 0, %.preheader.i ]
  %i.ah = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !1761, !noalias !1762, !noundef !4
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 10
  br i1 %i.ak, label %bb.f, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.al = mul i64 %.sroa.042.267.i, 10
  %i.am = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ao = zext nneg i32 %i.aj to i64
  %i.ap = add i64 %i.al, %i.ao                    ; 2 uses
  %.not53.i = icmp eq i64 %i.am, 0
  br i1 %.not53.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit: ; preds = %.preheader56.i.preheader, %.preheader56.i, %bb.e, %bb.f, %.lr.ph.i, %bb.a, %.preheader.i, %bb.c, %bb.c, %bb.b, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit
  %.sroa.3.0 = phi i64 [ undef, %bb.c ], [ undef, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %.lr.ph.i ], [ undef, %bb.a ], [ 0, %.preheader.i ], [ %i.ap, %bb.f ], [ undef, %.preheader56.i.preheader ], [ undef, %bb.e ], [ %i.af, %.preheader56.i ]
  %.sroa.07.0 = phi i64 [ 0, %bb.c ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit ], [ %i.q, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph.i ], [ 0, %bb.a ], [ 1, %.preheader.i ], [ 1, %bb.f ], [ 0, %.preheader56.i.preheader ], [ 0, %bb.e ], [ 1, %.preheader56.i ]
  %i.aq = insertvalue { i64, i64 } poison, i64 %.sroa.07.0, 0
  %i.ar = insertvalue { i64, i64 } %i.aq, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.ar
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22TableIndexSnapshotPath3dir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @58, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22TableIndexSnapshotPath3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  %i.e = alloca [4 x i8], align 4                 ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %2, ptr %i.g, align 8
  store i32 %3, ptr %i.e, align 4
  store i32 %4, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %5, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.i, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.j, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @60, ptr %i.k, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @61, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22TableIndexSnapshotPath6prefix(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %i.f, align 8
  store i32 %3, ptr %i.d, align 4
  store i32 %4, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.h, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @62, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22TableIndexSnapshotPath9from_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs6_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22TableIndexSnapshotPathINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtNtCs1LivM9IBWqb_12object_store4path4PathE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCsNvMnW5W7mE_5regex5regex6stringNtB5_5Regex11captures_at(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMNtNtCs9DNYK9h44DL_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs92BnbMq7p8c_15influxdb3_write.exit:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 15 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %3, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx17, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %3, ptr %.sroa.9.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvMs7_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_14TableIndexPath13full_table_id:bb.a
  store i64 -1, ptr %i.a, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ah, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ai, ptr %.sroa.559.0..sroa_idx, align 8
  %i.aj = invoke i64 @_RNvXs19_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TableIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.ai)
          to label %bb.w unwind label %bb.u, !noalias !1792 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #26
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

.invoke:                                          ; preds = %bb.w, %bb.s, %bb.q, %bb.m
  %i.am = phi ptr [ @53, %bb.q ], [ @53, %bb.m ], [ @55, %bb.s ], [ @55, %bb.w ]
  %i.an = phi i64 [ 42, %bb.q ], [ 42, %bb.m ], [ 45, %bb.s ], [ 45, %bb.w ]
  %i.ao = phi ptr [ @65, %bb.q ], [ @65, %bb.m ], [ @66, %bb.s ], [ @66, %bb.w ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao) #25
          to label %.cont unwind label %bb.j

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.ap = trunc i64 %i.aj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ap, label %.invoke, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  %.sroa.5.0.extract.shift.i83 = lshr i64 %i.aj, 32
  %.sroa.5.0.extract.trunc.i84 = trunc nuw i64 %.sroa.5.0.extract.shift.i83 to i32
  %.sroa.5.0.extract.shift.i = lshr i64 %i.ac, 32
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32
  store ptr %i.p, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.extract.trunc.i, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.5.0.extract.trunc.i84, ptr %i.as, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.y:                                             ; preds = %bb.k, %bb.d
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %.body, %bb.k, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %eh.lpad-body, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_14TableIndexPath21all_db_indices_prefix(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @67, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_14TableIndexPath3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %i.f, align 8
  store i32 %3, ptr %i.d, align 4
  store i32 %4, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.h, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @60, ptr %i.i, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @68, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_14TableIndexPath9db_prefix(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8
  store i32 %3, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsS_CsbFlE7Gjht9i_12influxdb3_idNtB5_4DbIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @69, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_14TableIndexPath9from_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsa_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_14TableIndexPathINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtNtCs1LivM9IBWqb_12object_store4path4PathE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMsb_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_20SnapshotInfoFilePath21parse_sequence_number(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %1, ptr %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %1, ptr %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  %.sroa.518.sroa.7.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 47, ptr %.sroa.518.sroa.7.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  %.sroa.518.sroa.8.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 47, ptr %.sroa.518.sroa.8.0..sroa.518.0..sroa_idx.sroa_idx, align 4
  %.sroa.518.sroa.9.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 1, ptr %.sroa.518.sroa.9.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 1, ptr %.sroa.619.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.b = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE9next_backCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(72) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %spec.select = select i1 %.not, i64 %1, i64 %i.d ; 3 uses
  %spec.select20 = select i1 %.not, ptr %0, ptr %i.c ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp samesign ult i64 %spec.select, 10
  br i1 %.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.a
  %i.e = getelementptr i8, ptr %spec.select20, i64 %spec.select
  %i.f = getelementptr i8, ptr %i.e, i64 -10      ; 2 uses
  %i.g = load i64, ptr %i.f, align 1
  %i.h = xor i64 8316510717887801646, %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i64
  %i.l = xor i64 28271, %i.k
  %i.m = or i64 %i.h, %i.l
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit
  %i.q = add nsw i64 %spec.select, -10            ; 3 uses
  switch i64 %i.q, label %thread-pre-split.i [
    i64 0, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = load i8, ptr %spec.select20, align 1, !alias.scope !1796, !noalias !1797, !noundef !4 ; 2 uses
  switch i8 %i.r, label %bb.d [
    i8 43, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread
    i8 45, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.i = load i8, ptr %spec.select20, align 1, !alias.scope !1796, !noalias !1797
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i, %bb.c
  %i.s = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.r, %bb.c ]
  %cond.i = icmp eq i8 %i.s, 43                   ; 2 uses
  %i.t = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.q, %i.t          ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i21 = getelementptr inbounds nuw i8, ptr %spec.select20, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.u = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.u, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.d
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i46, i64 1
  %i.w = add nsw i64 %.sroa.15.1.i45, -1          ; 2 uses
  %.not52.i = icmp eq i64 %i.w, 0
  br i1 %.not52.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.d, %.preheader56.i
  %.sroa.0.1.i46 = phi ptr [ %i.v, %.preheader56.i ], [ %.sroa.0.0.i21, %bb.d ] ; 2 uses
  %.sroa.15.1.i45 = phi i64 [ %i.w, %.preheader56.i ], [ %.sroa.15.0.i, %bb.d ]
  %.sroa.042.0.i44 = phi i64 [ %i.af, %.preheader56.i ], [ 0, %bb.d ]
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i44, i64 10) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread, label %bb.e, !prof !7

bb.e:                                             ; preds = %.preheader56.i.preheader
  %i.z = extractvalue { i64, i1 } %i.x, 0         ; 2 uses
  %i.aa = load i8, ptr %.sroa.0.1.i46, align 1, !alias.scope !1796, !noalias !1797, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 9
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = add i64 %i.z, %i.ae                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.z
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ag, !prof !82
  br i1 %or.cond, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread, label %.preheader56.i, !prof !82

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.sroa.0.269.i = phi ptr [ %i.an, %bb.f ], [ %.sroa.0.0.i21, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.am, %bb.f ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ap, %bb.f ], [ 0, %.preheader.i ]
  %i.ah = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !1796, !noalias !1797, !noundef !4
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 10
  br i1 %i.ak, label %bb.f, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread

bb.f:                                             ; preds = %.lr.ph.i
  %i.al = mul i64 %.sroa.042.267.i, 10
  %i.am = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ao = zext nneg i32 %i.aj to i64
  %i.ap = add i64 %i.al, %i.ao                    ; 2 uses
  %.not53.i = icmp eq i64 %i.am, 0
  br i1 %.not53.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.f, %.preheader.i
  %.sroa.1124.0 = phi i64 [ %i.ap, %bb.f ], [ 0, %.preheader.i ], [ %i.af, %.preheader56.i ]
  %i.aq = xor i64 %.sroa.1124.0, -1
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread: ; preds = %.preheader56.i.preheader, %bb.e, %.lr.ph.i, %bb.a, %bb.c, %bb.c, %bb.b, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit, %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit
  %.sroa.3.0 = phi i64 [ %i.aq, %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit ], [ undef, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit ], [ undef, %bb.c ], [ undef, %bb.b ], [ undef, %.lr.ph.i ], [ undef, %bb.a ], [ undef, %bb.c ], [ undef, %bb.e ], [ undef, %.preheader56.i.preheader ]
  %.sroa.07.0 = phi i64 [ 1, %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit ], [ 0, %bb.c ], [ %i.q, %bb.b ], [ 0, %.lr.ph.i ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %.preheader56.i.preheader ]
  %i.ar = insertvalue { i64, i64 } poison, i64 %.sroa.07.0, 0
  %i.as = insertvalue { i64, i64 } %i.ar, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.as
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_20SnapshotInfoFilePath3dir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @71, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_20SnapshotInfoFilePath3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = xor i64 %3, -1
  store i64 %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @60, ptr %i.h, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_20SnapshotInfoFilePath8obj_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_20SnapshotInfoFilePath9from_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXse_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_20SnapshotInfoFilePathINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtNtCs1LivM9IBWqb_12object_store4path4PathE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define range(i48 0, 1099511627776) i48 @_RNvMsf_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22SnapshotCheckpointPath16parse_year_month(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [72 x i8], align 8                ; 11 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs92BnbMq7p8c_15influxdb3_write5paths30SNAPSHOT_CHECKPOINT_PATH_REGEX, i64 32) acquire, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsNvMnW5W7mE_5regex5regex6string5RegexE5force0ECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs92BnbMq7p8c_15influxdb3_write5paths30SNAPSHOT_CHECKPOINT_PATH_REGEX, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs92BnbMq7p8c_15influxdb3_write5paths30SNAPSHOT_CHECKPOINT_PATH_REGEX, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsNvMnW5W7mE_5regex5regex6string5RegexE5force0ECs92BnbMq7p8c_15influxdb3_write.exit

_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsNvMnW5W7mE_5regex5regex6string5RegexE5force0ECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.a, %bb.b
  %i.i = call { ptr, ptr } @_RNvXs3_NtNtCs9DNYK9h44DL_14regex_automata4meta5regexNtB5_5RegexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @_RNvNtCs92BnbMq7p8c_15influxdb3_write5paths30SNAPSHOT_CHECKPOINT_PATH_REGEX) ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs92BnbMq7p8c_15influxdb3_write5paths30SNAPSHOT_CHECKPOINT_PATH_REGEX, i64 16), align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs92BnbMq7p8c_15influxdb3_write5paths30SNAPSHOT_CHECKPOINT_PATH_REGEX, i64 24), align 8, !noundef !4
  %i.l = atomicrmw add ptr %i.j, i64 1 monotonic, align 8
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsNvMnW5W7mE_5regex5regex6string5RegexE5force0ECs92BnbMq7p8c_15influxdb3_write.exit
  %i.n = extractvalue { ptr, ptr } %i.i, 1
  %i.o = extractvalue { ptr, ptr } %i.i, 0
  store ptr %i.o, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.j, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.k, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvMs4_NtNtCsNvMnW5W7mE_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsNvMnW5W7mE_5regex5regex6string5RegexE5force0ECs92BnbMq7p8c_15influxdb3_write.exit
end_hunk_1
begin_hunk_2_@_RNvMsf_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22SnapshotCheckpointPath16parse_year_month:bb.a

bb.o:                                             ; preds = %bb.y
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9DNYK9h44DL_14regex_automata4util8captures8CapturesECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(40) %i.u)
          to label %.body unwind label %bb.aa

bb.p:                                             ; preds = %bb.n
  %i.bd = add i64 %i.ay, -1                       ; 7 uses
  %i.be = add i64 %i.bb, -1                       ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !1805, !nonnull !4, !noundef !4 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !1805, !noundef !4 ; 5 uses
  %.not.i11.i = icmp ugt i64 %i.bd, %i.be
  br i1 %.not.i11.i, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = icmp eq i64 %i.bd, 0
  br i1 %i.bj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not5.i.i = icmp ult i64 %i.bd, %i.bi
  br i1 %.not5.i.i, label %bb.t, label %.split.i.i

bb.s:                                             ; preds = %bb.t, %.split.i.i, %bb.q
  %i.bk = icmp eq i64 %i.be, 0
  br i1 %i.bk, label %bb.x, label %bb.u

.split.i.i:                                       ; preds = %bb.r
  %i.bl = icmp eq i64 %i.bd, %i.bi
  br i1 %i.bl, label %bb.s, label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !1810, !noalias !1805, !noundef !4
  %i.bo = icmp sgt i8 %i.bn, -65
  br i1 %i.bo, label %bb.s, label %bb.y

bb.u:                                             ; preds = %bb.s
  %.not6.i.i = icmp ult i64 %i.be, %i.bi
  br i1 %.not6.i.i, label %bb.v, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.u
  %i.bp = icmp eq i64 %i.be, %i.bi
  br i1 %i.bp, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !1810, !noalias !1805, !noundef !4
  %i.bs = icmp sgt i8 %i.br, -65
  br i1 %i.bs, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.x, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.g
  %.sroa.4.0.i = phi i64 [ %i.bt, %bb.x ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.g ], [ undef, %bb.i ], [ undef, %bb.m ], [ undef, %bb.n ]
  %.sroa.0.0.i = phi ptr [ %i.bu, %bb.x ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.m ], [ null, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9DNYK9h44DL_14regex_automata4util8captures8CapturesECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(40) %i.u)
          to label %bb.ac unwind label %bb.e

bb.x:                                             ; preds = %bb.v, %.split7.i.i, %bb.s
  %i.bt = sub nuw i64 %i.bb, %i.ay
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  br label %bb.w

bb.y:                                             ; preds = %bb.v, %.split7.i.i, %bb.t, %.split.i.i, %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i64 noundef %i.bd, i64 noundef %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #25
          to label %bb.z unwind label %bb.o, !noalias !1805

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ab:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not9 = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not9, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs7_Cs92BnbMq7p8c_15influxdb3_writeNtB5_9YearMonthNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.4.0.i)
          to label %bb.af unwind label %bb.e

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtBZ_14YearMonthErrorEEBZ_.exit
  %.sroa.5.0 = phi i8 [ %.sroa.5.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtBZ_14YearMonthErrorEEBZ_.exit ], [ undef, %bb.ac ], [ undef, %bb.ab ]
  %.sroa.4.0 = phi i16 [ %.sroa.4.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtBZ_14YearMonthErrorEEBZ_.exit ], [ undef, %bb.ac ], [ undef, %bb.ab ]
  %.sroa.0.0 = phi i16 [ %.sroa.0.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtBZ_14YearMonthErrorEEBZ_.exit ], [ 0, %bb.ac ], [ 0, %bb.ab ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsNvMnW5W7mE_5regex5regex6string5RegexECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.5.0.insert.ext = zext i8 %.sroa.5.0 to i48
  %.sroa.5.0.insert.shift = shl nuw nsw i48 %.sroa.5.0.insert.ext, 32
  %.sroa.4.0.insert.ext = zext i16 %.sroa.4.0 to i48
  %.sroa.4.0.insert.shift = shl nuw nsw i48 %.sroa.4.0.insert.ext, 16
  %.sroa.4.0.insert.insert = or disjoint i48 %.sroa.4.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert

bb.af:                                            ; preds = %bb.ad
  %i.bw = load i64, ptr %i.c, align 8, !range !18, !noundef !4 ; 2 uses
  %.not10 = icmp eq i64 %i.bw, -2                 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.by = load i16, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.ca = load i8, ptr %i.bz, align 2
  %.sroa.5.1 = select i1 %.not10, i8 %i.ca, i8 undef
  %.sroa.4.1 = select i1 %.not10, i16 %i.by, i16 undef
  %.sroa.0.1 = zext i1 %.not10 to i16
  %i.cb = icmp ugt i64 %i.bw, -3
  br i1 %i.cb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtBZ_14YearMonthErrorEEBZ_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtBZ_14YearMonthErrorEEBZ_.exit unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtBZ_14YearMonthErrorEEBZ_.exit: ; preds = %bb.af, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ae

bb.aj:                                            ; preds = %.body
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ak:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMsf_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22SnapshotCheckpointPath21parse_sequence_number(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %1, ptr %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %1, ptr %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  %.sroa.518.sroa.7.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 47, ptr %.sroa.518.sroa.7.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  %.sroa.518.sroa.8.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 47, ptr %.sroa.518.sroa.8.0..sroa.518.0..sroa_idx.sroa_idx, align 4
  %.sroa.518.sroa.9.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 1, ptr %.sroa.518.sroa.9.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 1, ptr %.sroa.619.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.b = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE9next_backCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(72) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %spec.select = select i1 %.not, i64 %1, i64 %i.d ; 3 uses
  %spec.select20 = select i1 %.not, ptr %0, ptr %i.c ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp samesign ult i64 %spec.select, 16
  br i1 %.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.a
  %i.e = getelementptr i8, ptr %spec.select20, i64 %spec.select
  %i.f = getelementptr i8, ptr %i.e, i64 -16
  %i.g = load i128, ptr %i.f, align 1
  %i.h = icmp ne i128 146793765377304825592412650329269101358, %i.g
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit
  %i.k = add nsw i64 %spec.select, -16            ; 3 uses
  switch i64 %i.k, label %thread-pre-split.i [
    i64 0, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %spec.select20, align 1, !alias.scope !1814, !noalias !1815, !noundef !4 ; 2 uses
  switch i8 %i.l, label %bb.d [
    i8 43, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread
    i8 45, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.i = load i8, ptr %spec.select20, align 1, !alias.scope !1814, !noalias !1815
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i, %bb.c
  %i.m = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.l, %bb.c ]
  %cond.i = icmp eq i8 %i.m, 43                   ; 2 uses
  %i.n = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.k, %i.n          ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i21 = getelementptr inbounds nuw i8, ptr %spec.select20, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.o = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.o, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.d
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i46, i64 1
  %i.q = add nsw i64 %.sroa.15.1.i45, -1          ; 2 uses
  %.not52.i = icmp eq i64 %i.q, 0
  br i1 %.not52.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.d, %.preheader56.i
  %.sroa.0.1.i46 = phi ptr [ %i.p, %.preheader56.i ], [ %.sroa.0.0.i21, %bb.d ] ; 2 uses
  %.sroa.15.1.i45 = phi i64 [ %i.q, %.preheader56.i ], [ %.sroa.15.0.i, %bb.d ]
  %.sroa.042.0.i44 = phi i64 [ %i.z, %.preheader56.i ], [ 0, %bb.d ]
  %i.r = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i44, i64 10) ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread, label %bb.e, !prof !7

bb.e:                                             ; preds = %.preheader56.i.preheader
  %i.t = extractvalue { i64, i1 } %i.r, 0         ; 2 uses
  %i.u = load i8, ptr %.sroa.0.1.i46, align 1, !alias.scope !1814, !noalias !1815, !noundef !4
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %i.x = icmp ugt i32 %i.w, 9
  %i.y = zext nneg i32 %i.w to i64
  %i.z = add i64 %i.t, %i.y                       ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.t
  %or.cond = select i1 %i.x, i1 true, i1 %i.aa, !prof !82
  br i1 %or.cond, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread, label %.preheader56.i, !prof !82

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.sroa.0.269.i = phi ptr [ %i.ah, %bb.f ], [ %.sroa.0.0.i21, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.ag, %bb.f ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.aj, %bb.f ], [ 0, %.preheader.i ]
  %i.ab = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !1814, !noalias !1815, !noundef !4
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48                  ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.f, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread

bb.f:                                             ; preds = %.lr.ph.i
  %i.af = mul i64 %.sroa.042.267.i, 10
  %i.ag = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ai = zext nneg i32 %i.ad to i64
  %i.aj = add i64 %i.af, %i.ai                    ; 2 uses
  %.not53.i = icmp eq i64 %i.ag, 0
  br i1 %.not53.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.f, %.preheader.i
  %.sroa.1124.0 = phi i64 [ %i.aj, %bb.f ], [ 0, %.preheader.i ], [ %i.z, %.preheader56.i ]
  %i.ak = xor i64 %.sroa.1124.0, -1
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit.thread: ; preds = %.preheader56.i.preheader, %bb.e, %.lr.ph.i, %bb.a, %bb.c, %bb.c, %bb.b, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit, %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit
  %.sroa.3.0 = phi i64 [ %i.ak, %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit ], [ undef, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit ], [ undef, %bb.c ], [ undef, %bb.b ], [ undef, %.lr.ph.i ], [ undef, %bb.a ], [ undef, %bb.c ], [ undef, %bb.e ], [ undef, %.preheader56.i.preheader ]
  %.sroa.07.0 = phi i64 [ 1, %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs92BnbMq7p8c_15influxdb3_write.exit ], [ 0, %bb.c ], [ %i.k, %bb.b ], [ 0, %.lr.ph.i ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %.preheader56.i.preheader ]
  %i.al = insertvalue { i64, i64 } poison, i64 %.sroa.07.0, 0
  %i.am = insertvalue { i64, i64 } %i.al, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.am
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsf_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22SnapshotCheckpointPath3dir(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @73, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsf_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22SnapshotCheckpointPath3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %i.f, align 8
  store ptr %3, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = xor i64 %4, -1
  store i64 %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtB6_7Display3fmtBy_, ptr %.sroa.46.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.i, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @75, ptr %i.j, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @76, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsf_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22SnapshotCheckpointPath9from_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsi_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22SnapshotCheckpointPathINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtNtCs1LivM9IBWqb_12object_store4path4PathE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsf_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22SnapshotCheckpointPath9month_dir(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtB6_7Display3fmtBy_, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @77, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs92BnbMq7p8c_15influxdb3_write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !9, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1 = load i64, ptr %i.f, align 8, !noundef !4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.g = load i64, ptr %0, align 8, !range !5, !alias.scope !1830, !noalias !1829, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
end_hunk_2
