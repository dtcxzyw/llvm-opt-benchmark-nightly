Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.14?download=true
inline.NumInlined: 6181
inline.NumDeleted: 2555
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCINvMs4_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component8instanceINtB8_11InstancePreNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplE12__instantiateQINtNtNtBc_5store7context15StoreContextMutB1l_EE0Cs43kcu4yvms7_24influxdb3_query_executor:bb.a

.noexc54.i.i.i:                                   ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %bb.cz, %bb.cy
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.ck:                                            ; preds = %bb.cg, %bb.cc
  %i.ma = phi ptr [ %i.cu, %bb.cc ], [ %i.lf, %bb.cg ] ; 3 uses
  %i.mb = phi ptr [ %i.ct, %bb.cc ], [ %i.lg, %bb.cg ] ; 3 uses
  %i.mc = phi ptr [ %.phi.trans.insert221.i, %bb.cc ], [ %i.lh, %bb.cg ] ; 3 uses
  %i.md = phi ptr [ %i.ij, %bb.cc ], [ %i.li, %bb.cg ] ; 3 uses
  %i.me = phi ptr [ %.phi.trans.insert.i.i, %bb.cc ], [ %i.lj, %bb.cg ] ; 3 uses
  %i.mf = phi ptr [ %i.jv, %bb.cc ], [ %i.lk, %bb.cg ] ; 3 uses
  %i.mg = phi ptr [ %.phi.trans.insert.i.i.i, %bb.cc ], [ %i.lm, %bb.cg ] ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 3 uses
  %i.mi = load i8, ptr %i.mh, align 8, !range !51, !noalias !8728, !noundef !16
  switch i8 %i.mi, label %default.unreachable132 [
    i8 0, label %bb.cl
    i8 1, label %bb.cy
    i8 2, label %bb.cz
    i8 3, label %bb.db
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 2 uses
  %i.ml = load ptr, ptr %i.mj, align 8, !noalias !8728, !nonnull !16, !align !17, !noundef !16 ; 3 uses
  store ptr %i.ml, ptr %i.mk, align 8, !noalias !8728
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.mn = load ptr, ptr %i.mm, align 8, !noalias !8728, !align !17, !noundef !16
  %i.mo = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !8728 ; 2 uses
  %i.mp = icmp ult i64 %i.mo, 6
  call void @llvm.assume(i1 %i.mp)
  %i.mq = icmp samesign ugt i64 %i.mo, 4
  br i1 %i.mq, label %bb.cn, label %bb.cp

bb.cm:                                            ; preds = %bb.cn
  %i.mr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !8728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !8728
  br label %.body.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !8728
  %i.ms = getelementptr i8, ptr %i.ml, i64 208
  %.val24.i.i.i.i.i = load i64, ptr %i.ms, align 8, !range !21, !noalias !8729, !noundef !16
  store i64 %.val24.i.i.i.i.i, ptr %i.as, align 8, !noalias !8728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !8728
  store ptr %i.as, ptr %i.ar, align 8, !noalias !8728
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXsj_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store4dataNtB5_7StoreIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !8728
  store ptr @283, ptr %i.aq, align 8, !noalias !8728
  %i.mt = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 24, ptr %i.mt, align 8, !noalias !8728
  %i.mu = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr @283, ptr %i.mu, align 8, !noalias !8728
  %i.mv = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 24, ptr %i.mv, align 8, !noalias !8728
  %i.mw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr @282, ptr %i.mw, align 8, !noalias !8728
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull @281, ptr noundef nonnull %i.ar, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aq)
          to label %bb.co unwind label %bb.cm, !noalias !8729

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !8728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !8728
  %.pre.i.i.i.i.i = load ptr, ptr %i.mk, align 8, !noalias !8728
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cl
  %i.mx = phi ptr [ %.pre.i.i.i.i.i, %bb.co ], [ %i.ml, %bb.cl ] ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 352
  %.val23.i.i.i.i.i = load i64, ptr %i.my, align 8, !range !24, !noalias !8729, !noundef !16
  %.not.i.i.i.i.i.i = icmp eq i64 %.val23.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.cs, label %bb.cq, !prof !22

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @284, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #33
          to label %bb.cr unwind label %bb.da, !noalias !8729

bb.cr:                                            ; preds = %bb.cw, %bb.ct, %bb.cq
  unreachable

bb.cs:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !8728
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 520
  %.val25.i.i.i.i.i = load i64, ptr %i.mz, align 8, !range !21, !noalias !8729, !noundef !16 ; 2 uses
  %i.na = inttoptr i64 %.val25.i.i.i.i.i to ptr
  store ptr %i.na, ptr %i.ap, align 8, !noalias !8728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !8728
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !noalias !8728
  %i.nb = icmp eq i64 %.val25.i.i.i.i.i, 1
  br i1 %i.nb, label %bb.cv, label %bb.ct, !prof !22

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedINtNtNtB4_3ptr8non_null7NonNullhEBM_ECs43kcu4yvms7_24influxdb3_query_executor(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @286) #33
          to label %bb.cr unwind label %bb.cu, !noalias !8729

bb.cu:                                            ; preds = %bb.ct
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8728
  br label %.body.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !8728
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 528
  %i.ne = load atomic i64, ptr %i.nd monotonic, align 8, !noalias !8729 ; 2 uses
  store i64 %i.ne, ptr %i.an, align 8, !noalias !8728
  %i.nf = icmp eq i64 %i.ne, 0
  br i1 %i.nf, label %.thread.i.i.i.i.i, label %bb.cw, !prof !22

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @166, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #33
          to label %bb.cr unwind label %bb.cx, !noalias !8729

bb.cx:                                            ; preds = %bb.cw
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8728
  br label %.body.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8728
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 640
  store ptr %i.mx, ptr %i.nh, align 8, !noalias !8728
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 648
  store ptr %i.mn, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8728
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 656
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8728
  br label %bb.dd

.body.i.i.i.i.i:                                  ; preds = %bb.dc, %bb.da, %bb.cx, %bb.cu, %bb.cm
  %.pn16.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.mr, %bb.cm ], [ %i.ng, %bb.cx ], [ %i.nc, %bb.cu ], [ %i.nj, %bb.dc ], [ %i.ni, %bb.da ]
  store i8 2, ptr %i.mh, align 8, !noalias !8728
  br label %.body.i.i.i.i

bb.cy:                                            ; preds = %bb.ck
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #33
          to label %.noexc14.i.i.i.i unwind label %bb.cj, !noalias !8729

.noexc14.i.i.i.i:                                 ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.ck
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #33
          to label %.noexc15.i.i.i.i unwind label %bb.cj, !noalias !8729

.noexc15.i.i.i.i:                                 ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.df, %bb.de, %bb.cq
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.db:                                            ; preds = %bb.ck
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.pre22.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !range !54, !noalias !8730
  switch i8 %.pre22.i.i.i.i.i, label %default.unreachable132 [
    i8 0, label %bb.dd
    i8 1, label %bb.de
    i8 2, label %bb.df
  ]

bb.dc:                                            ; preds = %bb.dd
  %i.nj = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.nk, align 8, !noalias !8730
  br label %.body.i.i.i.i.i

bb.dd:                                            ; preds = %bb.db, %.thread.i.i.i.i.i
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.nl = invoke noundef nonnull ptr @_RINvMNtCsaIKnL9StOw_6anyhow5errorNtB5_5Error3msgReECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly captures(address, read_provenance) @295, i64 noundef 73)
          to label %3 unwind label %bb.dc, !noalias !8729

bb.de:                                            ; preds = %bb.db
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #33
          to label %.noexc.i.i.i.i.i unwind label %bb.da, !noalias !8729

.noexc.i.i.i.i.i:                                 ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.db
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #33
          to label %.noexc28.i.i.i.i.i unwind label %bb.da, !noalias !8729

.noexc28.i.i.i.i.i:                               ; preds = %bb.df
  unreachable

.critedge.i.i.i:                                  ; preds = %bb.cd
  store i8 1, ptr %i.lm, align 8, !noalias !8728
  %.phi.trans.insert171.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 480
  %.pre172.i.i.i = load ptr, ptr %.phi.trans.insert171.i.i.i, align 8, !noalias !8728 ; 2 uses
  %.val.pre.i.i.i = load ptr, ptr %.pre172.i.i.i, align 8, !noalias !8729
  br label %bb.dg

bb.dg:                                            ; preds = %.critedge.i.i.i, %bb.bz
  %i.nm = phi ptr [ %i.lf, %.critedge.i.i.i ], [ %i.jw, %bb.bz ] ; 3 uses
  %i.nn = phi ptr [ %i.lg, %.critedge.i.i.i ], [ %i.jx, %bb.bz ] ; 3 uses
  %i.no = phi ptr [ %i.lh, %.critedge.i.i.i ], [ %i.jy, %bb.bz ] ; 3 uses
  %i.np = phi ptr [ %i.li, %.critedge.i.i.i ], [ %i.jz, %bb.bz ] ; 3 uses
  %i.nq = phi ptr [ %i.lj, %.critedge.i.i.i ], [ %i.kd, %bb.bz ] ; 3 uses
  %i.nr = phi ptr [ %i.lk, %.critedge.i.i.i ], [ %i.ke, %bb.bz ] ; 3 uses
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %.critedge.i.i.i ], [ %.val44.i.i.i, %bb.bz ]
  %i.ns = phi ptr [ %.pre172.i.i.i, %.critedge.i.i.i ], [ %i.kr, %bb.bz ]
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.nu = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 488
  store ptr %i.nu, ptr %i.nv, align 8, !noalias !8728
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !noalias !8728, !nonnull !16, !align !17, !noundef !16
  %i.ny = invoke { i64, ptr } @_RNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtB5_11StoreOpaque15register_module(ptr noundef nonnull align 8 %i.nx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ns)
          to label %bb.dh unwind label %bb.dl, !noalias !8729 ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %i.nz = extractvalue { i64, ptr } %i.ny, 0
  %i.oa = extractvalue { i64, ptr } %i.ny, 1
  %i.ob = ptrtoint ptr %i.oa to i64               ; 2 uses
  %i.oc = trunc nuw i64 %i.nz to i1
  br i1 %i.oc, label %bb.me, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9115.i.i.i)
  %i.od = load ptr, ptr %i.nw, align 8, !noalias !8728, !nonnull !16, !align !17, !noundef !16 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.val48.i.i.i = load ptr, ptr %i.oe, align 8, !noalias !8728, !align !17, !noundef !16 ; 2 uses
  %i.of = load ptr, ptr %i.nt, align 8, !noalias !8728, !nonnull !16, !align !17, !noundef !16
  %.val50.i.i.i = load ptr, ptr %i.of, align 8, !noalias !8729, !nonnull !16, !noundef !16 ; 2 uses
  %i.og = atomicrmw add ptr %.val50.i.i.i, i64 1 monotonic, align 8, !noalias !8729
  %i.oh = icmp slt i64 %i.og, 0
  br i1 %i.oh, label %bb.dj, label %.thread235.i.i.i

bb.dj:                                            ; preds = %bb.di
  call void @llvm.trap()
  unreachable

.thread235.i.i.i:                                 ; preds = %bb.di
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 504
  store ptr %.val50.i.i.i, ptr %i.oj, align 8, !noalias !8728
  store i64 0, ptr %i.oi, align 8, !noalias !8728
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9115.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.ok, i64 80, i1 false), !noalias !8728
  store ptr %i.od, ptr %i.ok, align 8, !noalias !8728
  %.sroa.8114.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr %i.oi, ptr %.sroa.8114.0..sroa_idx.i.i.i, align 8, !noalias !8728
  %.sroa.9115.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9115.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9115.i.i.i, i64 80, i1 false), !noalias !8728
  %.sroa.10116.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 616
  store ptr %.val48.i.i.i, ptr %.sroa.10116.0..sroa_idx.i.i.i, align 8, !noalias !8728
  %.sroa.11117.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  store ptr null, ptr %.sroa.11117.0..sroa_idx.i.i.i, align 8, !noalias !8728
  %.sroa.11117.sroa.8.0..sroa.11117.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 632
  store i64 %i.ob, ptr %.sroa.11117.sroa.8.0..sroa.11117.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !8728
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1140 ; 2 uses
  store i8 0, ptr %.sroa.13.0..sroa_idx.i.i.i, align 4, !noalias !8728
  br label %bb.dp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i: ; preds = %.body64.thread.i.i.i, %bb.dn, %.body64.i.i.i
  %i.ol = phi ptr [ %i.cu, %bb.dn ], [ %i.cu, %.body64.i.i.i ], [ %i.ql, %.body64.thread.i.i.i ]
  %i.om = phi ptr [ %i.ct, %bb.dn ], [ %i.ct, %.body64.i.i.i ], [ %i.qm, %.body64.thread.i.i.i ]
  %i.on = phi ptr [ %.phi.trans.insert221.i, %bb.dn ], [ %.phi.trans.insert221.i, %.body64.i.i.i ], [ %i.qn, %.body64.thread.i.i.i ]
  %i.oo = phi ptr [ %i.ij, %bb.dn ], [ %i.ij, %.body64.i.i.i ], [ %i.qo, %.body64.thread.i.i.i ]
  %i.op = phi ptr [ %.phi.trans.insert.i.i, %bb.dn ], [ %.phi.trans.insert.i.i, %.body64.i.i.i ], [ %i.qp, %.body64.thread.i.i.i ]
  %i.oq = phi ptr [ %i.jv, %bb.dn ], [ %i.jv, %.body64.i.i.i ], [ %i.qq, %.body64.thread.i.i.i ]
  %.pn30.i.i.i = phi { ptr, i32 } [ %i.pg, %bb.dn ], [ %i.pg, %.body64.i.i.i ], [ %.pn29.pn.pn.i.i.i.i, %.body64.thread.i.i.i ]
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 496
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm17ModuleRuntimeInfoECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(16) %i.or) #31
          to label %bb.dk unwind label %bb.dm, !noalias !8729

bb.dk:                                            ; preds = %bb.hf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  %i.os = phi ptr [ %i.age, %bb.hf ], [ %i.ol, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i ]
  %i.ot = phi ptr [ %i.agf, %bb.hf ], [ %i.om, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i ]
  %i.ou = phi ptr [ %i.agg, %bb.hf ], [ %i.on, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i ]
  %i.ov = phi ptr [ %i.agh, %bb.hf ], [ %i.oo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i ]
  %i.ow = phi ptr [ %i.agi, %bb.hf ], [ %i.op, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i ]
  %i.ox = phi ptr [ %i.agj, %bb.hf ], [ %i.oq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i ]
  %.pn32.i.i.i = phi { ptr, i32 } [ %i.ait, %bb.hf ], [ %.pn30.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9115.i.i.i)
  br label %.body.i.i.i

bb.dl:                                            ; preds = %bb.dg, %bb.ci, %bb.ch, %bb.bw, %bb.bv
  %i.oy = phi ptr [ %i.jw, %bb.bw ], [ %i.nm, %bb.dg ], [ %i.cu, %bb.ci ], [ %i.cu, %bb.ch ], [ %i.jw, %bb.bv ]
  %i.oz = phi ptr [ %i.jx, %bb.bw ], [ %i.nn, %bb.dg ], [ %i.ct, %bb.ci ], [ %i.ct, %bb.ch ], [ %i.jx, %bb.bv ]
  %i.pa = phi ptr [ %i.jy, %bb.bw ], [ %i.no, %bb.dg ], [ %.phi.trans.insert221.i, %bb.ci ], [ %.phi.trans.insert221.i, %bb.ch ], [ %i.jy, %bb.bv ]
  %i.pb = phi ptr [ %i.jz, %bb.bw ], [ %i.np, %bb.dg ], [ %i.ij, %bb.ci ], [ %i.ij, %bb.ch ], [ %i.jz, %bb.bv ]
  %i.pc = phi ptr [ %i.kd, %bb.bw ], [ %i.nq, %bb.dg ], [ %.phi.trans.insert.i.i, %bb.ci ], [ %.phi.trans.insert.i.i, %bb.ch ], [ %i.kd, %bb.bv ]
  %i.pd = phi ptr [ %i.ke, %bb.bw ], [ %i.nr, %bb.dg ], [ %i.jv, %bb.ci ], [ %i.jv, %bb.ch ], [ %i.ke, %bb.bv ]
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

3:                                                ; preds = %bb.dd
  store i8 1, ptr %i.nk, align 8, !noalias !8730
  store i8 1, ptr %i.mh, align 8, !noalias !8728
  store i8 1, ptr %i.mg, align 8, !noalias !8728
  %4 = ptrtoint ptr %i.nl to i64
  br label %bb.me

bb.dm:                                            ; preds = %.body93.i.i.i, %bb.dn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  %i.pf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !8729
  unreachable

.body64.i.i.i:                                    ; preds = %bb.dv, %bb.du
  %i.pg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i.i.i = load i8, ptr %.phi.trans.insert174.i.i.i, align 4, !noalias !8728
  %cond.i.i.i.i = icmp eq i8 %.pr.i.i.i, 3
  br i1 %cond.i.i.i.i, label %bb.dn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i

bb.dn:                                            ; preds = %.body64.i.i.i
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 664
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_15allocate_module0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 8 %i.ph)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i unwind label %bb.dm, !noalias !8729

bb.do:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9115.i.i.i)
  %.phi.trans.insert174.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1140 ; 11 uses
  %.pre175.i.i.i = load i8, ptr %.phi.trans.insert174.i.i.i, align 4, !range !51, !noalias !8731
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 7 uses
  switch i8 %.pre175.i.i.i, label %default.unreachable132 [
    i8 0, label %._crit_edge102.i.i
    i8 1, label %bb.du
    i8 2, label %bb.dv
    i8 3, label %bb.dx
  ]

._crit_edge102.i.i:                               ; preds = %bb.do
  %.pre103.i.i = load ptr, ptr %i.pi, align 8, !noalias !8731
  %.phi.trans.insert104.i.i = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.pre105.i.i = load ptr, ptr %.phi.trans.insert104.i.i, align 8, !noalias !8731
  %.phi.trans.insert106.i.i = getelementptr inbounds nuw i8, ptr %1, i64 528
  %.pre107.i.i = load ptr, ptr %.phi.trans.insert106.i.i, align 8, !noalias !8731
  br label %bb.dp

bb.dp:                                            ; preds = %._crit_edge102.i.i, %.thread235.i.i.i
  %i.pj = phi ptr [ %i.nm, %.thread235.i.i.i ], [ %i.cu, %._crit_edge102.i.i ] ; 2 uses
  %i.pk = phi ptr [ %i.nn, %.thread235.i.i.i ], [ %i.ct, %._crit_edge102.i.i ] ; 2 uses
  %i.pl = phi ptr [ %i.no, %.thread235.i.i.i ], [ %.phi.trans.insert221.i, %._crit_edge102.i.i ] ; 2 uses
  %i.pm = phi ptr [ %i.np, %.thread235.i.i.i ], [ %i.ij, %._crit_edge102.i.i ] ; 2 uses
  %i.pn = phi ptr [ %i.nq, %.thread235.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge102.i.i ] ; 2 uses
  %i.po = phi ptr [ %i.nr, %.thread235.i.i.i ], [ %i.jv, %._crit_edge102.i.i ] ; 2 uses
  %i.pp = phi ptr [ %i.oi, %.thread235.i.i.i ], [ %.pre107.i.i, %._crit_edge102.i.i ]
  %i.pq = phi ptr [ %.val48.i.i.i, %.thread235.i.i.i ], [ %.pre105.i.i, %._crit_edge102.i.i ]
  %i.pr = phi ptr [ %i.od, %.thread235.i.i.i ], [ %.pre103.i.i, %._crit_edge102.i.i ] ; 2 uses
  %i.ps = phi ptr [ %.sroa.13.0..sroa_idx.i.i.i, %.thread235.i.i.i ], [ %.phi.trans.insert174.i.i.i, %._crit_edge102.i.i ] ; 2 uses
  %i.pt = phi ptr [ %i.ok, %.thread235.i.i.i ], [ %i.pi, %._crit_edge102.i.i ]
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 3 uses
  store ptr %i.pr, ptr %i.pu, align 8, !noalias !8731
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pv, ptr noundef nonnull align 8 dereferenceable(16) %i.pw, i64 16, i1 false), !noalias !8731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(80) %i.px, i64 80, i1 false), !noalias !8731
  %i.py = getelementptr inbounds nuw i8, ptr %i.pr, i64 56
  %i.pz = invoke noundef i32 @_RNvMNtCs821PsJA4TYh_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store4data10InstanceIdNtB14_13StoreInstanceE8next_keyCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.py)
          to label %bb.dq unwind label %bb.ds, !noalias !8732 ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 1136
  store i32 %i.pz, ptr %i.qa, align 8, !noalias !8731
  %i.qb = load ptr, ptr %i.pv, align 8, !noalias !8731, !noundef !16 ; 2 uses
  %.not.i63.i.i.i = icmp eq ptr %i.qb, null
  br i1 %.not.i63.i.i.i, label %bb.dt, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.pre.i.i.i.i = load ptr, ptr %i.pu, align 8, !noalias !8731
  br label %.thread110.i.i.i.i

bb.ds:                                            ; preds = %bb.dp
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %.body64.thread.i.i.i

bb.dt:                                            ; preds = %bb.dq
  %i.qe = load ptr, ptr %i.pu, align 8, !noalias !8731, !nonnull !16, !align !17, !noundef !16 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 480
  %.val41.i.i.i.i = load ptr, ptr %i.qf, align 8, !noalias !8732, !nonnull !16, !noundef !16 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.val41.i.i.i.i, i64 336
  %i.qh = load ptr, ptr %i.qg, align 8, !noalias !8732, !nonnull !16, !noundef !16
  %i.qi = getelementptr inbounds nuw i8, ptr %.val41.i.i.i.i, i64 344
  br label %.thread110.i.i.i.i

.thread110.i.i.i.i:                               ; preds = %bb.dt, %bb.dr
  %i.qj = phi ptr [ %.pre.i.i.i.i, %bb.dr ], [ %i.qe, %bb.dt ]
  %.sroa.3.0.in.i.i.i.i = phi ptr [ %i.qc, %bb.dr ], [ %i.qi, %bb.dt ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.qb, %bb.dr ], [ %i.qh, %bb.dt ] ; 2 uses
  %.sroa.3.0.i.i.i.i = load ptr, ptr %.sroa.3.0.in.i.i.i.i, align 8, !noalias !8732, !nonnull !16, !align !17, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !8731
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.am, i64 80, i1 false), !noalias !8731
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.qk, align 8, !noalias !8731
  %.sroa.854.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 672
  store ptr %.sroa.3.0.i.i.i.i, ptr %.sroa.854.0..sroa_idx.i.i.i.i, align 8, !noalias !8731
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 680
  store ptr %i.pp, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !8731
  %.sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 768
  store ptr %i.qj, ptr %.sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !8731
  %.sroa.9.sroa.10.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 776
  store ptr %i.pq, ptr %.sroa.9.sroa.10.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !8731
  %.sroa.9.sroa.11.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 784
  store i32 %i.pz, ptr %.sroa.9.sroa.11.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !8731
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1000 ; 2 uses
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !8731
  br label %bb.dz

.body64.thread.i.i.i:                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance13OwnedInstanceNtBE_8InstanceEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i, %bb.ds
  %i.ql = phi ptr [ %i.aij, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance13OwnedInstanceNtBE_8InstanceEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i ], [ %i.pj, %bb.ds ]
  %i.qm = phi ptr [ %i.aik, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance13OwnedInstanceNtBE_8InstanceEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i ], [ %i.pk, %bb.ds ]
  %i.qn = phi ptr [ %i.ail, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance13OwnedInstanceNtBE_8InstanceEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i ], [ %i.pl, %bb.ds ]
  %i.qo = phi ptr [ %i.aim, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance13OwnedInstanceNtBE_8InstanceEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i ], [ %i.pm, %bb.ds ]
  %i.qp = phi ptr [ %i.ain, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance13OwnedInstanceNtBE_8InstanceEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i ], [ %i.pn, %bb.ds ]
  %i.qq = phi ptr [ %i.aio, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance13OwnedInstanceNtBE_8InstanceEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i ], [ %i.po, %bb.ds ]
  %i.qr = phi ptr [ %i.aip, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance13OwnedInstanceNtBE_8InstanceEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i ], [ %i.ps, %bb.ds ]
  %.pn29.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn29.pn.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance13OwnedInstanceNtBE_8InstanceEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i ], [ %i.qd, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store i8 2, ptr %i.qr, align 4, !noalias !8731
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i

bb.du:                                            ; preds = %bb.do
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #33
          to label %.noexc66.i.i.i unwind label %.body64.i.i.i, !noalias !8729

.noexc66.i.i.i:                                   ; preds = %bb.du
  unreachable

bb.dv:                                            ; preds = %bb.do
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #33
          to label %.noexc67.i.i.i unwind label %.body64.i.i.i, !noalias !8729

.noexc67.i.i.i:                                   ; preds = %bb.dv
  unreachable

bb.dw:                                            ; preds = %bb.ek, %bb.ej
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i56.i.i.i

.body.i56.i.i.i:                                  ; preds = %bb.dy, %bb.dw
  %i.qt = phi ptr [ %i.cu, %bb.dw ], [ %i.rc, %bb.dy ]
  %i.qu = phi ptr [ %i.ct, %bb.dw ], [ %i.rd, %bb.dy ]
  %i.qv = phi ptr [ %.phi.trans.insert221.i, %bb.dw ], [ %i.re, %bb.dy ]
  %i.qw = phi ptr [ %i.ij, %bb.dw ], [ %i.rf, %bb.dy ]
  %i.qx = phi ptr [ %.phi.trans.insert.i.i, %bb.dw ], [ %i.rg, %bb.dy ]
  %i.qy = phi ptr [ %i.jv, %bb.dw ], [ %i.rh, %bb.dy ]
  %i.qz = phi ptr [ %.phi.trans.insert174.i.i.i, %bb.dw ], [ %i.ri, %bb.dy ]
  %i.ra = phi ptr [ %i.rb, %bb.dw ], [ %i.rk, %bb.dy ]
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.qs, %bb.dw ], [ %.pn29.pn.i.i.i.i.i, %bb.dy ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_15allocate_module0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 8 %i.ra) #31
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance13OwnedInstanceNtBE_8InstanceEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i unwind label %bb.hc, !noalias !8732

bb.dx:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !8731
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1000 ; 8 uses
  %.pre86.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !52, !noalias !8733
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 9 uses
  switch i8 %.pre86.i.i.i.i, label %default.unreachable132 [
    i8 0, label %._crit_edge176.i.i.i
    i8 1, label %bb.ej
    i8 2, label %bb.ek
    i8 3, label %bb.em
    i8 4, label %bb.fk
  ]

._crit_edge176.i.i.i:                             ; preds = %bb.dx
  %.pre177.i.i.i = load ptr, ptr %i.rb, align 8, !noalias !8733
  %.phi.trans.insert178.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 672
  %.pre179.i.i.i = load ptr, ptr %.phi.trans.insert178.i.i.i, align 8, !noalias !8733
  br label %bb.dz

bb.dy:                                            ; preds = %.body43.i.i.i.i.i, %bb.eh, %bb.ec
  %i.rc = phi ptr [ %i.tc, %bb.eh ], [ %i.rl, %bb.ec ], [ %i.aaa, %.body43.i.i.i.i.i ]
  %i.rd = phi ptr [ %i.td, %bb.eh ], [ %i.rm, %bb.ec ], [ %i.aab, %.body43.i.i.i.i.i ]
  %i.re = phi ptr [ %i.te, %bb.eh ], [ %i.rn, %bb.ec ], [ %i.aac, %.body43.i.i.i.i.i ]
  %i.rf = phi ptr [ %i.tf, %bb.eh ], [ %i.ro, %bb.ec ], [ %i.aad, %.body43.i.i.i.i.i ]
  %i.rg = phi ptr [ %i.tg, %bb.eh ], [ %i.rp, %bb.ec ], [ %i.aae, %.body43.i.i.i.i.i ]
  %i.rh = phi ptr [ %i.th, %bb.eh ], [ %i.rq, %bb.ec ], [ %i.aaf, %.body43.i.i.i.i.i ]
  %i.ri = phi ptr [ %i.ti, %bb.eh ], [ %i.rr, %bb.ec ], [ %i.aag, %.body43.i.i.i.i.i ]
  %i.rj = phi ptr [ %i.tj, %bb.eh ], [ %i.rv, %bb.ec ], [ %i.aah, %.body43.i.i.i.i.i ]
  %i.rk = phi ptr [ %i.tk, %bb.eh ], [ %i.rw, %bb.ec ], [ %i.aai, %.body43.i.i.i.i.i ]
  %.pn29.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.tl, %bb.eh ], [ %.pn.i.i.i.i.i, %bb.ec ], [ %.pn26.pn.i.i.i.i.i, %.body43.i.i.i.i.i ]
  store i8 2, ptr %i.rj, align 8, !noalias !8733
  br label %.body.i56.i.i.i

bb.dz:                                            ; preds = %._crit_edge176.i.i.i, %.thread110.i.i.i.i
  %i.rl = phi ptr [ %i.pj, %.thread110.i.i.i.i ], [ %i.cu, %._crit_edge176.i.i.i ] ; 4 uses
  %i.rm = phi ptr [ %i.pk, %.thread110.i.i.i.i ], [ %i.ct, %._crit_edge176.i.i.i ] ; 4 uses
  %i.rn = phi ptr [ %i.pl, %.thread110.i.i.i.i ], [ %.phi.trans.insert221.i, %._crit_edge176.i.i.i ] ; 4 uses
  %i.ro = phi ptr [ %i.pm, %.thread110.i.i.i.i ], [ %i.ij, %._crit_edge176.i.i.i ] ; 4 uses
  %i.rp = phi ptr [ %i.pn, %.thread110.i.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge176.i.i.i ] ; 4 uses
  %i.rq = phi ptr [ %i.po, %.thread110.i.i.i.i ], [ %i.jv, %._crit_edge176.i.i.i ] ; 4 uses
  %i.rr = phi ptr [ %i.ps, %.thread110.i.i.i.i ], [ %.phi.trans.insert174.i.i.i, %._crit_edge176.i.i.i ] ; 4 uses
  %i.rs = phi ptr [ %i.pt, %.thread110.i.i.i.i ], [ %i.pi, %._crit_edge176.i.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCINvMs4_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component8instanceINtB8_11InstancePreNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplE12__instantiateQINtNtNtBc_5store7context15StoreContextMutB1l_EE0Cs43kcu4yvms7_24influxdb3_query_executor:bb.a
  %i.bdv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !8729
  unreachable

bb.lq:                                            ; preds = %bb.ll
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bds) ]
  %i.bdw = load ptr, ptr %i.bdm, align 8, !noalias !8728, !nonnull !16, !align !17, !noundef !16
  %i.bdx = load ptr, ptr %i.bdo, align 8, !noalias !8728, !nonnull !16, !align !93, !noundef !16
  %i.bdy = load i32, ptr %i.bdx, align 4, !noalias !8729, !noundef !16
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdw, i64 56
  %i.bea = invoke noundef nonnull align 8 ptr @_RNvXs0_NtCs821PsJA4TYh_16cranelift_entity7primaryINtB5_10PrimaryMapNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store4data10InstanceIdNtB17_13StoreInstanceEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexB13_E5indexCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bdz, i32 noundef %i.bdy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374)
          to label %bb.lr unwind label %.loopexit.split-lp, !noalias !8729

bb.lr:                                            ; preds = %bb.lq
  %i.beb = load ptr, ptr %i.bea, align 8, !noalias !8729, !nonnull !16, !noundef !16 ; 2 uses
  %i.bec = getelementptr i8, ptr %i.beb, i64 8
  %.val58.i.i.i.i.i = load i64, ptr %i.bec, align 8, !range !30, !noalias !8729, !noundef !16
  %i.bed = getelementptr i8, ptr %i.beb, i64 16
  %.val59.i.i.i.i.i = load ptr, ptr %i.bed, align 8, !noalias !8729
  %i.bee = trunc nuw i64 %.val58.i.i.i.i.i to i1
  %.sroa.0.0.v.i.i43.i.i.i.i = select i1 %i.bee, i64 72, i64 96
  %.sroa.0.0.i73.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val59.i.i.i.i.i, i64 %.sroa.0.0.v.i.i43.i.i.i.i
  %.val54.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i73.i.i.i.i.i, align 8, !noalias !8729, !nonnull !16, !noundef !16
  %i.bef = getelementptr inbounds nuw i8, ptr %.val54.i.i.i.i.i, i64 240
  %i.beg = getelementptr inbounds nuw i8, ptr %i.awm, i64 104
  %i.beh = load i32, ptr %i.beg, align 8, !noalias !8729, !noundef !16 ; 3 uses
  %i.bei = invoke noundef nonnull align 8 ptr @_RNvXs0_NtCs821PsJA4TYh_16cranelift_entity7primaryINtB5_10PrimaryMapNtNtCs3qFYL1dVk0u_16wasmtime_environ5types10TableIndexNtB15_5TableEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexB13_E5indexCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bef, i32 noundef %i.beh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310)
          to label %bb.ls unwind label %.loopexit.split-lp, !noalias !8729

bb.ls:                                            ; preds = %bb.lr
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 40
  %i.bek = load i8, ptr %i.bej, align 8, !range !57, !noalias !8729, !noundef !16
  %i.bel = trunc nuw i8 %i.bek to i1
  %i.bem = invoke noundef i64 @_RNvNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance9allocator9get_index(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bds, i1 noundef zeroext %i.bel)
          to label %bb.lt unwind label %.loopexit.split-lp, !noalias !8729 ; 2 uses

bb.lt:                                            ; preds = %bb.ls
  %i.ben = load ptr, ptr %i.bdm, align 8, !noalias !8728, !nonnull !16, !align !17, !noundef !16 ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %1, i64 688
  %.val55.i.i.i.i.i = load ptr, ptr %i.beo, align 8, !noalias !8728, !align !17, !noundef !16 ; 2 uses
  %i.bep = load ptr, ptr %i.bdo, align 8, !noalias !8728, !nonnull !16, !align !93, !noundef !16
  %i.beq = load i32, ptr %i.bep, align 4, !noalias !8729, !noundef !16 ; 2 uses
  %i.ber = load ptr, ptr %i.bdk, align 8, !noalias !8728, !nonnull !16, !align !17, !noundef !16 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.awm, i64 80 ; 3 uses
  %i.bet = invoke noundef i64 @_RNvMs0_NtCs3qFYL1dVk0u_16wasmtime_environ6moduleNtB5_20TableSegmentElements3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bes)
          to label %.thread70.i.i.i.i.i unwind label %.loopexit.split-lp, !noalias !8729 ; 2 uses

.loopexit:                                        ; preds = %bb.ix
  %lpad.loopexit182 = landingpad { ptr, i32 }
          cleanup
  br label %.body70.i.i.i.i.i

.loopexit.split-lp:                               ; preds = %bb.iy, %bb.kr, %bb.ks, %bb.lk, %bb.lq, %bb.lr, %bb.ls, %bb.lt
  %.ph173 = phi ptr [ %i.aug, %bb.iy ], [ %i.cu, %bb.kr ], [ %i.cu, %bb.ks ], [ %i.awc, %bb.lk ], [ %i.awc, %bb.lq ], [ %i.awc, %bb.lr ], [ %i.awc, %bb.ls ], [ %i.awc, %bb.lt ]
  %.ph174 = phi ptr [ %i.auh, %bb.iy ], [ %i.ct, %bb.kr ], [ %i.ct, %bb.ks ], [ %i.awd, %bb.lk ], [ %i.awd, %bb.lq ], [ %i.awd, %bb.lr ], [ %i.awd, %bb.ls ], [ %i.awd, %bb.lt ]
  %.ph175 = phi ptr [ %i.aui, %bb.iy ], [ %.phi.trans.insert221.i, %bb.kr ], [ %.phi.trans.insert221.i, %bb.ks ], [ %i.awe, %bb.lk ], [ %i.awe, %bb.lq ], [ %i.awe, %bb.lr ], [ %i.awe, %bb.ls ], [ %i.awe, %bb.lt ]
  %.ph176 = phi ptr [ %i.auj, %bb.iy ], [ %i.ij, %bb.kr ], [ %i.ij, %bb.ks ], [ %i.awf, %bb.lk ], [ %i.awf, %bb.lq ], [ %i.awf, %bb.lr ], [ %i.awf, %bb.ls ], [ %i.awf, %bb.lt ]
  %.ph177 = phi ptr [ %i.auk, %bb.iy ], [ %.phi.trans.insert.i.i, %bb.kr ], [ %.phi.trans.insert.i.i, %bb.ks ], [ %i.awg, %bb.lk ], [ %i.awg, %bb.lq ], [ %i.awg, %bb.lr ], [ %i.awg, %bb.ls ], [ %i.awg, %bb.lt ]
  %.ph178 = phi ptr [ %i.aul, %bb.iy ], [ %i.jv, %bb.kr ], [ %i.jv, %bb.ks ], [ %i.awh, %bb.lk ], [ %i.awh, %bb.lq ], [ %i.awh, %bb.lr ], [ %i.awh, %bb.ls ], [ %i.awh, %bb.lt ]
  %.ph179 = phi ptr [ %i.aum, %bb.iy ], [ %.phi.trans.insert181.i.i.i, %bb.kr ], [ %.phi.trans.insert181.i.i.i, %bb.ks ], [ %i.awi, %bb.lk ], [ %i.awi, %bb.lq ], [ %i.awi, %bb.lr ], [ %i.awi, %bb.ls ], [ %i.awi, %bb.lt ]
  %.ph180 = phi ptr [ %i.aun, %bb.iy ], [ %i.ajy, %bb.kr ], [ %i.ajy, %bb.ks ], [ %i.awj, %bb.lk ], [ %i.awj, %bb.lq ], [ %i.awj, %bb.lr ], [ %i.awj, %bb.ls ], [ %i.awj, %bb.lt ]
  %.ph181 = phi ptr [ %i.auo, %bb.iy ], [ %.phi.trans.insert42.i.i.i.i, %bb.kr ], [ %.phi.trans.insert42.i.i.i.i, %bb.ks ], [ %i.awk, %bb.lk ], [ %i.awk, %bb.lq ], [ %i.awk, %bb.lr ], [ %i.awk, %bb.ls ], [ %i.awk, %bb.lt ]
  %lpad.loopexit.split-lp183 = landingpad { ptr, i32 }
          cleanup
  br label %.body70.i.i.i.i.i

.thread70.i.i.i.i.i:                              ; preds = %bb.lt
  %i.beu = getelementptr inbounds nuw i8, ptr %1, i64 736
  store ptr %i.ben, ptr %i.beu, align 8, !noalias !8728
  %.sroa.732.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 744
  store ptr %i.ber, ptr %.sroa.732.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8728
  %.sroa.833.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 752
  store ptr %i.bes, ptr %.sroa.833.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8728
  %.sroa.934.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 760
  store ptr %.val55.i.i.i.i.i, ptr %.sroa.934.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8728
  %.sroa.1035.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 768
  store i64 %i.bem, ptr %.sroa.1035.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8728
  %.sroa.1136.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 776
  store i64 0, ptr %.sroa.1136.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8728
  %.sroa.1237.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 784
  store i64 %i.bet, ptr %.sroa.1237.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8728
  %.sroa.1439.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1016
  store i32 %i.beq, ptr %.sroa.1439.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8728
  %.sroa.1540.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1020
  store i32 %i.beh, ptr %.sroa.1540.0..sroa_idx.i.i.i.i.i, align 4, !noalias !8728
  %.sroa.17.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1028 ; 2 uses
  store i8 0, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i, align 4, !noalias !8728
  br label %bb.jv

.thread30.i.i.i.i:                                ; preds = %bb.li, %.thread50.i.i.i.i.i, %bb.jm
  %i.bev = phi ptr [ %i.aug, %bb.jm ], [ %i.awx, %.thread50.i.i.i.i.i ], [ %i.bbf, %bb.li ]
  %i.bew = phi ptr [ %i.auh, %bb.jm ], [ %i.awy, %.thread50.i.i.i.i.i ], [ %i.bbg, %bb.li ]
  %i.bex = phi ptr [ %i.aui, %bb.jm ], [ %i.awz, %.thread50.i.i.i.i.i ], [ %i.bbh, %bb.li ]
  %i.bey = phi ptr [ %i.auj, %bb.jm ], [ %i.axa, %.thread50.i.i.i.i.i ], [ %i.bbi, %bb.li ]
  %i.bez = phi ptr [ %i.auk, %bb.jm ], [ %i.axb, %.thread50.i.i.i.i.i ], [ %i.bbj, %bb.li ]
  %i.bfa = phi ptr [ %i.aul, %bb.jm ], [ %i.axc, %.thread50.i.i.i.i.i ], [ %i.bbk, %bb.li ]
  %i.bfb = phi ptr [ %i.aum, %bb.jm ], [ %i.axd, %.thread50.i.i.i.i.i ], [ %i.bbl, %bb.li ]
  %i.bfc = phi ptr [ %i.aun, %bb.jm ], [ %i.axe, %.thread50.i.i.i.i.i ], [ %i.bbm, %bb.li ]
  %i.bfd = phi ptr [ %i.auo, %bb.jm ], [ %i.axf, %.thread50.i.i.i.i.i ], [ %i.bbn, %bb.li ]
  %.sroa.024.1.i.ph.i.i.i.i = phi ptr [ %i.avp, %bb.jm ], [ %i.azy, %.thread50.i.i.i.i.i ], [ %i.bbs, %bb.li ]
  store i8 1, ptr %i.bfd, align 8, !noalias !8728
  br label %bb.ir

bb.lu:                                            ; preds = %bb.iz
  store i8 1, ptr %i.auo, align 8, !noalias !8728
  %.not27.i.i.i.i = icmp eq ptr %i.aus, null
  br i1 %.not27.i.i.i.i, label %bb.lv, label %bb.ir

bb.lv:                                            ; preds = %bb.lu, %.thread34.i.i.i.i
  %i.bfe = phi ptr [ %i.aug, %bb.lu ], [ %i.awc, %.thread34.i.i.i.i ] ; 5 uses
  %i.bff = phi ptr [ %i.auh, %bb.lu ], [ %i.awd, %.thread34.i.i.i.i ] ; 5 uses
  %i.bfg = phi ptr [ %i.aui, %bb.lu ], [ %i.awe, %.thread34.i.i.i.i ] ; 5 uses
  %i.bfh = phi ptr [ %i.auj, %bb.lu ], [ %i.awf, %.thread34.i.i.i.i ] ; 5 uses
  %i.bfi = phi ptr [ %i.auk, %bb.lu ], [ %i.awg, %.thread34.i.i.i.i ] ; 5 uses
  %i.bfj = phi ptr [ %i.aul, %bb.lu ], [ %i.awh, %.thread34.i.i.i.i ] ; 5 uses
  %i.bfk = phi ptr [ %i.aum, %bb.lu ], [ %i.awi, %.thread34.i.i.i.i ] ; 5 uses
  %i.bfl = phi ptr [ %i.aun, %bb.lu ], [ %i.awj, %.thread34.i.i.i.i ] ; 8 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.bfn = load ptr, ptr %i.bfm, align 8, !noalias !8728, !nonnull !16, !align !17, !noundef !16
  %i.bfo = getelementptr inbounds nuw i8, ptr %1, i64 636
  %i.bfp = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.bfq = load ptr, ptr %i.bfp, align 8, !noalias !8728, !nonnull !16, !align !17, !noundef !16
  %i.bfr = invoke noundef ptr @_RNvNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance9allocator19initialize_memories(ptr noundef nonnull align 8 %i.bfn, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.bfo, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bfl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(480) %i.bfq)
          to label %bb.lw unwind label %bb.ma, !noalias !8729 ; 2 uses

bb.lw:                                            ; preds = %bb.lv
  %.not28.i.i.i.i = icmp eq ptr %i.bfr, null
  br i1 %.not28.i.i.i.i, label %bb.lx, label %bb.ir

bb.lx:                                            ; preds = %bb.lw
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bfl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i57.i.i.i.i unwind label %bb.ly, !noalias !8729

bb.ly:                                            ; preds = %bb.lx
  %i.bfs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bfl)
          to label %.body40.i.i.i.i unwind label %bb.lz, !noalias !8729

bb.lz:                                            ; preds = %bb.ly
  %i.bft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !8729
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i57.i.i.i.i: ; preds = %bb.lx
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bfl)
          to label %bb.mb unwind label %bb.hn, !noalias !8729

bb.ma:                                            ; preds = %bb.lv, %.invoke81.i.i.i.i, %.invoke.i.i.i.i
  %i.bfu = phi ptr [ %i.bfe, %bb.lv ], [ %i.cu, %.invoke81.i.i.i.i ], [ %i.cu, %.invoke.i.i.i.i ]
  %i.bfv = phi ptr [ %i.bff, %bb.lv ], [ %i.ct, %.invoke81.i.i.i.i ], [ %i.ct, %.invoke.i.i.i.i ]
  %i.bfw = phi ptr [ %i.bfg, %bb.lv ], [ %.phi.trans.insert221.i, %.invoke81.i.i.i.i ], [ %.phi.trans.insert221.i, %.invoke.i.i.i.i ]
  %i.bfx = phi ptr [ %i.bfh, %bb.lv ], [ %i.ij, %.invoke81.i.i.i.i ], [ %i.ij, %.invoke.i.i.i.i ]
  %i.bfy = phi ptr [ %i.bfi, %bb.lv ], [ %.phi.trans.insert.i.i, %.invoke81.i.i.i.i ], [ %.phi.trans.insert.i.i, %.invoke.i.i.i.i ]
  %i.bfz = phi ptr [ %i.bfj, %bb.lv ], [ %i.jv, %.invoke81.i.i.i.i ], [ %i.jv, %.invoke.i.i.i.i ]
  %i.bga = phi ptr [ %i.bfk, %bb.lv ], [ %.phi.trans.insert181.i.i.i, %.invoke81.i.i.i.i ], [ %.phi.trans.insert181.i.i.i, %.invoke.i.i.i.i ]
  %i.bgb = phi ptr [ %i.bfl, %bb.lv ], [ %i.ajy, %.invoke81.i.i.i.i ], [ %i.ajy, %.invoke.i.i.i.i ]
  %i.bgc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i72.i.i.i

bb.mb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i57.i.i.i.i
  store i8 1, ptr %i.bfk, align 8, !noalias !8728
  %i.bgd = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.bge = load i64, ptr %i.bgd, align 8, !range !21, !noalias !8728, !noundef !16
  %i.bgf = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.bgg = load i32, ptr %i.bgf, align 8, !noalias !8728, !noundef !16
  %i.bgh = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.bgi = load ptr, ptr %i.bgh, align 8, !noalias !8728, !nonnull !16, !align !17, !noundef !16
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 80
  %.val45.i.i.i = load ptr, ptr %i.bgj, align 8, !noalias !8729, !nonnull !16, !noundef !16 ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %.val45.i.i.i, i64 384
  %i.bgl = load i32, ptr %i.bgk, align 8, !range !92, !noalias !8729, !noundef !16
  %i.bgm = getelementptr inbounds nuw i8, ptr %.val45.i.i.i, i64 388
  %i.bgn = load i32, ptr %i.bgm, align 4, !noalias !8729
  br label %bb.me

bb.mc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i, %bb.hm
  %i.bgo = phi ptr [ %i.asc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i ], [ %i.akd, %bb.hm ]
  %i.bgp = phi ptr [ %i.asd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i ], [ %i.ake, %bb.hm ]
  %i.bgq = phi ptr [ %i.ase, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i ], [ %i.akf, %bb.hm ]
  %i.bgr = phi ptr [ %i.asf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i ], [ %i.akg, %bb.hm ]
  %i.bgs = phi ptr [ %i.asg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i ], [ %i.akq, %bb.hm ]
  %i.bgt = phi ptr [ %i.ash, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i ], [ %i.akp, %bb.hm ]
  %i.bgu = phi ptr [ %i.asi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i ], [ %i.akl, %bb.hm ]
  %.sroa.019.1.i.ph.i.i.i = phi ptr [ %.sroa.019.0.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i ], [ %i.akr, %bb.hm ]
  store i8 1, ptr %i.bgu, align 8, !noalias !8728
  %i.bgv = ptrtoint ptr %.sroa.019.1.i.ph.i.i.i to i64
  br label %bb.me

bb.md:                                            ; preds = %_RNCNvMs4_NtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance9allocatorDNtB7_17InstanceAllocatorEL_15allocate_module0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !8731
  store i8 3, ptr %i.agk, align 4, !noalias !8731
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9115.i.i.i)
  store i8 4, ptr %i.agi, align 8, !noalias !8728
  br label %bb.pr

bb.me:                                            ; preds = %bb.mc, %bb.mb, %bb.hh, %3, %bb.dh, %bb.by, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i
  %i.bgw = phi ptr [ %i.nm, %bb.dh ], [ %i.jw, %bb.by ], [ %i.bgo, %bb.mc ], [ %i.bfe, %bb.mb ], [ %i.age, %bb.hh ], [ %i.jw, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i ], [ %i.ma, %3 ] ; 7 uses
  %i.bgx = phi ptr [ %i.nn, %bb.dh ], [ %i.jx, %bb.by ], [ %i.bgp, %bb.mc ], [ %i.bff, %bb.mb ], [ %i.agf, %bb.hh ], [ %i.jx, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i ], [ %i.mb, %3 ] ; 7 uses
  %i.bgy = phi ptr [ %i.no, %bb.dh ], [ %i.jy, %bb.by ], [ %i.bgq, %bb.mc ], [ %i.bfg, %bb.mb ], [ %i.agg, %bb.hh ], [ %i.jy, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i ], [ %i.mc, %3 ] ; 7 uses
  %i.bgz = phi ptr [ %i.np, %bb.dh ], [ %i.jz, %bb.by ], [ %i.bgr, %bb.mc ], [ %i.bfh, %bb.mb ], [ %i.agh, %bb.hh ], [ %i.jz, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i ], [ %i.md, %3 ] ; 7 uses
  %i.bha = phi ptr [ %i.nq, %bb.dh ], [ %i.kd, %bb.by ], [ %i.bgs, %bb.mc ], [ %i.bfi, %bb.mb ], [ %i.agi, %bb.hh ], [ %i.kd, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i ], [ %i.me, %3 ]
  %i.bhb = phi ptr [ %i.nr, %bb.dh ], [ %i.ke, %bb.by ], [ %i.bgt, %bb.mc ], [ %i.bfj, %bb.mb ], [ %i.agj, %bb.hh ], [ %i.ke, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i ], [ %i.mf, %3 ] ; 2 uses
  %.sroa.1066.0.ph.i.i = phi i32 [ undef, %bb.dh ], [ undef, %bb.by ], [ undef, %bb.mc ], [ %i.bgn, %bb.mb ], [ undef, %bb.hh ], [ undef, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i ], [ undef, %3 ] ; 2 uses
  %.sroa.765.0.ph.i.i = phi i32 [ 2, %bb.dh ], [ 2, %bb.by ], [ 2, %bb.mc ], [ %i.bgl, %bb.mb ], [ 2, %bb.hh ], [ 2, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i ], [ 2, %3 ] ; 2 uses
  %.sroa.663.0.ph.i.i = phi i32 [ undef, %bb.dh ], [ undef, %bb.by ], [ undef, %bb.mc ], [ %i.bgg, %bb.mb ], [ undef, %bb.hh ], [ undef, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i ], [ undef, %3 ]
  %.sroa.062.0.ph.i.i = phi i64 [ %i.ob, %bb.dh ], [ %i.kq, %bb.by ], [ %i.bgv, %bb.mc ], [ %i.bge, %bb.mb ], [ %i.ajp, %bb.hh ], [ %i.kp, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i ], [ %4, %3 ] ; 2 uses
  store i8 1, ptr %i.bha, align 8, !noalias !8728
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instanceNtBG_8Instance7new_raw0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 8 %i.bhb)
          to label %bb.mf unwind label %bb.mk, !noalias !8723

bb.mf:                                            ; preds = %bb.me
  %i.bhc = icmp eq i32 %.sroa.765.0.ph.i.i, 2
  br i1 %i.bhc, label %bb.ml, label %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i

_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.mf
  %i.bhd = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 4 uses
  store i64 %.sroa.062.0.ph.i.i, ptr %i.bhd, align 8, !noalias !8722
  %i.bhe = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i32 %.sroa.663.0.ph.i.i, ptr %i.bhe, align 8, !noalias !8722
  %i.bhf = trunc nuw i32 %.sroa.765.0.ph.i.i to i1
  br i1 %i.bhf, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.ol, %bb.mj, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  %i.bhg = phi ptr [ %i.bmw, %bb.ol ], [ %i.bgw, %bb.mj ], [ %i.bgw, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ]
  %i.bhh = phi ptr [ %i.bmx, %bb.ol ], [ %i.bgx, %bb.mj ], [ %i.bgx, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ]
  %i.bhi = phi ptr [ %i.bmy, %bb.ol ], [ %i.bgy, %bb.mj ], [ %i.bgy, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ]
  %i.bhj = phi ptr [ %i.bmz, %bb.ol ], [ %i.bgz, %bb.mj ], [ %i.bgz, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ]
  %i.bhk = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.bhl = load i32, ptr %i.bhk, align 8, !noalias !8722, !noundef !16
  %.sroa.685.8.insert.ext.i.i = zext i32 %i.bhl to i64
  %i.bhm = inttoptr i64 %.sroa.685.8.insert.ext.i.i to ptr
  br label %bb.om

bb.mh:                                            ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  %i.bhn = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  store i32 %.sroa.1066.0.ph.i.i, ptr %i.bhn, align 8, !noalias !8722
  %i.bho = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.bhp = load ptr, ptr %i.bho, align 8, !noalias !8722, !nonnull !16, !align !17, !noundef !16 ; 3 uses
  %i.bhq = load ptr, ptr %i.bhp, align 8, !noalias !8723, !nonnull !16, !align !20, !noundef !16
  %i.bhr = getelementptr i8, ptr %i.bhq, i64 1032
  %.val.i.i = load ptr, ptr %i.bhr, align 8, !noalias !8723, !nonnull !16, !noundef !16
  %i.bhs = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 267
  %i.bht = load i8, ptr %i.bhs, align 1, !range !57, !noalias !8723, !noundef !16
  %i.bhu = trunc nuw i8 %i.bht to i1
  br i1 %i.bhu, label %.thread174.i.i, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.bhv = invoke noundef ptr @_RINvMNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instanceNtB3_8Instance9start_rawNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bhd, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bhp, i32 noundef %.sroa.1066.0.ph.i.i)
          to label %bb.mj unwind label %bb.mk, !noalias !8723 ; 2 uses

bb.mj:                                            ; preds = %bb.mi
  %.not.i97.i = icmp eq ptr %i.bhv, null
  br i1 %.not.i97.i, label %bb.mg, label %bb.om

.thread174.i.i:                                   ; preds = %bb.mh
  store ptr %i.bhp, ptr %i.bhb, align 8, !noalias !8722
  %.sroa.879.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %i.bhd, ptr %.sroa.879.0..sroa_idx.i.i, align 8, !noalias !8722
  %.sroa.980.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr %i.bhn, ptr %.sroa.980.0..sroa_idx.i.i, align 8, !noalias !8722
  %.sroa.1182.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  store i8 0, ptr %.sroa.1182.0..sroa_idx.i.i, align 8, !noalias !8722
  br label %.thread.i40.i.i

bb.mk:                                            ; preds = %bb.mi, %bb.me, %bb.bp
  %i.bhw = phi ptr [ %i.ik, %bb.bp ], [ %i.bgw, %bb.mi ], [ %i.bgw, %bb.me ]
  %i.bhx = phi ptr [ %i.il, %bb.bp ], [ %i.bgx, %bb.mi ], [ %i.bgx, %bb.me ]
  %i.bhy = phi ptr [ %i.io, %bb.bp ], [ %i.bgy, %bb.mi ], [ %i.bgy, %bb.me ]
  %i.bhz = phi ptr [ %i.ip, %bb.bp ], [ %i.bgz, %bb.mi ], [ %i.bgz, %bb.me ]
  %i.bia = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs2_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store6async_INtNtBM_7context15StoreContextMutNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplE8on_fiberINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorENCNCINvMNtBO_8instanceNtB4g_8Instance11new_startedB25_E00E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i

bb.ml:                                            ; preds = %bb.mf
  %i.bib = inttoptr i64 %.sroa.062.0.ph.i.i to ptr
  br label %bb.om

bb.mm:                                            ; preds = %bb.mn, %.body.i.i
  %i.bic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !8723
  unreachable

.body41.i.i:                                      ; preds = %bb.mq, %bb.mp
  %i.bid = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i.i = load i8, ptr %.phi.trans.insert119.i.i, align 8, !noalias !8722
  %cond.i.i.i = icmp eq i8 %.pr.i.i, 3
  br i1 %cond.i.i.i, label %bb.mn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs2_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store6async_INtNtBM_7context15StoreContextMutNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplE8on_fiberINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorENCNCINvMNtBO_8instanceNtB4g_8Instance11new_startedB25_E00E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i

bb.mn:                                            ; preds = %.body41.i.i
  %i.bie = getelementptr inbounds nuw i8, ptr %1, i64 384
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCs8dy3IO6wsj9_8wasmtime7runtime5fiber8on_fiberINtNtBI_5store10StoreInnerNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplEINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorENCNCINvMs2_NtB1x_6async_INtNtB1x_7context15StoreContextMutB1U_E8on_fiberB2Y_NCNCINvMNtBI_8instanceNtB5a_8Instance11new_startedB1U_E00E00E0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 8 %i.bie)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs2_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store6async_INtNtBM_7context15StoreContextMutNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplE8on_fiberINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorENCNCINvMNtBO_8instanceNtB4g_8Instance11new_startedB25_E00E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.mm, !noalias !8723

bb.mo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %.phi.trans.insert119.i.i = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 6 uses
  %.pre120.i.i = load i8, ptr %.phi.trans.insert119.i.i, align 8, !range !51, !noalias !8760
  switch i8 %.pre120.i.i, label %default.unreachable132 [
    i8 0, label %..thread.i40.i_crit_edge.i
    i8 1, label %bb.mp
    i8 2, label %bb.mq
    i8 3, label %bb.ms
  ]

..thread.i40.i_crit_edge.i:                       ; preds = %bb.mo
  %.phi.trans.insert229.i = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.pre230.i = load ptr, ptr %.phi.trans.insert229.i, align 8, !noalias !8760
  %.phi.trans.insert231.i = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.pre232.i = load ptr, ptr %.phi.trans.insert231.i, align 8, !noalias !8760
  br label %.thread.i40.i.i

.thread.i40.i.i:                                  ; preds = %..thread.i40.i_crit_edge.i, %.thread174.i.i
  %i.bif = phi ptr [ %i.bgw, %.thread174.i.i ], [ %i.cu, %..thread.i40.i_crit_edge.i ]
  %i.big = phi ptr [ %i.bgx, %.thread174.i.i ], [ %i.ct, %..thread.i40.i_crit_edge.i ]
  %i.bih = phi ptr [ %i.bgy, %.thread174.i.i ], [ %.phi.trans.insert221.i, %..thread.i40.i_crit_edge.i ]
  %i.bii = phi ptr [ %i.bgz, %.thread174.i.i ], [ %i.ij, %..thread.i40.i_crit_edge.i ]
  %i.bij = phi ptr [ %i.bhn, %.thread174.i.i ], [ %.pre232.i, %..thread.i40.i_crit_edge.i ] ; 2 uses
  %i.bik = phi ptr [ %i.bhd, %.thread174.i.i ], [ %.pre230.i, %..thread.i40.i_crit_edge.i ] ; 2 uses
  %i.bil = phi ptr [ %.sroa.1182.0..sroa_idx.i.i, %.thread174.i.i ], [ %.phi.trans.insert119.i.i, %..thread.i40.i_crit_edge.i ]
  %i.bim = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.bin = load ptr, ptr %i.bim, align 8, !noalias !8760, !nonnull !16, !align !17, !noundef !16
  %i.bio = load ptr, ptr %i.bin, align 8, !noalias !8723, !nonnull !16, !align !20, !noundef !16 ; 2 uses
  %.sroa.714.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 496
  store ptr %i.bik, ptr %.sroa.714.0..sroa_idx.i.i.i, align 8, !noalias !8760
  %.sroa.815.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  store ptr %i.bij, ptr %.sroa.815.0..sroa_idx.i.i.i, align 8, !noalias !8760
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  store ptr %i.bio, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !8760
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 523 ; 2 uses
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i, align 1, !noalias !8760
  %i.bip = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.438.i.i.i.i)
  br label %bb.mu

.body41.thread.i.i:                               ; preds = %bb.oh, %.body.i36.i.i
  %i.biq = phi ptr [ %i.bmw, %bb.oh ], [ %i.biw, %.body.i36.i.i ]
  %i.bir = phi ptr [ %i.bmx, %bb.oh ], [ %i.bix, %.body.i36.i.i ]
  %i.bis = phi ptr [ %i.bmy, %bb.oh ], [ %i.biy, %.body.i36.i.i ]
  %i.bit = phi ptr [ %i.bmz, %bb.oh ], [ %i.biz, %.body.i36.i.i ]
  %i.biu = phi ptr [ %i.bna, %bb.oh ], [ %i.bja, %.body.i36.i.i ]
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.bne, %bb.oh ], [ %eh.lpad-body.i.i.i, %.body.i36.i.i ]
  store i8 2, ptr %i.biu, align 8, !noalias !8760
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs2_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store6async_INtNtBM_7context15StoreContextMutNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplE8on_fiberINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorENCNCINvMNtBO_8instanceNtB4g_8Instance11new_startedB25_E00E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i

bb.mp:                                            ; preds = %bb.mo
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #33
          to label %.noexc43.i.i unwind label %.body41.i.i, !noalias !8723

.noexc43.i.i:                                     ; preds = %bb.mp
  unreachable

bb.mq:                                            ; preds = %bb.mo
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #33
          to label %.noexc44.i.i unwind label %.body41.i.i, !noalias !8723

.noexc44.i.i:                                     ; preds = %bb.mq
  unreachable

bb.mr:                                            ; preds = %bb.nf, %bb.ne
  %i.biv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i36.i.i

.body.i36.i.i:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit25.i.i.i.i, %bb.mr
  %i.biw = phi ptr [ %i.cu, %bb.mr ], [ %i.bke, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit25.i.i.i.i ]
  %i.bix = phi ptr [ %i.ct, %bb.mr ], [ %i.bkf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit25.i.i.i.i ]
  %i.biy = phi ptr [ %.phi.trans.insert221.i, %bb.mr ], [ %i.bkg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit25.i.i.i.i ]
  %i.biz = phi ptr [ %i.ij, %bb.mr ], [ %i.bkh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit25.i.i.i.i ]
  %i.bja = phi ptr [ %.phi.trans.insert119.i.i, %bb.mr ], [ %i.bki, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit25.i.i.i.i ]
  %i.bjb = phi ptr [ %i.bjc, %bb.mr ], [ %i.bkk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit25.i.i.i.i ]
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.biv, %bb.mr ], [ %.pn15.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit25.i.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCs8dy3IO6wsj9_8wasmtime7runtime5fiber8on_fiberINtNtBI_5store10StoreInnerNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplEINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorENCNCINvMs2_NtB1x_6async_INtNtB1x_7context15StoreContextMutB1U_E8on_fiberB2Y_NCNCINvMNtBI_8instanceNtB5a_8Instance11new_startedB1U_E00E00E0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 8 %i.bjb) #31
          to label %.body41.thread.i.i unwind label %bb.oi, !noalias !8723

bb.ms:                                            ; preds = %bb.mo
  %.phi.trans.insert.i33.i.i = getelementptr inbounds nuw i8, ptr %1, i64 523 ; 3 uses
  %.pre.i34.i.i = load i8, ptr %.phi.trans.insert.i33.i.i, align 1, !range !51, !noalias !8761
  %i.bjc = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.438.i.i.i.i)
  switch i8 %.pre.i34.i.i, label %default.unreachable132 [
    i8 0, label %._crit_edge121.i.i
    i8 1, label %bb.ne
    i8 2, label %bb.nf
    i8 3, label %bb.mt
  ]

._crit_edge121.i.i:                               ; preds = %bb.ms
  %.phi.trans.insert122.i.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  %.pre123.i.i = load ptr, ptr %.phi.trans.insert122.i.i, align 8, !noalias !8761
  %.phi.trans.insert124.i.i = getelementptr inbounds nuw i8, ptr %1, i64 496
  %.pre125.i.i = load ptr, ptr %.phi.trans.insert124.i.i, align 8, !noalias !8761
  %.phi.trans.insert126.i.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.pre127.i.i = load ptr, ptr %.phi.trans.insert126.i.i, align 8, !noalias !8761
  br label %bb.mu
end_hunk_1
