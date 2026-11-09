Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 286
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNCNvNtCsfR8GmIBoxTX_21lance_namespace_impls3dir22put_marker_file_atomic0B5_:bb.a
  %i.mo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !175628
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) #73
          to label %bb.ee unwind label %bb.eh

bb.ec:                                            ; preds = %bb.ea
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !175628
  store ptr %i.mp, ptr %i.c, align 8, !noalias !175628
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs3PfUT229lOd_12object_store4path4PathNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.550.0..sroa_idx.i, align 8, !noalias !175628
  %i.mq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @2427, ptr %i.mq, align 8, !noalias !175628
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.552.0..sroa_idx.i, align 8, !noalias !175628
  %i.mr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.d, ptr %i.mr, align 8, !noalias !175628
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs1d_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.554.0..sroa_idx.i, align 8, !noalias !175628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !175640
  store i64 0, ptr %i.b, align 8, !noalias !175640
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1892, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !175640
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 26, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !175640
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !175640
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @1086, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !175640
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 37, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !175640
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !175640
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @1892, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !175640
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 26, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !175640
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !175640
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 5983, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !175640
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @2428, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !175640
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.c, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !175640
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
          to label %bb.ed unwind label %bb.eb

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !175640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !175628
  br label %bb.dz

bb.ee:                                            ; preds = %bb.ef, %bb.eb
  %.pn15.i = phi { ptr, i32 } [ %i.ms, %bb.ef ], [ %i.mo, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !175628
  br label %.body40.i

bb.ef:                                            ; preds = %bb.dz
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.eg:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !175628
  br label %bb.fi

bb.eh:                                            ; preds = %bb.fg, %bb.ej, %bb.eb, %bb.do
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

.body40.i:                                        ; preds = %bb.fa, %bb.fd, %bb.dw, %bb.do, %bb.et, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.es, %bb.ej, %bb.ee
  %i.mu = phi ptr [ %i.lj, %bb.ee ], [ %i.nh, %bb.es ], [ %i.nh, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.nh, %bb.ej ], [ %i.og, %bb.et ], [ %i.nh, %bb.fa ], [ %i.nh, %bb.fd ], [ %i.lp, %bb.do ], [ %i.lp, %bb.dw ] ; 3 uses
  %i.mv = phi ptr [ %i.lk, %bb.ee ], [ %i.ni, %bb.es ], [ %i.ni, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ni, %bb.ej ], [ %i.oh, %bb.et ], [ %i.ni, %bb.fa ], [ %i.ni, %bb.fd ], [ %i.lq, %bb.do ], [ %i.lq, %bb.dw ] ; 3 uses
  %.pn28.pn.pn.i = phi { ptr, i32 } [ %.pn15.i, %bb.ee ], [ %i.oa, %bb.es ], [ %i.oa, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ng, %bb.ej ], [ %i.oi, %bb.et ], [ %i.ou, %bb.fa ], [ %i.ph, %bb.fd ], [ %i.lo, %bb.do ], [ %i.mc, %bb.dw ] ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !range !559, !noalias !175628, !noundef !411
  %.not32.i = icmp eq i64 %i.mx, -1
  br i1 %.not32.i, label %bb.ey, label %bb.ff

bb.ei:                                            ; preds = %bb.dl
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.mz = add nuw i32 %i.lm, 1
  store i32 %i.mz, ptr %i.my, align 8, !alias.scope !175641, !noalias !175628
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 648
  store i32 %i.lm, ptr %i.na, align 8, !noalias !175628
  %i.nb = load ptr, ptr %i.lk, align 8, !noalias !175628, !nonnull !411, !align !412, !noundef !411
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 48
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ne = load ptr, ptr %i.nd, align 8, !noalias !175628, !nonnull !411, !align !412, !noundef !411
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 656
  store ptr %i.nc, ptr %i.nf, align 8, !noalias !175628
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 664
  store ptr %i.ne, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !175628
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 688
  store i8 0, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !175628
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ek
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !175628
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.nj) #73
          to label %.body40.i unwind label %bb.eh

bb.ek:                                            ; preds = %bb.ei, %bb.dj
  %i.nh = phi ptr [ %i.lj, %bb.ei ], [ %i.kx, %bb.dj ] ; 12 uses
  %i.ni = phi ptr [ %i.lk, %bb.ei ], [ %i.kw, %bb.dj ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !175628
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  invoke fastcc void @_RNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB4_11ObjectStoreEL_ENtB4_14ObjectStoreExt6delete0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noundef nonnull align 8 %i.nj, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.el unwind label %bb.ej

bb.el:                                            ; preds = %bb.ek
  %i.nk = load i64, ptr %i.g, align 8, !range !516, !noalias !175628, !noundef !411
  %i.nl = icmp eq i64 %i.nk, -2
  br i1 %i.nl, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !175628
  br label %bb.fh

bb.en:                                            ; preds = %bb.el
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.nm, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !noalias !175628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !175628
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.no = load i8, ptr %i.nn, align 8, !range !410, !noalias !175628, !noundef !411
  switch i8 %i.no, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i [
    i8 4, label %bb.eo
    i8 3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  ]

bb.eo:                                            ; preds = %bb.en
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 696
  call void @llvm.experimental.noalias.scope.decl(metadata !175642)
  call void @llvm.experimental.noalias.scope.decl(metadata !175643)
  call void @llvm.experimental.noalias.scope.decl(metadata !175644)
  %.val.i.i.i.i.i = load i64, ptr %i.np, align 8, !range !414, !alias.scope !175645, !noalias !175628, !noundef !411 ; 2 uses
  %i.nq = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.nq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 704
  %.val1.i.i.i.i.i137 = load ptr, ptr %i.nr, align 8, !alias.scope !175645, !noalias !175628, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i137, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !175645
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.ep, %bb.eo, %bb.en
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 672
  %.val.i.i136 = load ptr, ptr %i.ns, align 8, !noalias !175628 ; 5 uses
  %i.nt = getelementptr i8, ptr %1, i64 680
  %.val2.i.i = load ptr, ptr %i.nt, align 8, !noalias !175628, !nonnull !411, !align !412, !noundef !411 ; 5 uses
  %i.nu = load ptr, ptr %.val2.i.i, align 8, !invariant.load !411 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i136) ]
  invoke void %i.nu(ptr noundef nonnull %.val.i.i136)
          to label %bb.er unwind label %bb.es

bb.er:                                            ; preds = %bb.eq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.nv = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.nw = load i64, ptr %i.nv, align 8, !range !414, !invariant.load !411 ; 2 uses
  %i.nx = icmp eq i64 %i.nw, 0
  br i1 %i.nx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.er
  %i.ny = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.nz = load i64, ptr %i.ny, align 8, !range !415, !invariant.load !411
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i136) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i136, i64 noundef %i.nw, i64 noundef range(i64 1, -9223372036854775807) %i.nz) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.es:                                            ; preds = %bb.eq
  %i.oa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.oc = load i64, ptr %i.ob, align 8, !range !414, !invariant.load !411 ; 2 uses
  %i.od = icmp eq i64 %i.oc, 0
  br i1 %i.od, label %.body40.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.es
  %i.oe = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.of = load i64, ptr %i.oe, align 8, !range !415, !invariant.load !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i136, i64 noundef %i.oc, i64 noundef range(i64 1, -9223372036854775807) %i.of) #68
  br label %.body40.i

bb.et:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler6HandleECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.ew
  %i.og = phi ptr [ %i.lp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler6HandleECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.nh, %bb.ew ]
  %i.oh = phi ptr [ %i.lq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler6HandleECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.ni, %bb.ew ]
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.er, %bb.en
  %i.oj = load i64, ptr %i.nm, align 8, !range !559, !noalias !175628, !noundef !411 ; 2 uses
  switch i64 %i.oj, label %bb.eu [
    i64 -1, label %.thread60.i
    i64 -9223372036854775801, label %bb.ew
  ]

bb.eu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %3 = icmp ne i64 %i.oj, -9223372036854775800
  call void @llvm.assume(i1 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.nm, i64 72, i1 false), !noalias !175628
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.ol = load i64, ptr %i.ok, align 8, !range !559, !alias.scope !175646, !noalias !175628, !noundef !411
  %i.om = icmp eq i64 %i.ol, -1
  br i1 %i.om, label %bb.fb, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ok)
          to label %bb.fb unwind label %bb.fa

bb.ew:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.nm)
          to label %.thread60.i unwind label %bb.et

.thread60.i:                                      ; preds = %bb.ew, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.oo = load i64, ptr %i.on, align 8, !range !559, !alias.scope !175647, !noalias !175628, !noundef !411
  %i.op = icmp eq i64 %i.oo, -1
  br i1 %i.op, label %bb.fi, label %bb.ex

bb.ex:                                            ; preds = %.thread60.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.on)
          to label %bb.fi unwind label %bb.ez

bb.ey:                                            ; preds = %bb.fg, %bb.ff, %bb.ez, %.body40.i
  %i.oq = phi ptr [ %i.nh, %bb.ez ], [ %i.mu, %bb.fg ], [ %i.mu, %bb.ff ], [ %i.mu, %.body40.i ]
  %i.or = phi ptr [ %i.ni, %bb.ez ], [ %i.mv, %bb.fg ], [ %i.mv, %bb.ff ], [ %i.mv, %.body40.i ]
  %.pn33.i = phi { ptr, i32 } [ %i.ot, %bb.ez ], [ %.pn28.pn.pn.i, %bb.fg ], [ %.pn28.pn.pn.i, %bb.ff ], [ %.pn28.pn.pn.i, %.body40.i ]
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 0, ptr %i.os, align 4, !noalias !175628
  store i8 2, ptr %i.oq, align 1, !noalias !175628
  br label %.body140

bb.ez:                                            ; preds = %bb.ex
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.fa:                                            ; preds = %bb.ev
  %i.ou = landingpad { ptr, i32 }
          cleanup
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 1, ptr %i.ov, align 4, !noalias !175628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ok, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !175628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body40.i

bb.fb:                                            ; preds = %bb.ev, %bb.eu
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 1, ptr %i.ow, align 4, !noalias !175628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ok, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !175628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.oy = load i32, ptr %i.ox, align 8, !noalias !175628, !noundef !411 ; 2 uses
  %i.oz = icmp ugt i32 %i.oy, 1
  br i1 %i.oz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.pa = zext nneg i32 %i.oy to i64
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr @2429, i64 %i.pa
  %i.pc = load i64, ptr %i.pb, align 8, !noalias !175628, !noundef !411 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !175628
  %i.pd = udiv i64 %i.pc, 1000
  %i.pe = urem i64 %i.pc, 1000
  %i.pf = trunc nuw nsw i64 %i.pe to i32
  %i.pg = mul nuw nsw i32 %i.pf, 1000000
  invoke void @_RNvNtNtCseXbohGRa9jr_5tokio4time5sleep5sleep(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, i64 noundef %i.pd, i32 noundef %i.pg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2430)
          to label %bb.fe unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !175628
  br label %.body40.i

bb.fe:                                            ; preds = %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.nj, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !175628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !175628
  br label %bb.dp

bb.ff:                                            ; preds = %.body40.i
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 652
  %i.pj = load i8, ptr %i.pi, align 4, !range !423, !noalias !175628, !noundef !411
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %bb.fg, label %bb.ey

bb.fg:                                            ; preds = %bb.ff
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.mw) #73
          to label %bb.ey unwind label %bb.eh

bb.fh:                                            ; preds = %bb.em, %bb.dq
  %i.pl = phi ptr [ %i.lp, %bb.dq ], [ %i.nh, %bb.em ]
  %.sink.i.ph = phi i8 [ 4, %bb.dq ], [ 3, %bb.em ]
  store i8 %.sink.i.ph, ptr %i.pl, align 1, !noalias !175628
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.fi:                                            ; preds = %bb.ex, %.thread60.i, %bb.eg, %bb.dy
  %i.pm = phi ptr [ %i.nh, %bb.ex ], [ %i.nh, %.thread60.i ], [ %i.lj, %bb.eg ], [ %i.lj, %bb.dy ]
  %i.pn = phi ptr [ %i.ni, %bb.ex ], [ %i.ni, %.thread60.i ], [ %i.lk, %bb.eg ], [ %i.lk, %bb.dy ]
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 0, ptr %i.po, align 4, !noalias !175628
  store i8 1, ptr %i.pm, align 1, !noalias !175628
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtCsfR8GmIBoxTX_21lance_namespace_impls3dir33delete_staging_marker_best_effort0EBH_(ptr noundef nonnull align 8 %i.pn)
          to label %bb.dg unwind label %bb.fo

bb.fj:                                            ; preds = %bb.dg
  %i.pp = icmp ne i64 %i.kn, -9223372036854775800
  call void @llvm.assume(i1 %i.pp)
  %i.pq = add i64 %i.kn, 9223372036854775797
  %switch = icmp ult i64 %i.pq, 2
  br i1 %switch, label %bb.fk, label %bb.fp

_RNvXsB_NtCs40k4W9msRzi_5alloc6stringeNtB5_8ToString9to_stringCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.fk, %bb.fn, %bb.fu
  %.sroa.0284.1.ph = phi i64 [ 1, %bb.fu ], [ 0, %bb.fn ], [ 0, %bb.fk ] ; 3 uses
  %.sroa.5285.1.ph = phi i64 [ %.sroa.0288.0.copyload, %bb.fu ], [ %i.pu, %bb.fn ], [ 0, %bb.fk ] ; 3 uses
  %.sroa.8286.1.ph = phi i64 [ %.sroa.5289.0.copyload, %bb.fu ], [ %i.py, %bb.fn ], [ 1, %bb.fk ] ; 3 uses
  %.sroa.10287.1.ph = phi i64 [ %.sroa.6290.0.copyload, %bb.fu ], [ %i.pu, %bb.fn ], [ 0, %bb.fk ] ; 3 uses
  %.pr = load i64, ptr %i.km, align 8
  %.not57 = icmp eq i64 %.pr, -1
  br i1 %.not57, label %.thread320, label %bb.fv

bb.fk:                                            ; preds = %bb.fj
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ps = load ptr, ptr %i.pr, align 8, !nonnull !411, !noundef !411
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.pu = load i64, ptr %i.pt, align 8, !noundef !411 ; 6 uses
  %i.pv = icmp eq i64 %i.pu, 0
  br i1 %i.pv, label %_RNvXsB_NtCs40k4W9msRzi_5alloc6stringeNtB5_8ToString9to_stringCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !175648
  %i.pw = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.pu, i64 noundef range(i64 1, 17) 1) #68, !noalias !175648 ; 3 uses
  %i.px = icmp eq ptr %i.pw, null
  br i1 %i.px, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.pu) #72
          to label %.noexc143 unwind label %bb.fo

.noexc143:                                        ; preds = %bb.fm
  unreachable

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pw, ptr nonnull readonly align 1 %i.ps, i64 range(i64 0, -9223372036854775808) %i.pu, i1 false), !noalias !175649
  %i.py = ptrtoint ptr %i.pw to i64
  br label %_RNvXsB_NtCs40k4W9msRzi_5alloc6stringeNtB5_8ToString9to_stringCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.fo:                                            ; preds = %bb.fi, %bb.fm
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.fp:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 387
  store i8 0, ptr %i.qa, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.km, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.qb, ptr %i.m, align 8
  %.sroa.5281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5281.0..sroa_idx, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.o, ptr %i.qc, align 8
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs1d_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.5283.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @2424, ptr noundef nonnull %i.m)
          to label %bb.fr unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.o) #73
          to label %bb.fs unwind label %bb.ax

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.0288.0.copyload = load i64, ptr %i.n, align 8, !alias.scope !175650
  %.sroa.5289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5289.0.copyload = load i64, ptr %.sroa.5289.0..sroa_idx, align 8, !alias.scope !175650
  %.sroa.6290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6290.0.copyload = load i64, ptr %.sroa.6290.0..sroa_idx, align 8, !alias.scope !175650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.o)
          to label %bb.fu unwind label %bb.ft

bb.fs:                                            ; preds = %bb.ft, %bb.fq
  %.pn53 = phi { ptr, i32 } [ %i.qe, %bb.ft ], [ %i.qd, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.df

bb.ft:                                            ; preds = %bb.fr
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fu:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RNvXsB_NtCs40k4W9msRzi_5alloc6stringeNtB5_8ToString9to_stringCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.fv:                                            ; preds = %_RNvXsB_NtCs40k4W9msRzi_5alloc6stringeNtB5_8ToString9to_stringCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 387
  %i.qg = load i8, ptr %i.qf, align 1, !range !423, !noundef !411
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %bb.fx, label %.thread320

.thread320:                                       ; preds = %bb.dg, %bb.fx, %bb.fv, %_RNvXsB_NtCs40k4W9msRzi_5alloc6stringeNtB5_8ToString9to_stringCsfR8GmIBoxTX_21lance_namespace_impls.exit
end_hunk_0
begin_hunk_1_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace27batch_delete_table_versions0B9_:bb.a
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit129.i, %bb.af
  %i.em = phi ptr [ %i.en, %bb.af ], [ %i.kk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit129.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.el, %bb.af ], [ %.pn55.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit129.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13133.sroa.7.sroa.6)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace29delete_physical_version_files0EBL_(ptr noundef nonnull align 16 %i.em) #73
          to label %bb.r unwind label %bb.s

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 450
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !546, !noalias !204377
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13133.sroa.7.sroa.6)
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12252.i.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3204.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4206.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5167.i.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5140.i.sroa.4)
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 450 ; 5 uses
  switch i8 %.pre, label %default.unreachable304 [
    i8 0, label %bb.aj
    i8 1, label %bb.al
    i8 2, label %bb.am
    i8 3, label %bb.br
    i8 4, label %bb.cc
    i8 5, label %bb.ah
    i8 6, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !204377
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13191.i.sroa.8)
  br label %bb.cx

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !204377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !204377
  br label %bb.ao

bb.aj:                                            ; preds = %.thread309, %bb.ag
  %i.ep = phi ptr [ %i.dp, %.thread309 ], [ %i.eo, %bb.ag ]
  %i.eq = phi ptr [ %i.do, %.thread309 ], [ %i.en, %bb.ag ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 448
  store i8 0, ptr %i.er, align 16, !noalias !204377
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 449
  store i8 0, ptr %i.es, align 1, !noalias !204377
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !204377, !nonnull !411, !align !412, !noundef !411
  store ptr %i.ev, ptr %i.et, align 16, !noalias !204377
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ex = load ptr, ptr %i.ew, align 16, !noalias !204377, !nonnull !411, !align !412, !noundef !411 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !204377, !noundef !411
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.fb = load ptr, ptr %i.eq, align 16, !noalias !204377, !noundef !411
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !204377
  store ptr %i.fb, ptr %i.fa, align 16, !noalias !204377
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.fd, ptr %i.fe, align 8, !noalias !204377
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i64 0, ptr %i.ff, align 8, !noalias !204377
  %i.fg = getelementptr inbounds nuw [48 x i8], ptr %i.ex, i64 %i.ez ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.ex, ptr %i.fh, align 16, !noalias !204377
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.fg, ptr %i.fi, align 8, !noalias !204377
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit81.i, %bb.aj
  %i.fj = phi ptr [ %i.gt, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit81.i ], [ %i.ep, %bb.aj ] ; 2 uses
  %i.fk = phi ptr [ %i.gu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit81.i ], [ %i.eq, %bb.aj ] ; 2 uses
  %i.fl = phi ptr [ %.pre315.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit81.i ], [ %i.fg, %bb.aj ]
  %i.fm = phi ptr [ %.pre.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit81.i ], [ %i.ex, %bb.aj ] ; 4 uses
  %i.fn = icmp eq ptr %i.fm, %i.fl
  br i1 %i.fn, label %.thread206, label %bb.bp

bb.al:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1882) #72
          to label %.noexc55 unwind label %bb.af

.noexc55:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1882) #72
          to label %.noexc56 unwind label %bb.af

.noexc56:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ao
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !204377
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.fr) #73
          to label %.body.i unwind label %bb.en, !noalias !204378

bb.ao:                                            ; preds = %bb.eu, %bb.ai
  %i.fp = phi ptr [ %i.gt, %bb.eu ], [ %i.eo, %bb.ai ] ; 6 uses
  %i.fq = phi ptr [ %i.gu, %bb.eu ], [ %i.en, %bb.ai ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !204377
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  invoke fastcc void @_RNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB4_11ObjectStoreEL_ENtB4_14ObjectStoreExt6delete0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.q, ptr noundef nonnull align 8 %i.fr, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ap unwind label %bb.an, !noalias !204378

bb.ap:                                            ; preds = %bb.ao
  %i.fs = load i64, ptr %i.q, align 8, !range !516, !noalias !204377, !noundef !411
  %i.ft = icmp eq i64 %i.fs, -2
  br i1 %i.ft, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !204377
  br label %.thread

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !204377
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.fv = load i8, ptr %i.fu, align 16, !range !410, !noalias !204377, !noundef !411
  switch i8 %i.fv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i [
    i8 4, label %bb.as
    i8 3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  ]

bb.as:                                            ; preds = %bb.ar
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 552
  call void @llvm.experimental.noalias.scope.decl(metadata !204379)
  call void @llvm.experimental.noalias.scope.decl(metadata !204380)
  call void @llvm.experimental.noalias.scope.decl(metadata !204381)
  %.val.i.i.i.i.i = load i64, ptr %i.fw, align 8, !range !414, !alias.scope !204382, !noalias !204377, !noundef !411 ; 2 uses
  %i.fx = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.fx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 560
  %.val1.i.i.i.i.i = load ptr, ptr %i.fy, align 16, !alias.scope !204382, !noalias !204377, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !204383
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 528
  %.val.i.i = load ptr, ptr %i.fz, align 16, !noalias !204377 ; 5 uses
  %i.ga = getelementptr i8, ptr %1, i64 536
  %.val2.i.i = load ptr, ptr %i.ga, align 8, !noalias !204377, !nonnull !411, !align !412, !noundef !411 ; 5 uses
  %i.gb = load ptr, ptr %.val2.i.i, align 8, !invariant.load !411, !noalias !204378 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.gb(ptr noundef nonnull %.val.i.i)
          to label %bb.av unwind label %bb.aw, !noalias !204378

bb.av:                                            ; preds = %bb.au, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !range !414, !invariant.load !411, !noalias !204378 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.av
  %i.gf = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !range !415, !invariant.load !411, !noalias !204378
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.gd, i64 noundef range(i64 1, -9223372036854775807) %i.gg) #68, !noalias !204378
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !range !414, !invariant.load !411, !noalias !204378 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.aw
  %i.gl = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !range !415, !invariant.load !411, !noalias !204378
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) %i.gm) #68, !noalias !204378
  br label %.body.i

.body.i:                                          ; preds = %bb.ez, %bb.ax, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.aw, %bb.an
  %.pn39.i = phi { ptr, i32 } [ %i.gh, %bb.aw ], [ %.pn36.i, %bb.ez ], [ %i.fo, %bb.an ], [ %i.go, %bb.ax ], [ %i.gh, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !204377
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 584
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.gn) #73, !noalias !204378
  br label %bb.bh

bb.ax:                                            ; preds = %bb.ay
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.av, %bb.ar
  %i.gp = load i64, ptr %i.r, align 8, !range !559, !noalias !204377, !noundef !411 ; 2 uses
  switch i64 %i.gp, label %bb.ev [
    i64 -1, label %.thread.i
    i64 -9223372036854775801, label %bb.ay
  ]

.thread.i:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !204377, !noundef !411
  %i.gs = add i64 %i.gr, 1
  store i64 %i.gs, ptr %i.gq, align 8, !noalias !204377
  br label %bb.az

bb.ay:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.r)
          to label %bb.az unwind label %bb.ax, !noalias !204378

bb.az:                                            ; preds = %bb.ay, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !204377
  %.phi.trans.insert316.i = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.promoted.pre.i = load i64, ptr %.phi.trans.insert316.i, align 8, !alias.scope !204384, !noalias !204377
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit.preheader.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit.preheader.i: ; preds = %bb.ek, %bb.az
  %i.gt = phi ptr [ %i.fp, %bb.az ], [ %i.nf, %bb.ek ] ; 2 uses
  %i.gu = phi ptr [ %i.fq, %bb.az ], [ %i.ng, %bb.ek ] ; 2 uses
  %.promoted.i = phi i64 [ %.promoted.pre.i, %bb.az ], [ %i.sq, %bb.ek ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.gx = icmp eq i64 %.promoted.i, 0
  br i1 %i.gx, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit.preheader.i
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.hd = load ptr, ptr %i.hc, align 16, !noalias !204377, !nonnull !411, !align !412, !noundef !411 ; 2 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %i.hf = getelementptr i8, ptr %i.hd, i64 16
  %.pre318.i = load i16, ptr %i.gy, align 16, !alias.scope !204385, !noalias !204377
  br label %bb.ba

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit.loopexit.i: ; preds = %bb.et, %._crit_edge19.i.i.i.i
  %i.hg = icmp eq i64 %i.ty, 0
  br i1 %i.hg, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit._crit_edge.i, label %bb.ba

bb.ba:                                            ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit.loopexit.i, %.lr.ph.i
  %i.hh = phi i16 [ %.pre318.i, %.lr.ph.i ], [ %i.tv, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit.loopexit.i ] ; 2 uses
  %i.hi = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ty, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit.loopexit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !204386)
  call void @llvm.experimental.noalias.scope.decl(metadata !204387)
  call void @llvm.experimental.noalias.scope.decl(metadata !204388)
  %.not12.i.i.i.i = icmp eq i16 %i.hh, 0
  %.promoted.i.i.i.i = load ptr, ptr %i.gv, align 8, !alias.scope !204385, !noalias !204377 ; 2 uses
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge19.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ba
  %.promoted14.i.i.i.i = load ptr, ptr %i.gz, align 16, !alias.scope !204385, !noalias !204377
  br label %bb.bb

._crit_edge.i.i.i.i:                              ; preds = %bb.bb
  store ptr %i.hn, ptr %i.gz, align 16, !alias.scope !204385, !noalias !204377
  store ptr %i.hm, ptr %i.gv, align 8, !alias.scope !204385, !noalias !204377
  br label %._crit_edge19.i.i.i.i

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i.i.i.i
  %i.hj = phi ptr [ %.promoted14.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.hn, %bb.bb ] ; 2 uses
  %i.hk = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.hm, %bb.bb ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.hj, align 16, !noalias !204389
  %i.hl = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 -512 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.hl to i16 ; 2 uses
  %.not.i.i.i69.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i69.i, label %bb.bb, label %._crit_edge.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit._crit_edge.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit.loopexit.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit.preheader.i
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !204390)
  call void @llvm.experimental.noalias.scope.decl(metadata !204391)
  call void @llvm.experimental.noalias.scope.decl(metadata !204392)
  call void @llvm.experimental.noalias.scope.decl(metadata !204393)
  call void @llvm.experimental.noalias.scope.decl(metadata !204394)
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.hq = load i64, ptr %i.hp, align 16, !alias.scope !204395, !noalias !204377, !noundef !411 ; 3 uses
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit._crit_edge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !204396)
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.ht = load i64, ptr %i.hs, align 16, !alias.scope !204397, !noalias !204377, !noundef !411 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hv = load ptr, ptr %i.ho, align 8, !alias.scope !204397, !noalias !204377, !nonnull !411, !noundef !411 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hv, align 16, !noalias !204398
  %i.hw = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hy = bitcast <16 x i1> %i.hw to i16
  br label %bb.be

bb.be:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, %bb.bd
  %.sroa.06.017.i.i.i.i.i.i.i = phi ptr [ %i.hv, %bb.bd ], [ %.sroa.06.1.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i = phi ptr [ %i.hx, %bb.bd ], [ %.sroa.6.1.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i = phi i16 [ %i.hy, %bb.bd ], [ %i.ih, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i = phi i64 [ %i.ht, %bb.bd ], [ %i.ik, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ]
  %.not12.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs3PfUT229lOd_12object_store4path4PathEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.be, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hz = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.be ] ; 2 uses
  %i.ia = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.be ]
  %.val10.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hz, align 16, !noalias !204399
  %i.ib = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 -512 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ib to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs3PfUT229lOd_12object_store4path4PathEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs3PfUT229lOd_12object_store4path4PathEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.be
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.be ], [ %i.id, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.be ], [ %i.ic, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i, %bb.be ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ie = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.if = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.ig = zext nneg i16 %i.if to i64
  %i.ih = and i16 %i.ie, %.lcssa.i.i.i.i.i.i.i.i
  %i.ii = sub nsw i64 0, %i.ig
  %i.ij = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i, i64 %i.ii ; 2 uses
  %i.ik = add i64 %.sroa.108.014.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.il = getelementptr i8, ptr %i.ij, i64 -24
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.il, align 8, !range !414, !alias.scope !204400, !noalias !204401, !noundef !411 ; 2 uses
  %i.im = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.im, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs3PfUT229lOd_12object_store4path4PathEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %i.in = getelementptr i8, ptr %i.ij, i64 -16
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.in, align 8, !noalias !204401, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !204402
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %bb.bf, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs3PfUT229lOd_12object_store4path4PathEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %i.io = icmp eq i64 %i.ik, 0
  br i1 %i.io, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.be

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, %bb.bc
  %i.ip = shl i64 %i.hq, 5                        ; 2 uses
  %i.iq = add i64 %i.ip, 32                       ; 2 uses
  %i.ir = add i64 %i.hq, 17
  %i.is = add i64 %i.ir, %i.iq                    ; 4 uses
  %i.it = icmp uge i64 %i.is, %i.iq
  %i.iu = icmp ult i64 %i.is, 9223372036854775793
  call void @llvm.assume(i1 %i.it)
  call void @llvm.assume(i1 %i.iu)
  %i.iv = icmp eq i64 %i.is, 0
  br i1 %i.iv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.iw = load ptr, ptr %i.ho, align 8, !alias.scope !204395, !noalias !204377, !nonnull !411, !noundef !411
  %i.ix = sub nuw nsw i64 -32, %i.ip
  %i.iy = getelementptr inbounds i8, ptr %i.iw, i64 %i.ix
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iy, i64 noundef %i.is, i64 noundef range(i64 1, -9223372036854775807) 16) #68, !noalias !204403
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.bh:                                            ; preds = %.body105.i, %.body.i
  %i.iz = phi ptr [ %i.fp, %.body.i ], [ %i.nf, %.body105.i ] ; 2 uses
  %i.ja = phi ptr [ %i.fq, %.body.i ], [ %i.ng, %.body105.i ] ; 2 uses
  %.pn39.pn.pn.pn.i = phi { ptr, i32 } [ %.pn39.i, %.body.i ], [ %.pn19.i, %.body105.i ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 449
  %i.jc = load i8, ptr %i.jb, align 1, !range !423, !noalias !204377, !noundef !411
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.fk, label %bb.eo

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.bg, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit._crit_edge.i
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 449
  store i8 0, ptr %i.je, align 1, !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !204377
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.experimental.noalias.scope.decl(metadata !204404)
  call void @llvm.experimental.noalias.scope.decl(metadata !204405)
  call void @llvm.experimental.noalias.scope.decl(metadata !204406)
  %.val.i.i.i.i53 = load i64, ptr %i.jf, align 16, !range !414, !alias.scope !204407, !noalias !204377, !noundef !411 ; 2 uses
  %i.jg = icmp eq i64 %.val.i.i.i.i53, 0
  br i1 %i.jg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val1.i.i.i.i = load ptr, ptr %i.jh, align 8, !alias.scope !204407, !noalias !204377, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i53, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !204408
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit113.i: ; preds = %bb.ep, %bb.eo, %bb.cs
  %i.ji = phi ptr [ %i.ta, %bb.ep ], [ %i.ml, %bb.cs ], [ %i.ta, %bb.eo ] ; 2 uses
  %i.jj = phi ptr [ %i.tb, %bb.ep ], [ %i.mm, %bb.cs ], [ %i.tb, %bb.eo ] ; 2 uses
  %.pn47.i = phi { ptr, i32 } [ %.pn44.pn.i, %bb.ep ], [ %i.mu, %bb.cs ], [ %.pn44.pn.i, %bb.eo ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 392
  call void @llvm.experimental.noalias.scope.decl(metadata !204409)
  call void @llvm.experimental.noalias.scope.decl(metadata !204410)
  call void @llvm.experimental.noalias.scope.decl(metadata !204411)
  %.val.i.i.i70.i = load i64, ptr %i.jk, align 8, !range !414, !alias.scope !204412, !noalias !204377, !noundef !411 ; 2 uses
  %i.jl = icmp eq i64 %.val.i.i.i70.i, 0
  br i1 %i.jl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit72.i, label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit113.i
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.val1.i.i.i71.i = load ptr, ptr %i.jm, align 16, !alias.scope !204412, !noalias !204377, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i71.i, i64 noundef %.val.i.i.i70.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !204413
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit72.i

end_hunk_1
begin_hunk_2_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace27batch_delete_table_versions0B9_:bb.a
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.sk = load i64, ptr %i.sj, align 16, !alias.scope !204511, !noalias !204377, !noundef !411
  %i.sl = getelementptr i8, ptr %i.si, i64 %i.sk
  %i.sm = getelementptr i8, ptr %i.sl, i64 1
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.si, align 16, !noalias !204512
  %i.sn = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.so = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.sq = load i64, ptr %i.sp, align 16, !alias.scope !204511, !noalias !204377, !noundef !411 ; 2 uses
  store ptr %i.si, ptr %i.nh, align 8, !noalias !204377
  %.sroa.8219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 464
  store ptr %i.so, ptr %.sroa.8219.0..sroa_idx.i, align 16, !noalias !204377
  %.sroa.9220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 472
  store ptr %i.sm, ptr %.sroa.9220.0..sroa_idx.i, align 8, !noalias !204377
  store <16 x i1> %i.sn, ptr %i.nk, align 16, !noalias !204377
  store i64 %i.sq, ptr %i.nl, align 8, !noalias !204377
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit.preheader.i

bb.el:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtCs3PfUT229lOd_12object_store10ObjectMetaENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB1W_NCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2Z_18DirectoryNamespace29delete_physical_version_files00EB31_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12252.i.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13191.i.sroa.8, i64 16, i1 false), !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13191.i.sroa.8)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.fg, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %bb.fb, %bb.el
  %i.sr = phi ptr [ %i.nf, %bb.el ], [ %i.fp, %bb.fb ], [ %i.fp, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.fp, %bb.fg ] ; 2 uses
  %i.ss = phi ptr [ %i.ng, %bb.el ], [ %i.fq, %bb.fb ], [ %i.fq, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.fq, %bb.fg ] ; 2 uses
  %.sroa.12252.i.sroa.9.0 = phi ptr [ %.sroa.13191.i.sroa.0.0.copyload, %bb.el ], [ %.sroa.12252.i.sroa.9.0.copyload, %bb.fb ], [ %.sroa.12252.i.sroa.9.0.copyload, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.12252.i.sroa.9.0.copyload, %bb.fg ] ; 2 uses
  %.sroa.12252.i.sroa.8.0 = phi i64 [ %.sroa.10189.sroa.11.i.sroa.10.0.copyload, %bb.el ], [ %.sroa.12252.i.sroa.8.0.copyload, %bb.fb ], [ %.sroa.12252.i.sroa.8.0.copyload, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.12252.i.sroa.8.0.copyload, %bb.fg ] ; 2 uses
  %.sroa.12252.i.sroa.0.0 = phi i64 [ %.sroa.10189.sroa.11.i.sroa.0.0.copyload, %bb.el ], [ %.sroa.12252.i.sroa.0.0.copyload, %bb.fb ], [ %.sroa.12252.i.sroa.0.0.copyload, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.12252.i.sroa.0.0.copyload, %bb.fg ] ; 2 uses
  %.sroa.7244.i.sroa.0.0 = phi i56 [ %.sroa.10189.sroa.0.i.sroa.0.0.copyload, %bb.el ], [ %.sroa.7244.i.sroa.0.0.copyload, %bb.fb ], [ %.sroa.7244.i.sroa.0.0.copyload, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.7244.i.sroa.0.0.copyload, %bb.fg ] ; 2 uses
  %.sroa.11246.1.i = phi i64 [ %.sroa.10189.sroa.8.0.copyload.i, %bb.el ], [ %.sroa.11246.0.copyload248.i, %bb.fb ], [ %.sroa.11246.0.copyload248.i, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.11246.0.copyload248.i, %bb.fg ] ; 2 uses
  %.sroa.0242.1.i = phi i8 [ %.sroa.0188.0.copyload.i, %bb.el ], [ %.sroa.0242.0.copyload243.i, %bb.fb ], [ %.sroa.0242.0.copyload243.i, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.0242.0.copyload243.i, %bb.fg ] ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 449
  store i8 0, ptr %i.st, align 1, !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !204377
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.experimental.noalias.scope.decl(metadata !204513)
  call void @llvm.experimental.noalias.scope.decl(metadata !204514)
  call void @llvm.experimental.noalias.scope.decl(metadata !204515)
  %.val.i.i.i108.i = load i64, ptr %i.su, align 16, !range !414, !alias.scope !204516, !noalias !204377, !noundef !411 ; 2 uses
  %i.sv = icmp eq i64 %.val.i.i.i108.i, 0
  br i1 %i.sv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i, label %bb.em

bb.em:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val1.i.i.i109.i = load ptr, ptr %i.sw, align 8, !alias.scope !204516, !noalias !204377, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i109.i, i64 noundef %.val.i.i.i108.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !204517
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i

.body96.i:                                        ; preds = %bb.di, %bb.dg, %.body.i.i, %bb.cw, %bb.cu
  %i.sx = phi ptr [ %i.ml, %bb.cu ], [ %i.nf, %bb.cw ], [ %i.nf, %.body.i.i ], [ %i.nf, %bb.di ], [ %i.nf, %bb.dg ]
  %i.sy = phi ptr [ %i.mm, %bb.cu ], [ %i.ng, %bb.cw ], [ %i.ng, %.body.i.i ], [ %i.ng, %bb.di ], [ %i.ng, %bb.dg ]
  %.pn44.i = phi { ptr, i32 } [ %i.na, %bb.cu ], [ %i.ne, %bb.cw ], [ %i.ns, %.body.i.i ], [ %i.od, %bb.di ], [ %i.oa, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13191.i.sroa.8)
  br label %bb.eo

bb.en:                                            ; preds = %bb.ex, %bb.cw, %bb.cb, %bb.bq, %bb.an
  %i.sz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !204378
  unreachable

bb.eo:                                            ; preds = %bb.fk, %.body96.i, %bb.bh
  %i.ta = phi ptr [ %i.sx, %.body96.i ], [ %i.iz, %bb.fk ], [ %i.iz, %bb.bh ] ; 2 uses
  %i.tb = phi ptr [ %i.sy, %.body96.i ], [ %i.ja, %bb.fk ], [ %i.ja, %bb.bh ] ; 2 uses
  %.pn44.pn.i = phi { ptr, i32 } [ %.pn44.i, %.body96.i ], [ %.pn39.pn.pn.pn.i, %bb.fk ], [ %.pn39.pn.pn.pn.i, %bb.bh ] ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 449
  store i8 0, ptr %i.tc, align 1, !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !204377
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.experimental.noalias.scope.decl(metadata !204518)
  call void @llvm.experimental.noalias.scope.decl(metadata !204519)
  call void @llvm.experimental.noalias.scope.decl(metadata !204520)
  %.val.i.i.i111.i = load i64, ptr %i.td, align 16, !range !414, !alias.scope !204521, !noalias !204377, !noundef !411 ; 2 uses
  %i.te = icmp eq i64 %.val.i.i.i111.i, 0
  br i1 %i.te, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit113.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val1.i.i.i112.i = load ptr, ptr %i.tf, align 8, !alias.scope !204521, !noalias !204377, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i112.i, i64 noundef %.val.i.i.i111.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !204522
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit113.i

bb.eq:                                            ; preds = %bb.cq
  %.sroa.8173.0..sroa_idx174.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.sroa.7244.i.sroa.0.0.copyload187 = load i56, ptr %.sroa.8173.0..sroa_idx174.i, align 1, !noalias !204377
  %.sroa.8173.sroa.6.0..sroa.8173.0..sroa_idx174.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.8173.sroa.6.0.copyload.i = load i64, ptr %.sroa.8173.sroa.6.0..sroa.8173.0..sroa_idx174.sroa_idx.i, align 8, !alias.scope !204434, !noalias !204377
  %.sroa.8173.sroa.9.0..sroa.8173.0..sroa_idx174.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.8173.sroa.9.i.sroa.0.0.copyload = load i64, ptr %.sroa.8173.sroa.9.0..sroa.8173.0..sroa_idx174.sroa_idx.i, align 8, !alias.scope !204434, !noalias !204377
  %.sroa.8173.sroa.9.i.sroa.8.0..sroa.8173.sroa.9.0..sroa.8173.0..sroa_idx174.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.8173.sroa.9.i.sroa.8.0.copyload = load i64, ptr %.sroa.8173.sroa.9.i.sroa.8.0..sroa.8173.sroa.9.0..sroa.8173.0..sroa_idx174.sroa_idx.i.sroa_idx, align 8, !alias.scope !204434, !noalias !204377
  %.sroa.10176.0..sroa_idx177.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.12252.i.sroa.9.16.copyload165 = load ptr, ptr %.sroa.10176.0..sroa_idx177.i, align 8, !noalias !204377
  %.sroa.12252.i.sroa.14.16..sroa.10176.0..sroa_idx177.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12252.i.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12252.i.sroa.14.16..sroa.10176.0..sroa_idx177.i.sroa_idx, i64 16, i1 false), !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !204377
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i: ; preds = %bb.fh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i, %bb.eq
  %i.tg = phi ptr [ %i.sr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i ], [ %i.sr, %bb.fh ], [ %i.ml, %bb.eq ] ; 2 uses
  %i.th = phi ptr [ %i.ss, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i ], [ %i.ss, %bb.fh ], [ %i.mm, %bb.eq ] ; 2 uses
  %.sroa.12252.i.sroa.9.1 = phi ptr [ %.sroa.12252.i.sroa.9.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i ], [ %.sroa.12252.i.sroa.9.0, %bb.fh ], [ %.sroa.12252.i.sroa.9.16.copyload165, %bb.eq ] ; 2 uses
  %.sroa.12252.i.sroa.8.1 = phi i64 [ %.sroa.12252.i.sroa.8.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i ], [ %.sroa.12252.i.sroa.8.0, %bb.fh ], [ %.sroa.8173.sroa.9.i.sroa.8.0.copyload, %bb.eq ] ; 2 uses
  %.sroa.12252.i.sroa.0.1 = phi i64 [ %.sroa.12252.i.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i ], [ %.sroa.12252.i.sroa.0.0, %bb.fh ], [ %.sroa.8173.sroa.9.i.sroa.0.0.copyload, %bb.eq ] ; 2 uses
  %.sroa.7244.i.sroa.0.1 = phi i56 [ %.sroa.7244.i.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i ], [ %.sroa.7244.i.sroa.0.0, %bb.fh ], [ %.sroa.7244.i.sroa.0.0.copyload187, %bb.eq ] ; 2 uses
  %.sroa.11246.2.i = phi i64 [ %.sroa.11246.1.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i ], [ %.sroa.11246.1.i, %bb.fh ], [ %.sroa.8173.sroa.6.0.copyload.i, %bb.eq ] ; 2 uses
  %.sroa.0242.2.i = phi i8 [ %.sroa.0242.1.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i ], [ %.sroa.0242.1.i, %bb.fh ], [ %i.mp, %bb.eq ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 368
  call void @llvm.experimental.noalias.scope.decl(metadata !204523)
  call void @llvm.experimental.noalias.scope.decl(metadata !204524)
  %.val.i.i114.i = load i64, ptr %i.ti, align 16, !range !414, !alias.scope !204525, !noalias !204377, !noundef !411 ; 2 uses
  %i.tj = icmp eq i64 %.val.i.i114.i, 0
  br i1 %i.tj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit116.i, label %bb.er

bb.er:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.val1.i.i115.i = load ptr, ptr %i.tk, align 8, !alias.scope !204525, !noalias !204377, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i115.i, i64 noundef %.val.i.i114.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !204526
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit116.i

bb.es:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace23resolve_branch_location0EBL_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12252.i.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5167.i.sroa.4, i64 16, i1 false), !noalias !204377
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit116.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit116.i: ; preds = %bb.es, %bb.er, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i
  %i.tl = phi ptr [ %i.tg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i ], [ %i.tg, %bb.er ], [ %i.ls, %bb.es ]
  %i.tm = phi ptr [ %i.th, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i ], [ %i.th, %bb.er ], [ %i.lt, %bb.es ]
  %.sroa.12252.i.sroa.9.2 = phi ptr [ %.sroa.12252.i.sroa.9.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i ], [ %.sroa.12252.i.sroa.9.1, %bb.er ], [ %.sroa.5167.i.sroa.0.0.copyload, %bb.es ]
  %.sroa.12252.i.sroa.8.2 = phi i64 [ %.sroa.12252.i.sroa.8.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i ], [ %.sroa.12252.i.sroa.8.1, %bb.er ], [ %.sroa.3166.sroa.4.i.sroa.5.0.copyload, %bb.es ]
  %.sroa.12252.i.sroa.0.2 = phi i64 [ %.sroa.12252.i.sroa.0.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i ], [ %.sroa.12252.i.sroa.0.1, %bb.er ], [ %.sroa.3166.sroa.4.i.sroa.0.0.copyload, %bb.es ]
  %.sroa.7244.i.sroa.0.2 = phi i56 [ %.sroa.7244.i.sroa.0.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i ], [ %.sroa.7244.i.sroa.0.1, %bb.er ], [ %.sroa.3166.sroa.0.i.sroa.0.0.copyload, %bb.es ]
  %.sroa.11246.3.i = phi i64 [ %.sroa.11246.2.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i ], [ %.sroa.11246.2.i, %bb.er ], [ %.sroa.3166.sroa.2.0.copyload.i, %bb.es ]
  %.sroa.0242.3.i = phi i8 [ %.sroa.0242.2.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i ], [ %.sroa.0242.2.i, %bb.er ], [ %i.lv, %bb.es ] ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.to = load i8, ptr %i.tn, align 16, !range !423, !noalias !204377, !noundef !411
  %i.tp = trunc nuw i8 %i.to to i1
  br i1 %i.tp, label %bb.fi, label %bb.fn

.thread219:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace22resolve_table_location0EBL_.exit.i
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 448
  store i8 0, ptr %i.tq, align 16, !noalias !204377
  br label %.sink.split

._crit_edge19.i.i.i.i:                            ; preds = %bb.ba, %._crit_edge.i.i.i.i
  %i.tr = phi ptr [ %i.hm, %._crit_edge.i.i.i.i ], [ %.promoted.i.i.i.i, %bb.ba ]
  %.lcssa.i.i.i.i = phi i16 [ %.cast.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.hh, %bb.ba ] ; 3 uses
  %i.ts = add i16 %.lcssa.i.i.i.i, -1
  %i.tt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.tu = zext nneg i16 %i.tt to i64
  %i.tv = and i16 %i.ts, %.lcssa.i.i.i.i          ; 2 uses
  store i16 %i.tv, ptr %i.gy, align 16, !alias.scope !204385, !noalias !204377
  %i.tw = sub nsw i64 0, %i.tu
  %i.tx = getelementptr inbounds [32 x i8], ptr %i.tr, i64 %i.tw ; 2 uses
  %i.ty = add i64 %i.hi, -1                       ; 3 uses
  store i64 %i.ty, ptr %i.gw, align 8, !alias.scope !204384, !noalias !204377
  %i.tz = getelementptr inbounds i8, ptr %i.tx, i64 -32
  %i.ua = load i64, ptr %i.tz, align 8, !noalias !204378, !noundef !411 ; 4 uses
  store i64 %i.ua, ptr %i.ha, align 16, !noalias !204377
  store i64 %i.ua, ptr %i.hb, align 8, !noalias !204377
  %.val67.i = load ptr, ptr %i.he, align 8, !noalias !204378, !nonnull !411, !noundef !411 ; 2 uses
  %.val68.i = load i64, ptr %i.hf, align 8, !noalias !204378, !noundef !411 ; 2 uses
  %.idx341 = shl nuw nsw i64 %.val68.i, 4
  %i.ub = getelementptr inbounds nuw i8, ptr %.val67.i, i64 %.idx341
  %.not.not.not.i.not.i338 = icmp eq i64 %.val68.i, 0
  br i1 %.not.not.not.i.not.i338, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit.loopexit.i, label %.lr.ph

bb.et:                                            ; preds = %.lr.ph
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ud, i64 16 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.uc, %i.ub
  br i1 %.not.not.not.i.not.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1O_18DirectoryNamespace29delete_physical_version_files0s0_0EB1Q_.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge19.i.i.i.i, %bb.et
  %i.ud = phi ptr [ %i.uc, %bb.et ], [ %.val67.i, %._crit_edge19.i.i.i.i ] ; 3 uses
  %.val3.i.i = load i64, ptr %i.ud, align 8, !noalias !204527, !noundef !411
  %i.ue = getelementptr i8, ptr %i.ud, i64 8
  %.val4.i.i = load i64, ptr %i.ue, align 8, !noalias !204527, !noundef !411 ; 2 uses
  %.not.i.i.i = icmp sge i64 %i.ua, %.val3.i.i
  %i.uf = icmp slt i64 %.val4.i.i, 0
  %i.ug = icmp slt i64 %i.ua, %.val4.i.i
  %spec.select.i.i.i = or i1 %i.uf, %i.ug
  %.sroa.0.0.i.i117.i = and i1 %.not.i.i.i, %spec.select.i.i.i
  br i1 %.sroa.0.0.i.i117.i, label %bb.eu, label %bb.et

bb.eu:                                            ; preds = %.lr.ph
  %i.uh = getelementptr inbounds i8, ptr %i.tx, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !204377
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.uj = load ptr, ptr %i.ui, align 16, !noalias !204377, !nonnull !411, !align !412, !noundef !411
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 72
  %.val63.i = load ptr, ptr %i.uk, align 8, !noalias !204378, !nonnull !411, !noundef !411
  %i.ul = getelementptr inbounds nuw i8, ptr %.val63.i, i64 64
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 512
  store ptr %i.ul, ptr %i.um, align 16, !noalias !204377
  %.sroa.8232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 520
  store ptr %i.uh, ptr %.sroa.8232.0..sroa_idx.i, align 8, !noalias !204377
  %.sroa.10234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 544
  store i8 0, ptr %.sroa.10234.0..sroa_idx.i, align 16, !noalias !204377
  br label %bb.ao

bb.ev:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %3 = icmp ne i64 %i.gp, -9223372036854775800
  call void @llvm.assume(i1 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !204377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !noalias !204377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !204377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !204377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !204377
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !204377
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %i.un, ptr %i.l, align 8, !noalias !204377
  %.sroa.5237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5237.0..sroa_idx.i, align 8, !noalias !204377
  %i.up = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.uo, ptr %i.up, align 8, !noalias !204377
  %.sroa.5239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.5239.0..sroa_idx.i, align 8, !noalias !204377
  %i.uq = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.p, ptr %i.uq, align 8, !noalias !204377
  %.sroa.5241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @_RNvXs1f_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.5241.0..sroa_idx.i, align 8, !noalias !204377
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @1883, ptr noundef nonnull %i.l)
          to label %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit72 unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ur = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !204377
  br label %bb.ex

_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit72:     ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !204377
  %i.us = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.us, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !204377
  store i64 18, ptr %i.n, align 8, !noalias !204377
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1884)
          to label %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.ey, !noalias !204378

bb.ex:                                            ; preds = %bb.ey, %bb.ew
  %.pn34.i = phi { ptr, i32 } [ %i.ut, %bb.ey ], [ %i.ur, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !204377
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.p) #73
          to label %bb.ez unwind label %bb.en, !noalias !204378

bb.ey:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit72
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !204377
  %.sroa.0242.0.copyload243.i = load i8, ptr %i.o, align 8, !noalias !204377 ; 3 uses
  %.sroa.7244.0..sroa_idx245.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.7244.i.sroa.0.0.copyload = load i56, ptr %.sroa.7244.0..sroa_idx245.i, align 1, !noalias !204377 ; 3 uses
  %.sroa.11246.0..sroa_idx247.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.11246.0.copyload248.i = load i64, ptr %.sroa.11246.0..sroa_idx247.i, align 8, !noalias !204377 ; 3 uses
  %.sroa.12252.0..sroa_idx253.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.12252.i.sroa.0.0.copyload = load i64, ptr %.sroa.12252.0..sroa_idx253.i, align 8, !noalias !204377 ; 3 uses
  %.sroa.12252.i.sroa.8.0..sroa.12252.0..sroa_idx253.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.12252.i.sroa.8.0.copyload = load i64, ptr %.sroa.12252.i.sroa.8.0..sroa.12252.0..sroa_idx253.i.sroa_idx, align 8, !noalias !204377 ; 3 uses
  %.sroa.12252.i.sroa.9.0..sroa.12252.0..sroa_idx253.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.12252.i.sroa.9.0.copyload = load ptr, ptr %.sroa.12252.i.sroa.9.0..sroa.12252.0..sroa_idx253.i.sroa_idx, align 8, !noalias !204377 ; 3 uses
  %.sroa.12252.i.sroa.14.0..sroa.12252.0..sroa_idx253.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12252.i.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12252.i.sroa.14.0..sroa.12252.0..sroa_idx253.i.sroa_idx, i64 16, i1 false), !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !204377
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %bb.fb unwind label %bb.fa, !noalias !204378

bb.ez:                                            ; preds = %bb.fa, %bb.ex
  %.pn36.i = phi { ptr, i32 } [ %i.uu, %bb.fa ], [ %.pn34.i, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !204377
  br label %.body.i

bb.fa:                                            ; preds = %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.fb:                                            ; preds = %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCsjqC71KfQTl6_15lance_namespace5error14NamespaceErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !204377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !204377
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !204528)
  call void @llvm.experimental.noalias.scope.decl(metadata !204529), !noalias !204378
  call void @llvm.experimental.noalias.scope.decl(metadata !204530), !noalias !204378
  call void @llvm.experimental.noalias.scope.decl(metadata !204531), !noalias !204378
  call void @llvm.experimental.noalias.scope.decl(metadata !204532), !noalias !204378
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.ux = load i64, ptr %i.uw, align 16, !alias.scope !204533, !noalias !204378, !noundef !411 ; 3 uses
  %i.uy = icmp eq i64 %i.ux, 0
  br i1 %i.uy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !204534), !noalias !204378
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.va = load i64, ptr %i.uz, align 16, !alias.scope !204535, !noalias !204378, !noundef !411 ; 2 uses
  %i.vb = icmp eq i64 %i.va, 0
  br i1 %i.vb, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vc = load ptr, ptr %i.uv, align 8, !alias.scope !204535, !noalias !204378, !nonnull !411, !noundef !411 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.vc, align 16, !noalias !204536
  %i.vd = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  %i.vf = bitcast <16 x i1> %i.vd to i16
  br label %bb.fe

bb.fe:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.fd
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.vc, %bb.fd ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.ve, %bb.fd ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.vf, %bb.fd ], [ %i.vo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.va, %bb.fd ], [ %i.vr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i64, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs3PfUT229lOd_12object_store4path4PathEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i64:                           ; preds = %bb.fe, %.lr.ph.i.i.i.i.i.i.i64
  %i.vg = phi ptr [ %i.vk, %.lr.ph.i.i.i.i.i.i.i64 ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.fe ] ; 2 uses
  %i.vh = phi ptr [ %i.vj, %.lr.ph.i.i.i.i.i.i.i64 ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.fe ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.vg, align 16, !noalias !204537
  %i.vi = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.vj = getelementptr inbounds i8, ptr %i.vh, i64 -512 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.vi to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i64, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs3PfUT229lOd_12object_store4path4PathEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs3PfUT229lOd_12object_store4path4PathEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i64, %bb.fe
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.fe ], [ %i.vk, %.lr.ph.i.i.i.i.i.i.i64 ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.fe ], [ %i.vj, %.lr.ph.i.i.i.i.i.i.i64 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.fe ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i64 ] ; 3 uses
  %i.vl = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.vm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.vn = zext nneg i16 %i.vm to i64
  %i.vo = and i16 %i.vl, %.lcssa.i.i.i.i.i.i.i
  %i.vp = sub nsw i64 0, %i.vn
  %i.vq = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.vp ; 2 uses
  %i.vr = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.vs = getelementptr i8, ptr %i.vq, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.vs, align 8, !range !414, !alias.scope !204538, !noalias !204539, !noundef !411 ; 2 uses
  %i.vt = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.vt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs3PfUT229lOd_12object_store4path4PathEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.vu = getelementptr i8, ptr %i.vq, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.vu, align 8, !noalias !204539, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !204540
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.ff, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs3PfUT229lOd_12object_store4path4PathEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.vv = icmp eq i64 %i.vr, 0
  br i1 %i.vv, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %bb.fe

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.fc
  %i.vw = shl i64 %i.ux, 5                        ; 2 uses
  %i.vx = add i64 %i.vw, 32                       ; 2 uses
  %i.vy = add i64 %i.ux, 17
  %i.vz = add i64 %i.vy, %i.vx                    ; 4 uses
  %i.wa = icmp uge i64 %i.vz, %i.vx
  %i.wb = icmp ult i64 %i.vz, 9223372036854775793
  call void @llvm.assume(i1 %i.wa), !noalias !204378
  call void @llvm.assume(i1 %i.wb), !noalias !204378
  %i.wc = icmp eq i64 %i.vz, 0
  br i1 %i.wc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.fg

bb.fg:                                            ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.wd = load ptr, ptr %i.uv, align 8, !alias.scope !204533, !noalias !204378, !nonnull !411, !noundef !411
  %i.we = sub nuw nsw i64 -32, %i.vw
  %i.wf = getelementptr inbounds i8, ptr %i.wd, i64 %i.we
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wf, i64 noundef %i.vz, i64 noundef range(i64 1, -9223372036854775807) 16) #68, !noalias !204541
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i: ; preds = %bb.em, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs3PfUT229lOd_12object_store4path4PathEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 392
  call void @llvm.experimental.noalias.scope.decl(metadata !204542)
  call void @llvm.experimental.noalias.scope.decl(metadata !204543)
  call void @llvm.experimental.noalias.scope.decl(metadata !204544)
  %.val.i.i.i121.i = load i64, ptr %i.wg, align 8, !range !414, !alias.scope !204545, !noalias !204377, !noundef !411 ; 2 uses
  %i.wh = icmp eq i64 %.val.i.i.i121.i, 0
  br i1 %i.wh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i, label %bb.fh

bb.fh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit110.i
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.val1.i.i.i122.i = load ptr, ptr %i.wi, align 16, !alias.scope !204545, !noalias !204377, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i122.i, i64 noundef %.val.i.i.i121.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !204546
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit123.i

bb.fi:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit116.i
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.experimental.noalias.scope.decl(metadata !204547)
  call void @llvm.experimental.noalias.scope.decl(metadata !204548)
  %.val.i.i124.i = load i64, ptr %i.wj, align 8, !range !414, !alias.scope !204549, !noalias !204377, !noundef !411 ; 2 uses
  %i.wk = icmp eq i64 %.val.i.i124.i, 0
  br i1 %i.wk, label %bb.fn, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val1.i.i125.i = load ptr, ptr %i.wl, align 16, !alias.scope !204549, !noalias !204377, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i125.i, i64 noundef %.val.i.i124.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !204550
  br label %bb.fn
end_hunk_2
