Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.00?download=true
inline.NumInlined: 16580
inline.NumDeleted: 4810
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNCNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBc_7Catalog17new_with_shutdownINtNtCscdodAO9FK5_5alloc4sync3ArceEE000CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  store i64 3, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !15, !nonnull !15
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBc_7Catalog17new_with_shutdownINtNtCscdodAO9FK5_5alloc4sync3ArceEE00s0_0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNCNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBb_7Catalog17new_with_shutdown00s0_10___CALLSITE, align 8, !nonnull !15, !align !24, !noundef !15
  tail call void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNCNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBb_7Catalog17new_with_shutdown00s0_10___CALLSITE, align 8, !nonnull !15, !align !24, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !15, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !15
  store i64 1, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = tail call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !15, !nonnull !15
  %i.q = call noundef zeroext i1 %i.p(ptr noundef %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBc_7Catalog17new_with_shutdownINtNtCscdodAO9FK5_5alloc4sync3ArceEE00s_0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNCNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBb_7Catalog17new_with_shutdown00s_10___CALLSITE, align 8, !nonnull !15, !align !24, !noundef !15
  tail call void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 2
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBb_7Catalog17new_with_shutdown00s_10___CALLSITE, align 8, !nonnull !15, !align !24, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !15, !noundef !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !15
  store i64 3, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !15, !nonnull !15
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i8 0, 3) i8 @_RNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBb_27ProcessingEngineManagerImpl11run_trigger0s_00CsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.11336.i.i.i.i = alloca [7 x i8], align 1 ; 10 uses
  %.sroa.22.sroa.10.i.i.i.i = alloca [40 x i8], align 8 ; 11 uses
  %.sroa.3331.sroa.0.i.i.i.i = alloca [7 x i8], align 1 ; 6 uses
  %.sroa.3331.sroa.6.i.i.i.i = alloca [40 x i8], align 1 ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 11 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.3309.sroa.0.i.i.i.i = alloca [7 x i8], align 1 ; 6 uses
  %.sroa.3309.sroa.6.i.i.i.i = alloca [40 x i8], align 1 ; 6 uses
  %i.f = alloca [80 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [12 x i8], align 4                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.4272.i.i.i.i = alloca [63 x i8], align 1 ; 7 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.5251.i.i.i.i = alloca [1640 x i8], align 8 ; 6 uses
  %i.m = alloca [1680 x i8], align 8              ; 10 uses
  %i.n = alloca [16 x i8], align 1                ; 5 uses
  %.sroa.3.sroa.0.i.i.i.i = alloca [7 x i8], align 1 ; 6 uses
  %.sroa.3.sroa.6.i.i.i.i = alloca [40 x i8], align 1 ; 6 uses
  %i.o = alloca [80 x i8], align 8                ; 11 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [80 x i8], align 8                ; 14 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.02.i.i.i.i = alloca [32 x i8], align 8   ; 6 uses
  %.sroa.314.i.i.i = alloca [7 x i8], align 1     ; 6 uses
  %.sroa.919.i.i.i = alloca [40 x i8], align 8    ; 6 uses
  %.sroa.3.i.i.i = alloca [7 x i8], align 1       ; 6 uses
  %.sroa.912.i.i.i = alloca [40 x i8], align 8    ; 6 uses
  %.sroa.13.i.i.i = alloca [7 x i8], align 1      ; 7 uses
  %.sroa.18.i.i.i = alloca [40 x i8], align 8     ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 10 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [48 x i8], align 8               ; 10 uses
  %i.ad = alloca [32 x i8], align 8               ; 9 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [48 x i8], align 8               ; 10 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [48 x i8], align 8               ; 10 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %i.ap = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.877.i = alloca [7 x i8], align 1         ; 7 uses
  %.sroa.1382.i = alloca [40 x i8], align 8       ; 7 uses
  %i.aq = alloca [80 x i8], align 8               ; 16 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 6945 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !range !43, !noundef !15
  switch i8 %i.as, label %default.unreachable42 [
    i8 0, label %.thread
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.g
  ]

default.unreachable42:                            ; preds = %bb.be, %bb.az, %bb.m, %bb.g, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 6944
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6928
  store i8 0, ptr %i.at, align 16
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6896
  %2 = load <2 x ptr>, ptr %i.au, align 16
  %3 = getelementptr inbounds nuw i8, <2 x ptr> %2, <2 x i64> <i64 16, i64 0>
  store <2 x ptr> %3, ptr %.sroa.717.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6920
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 6920
  br label %.thread.i

bb.b:                                             ; preds = %bb.je, %.body
  %.pn6 = phi { ptr, i32 } [ %i.abz, %bb.je ], [ %eh.lpad-body, %.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 6928 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16645)
  call void @llvm.experimental.noalias.scope.decl(metadata !16646)
  %i.ax = load ptr, ptr %i.aw, align 16, !alias.scope !16647, !nonnull !15, !noundef !15
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !16647
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.ji

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #29
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #29
  unreachable

bb.f:                                             ; preds = %bb.k, %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %.pn30.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBJ_27ProcessingEngineManagerImpl30disable_trigger_from_scheduler0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %0) #30
          to label %bb.b unwind label %bb.ji

bb.g:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 6920
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !43, !noalias !16648
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 6920 ; 13 uses
  switch i8 %.pre, label %default.unreachable42 [
    i8 0, label %.thread.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.m
  ]

.thread.i:                                        ; preds = %.thread, %bb.g
  %i.bc = phi ptr [ %i.av, %.thread ], [ %i.bb, %bb.g ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 6896
  %i.be = load ptr, ptr %i.bd, align 16, !noalias !16648, !nonnull !15, !align !24, !noundef !15
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 6912
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 6904
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !16648, !nonnull !15, !noundef !15 ; 5 uses
  store ptr %i.bh, ptr %i.bf, align 16, !noalias !16648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !16648
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %.val.i = load ptr, ptr %i.bi, align 8, !nonnull !15, !noundef !15
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %.val37.i = load ptr, ptr %i.bk, align 8, !nonnull !15, !noundef !15
  %i.bl = getelementptr i8, ptr %i.bh, i64 120
  %.val38.i = load i64, ptr %i.bl, align 8, !noundef !15 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val37.i, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %.val35.i = load ptr, ptr %i.bn, align 8, !nonnull !15, !noundef !15
  %i.bo = getelementptr i8, ptr %i.bh, i64 104
  %.val36.i = load i64, ptr %i.bo, align 8, !noundef !15 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val35.i, i64 16 ; 2 uses
  store ptr %i.bm, ptr %0, align 16, !noalias !16648
  %.sroa.871.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val38.i, ptr %.sroa.871.0..sroa_idx.i, align 8, !noalias !16648
  %.sroa.972.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bp, ptr %.sroa.972.0..sroa_idx.i, align 16, !noalias !16648
  %.sroa.1073.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val36.i, ptr %.sroa.1073.0..sroa_idx.i, align 8, !noalias !16648
  %.sroa.1275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 6880
  store ptr %i.bj, ptr %.sroa.1275.0..sroa_idx.i, align 16, !noalias !16648
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 6888 ; 2 uses
  store i8 0, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !16648
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.877.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1382.i)
  br label %.noexc.i.i

bb.h:                                             ; preds = %bb.iy, %bb.ip, %bb.hq, %.body.i
  %i.bq = phi ptr [ %i.xk, %bb.hq ], [ %i.xk, %bb.ip ], [ %i.xk, %bb.iy ], [ %i.bw, %.body.i ] ; 2 uses
  %.pn28.i = phi { ptr, i32 } [ %i.zh, %bb.hq ], [ %.pn24.i, %bb.ip ], [ %.pn24.i, %bb.iy ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !16648
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 6912 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16649)
  call void @llvm.experimental.noalias.scope.decl(metadata !16650)
  %i.bs = load ptr, ptr %i.br, align 16, !alias.scope !16651, !noalias !16648, !nonnull !15, !noundef !15
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !16651
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.ix

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #29
          to label %.noexc10 unwind label %bb.f

.noexc10:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #29
          to label %.noexc11 unwind label %bb.f

.noexc11:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.ax, %bb.aw
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.av, %bb.l
  %i.bw = phi ptr [ %i.bb, %bb.l ], [ %i.fn, %bb.av ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %.pn19.pn.i.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.877.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1382.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog33disable_processing_engine_trigger0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %0) #30
          to label %bb.h unwind label %bb.ix

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !16648
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 6888 ; 12 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !43, !noalias !16652
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.877.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1382.i)
  switch i8 %.pre.i, label %default.unreachable42 [
    i8 0, label %..noexc.i.i_crit_edge
    i8 1, label %bb.aw
    i8 2, label %bb.ax
    i8 3, label %bb.az
  ]

..noexc.i.i_crit_edge:                            ; preds = %bb.m
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %0, i64 6880
  %.pre22 = load ptr, ptr %.phi.trans.insert21, align 16, !noalias !16652
  %.pre23 = load ptr, ptr %0, align 16, !noalias !16652
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre25 = load i64, ptr %.phi.trans.insert24, align 8, !noalias !16652
  %.phi.trans.insert26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre27 = load ptr, ptr %.phi.trans.insert26, align 16, !noalias !16652
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre29 = load i64, ptr %.phi.trans.insert28, align 8, !noalias !16652
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %..noexc.i.i_crit_edge, %.thread.i
  %i.bx = phi ptr [ %i.bc, %.thread.i ], [ %i.bb, %..noexc.i.i_crit_edge ] ; 6 uses
  %i.by = phi i64 [ %.val36.i, %.thread.i ], [ %.pre29, %..noexc.i.i_crit_edge ]
  %i.bz = phi ptr [ %i.bp, %.thread.i ], [ %.pre27, %..noexc.i.i_crit_edge ]
  %i.ca = phi i64 [ %.val38.i, %.thread.i ], [ %.pre25, %..noexc.i.i_crit_edge ]
  %i.cb = phi ptr [ %i.bm, %.thread.i ], [ %.pre23, %..noexc.i.i_crit_edge ]
  %i.cc = phi ptr [ %i.bj, %.thread.i ], [ %.pre22, %..noexc.i.i_crit_edge ] ; 2 uses
  %i.cd = phi ptr [ %.sroa.13.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %..noexc.i.i_crit_edge ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.cb, ptr %i.ce, align 16, !noalias !16652
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %i.ca, ptr %i.cf, align 8, !noalias !16652
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.bz, ptr %i.cg, align 16, !noalias !16652
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 %i.by, ptr %i.ch, align 8, !noalias !16652
  %i.ci = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !16652
  %.off.i.i = add i64 %i.ci, -3
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %bb.u, label %bb.n

bb.n:                                             ; preds = %.noexc.i.i
  %i.cj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB9_7Catalog33disable_processing_engine_trigger010___CALLSITE, i64 16) monotonic, align 8, !noalias !16652 ; 2 uses
  %i.ck = icmp ult i8 %i.cj, 3
  br i1 %i.ck, label %bb.q, label %bb.o, !prof !97

bb.o:                                             ; preds = %bb.n
  %i.cl = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB9_7Catalog33disable_processing_engine_trigger010___CALLSITE)
          to label %bb.q unwind label %bb.p, !noalias !16653

bb.p:                                             ; preds = %bb.o
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.0.i31.i.i = phi i8 [ %i.cj, %bb.n ], [ %i.cl, %bb.o ] ; 2 uses
  %i.cn = icmp eq i8 %.sroa.0.0.i31.i.i, 0
  br i1 %i.cn, label %bb.u, label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

end_hunk_0
