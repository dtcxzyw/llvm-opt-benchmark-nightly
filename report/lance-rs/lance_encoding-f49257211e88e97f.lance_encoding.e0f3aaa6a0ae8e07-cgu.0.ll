Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RNCNvXsJ_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB7_33StructuralPrimitiveFieldSchedulerNtNtBd_7decoder24StructuralFieldScheduler10initialize0Bd_:bb.a
  %i.cf = load i64, ptr %i.ce, align 8, !range !76, !invariant.load !75 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %.val24.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !93, !invariant.load !75
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val23.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) %i.ci) #63
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.s:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val24.i, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !range !76, !invariant.load !75 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.val24.i, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !range !93, !invariant.load !75
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) %i.co) #63
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.r
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0EB1V_.exit.thread398, label %bb.t

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !28178
  call void @llvm.experimental.noalias.scope.decl(metadata !28181)
  call void @llvm.experimental.noalias.scope.decl(metadata !28182)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !28178
  store ptr %i.ca, ptr %i.t, align 8, !noalias !28183
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.cc, ptr %i.cp, align 8, !noalias !28183
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !range !93, !invariant.load !75, !alias.scope !28182, !noalias !28181
  %i.cs = add nsw i64 %i.cr, -1
  %i.ct = and i64 %i.cs, -16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !28183
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !invariant.load !75, !alias.scope !28182, !noalias !28181, !nonnull !75
  invoke void %i.cx(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noundef nonnull %i.cv)
          to label %bb.x unwind label %bb.u, !noalias !28181

bb.u:                                             ; preds = %bb.t
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !28184
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.v, label %.body35.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %.body35.i unwind label %bb.w, !noalias !28181

bb.w:                                             ; preds = %bb.v
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !28181
  unreachable

bb.x:                                             ; preds = %bb.t
  %i.dc = load i128, ptr %i.s, align 16, !noalias !28183, !noundef !75
  %i.dd = icmp eq i128 %i.dc, 21034616114142495809028420103708925441 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !28183
  %spec.select.i.i = select i1 %i.dd, ptr %i.ca, ptr %i.cc
  %spec.select2.i.i = select i1 %i.dd, ptr null, ptr %i.ca
  %i.de = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %spec.select.i.i, ptr %i.de, align 8, !alias.scope !28181, !noalias !28185
  store ptr %spec.select2.i.i, ptr %i.w, align 8, !alias.scope !28181, !noalias !28185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !28178
  br i1 %i.dd, label %.thread.a, label %bb.aa

.thread.a:                                        ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !28178, !nonnull !75, !align !95, !noundef !75
  %.val27.i215 = load ptr, ptr %i.dg, align 8, !nonnull !75, !noundef !75
  %i.dh = getelementptr inbounds nuw i8, ptr %.val27.i215, i64 32
  %i.di = atomicrmw add ptr %i.dh, i64 1 monotonic, align 8 ; 0 uses
  br label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0B1j_.exit.thread

bb.y:                                             ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !28186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !28178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !28178
  %.pre.pre.i = load ptr, ptr %i.w, align 8, !noalias !28178 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !28178, !nonnull !75, !align !95, !noundef !75
  %.val27.i = load ptr, ptr %i.dk, align 8, !nonnull !75, !noundef !75
  %i.dl = getelementptr inbounds nuw i8, ptr %.val27.i, i64 40
  %i.dm = atomicrmw add ptr %i.dl, i64 1 monotonic, align 8 ; 0 uses
  %.not16.i = icmp eq ptr %.pre.pre.i, null
  br i1 %.not16.i, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0B1j_.exit.thread, label %bb.ad

bb.z:                                             ; preds = %bb.ag, %bb.n
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.do = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !28178 ; 2 uses
  %i.dp = icmp ult i64 %i.do, 6
  call void @llvm.assume(i1 %i.dp)
  %i.dq = icmp samesign ugt i64 %i.do, 1
  br i1 %i.dq, label %bb.ac, label %.thread218

.thread218:                                       ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !28178, !nonnull !75, !align !95, !noundef !75
  %.val27.i221 = load ptr, ptr %i.ds, align 8, !nonnull !75, !noundef !75
  %i.dt = getelementptr inbounds nuw i8, ptr %.val27.i221, i64 40
  %i.du = atomicrmw add ptr %i.dt, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.ad

bb.ab:                                            ; preds = %bb.ac
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !28178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !28178
  %i.dw = load ptr, ptr %i.w, align 8, !noalias !28178, !noundef !75
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %.body35.i, label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !28178
  store ptr @3917, ptr %i.v, align 8, !noalias !28178
  %i.dy = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 9, ptr %i.dy, align 8, !noalias !28178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !28178
  store ptr %i.v, ptr %i.u, align 8, !noalias !28178
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtReNtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !28178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !28186
  store i64 0, ptr %i.r, align 8, !noalias !28186
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @477, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !28186
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 17, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !28186
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !28186
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr @474, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !28186
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 32, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !28186
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !28186
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr @477, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !28186
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i64 17, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !28186
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !28186
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 76
  store i32 389, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !28186
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store ptr @476, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !28186
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  store ptr %i.u, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !28186
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.r)
          to label %bb.y unwind label %bb.ab

bb.ad:                                            ; preds = %.thread218, %bb.y
  %i.dz = phi ptr [ %i.ca, %.thread218 ], [ %.pre.pre.i, %bb.y ]
  %i.ea = atomicrmw sub ptr %i.dz, i64 1 release, align 8, !noalias !28187
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ae, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0B1j_.exit.thread

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0B1j_.exit.thread unwind label %bb.af

.body35.i:                                        ; preds = %bb.ag, %bb.af, %bb.ab, %bb.v, %bb.u
  %.pn17.i = phi { ptr, i32 } [ %i.ec, %bb.af ], [ %i.dv, %bb.ab ], [ %i.dv, %bb.ag ], [ %i.cy, %bb.u ], [ %i.cy, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !28178
  br label %.body.i

bb.af:                                            ; preds = %bb.ae
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body35.i

bb.ag:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB3d_4SendEL_EEEB1D_(ptr noalias noundef align 8 dereferenceable(16) %i.w) #67
          to label %.body35.i unwind label %bb.z

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0B1j_.exit: ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !28178
  store i8 3, ptr %i.br, align 8, !noalias !28178
  store i8 -2, ptr %0, align 8
  br label %common.ret

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0B1j_.exit.thread: ; preds = %bb.y, %bb.ad, %bb.ae, %.thread.a
  %.sroa.06.0.i217 = phi ptr [ %i.ca, %.thread.a ], [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.y ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !28178
  store i8 1, ptr %i.br, align 8, !noalias !28178
  %.not = icmp eq ptr %.sroa.06.0.i217, null
  br i1 %.not, label %bb.ap, label %bb.ah

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0EB1V_.exit.thread398: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !28178, !nonnull !75, !align !95, !noundef !75
  %.val29.i = load ptr, ptr %i.ee, align 8, !nonnull !75, !noundef !75
  %i.ef = getelementptr inbounds nuw i8, ptr %.val29.i, i64 40
  %i.eg = atomicrmw add ptr %i.ef, i64 1 monotonic, align 8 ; 0 uses
  store i8 1, ptr %i.br, align 8, !noalias !28178
  br label %bb.ap

common.ret:                                       ; preds = %bb.fz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyEBJ_.exit82, %.loopexit244, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0B1j_.exit
  %.sink = phi i8 [ 5, %bb.fz ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyEBJ_.exit82 ], [ 4, %.loopexit244 ], [ 3, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0B1j_.exit ]
  store i8 %.sink, ptr %i.ac, align 8
  ret void

bb.ah:                                            ; preds = %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0B1j_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %.sroa.06.0.i217, ptr %i.ab, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %.val41 = load ptr, ptr %i.ej, align 8, !nonnull !75, !noundef !75
  %i.ek = getelementptr i8, ptr %i.ei, i64 16
  %.val42 = load i64, ptr %i.ek, align 8, !noundef !75
  %i.el = getelementptr i8, ptr %.sroa.06.0.i217, i64 24
  %.val44 = load ptr, ptr %i.el, align 8, !nonnull !75, !noundef !75
  %i.em = getelementptr i8, ptr %.sroa.06.0.i217, i64 32
  %.val45 = load i64, ptr %i.em, align 8, !noundef !75
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val45, i64 %.val42) ; 2 uses
  %.not.i.i.i52 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i.i.i52, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerEINtBU_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1m_14CachedPageDataEL_EEENtNtNtBa_6traits8iterator8Iterator8for_eachNCNCNvXsJ_B1m_NtB1m_33StructuralPrimitiveFieldSchedulerNtNtB1s_7decoder24StructuralFieldScheduler10initialize00EB1s_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ah, %.noexc53
  %.sroa.0.011.i.i.i = phi i64 [ %i.es, %.noexc53 ], [ 0, %bb.ah ] ; 3 uses
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %.val41, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %.val44, i64 %.sroa.0.011.i.i.i
  %.val9.i.i.i = load ptr, ptr %i.en, align 8, !noalias !28188, !nonnull !75, !noundef !75
  %i.ep = getelementptr i8, ptr %i.en, i64 8
  %.val10.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !28188, !nonnull !75, !align !95, !noundef !75
  %i.eq = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !invariant.load !75, !noalias !28189, !nonnull !75
  invoke void %i.er(ptr noundef nonnull %.val9.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eo)
          to label %.noexc53 unwind label %bb.ai, !inline_history !27956

.noexc53:                                         ; preds = %.lr.ph.i.i.i
  %i.es = add nuw i64 %.sroa.0.011.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.es, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerEINtBU_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1m_14CachedPageDataEL_EEENtNtNtBa_6traits8iterator8Iterator8for_eachNCNCNvXsJ_B1m_NtB1m_33StructuralPrimitiveFieldSchedulerNtNtB1s_7decoder24StructuralFieldScheduler10initialize00EB1s_.exit, label %.lr.ph.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = atomicrmw sub ptr %.sroa.06.0.i217, i64 1 release, align 8, !noalias !28190
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit57

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerEINtBU_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1m_14CachedPageDataEL_EEENtNtNtBa_6traits8iterator8Iterator8for_eachNCNCNvXsJ_B1m_NtB1m_33StructuralPrimitiveFieldSchedulerNtNtB1s_7decoder24StructuralFieldScheduler10initialize00EB1s_.exit: ; preds = %.noexc53, %bb.ah
  %i.ew = atomicrmw sub ptr %.sroa.06.0.i217, i64 1 release, align 8, !noalias !28191
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit

bb.aj:                                            ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerEINtBU_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1m_14CachedPageDataEL_EEENtNtNtBa_6traits8iterator8Iterator8for_eachNCNCNvXsJ_B1m_NtB1m_33StructuralPrimitiveFieldSchedulerNtNtB1s_7decoder24StructuralFieldScheduler10initialize00EB1s_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataE9drop_slowBO_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ab)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit unwind label %bb.ak

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit57: ; preds = %bb.ai, %bb.an, %bb.ak
  %.pn22 = phi { ptr, i32 } [ %i.ey, %bb.ak ], [ %i.et, %bb.an ], [ %i.et, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.body50

bb.ak:                                            ; preds = %bb.aj
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit57

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit: ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerEINtBU_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1m_14CachedPageDataEL_EEENtNtNtBa_6traits8iterator8Iterator8for_eachNCNCNvXsJ_B1m_NtB1m_33StructuralPrimitiveFieldSchedulerNtNtB1s_7decoder24StructuralFieldScheduler10initialize00EB1s_.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.al

bb.al:                                            ; preds = %bb.ed, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit
  %.sroa.6205.0 = phi ptr [ %.sroa.12165.1, %bb.ed ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit ] ; 2 uses
  %.sroa.5204.0 = phi i64 [ %.sroa.11164.1, %bb.ed ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit ] ; 2 uses
  %.sroa.4203.0 = phi i56 [ %.sroa.9163.1, %bb.ed ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit ] ; 2 uses
  %.sroa.0202.0 = phi i8 [ %.sroa.0162.1, %bb.ed ], [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit ] ; 2 uses
  %.sroa.7206.0 = phi ptr [ %.sroa.13166.1, %bb.ed ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit ] ; 2 uses
  %.sroa.10209.0 = phi i64 [ %.sroa.16169.1, %bb.ed ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit ] ; 2 uses
  %i.ez = phi <2 x i64> [ %i.rd, %bb.ed ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28192)
  call void @llvm.experimental.noalias.scope.decl(metadata !28193)
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !28194, !nonnull !75, !noundef !75
  %i.fc = atomicrmw sub ptr %i.fb, i64 1 release, align 8, !noalias !28194
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.am, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheEECsjjpCCFGI3ul_14lance_encoding.exit

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fa)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheEECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.ee

bb.an:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataE9drop_slowBO_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ab)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_.exit57 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.ge, %bb.bu, %bb.an, %bb.gf, %.body104, %.body73, %.body
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.ap:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0EB1V_.exit.thread398, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0B1j_.exit.thread
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %.val39 = load ptr, ptr %i.fh, align 8, !nonnull !75, !noundef !75
  %i.fi = getelementptr i8, ptr %i.fg, i64 16
  %.val40 = load i64, ptr %i.fi, align 8, !noundef !75 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !75, !align !95, !noundef !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !28195
  store i64 1, ptr %i.q, align 8, !noalias !28195
  %i.fl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.fl, align 8, !noalias !28195
  %i.fm = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %i.fm, align 8, !noalias !28195
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !28195
  %.sroa.5.0..sroa_idx.i.i.i58 = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.9.0..sroa_idx.i.i.i59 = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i58, i8 0, i64 32, i1 false), !noalias !28195
  store i8 1, ptr %.sroa.9.0..sroa_idx.i.i.i59, align 8, !noalias !28195
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 81
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !noalias !28195
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !28196
  %i.fn = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !28196 ; 4 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.aq, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtNtB2U_6future6future6Futurep6OutputINtNtB2U_6result6ResultINtBH_3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2U_6marker4SendEL_EEEEEE3newB4J_.exit.i.i.i, !prof !77

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #66
          to label %.noexc.i.i.i unwind label %bb.ar, !noalias !28195

.noexc.i.i.i:                                     ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtBI_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2K_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEEB4E_(ptr noalias noundef readonly align 8 dereferenceable(72) %i.fm)
          to label %.body50 unwind label %bb.as, !noalias !28195

bb.as:                                            ; preds = %bb.ar
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !28195
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtNtB2U_6future6future6Futurep6OutputINtNtB2U_6result6ResultINtBH_3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2U_6marker4SendEL_EEEEEE3newB4J_.exit.i.i.i: ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fn, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 88, i1 false), !noalias !28195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !28195
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fs = ptrtoint ptr %i.fr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !28195
  store i64 1, ptr %i.p, align 8, !noalias !28195
  %i.ft = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %i.ft, align 8, !noalias !28195
  %i.fu = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %i.fn, ptr %i.fu, align 8, !noalias !28195
  %.sroa.4.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10.i.i.i, align 8, !noalias !28195
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i.i.i, align 8, !noalias !28195
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %i.fs, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !28195
  %.sroa.612.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %i.fr, ptr %.sroa.612.0..sroa_idx.i.i.i, align 8, !noalias !28195
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !28197
  %i.fv = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !28197 ; 4 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.at, label %bb.aw, !prof !77

bb.at:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtNtB2U_6future6future6Futurep6OutputINtNtB2U_6result6ResultINtBH_3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2U_6marker4SendEL_EEEEEE3newB4J_.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #66
          to label %.noexc25.i.i.i unwind label %bb.au, !noalias !28195

.noexc25.i.i.i:                                   ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBI_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB3b_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEEB55_(ptr noalias noundef align 8 dereferenceable(48) %i.fu)
          to label %.body50 unwind label %bb.av, !noalias !28195

end_hunk_0
begin_hunk_1_@llvm.umax.i128
!27980 = distinct !{!27980, !27979, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtNtB3l_6future6future6Futurep6OutputINtNtB3l_6result6ResultINtBH_3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB3l_6marker4SendEL_EEEEEE3newB5a_: argument 0"}
!27981 = distinct !{!27981, i1 false, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerENCNCNvXsJ_B1s_NtB1s_33StructuralPrimitiveFieldSchedulerNtNtB1y_7decoder24StructuralFieldScheduler10initialize0s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtBc_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultINtNtB6S_4sync3ArcDNtB1s_14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBc_6marker4SendEL_EEENCINvXs8_B5n_B5k_INtNtB4L_7collect12FromIteratorB6x_E9from_iterBN_E0EB1y_"}
!27982 = distinct !{!27982, !27981, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerENCNCNvXsJ_B1s_NtB1s_33StructuralPrimitiveFieldSchedulerNtNtB1y_7decoder24StructuralFieldScheduler10initialize0s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtBc_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultINtNtB6S_4sync3ArcDNtB1s_14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBc_6marker4SendEL_EEENCINvXs8_B5n_B5k_INtNtB4L_7collect12FromIteratorB6x_E9from_iterBN_E0EB1y_: argument 2"}
!27983 = distinct !{!27983, !27981, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerENCNCNvXsJ_B1s_NtB1s_33StructuralPrimitiveFieldSchedulerNtNtB1y_7decoder24StructuralFieldScheduler10initialize0s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtBc_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultINtNtB6S_4sync3ArcDNtB1s_14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBc_6marker4SendEL_EEENCINvXs8_B5n_B5k_INtNtB4L_7collect12FromIteratorB6x_E9from_iterBN_E0EB1y_: argument 1"}
!27984 = distinct !{!27984, !27981, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerENCNCNvXsJ_B1s_NtB1s_33StructuralPrimitiveFieldSchedulerNtNtB1y_7decoder24StructuralFieldScheduler10initialize0s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtBc_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultINtNtB6S_4sync3ArcDNtB1s_14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBc_6marker4SendEL_EEENCINvXs8_B5n_B5k_INtNtB4L_7collect12FromIteratorB6x_E9from_iterBN_E0EB1y_: argument 0"}
!27985 = distinct !{!27985, i1 false, !"_RINvXs2Q_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtBb_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB4C_4sync3ArcDNtBV_14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBb_6marker4SendEL_EEENCINvNtNtB2q_8adapters3map8map_foldQBT_B4h_B34_NCNCNvXsJ_BV_NtBV_33StructuralPrimitiveFieldSchedulerNtNtB11_7decoder24StructuralFieldScheduler10initialize0s_0NCINvXs8_B37_B34_INtNtB2o_7collect12FromIteratorB4h_E9from_iterINtB7Y_3MapBF_B8E_EE0E0EB11_"}
!27986 = distinct !{!27986, !27985, !"_RINvXs2Q_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtBb_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB4C_4sync3ArcDNtBV_14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBb_6marker4SendEL_EEENCINvNtNtB2q_8adapters3map8map_foldQBT_B4h_B34_NCNCNvXsJ_BV_NtBV_33StructuralPrimitiveFieldSchedulerNtNtB11_7decoder24StructuralFieldScheduler10initialize0s_0NCINvXs8_B37_B34_INtNtB2o_7collect12FromIteratorB4h_E9from_iterINtB7Y_3MapBF_B8E_EE0E0EB11_: argument 2"}
!27987 = distinct !{!27987, !27985, !"_RINvXs2Q_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtBb_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB4C_4sync3ArcDNtBV_14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBb_6marker4SendEL_EEENCINvNtNtB2q_8adapters3map8map_foldQBT_B4h_B34_NCNCNvXsJ_BV_NtBV_33StructuralPrimitiveFieldSchedulerNtNtB11_7decoder24StructuralFieldScheduler10initialize0s_0NCINvXs8_B37_B34_INtNtB2o_7collect12FromIteratorB4h_E9from_iterINtB7Y_3MapBF_B8E_EE0E0EB11_: argument 1"}
!27988 = distinct !{!27988, !27985, !"_RINvXs2Q_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtBb_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB4C_4sync3ArcDNtBV_14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBb_6marker4SendEL_EEENCINvNtNtB2q_8adapters3map8map_foldQBT_B4h_B34_NCNCNvXsJ_BV_NtBV_33StructuralPrimitiveFieldSchedulerNtNtB11_7decoder24StructuralFieldScheduler10initialize0s_0NCINvXs8_B37_B34_INtNtB2o_7collect12FromIteratorB4h_E9from_iterINtB7Y_3MapBF_B8E_EE0E0EB11_: argument 0"}
!27989 = distinct !{!27989, i1 false, !"_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldQNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerINtNtBa_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputINtNtBa_6result6ResultINtNtB2G_4sync3ArcDNtBX_14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedB2l_ENCNCNvXsJ_BX_NtBX_33StructuralPrimitiveFieldSchedulerNtNtB13_7decoder24StructuralFieldScheduler10initialize0s_0NCINvXs8_B5Z_B5W_INtNtNtB8_6traits7collect12FromIteratorB2l_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter7IterMutBV_EB7e_EE0E0B13_"}
!27990 = distinct !{!27990, !27989, !"_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldQNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerINtNtBa_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputINtNtBa_6result6ResultINtNtB2G_4sync3ArcDNtBX_14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedB2l_ENCNCNvXsJ_BX_NtBX_33StructuralPrimitiveFieldSchedulerNtNtB13_7decoder24StructuralFieldScheduler10initialize0s_0NCINvXs8_B5Z_B5W_INtNtNtB8_6traits7collect12FromIteratorB2l_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter7IterMutBV_EB7e_EE0E0B13_: argument 1"}
!27991 = distinct !{!27991, !27989, !"_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldQNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive20PageInfoAndSchedulerINtNtBa_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputINtNtBa_6result6ResultINtNtB2G_4sync3ArcDNtBX_14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedB2l_ENCNCNvXsJ_BX_NtBX_33StructuralPrimitiveFieldSchedulerNtNtB13_7decoder24StructuralFieldScheduler10initialize0s_0NCINvXs8_B5Z_B5W_INtNtNtB8_6traits7collect12FromIteratorB2l_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter7IterMutBV_EB7e_EE0E0B13_: argument 0"}
!27992 = distinct !{null}
!27993 = distinct !{!27993, i1 false, !"_RNCINvXs8_NtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1t_6future6future6Futurep6OutputINtNtB1t_6result6ResultINtNtB1Z_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1t_6marker4SendEL_EEEINtNtNtNtB1t_4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtB6p_8adapters3map3MapINtNtNtB1t_5slice4iter7IterMutNtB3P_20PageInfoAndSchedulerENCNCNvXsJ_B3P_NtB3P_33StructuralPrimitiveFieldSchedulerNtNtB3V_7decoder24StructuralFieldScheduler10initialize0s_0EE0B3V_"}
!27994 = distinct !{!27994, !27993, !"_RNCINvXs8_NtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1t_6future6future6Futurep6OutputINtNtB1t_6result6ResultINtNtB1Z_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1t_6marker4SendEL_EEEINtNtNtNtB1t_4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtB6p_8adapters3map3MapINtNtNtB1t_5slice4iter7IterMutNtB3P_20PageInfoAndSchedulerENCNCNvXsJ_B3P_NtB3P_33StructuralPrimitiveFieldSchedulerNtNtB3V_7decoder24StructuralFieldScheduler10initialize0s_0EE0B3V_: argument 1"}
!27995 = distinct !{!27995, !27993, !"_RNCINvXs8_NtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1t_6future6future6Futurep6OutputINtNtB1t_6result6ResultINtNtB1Z_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1t_6marker4SendEL_EEEINtNtNtNtB1t_4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtB6p_8adapters3map3MapINtNtNtB1t_5slice4iter7IterMutNtB3P_20PageInfoAndSchedulerENCNCNvXsJ_B3P_NtB3P_33StructuralPrimitiveFieldSchedulerNtNtB3V_7decoder24StructuralFieldScheduler10initialize0s_0EE0B3V_: argument 2"}
!27996 = distinct !{!27996, !27993, !"_RNCINvXs8_NtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1t_6future6future6Futurep6OutputINtNtB1t_6result6ResultINtNtB1Z_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1t_6marker4SendEL_EEEINtNtNtNtB1t_4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtB6p_8adapters3map3MapINtNtNtB1t_5slice4iter7IterMutNtB3P_20PageInfoAndSchedulerENCNCNvXsJ_B3P_NtB3P_33StructuralPrimitiveFieldSchedulerNtNtB3V_7decoder24StructuralFieldScheduler10initialize0s_0EE0B3V_: argument 0"}
!27997 = distinct !{!27997, i1 false, !"_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultINtNtB2D_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEEE4pushB4z_"}
!27998 = distinct !{!27998, !27997, !"_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultINtNtB2D_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEEE4pushB4z_: argument 0"}
!27999 = distinct !{!27999, i1 false, !"_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultIBx_DNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB30_6marker4SendEL_EEEEE9downgradeB4X_"}
!28000 = distinct !{!28000, !27999, !"_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultIBx_DNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB30_6marker4SendEL_EEEEE9downgradeB4X_: argument 0"}
!28001 = distinct !{!28001, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtNtB2U_6future6future6Futurep6OutputINtNtB2U_6result6ResultINtBH_3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2U_6marker4SendEL_EEEEEE3newB4J_"}
!28002 = distinct !{!28002, !28001, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtNtB2U_6future6future6Futurep6OutputINtNtB2U_6result6ResultINtBH_3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2U_6marker4SendEL_EEEEEE3newB4J_: argument 0"}
!28003 = distinct !{!28003, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheEECsjjpCCFGI3ul_14lance_encoding"}
!28004 = distinct !{!28004, !28003, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28005 = distinct !{!28005, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!28006 = distinct !{!28006, !28005, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28007 = distinct !{!28007, i1 false, !"_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtB9_15futures_ordered14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputINtNtB2b_6result6ResultINtNtB2H_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2b_6marker4SendEL_EEEINtNtB2H_3vec3VecB4c_EEB3c_4pollB4D_"}
!28008 = distinct !{!28008, !28007, !"_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtB9_15futures_ordered14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputINtNtB2b_6result6ResultINtNtB2H_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2b_6marker4SendEL_EEEINtNtB2H_3vec3VecB4c_EEB3c_4pollB4D_: argument 1"}
!28009 = distinct !{!28009, !28007, !"_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtB9_15futures_ordered14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputINtNtB2b_6result6ResultINtNtB2H_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2b_6marker4SendEL_EEEINtNtB2H_3vec3VecB4c_EEB3c_4pollB4D_: argument 2"}
!28010 = distinct !{!28010, !28007, !"_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtB9_15futures_ordered14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputINtNtB2b_6result6ResultINtNtB2H_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2b_6marker4SendEL_EEEINtNtB2H_3vec3VecB4c_EEB3c_4pollB4D_: argument 0"}
!28011 = distinct !{!28011, i1 false, !"_RNvXs2_NtCsj3nLz3LBTXi_12futures_core6streamINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1Y_6future6future6Futurep6OutputINtNtB1Y_6result6ResultINtNtB2u_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1Y_6marker4SendEL_EEENtB5_9TryStream13try_poll_nextB4q_"}
!28012 = distinct !{!28012, !28011, !"_RNvXs2_NtCsj3nLz3LBTXi_12futures_core6streamINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1Y_6future6future6Futurep6OutputINtNtB1Y_6result6ResultINtNtB2u_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1Y_6marker4SendEL_EEENtB5_9TryStream13try_poll_nextB4q_: argument 1"}
!28013 = distinct !{!28013, i1 false, !"_RNvXs6_NtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1q_6future6future6Futurep6OutputINtNtB1q_6result6ResultINtNtB1W_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1q_6marker4SendEL_EEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB3S_"}
!28014 = distinct !{!28014, !28013, !"_RNvXs6_NtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1q_6future6future6Futurep6OutputINtNtB1q_6result6ResultINtNtB1W_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1q_6marker4SendEL_EEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB3S_: argument 1"}
!28015 = distinct !{!28015, !28011, !"_RNvXs2_NtCsj3nLz3LBTXi_12futures_core6streamINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1Y_6future6future6Futurep6OutputINtNtB1Y_6result6ResultINtNtB2u_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1Y_6marker4SendEL_EEENtB5_9TryStream13try_poll_nextB4q_: argument 0"}
!28016 = distinct !{!28016, !28013, !"_RNvXs6_NtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1q_6future6future6Futurep6OutputINtNtB1q_6result6ResultINtNtB1W_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1q_6marker4SendEL_EEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB3S_: argument 0"}
!28017 = distinct !{!28017, i1 false, !"_RNvMs2_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB9_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE3popB3k_"}
!28018 = distinct !{!28018, !28017, !"_RNvMs2_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB9_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE3popB3k_: argument 1"}
!28019 = distinct !{!28019, i1 false, !"_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB9_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE3popB3o_"}
!28020 = distinct !{!28020, !28019, !"_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB9_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE3popB3o_: argument 1"}
!28021 = distinct !{!28021, !28017, !"_RNvMs2_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB9_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE3popB3k_: argument 0"}
!28022 = distinct !{!28022, !28019, !"_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB9_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE3popB3o_: argument 0"}
!28023 = distinct !{!28023, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding"}
!28024 = distinct !{!28024, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 1"}
!28025 = distinct !{!28025, i1 false, !"_RNCNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtBb_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE3pop0B3q_"}
!28026 = distinct !{!28026, !28025, !"_RNCNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtBb_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE3pop0B3q_: argument 1"}
!28027 = distinct !{!28027, !28025, !"_RNCNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtBb_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE3pop0B3q_: argument 0"}
!28028 = distinct !{!28028, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28029 = distinct !{!28029, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 1:It1"}
!28030 = distinct !{!28030, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 0:It1"}
!28031 = distinct !{!28031, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 1:It2"}
!28032 = distinct !{!28032, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 0:It2"}
!28033 = distinct !{!28033, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 1:It3"}
!28034 = distinct !{!28034, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 0:It3"}
!28035 = distinct !{!28035, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 1:It4"}
!28036 = distinct !{!28036, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 1:It5"}
!28037 = distinct !{!28037, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 1:It6"}
!28038 = distinct !{!28038, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 0:It6"}
!28039 = distinct !{!28039, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 1:It7"}
!28040 = distinct !{!28040, !28023, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsjjpCCFGI3ul_14lance_encoding: argument 0:It7"}
!28041 = distinct !{!28041, i1 false, !"_RNvXs5_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultINtNtB2D_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB4z_"}
!28042 = distinct !{!28042, !28041, !"_RNvXs5_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultINtNtB2D_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB4z_: argument 1"}
!28043 = distinct !{!28043, !28041, !"_RNvXs5_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultINtNtB2D_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB4z_: argument 2"}
!28044 = distinct !{!28044, !28041, !"_RNvXs5_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultINtNtB2D_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB4z_: argument 0"}
!28045 = distinct !{null}
!28046 = distinct !{!28046, i1 false, !"_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultINtNtB2D_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkB4z_"}
!28047 = distinct !{!28047, !28046, !"_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultINtNtB2D_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkB4z_: argument 0"}
!28048 = distinct !{!28048, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_DNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEEEB4I_"}
!28049 = distinct !{!28049, !28048, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_DNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEEEB4I_: argument 0"}
!28050 = distinct !{!28050, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultIBx_DNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2z_6marker4SendEL_EEEEENtNtNtB2z_3ops4drop4Drop4dropB4w_"}
!28051 = distinct !{!28051, !28050, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultIBx_DNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2z_6marker4SendEL_EEEEENtNtNtB2z_3ops4drop4Drop4dropB4w_: argument 0"}
!28052 = distinct !{!28052, i1 false, !"_RNvXs2_NtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_orderedINtB5_12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1o_6future6future6Futurep6OutputINtNtB1o_6result6ResultINtNtB1U_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1o_6marker4SendEL_EEEB2p_4pollB3Q_"}
!28053 = distinct !{!28053, !28052, !"_RNvXs2_NtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_orderedINtB5_12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1o_6future6future6Futurep6OutputINtNtB1o_6result6ResultINtNtB1U_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1o_6marker4SendEL_EEEB2p_4pollB3Q_: argument 1"}
!28054 = distinct !{!28054, !28052, !"_RNvXs2_NtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_orderedINtB5_12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1o_6future6future6Futurep6OutputINtNtB1o_6result6ResultINtNtB1U_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1o_6marker4SendEL_EEEB2p_4pollB3Q_: argument 2"}
!28055 = distinct !{!28055, !28052, !"_RNvXs2_NtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_orderedINtB5_12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1o_6future6future6Futurep6OutputINtNtB1o_6result6ResultINtNtB1U_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1o_6marker4SendEL_EEEB2p_4pollB3Q_: argument 0"}
!28056 = distinct !{!28056, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2C_"}
!28057 = distinct !{!28057, !28056, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2C_: argument 1"}
!28058 = distinct !{!28058, !28056, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2C_: argument 0"}
!28059 = distinct !{null}
!28060 = distinct !{!28060, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_DNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEEEB4I_"}
!28061 = distinct !{!28061, !28060, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_DNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEEEB4I_: argument 0"}
!28062 = distinct !{!28062, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultIBx_DNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2z_6marker4SendEL_EEEEENtNtNtB2z_3ops4drop4Drop4dropB4w_"}
!28063 = distinct !{!28063, !28062, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultIBx_DNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2z_6marker4SendEL_EEEEENtNtNtB2z_3ops4drop4Drop4dropB4w_: argument 0"}
!28064 = distinct !{!28064, i1 false, !"_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB9_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE4pushB3o_"}
!28065 = distinct !{!28065, !28064, !"_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB9_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE4pushB3o_: argument 0"}
!28066 = distinct !{!28066, !28064, !"_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB9_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE4pushB3o_: argument 1"}
!28067 = distinct !{!28067, i1 false, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB7_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE8push_mutB2S_"}
!28068 = distinct !{!28068, !28067, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB7_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE8push_mutB2S_: argument 0"}
!28069 = distinct !{!28069, !28067, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB7_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE8push_mutB2S_: argument 1"}
!28070 = distinct !{!28070, i1 false, !"_RINvXsi_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendBG_E6extendINtNtB2w_6option6OptionBG_EEB16_"}
!28071 = distinct !{!28071, !28070, !"_RINvXsi_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendBG_E6extendINtNtB2w_6option6OptionBG_EEB16_: argument 0"}
!28072 = distinct !{!28072, i1 false, !"_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB6_3VecINtNtB8_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EEINtB4_10SpecExtendBT_INtNtCscI6d9CVNmLh_4core6option8IntoIterBT_EE11spec_extendB1j_"}
!28073 = distinct !{!28073, !28072, !"_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB6_3VecINtNtB8_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EEINtB4_10SpecExtendBT_INtNtCscI6d9CVNmLh_4core6option8IntoIterBT_EE11spec_extendB1j_: argument 0"}
!28074 = distinct !{!28074, i1 false, !"_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterBG_EEB16_"}
!28075 = distinct !{!28075, !28074, !"_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterBG_EEB16_: argument 0"}
!28076 = distinct !{!28076, i1 false, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EE7reserveB14_"}
!28077 = distinct !{!28077, !28076, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EE7reserveB14_: argument 0"}
!28078 = distinct !{!28078, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EEEB1G_"}
!28079 = distinct !{!28079, !28078, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EEEB1G_: argument 0"}
!28080 = distinct !{!28080, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option4ItemINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EEEB1C_"}
!28081 = distinct !{!28081, !28080, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option4ItemINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EEEB1C_: argument 0"}
!28082 = distinct !{!28082, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EEEB1E_"}
!28083 = distinct !{!28083, !28082, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EEEB1E_: argument 0"}
!28084 = distinct !{!28084, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EEB1i_"}
!28085 = distinct !{!28085, !28084, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EEB1i_: argument 0"}
!28086 = distinct !{!28086, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_"}
!28087 = distinct !{!28087, !28086, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_: argument 0"}
!28088 = distinct !{!28088, i1 false, !"_RINvYINtNtCscI6d9CVNmLh_4core6option8IntoIterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtBM_3vecINtB3C_3VecBH_E14extend_trustedB3_E0EB1o_"}
!28089 = distinct !{!28089, !28088, !"_RINvYINtNtCscI6d9CVNmLh_4core6option8IntoIterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtBM_3vecINtB3C_3VecBH_E14extend_trustedB3_E0EB1o_: argument 0"}
!28090 = distinct !{!28090, i1 false, !"_RINvYINtNtCscI6d9CVNmLh_4core6option8IntoIterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callBH_NCINvMsj_NtBM_3vecINtB41_3VecBH_E14extend_trustedB3_E0E0EB1o_"}
!28091 = distinct !{!28091, !28090, !"_RINvYINtNtCscI6d9CVNmLh_4core6option8IntoIterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callBH_NCINvMsj_NtBM_3vecINtB41_3VecBH_E14extend_trustedB3_E0E0EB1o_: argument 0"}
!28092 = distinct !{!28092, i1 false, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENCINvMsj_NtB1k_3vecINtB3l_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0B1W_"}
!28093 = distinct !{!28093, !28092, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENCINvMsj_NtB1k_3vecINtB3l_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0B1W_: argument 1"}
!28094 = distinct !{!28094, !28092, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENCINvMsj_NtB1k_3vecINtB3l_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0B1W_: argument 0"}
!28095 = distinct !{!28095, i1 false, !"_RNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB8_3VecINtNtBa_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterBI_EE0B18_"}
!28096 = distinct !{!28096, !28095, !"_RNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB8_3VecINtNtBa_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterBI_EE0B18_: argument 1"}
!28097 = distinct !{!28097, !28095, !"_RNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB8_3VecINtNtBa_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterBI_EE0B18_: argument 0"}
!28098 = distinct !{!28098, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_collect10TryCollectINtNtBI_15futures_ordered14FuturesOrderedINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2U_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEINtNtB2U_3vec3VecB4n_EEEB4O_"}
!28099 = distinct !{!28099, !28098, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_collect10TryCollectINtNtBI_15futures_ordered14FuturesOrderedINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2U_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEINtNtB2U_3vec3VecB4n_EEEB4O_: argument 0"}
!28100 = distinct !{!28100, i1 false, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataE3newBO_"}
!28101 = distinct !{!28101, !28100, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataE3newBO_: argument 0"}
!28102 = distinct !{!28102, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEE3newB18_"}
!28103 = distinct !{!28103, !28102, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEE3newB18_: argument 0"}
!28104 = distinct !{!28104, i1 false, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache15insert_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0B1m_"}
!28105 = distinct !{!28105, !28104, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache15insert_with_keyNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyE0B1m_: argument 0"}
!28106 = distinct !{!28106, i1 false, !"_RINvMNtCs63DIHKhvmTb_10lance_core5cacheNtB3_10CacheState10entry_sizeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEB1c_"}
!28107 = distinct !{!28107, !28106, !"_RINvMNtCs63DIHKhvmTb_10lance_core5cacheNtB3_10CacheState10entry_sizeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEB1c_: argument 0"}
!28108 = distinct !{!28108, i1 false, !"_RNvMsd_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1R_3AnyNtNtB1T_6marker4SyncNtB3g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1T_6option6OptionjEEE3newCsjjpCCFGI3ul_14lance_encoding"}
!28109 = distinct !{!28109, !28108, !"_RNvMsd_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1R_3AnyNtNtB1T_6marker4SyncNtB3g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1T_6option6OptionjEEE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28110 = distinct !{!28110, i1 false, !"_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsjjpCCFGI3ul_14lance_encoding"}
!28111 = distinct !{!28111, !28110, !"_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28112 = distinct !{!28112, !28110, !"_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsjjpCCFGI3ul_14lance_encoding: argument 1"}
!28113 = distinct !{!28113, i1 false, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsjjpCCFGI3ul_14lance_encoding"}
!28114 = distinct !{!28114, !28113, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28115 = distinct !{!28115, i1 false, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!28116 = distinct !{!28116, !28115, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!28117 = distinct !{!28117, !28113, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsjjpCCFGI3ul_14lance_encoding: argument 1"}
!28118 = distinct !{!28118, !28115, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!28119 = distinct !{!28119, i1 false, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!28120 = distinct !{!28120, !28119, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!28121 = distinct !{!28121, i1 false, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBU_3AnyNtNtBW_6marker4SyncNtB2i_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBW_6option6OptionjEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CsjjpCCFGI3ul_14lance_encoding"}
!28122 = distinct !{!28122, !28121, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBU_3AnyNtNtBW_6marker4SyncNtB2i_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBW_6option6OptionjEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28123 = distinct !{!28123, i1 false, !"_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsjjpCCFGI3ul_14lance_encoding"}
!28124 = distinct !{!28124, !28123, !"_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28125 = distinct !{!28125, i1 false, !"_RNvMNtCsfKiFC1ztrmh_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB11_3AnyNtNtB13_6marker4SyncNtB2q_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB13_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entryCsjjpCCFGI3ul_14lance_encoding"}
!28126 = distinct !{!28126, !28125, !"_RNvMNtCsfKiFC1ztrmh_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB11_3AnyNtNtB13_6marker4SyncNtB2q_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB13_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entryCsjjpCCFGI3ul_14lance_encoding: argument 1"}
!28127 = distinct !{!28127, !28125, !"_RNvMNtCsfKiFC1ztrmh_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB11_3AnyNtNtB13_6marker4SyncNtB2q_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB13_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entryCsjjpCCFGI3ul_14lance_encoding: argument 2"}
!28128 = distinct !{!28128, !28125, !"_RNvMNtCsfKiFC1ztrmh_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB11_3AnyNtNtB13_6marker4SyncNtB2q_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB13_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entryCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28129 = distinct !{!28129, i1 false, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entry0ECsjjpCCFGI3ul_14lance_encoding"}
!28130 = distinct !{!28130, !28129, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entry0ECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28131 = distinct !{!28131, i1 false, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!28132 = distinct !{!28132, !28131, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!28133 = distinct !{!28133, !28129, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entry0ECsjjpCCFGI3ul_14lance_encoding: argument 1"}
!28134 = distinct !{!28134, !28131, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!28135 = distinct !{!28135, i1 false, !"_RNvYNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofBa_"}
!28136 = distinct !{!28136, !28135, !"_RNvYNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofBa_: argument 0"}
!28137 = distinct !{!28137, i1 false, !"_RNvXsH_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_15CachedFieldDataNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children"}
!28138 = distinct !{!28138, !28137, !"_RNvXsH_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_15CachedFieldDataNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children: argument 0"}
!28139 = distinct !{!28139, i1 false, !"_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EENtB5_10DeepSizeOf21deep_size_of_childrenB1D_"}
!28140 = distinct !{!28140, !28139, !"_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EENtB5_10DeepSizeOf21deep_size_of_childrenB1D_: argument 0"}
!28141 = distinct !{!28141, !28137, !"_RNvXsH_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_15CachedFieldDataNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children: argument 1"}
!28142 = distinct !{!28142, !28139, !"_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EENtB5_10DeepSizeOf21deep_size_of_childrenB1D_: argument 1"}
!28143 = distinct !{!28143, i1 false, !"_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2U_8adapters3map8map_foldRBQ_jjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtBV_3vec3VecBQ_ENtB4m_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtB2S_5accumjNtB66_3Sum3sumINtB3E_3MapBF_B4e_EE0E0EB1x_"}
!28144 = distinct !{!28144, !28143, !"_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2U_8adapters3map8map_foldRBQ_jjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtBV_3vec3VecBQ_ENtB4m_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtB2S_5accumjNtB66_3Sum3sumINtB3E_3MapBF_B4e_EE0E0EB1x_: argument 0"}
!28145 = distinct !{!28145, i1 false, !"_RNvXsb_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtB5_10DeepSizeOf21deep_size_of_childrenB1n_"}
!28146 = distinct !{!28146, !28145, !"_RNvXsb_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive14CachedPageDataEL_ENtB5_10DeepSizeOf21deep_size_of_childrenB1n_: argument 0"}
!28147 = distinct !{!28147, i1 false, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!28148 = distinct !{!28148, !28147, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!28149 = distinct !{!28149, i1 false, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBU_3AnyNtNtBW_6marker4SyncNtB2i_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBW_6option6OptionjEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entry0E0CsjjpCCFGI3ul_14lance_encoding"}
!28150 = distinct !{!28150, !28149, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBU_3AnyNtNtBW_6marker4SyncNtB2i_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBW_6option6OptionjEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entry0E0CsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28151 = distinct !{!28151, i1 false, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjjpCCFGI3ul_14lance_encoding"}
!28152 = distinct !{!28152, !28151, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28153 = distinct !{!28153, !28151, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjjpCCFGI3ul_14lance_encoding: argument 1"}
!28154 = distinct !{!28154, i1 false, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB2f_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBT_6option6OptionjEEE14insert_no_growCsjjpCCFGI3ul_14lance_encoding"}
!28155 = distinct !{!28155, !28154, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB2f_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBT_6option6OptionjEEE14insert_no_growCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28156 = distinct !{!28156, i1 false, !"_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntryNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB14_3AnyNtNtB16_6marker4SyncNtB2t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB16_6option6OptionjEE9or_insertCsjjpCCFGI3ul_14lance_encoding"}
!28157 = distinct !{!28157, !28156, !"_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntryNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB14_3AnyNtNtB16_6marker4SyncNtB2t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB16_6option6OptionjEE9or_insertCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28158 = distinct !{!28158, !28154, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB2f_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBT_6option6OptionjEEE14insert_no_growCsjjpCCFGI3ul_14lance_encoding: argument 1"}
!28159 = distinct !{!28159, i1 false, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!28160 = distinct !{!28160, !28159, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!28161 = distinct !{!28161, i1 false, !"_RNvYNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecBa_"}
!28162 = distinct !{!28162, !28161, !"_RNvYNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FieldDataCacheKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecBa_: argument 0"}
!28163 = distinct !{!28163, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding"}
!28164 = distinct !{!28164, !28163, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28165 = distinct !{null}
!28166 = distinct !{!28166, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_"}
!28167 = distinct !{!28167, !28166, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_: argument 0"}
!28168 = distinct !{!28168, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBO_"}
!28169 = distinct !{!28169, !28168, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBO_: argument 0"}
!28170 = distinct !{!28170, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheEECsjjpCCFGI3ul_14lance_encoding"}
!28171 = distinct !{!28171, !28170, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28172 = distinct !{!28172, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!28173 = distinct !{!28173, !28172, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28174 = distinct !{!28174, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_"}
!28175 = distinct !{!28175, !28174, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataEEB1h_: argument 0"}
!28176 = distinct !{!28176, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBO_"}
!28177 = distinct !{!28177, !28176, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive15CachedFieldDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBO_: argument 0"}
!28178 = !{!27922}
!28179 = !{!27924}
!28180 = !{!27927, !27926, !27922}
!28181 = !{!27930}
!28182 = !{!27931}
!28183 = !{!27930, !27931, !27922}
!28184 = !{!27935, !27933, !27930, !27931}
!28185 = !{!27931, !27922}
!28186 = !{!27939, !27937, !27922}
!28187 = !{!27945, !27943, !27941}
!28188 = !{!27951, !27949, !27947}
!28189 = !{!27955, !27953, !27951, !27949, !27947}
!28190 = !{!27960, !27958}
!28191 = !{!27964, !27962}
!28192 = !{!27966}
!28193 = !{!27968}
!28194 = !{!27968, !27966}
!28195 = !{!27976, !27974, !27973, !27971, !27970}
!28196 = !{!27978, !27976, !27974, !27973, !27971, !27970}
!28197 = !{!27980, !27976, !27974, !27973, !27971, !27970}
!28198 = !{!27988, !27987, !27986, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28199 = !{!27991, !27990, !27988, !27987, !27986, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28200 = !{!27991, !27990, !27988, !27987, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28201 = !{!27994}
!28202 = !{!27996, !27995, !27991, !27990, !27988, !27987, !27986, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28203 = !{!27998, !27996, !27994, !27995, !27991, !27990, !27988, !27987, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28204 = !{!28000, !27998, !27996, !27994, !27995, !27991, !27990, !27988, !27987, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28205 = !{!28000, !27998, !27996, !27994, !27995, !27991, !27990, !27988, !27987, !27986, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28206 = !{!27998, !27996, !27994, !27991, !27990}
!28207 = !{!27998, !27996, !27994, !27991, !27990, !27988, !27987, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28208 = !{!27998, !27996, !27994, !27995, !27991, !27990, !27988, !27987, !27986, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28209 = !{!28002, !27998, !27996, !27994, !27991, !27990, !27988, !27987, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28210 = !{!27998, !27996, !27995, !27991, !27990, !27988, !27987, !27986, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28211 = !{!27996, !27991, !27990, !27988, !27987, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28212 = !{!27996, !27994, !27991, !27990, !27988, !27987, !27984, !27983, !27982, !27974, !27973, !27971, !27970}
!28213 = !{!28004}
!28214 = !{!28006}
!28215 = !{!28006, !28004}
!28216 = !{!28008}
!28217 = !{!28009}
!28218 = !{!28010, !28008}
!28219 = !{!28012}
!28220 = !{!28014}
!28221 = !{!28014, !28012, !28008}
!28222 = !{!28016, !28015, !28010, !28009}
!28223 = !{!28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28224 = !{!28018}
!28225 = !{!28020}
!28226 = !{!28020, !28018, !28014, !28012, !28008}
!28227 = !{!28022, !28021, !28016, !28015, !28010, !28009}
!28228 = !{!28022, !28020, !28021, !28018, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28229 = !{!28024}
!28230 = !{!28028, !28027, !28026, !28022, !28020, !28021, !28018, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28231 = !{!28029}
!28232 = !{!28030, !28027, !28026, !28022, !28020, !28021, !28018, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28233 = !{!28031}
!28234 = !{!28032, !28027, !28026, !28022, !28020, !28021, !28018, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28235 = !{!28033}
!28236 = !{!28034, !28027, !28026, !28022, !28020, !28021, !28018, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28237 = !{!28036, !28035}
!28238 = !{!28027, !28026, !28022, !28020, !28021, !28018, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28239 = !{!28037}
!28240 = !{!28038, !28027, !28026, !28022, !28020, !28021, !28018, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28241 = !{!28039}
!28242 = !{!28040, !28027, !28026, !28022, !28020, !28021, !28018, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28243 = !{!28042}
!28244 = !{!28042, !28014, !28012, !28008}
!28245 = !{!28044, !28043, !28016, !28015, !28010, !28009}
!28246 = !{!28044, !28042, !28043, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28247 = !{!28047}
!28248 = !{!28047, !28042, !28014, !28012, !28008}
!28249 = !{!28047, !28044, !28042, !28043, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28250 = !{!28051, !28049, !28044, !28042, !28043, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28251 = !{!28053}
!28252 = !{!28055, !28054, !28044, !28042, !28043, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28253 = !{!28055, !28053, !28054, !28044, !28042, !28043, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28254 = !{!28058, !28057, !28055, !28053, !28054, !28044, !28042, !28043, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28255 = !{!28063, !28061, !28044, !28042, !28043, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28256 = !{!28065}
!28257 = !{!28065, !28014, !28012, !28008}
!28258 = !{!28066, !28016, !28015, !28010, !28009}
!28259 = !{!28068}
!28260 = !{!28068, !28065, !28014, !28012, !28008}
!28261 = !{!28069, !28066, !28016, !28015, !28010, !28009}
!28262 = !{!28068, !28065, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28263 = !{!28065, !28066, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28264 = !{!28065, !28016, !28014, !28015, !28012, !28010, !28008, !28009}
!28265 = !{!28014, !28012, !28010, !28008, !28009}
!28266 = !{!28010, !28009}
!28267 = !{!28071}
!28268 = !{!28073}
!28269 = !{!28075}
!28270 = !{!28073, !28071, !28010, !28008, !28009}
!28271 = !{!28075, !28073, !28071, !28010, !28008, !28009}
!28272 = !{!28077, !28075, !28073, !28071, !28008}
!28273 = !{!28075, !28073, !28071, !28008}
!28274 = !{!28087, !28085, !28083, !28081, !28079, !28075, !28073, !28071, !28010, !28008, !28009}
!28275 = !{!28097, !28096, !28094, !28093, !28091, !28089, !28075, !28073, !28071, !28010, !28008, !28009}
!28276 = !{!28091, !28089, !28010, !28009}
!28277 = !{!28099}
!28278 = !{!28101}
!28279 = !{!28103, !28101}
!28280 = !{!28105}
!28281 = !{!28107}
!28282 = !{!28107, !28105}
!28283 = !{!28109, !28107, !28105}
!28284 = !{!28111}
!28285 = !{!28112, !28107, !28105}
!28286 = !{!28111, !28107, !28105}
!28287 = !{!28114}
!28288 = !{!28116}
!28289 = !{!28116, !28114, !28111}
!28290 = !{!28118, !28117, !28112, !28107, !28105}
!28291 = !{!28120, !28116, !28118, !28114, !28117, !28111, !28112, !28107, !28105}
!28292 = !{!28122, !28116, !28118, !28114, !28117, !28111, !28112, !28107, !28105}
!28293 = !{!28124, !28107, !28105}
!28294 = !{!28126}
!28295 = !{!28128, !28127, !28107, !28105}
!28296 = !{!28128, !28126, !28107, !28105}
!28297 = !{!28130}
!28298 = !{!28132}
!28299 = !{!28132, !28130, !28126}
!28300 = !{!28134, !28133, !28128, !28127, !28107, !28105}
!28301 = !{!28136}
!28302 = !{!28136, !28107, !28105}
!28303 = !{!28138}
!28304 = !{!28140}
!28305 = !{!28140, !28138, !28136, !28107}
!28306 = !{!28142, !28141, !28105}
!28307 = !{!28144, !28140, !28138, !28136, !28107, !28105}
!28308 = !{!28146, !28140, !28138, !28136, !28107, !28105}
!28309 = !{ptr @_RNvXsH_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_15CachedFieldDataNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children}
!28310 = !{!28148, !28132, !28134, !28130, !28133, !28128, !28126, !28127, !28107, !28105}
!28311 = !{!28150, !28132, !28134, !28130, !28133, !28128, !28126, !28127, !28107, !28105}
!28312 = !{!28152, !28126}
!28313 = !{!28153, !28128, !28127, !28107, !28105}
!28314 = !{!28155}
!28315 = !{!28158, !28157, !28107, !28105}
!28316 = !{!28160, !28155, !28158, !28157, !28107, !28105}
!28317 = !{!28155, !28158, !28157, !28107, !28105}
!28318 = !{!28155, !28157, !28107, !28105}
!28319 = !{!28162}
!28320 = !{!28164, !28105}
!28321 = !{!28167}
!28322 = !{!28169}
!28323 = !{!28169, !28167}
!28324 = !{!28171}
!28325 = !{!28173}
!28326 = !{!28173, !28171}
!28327 = !{!28177, !28175}
!28328 = distinct !{!28328, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2k_"}
!28329 = distinct !{!28329, !28328, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2k_: argument 1"}
!28330 = distinct !{!28330, !28328, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2k_: argument 2"}
!28331 = distinct !{!28331, !28328, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2k_: argument 0"}
!28332 = distinct !{!28332, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2k_"}
!28333 = distinct !{!28333, !28332, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2k_: argument 1"}
!28334 = distinct !{!28334, !28332, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2k_: argument 2"}
!28335 = distinct !{!28335, !28332, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2k_: argument 0"}
!28336 = distinct !{!28336, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBS_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2y_"}
!28337 = distinct !{!28337, !28336, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBS_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2y_: argument 0"}
!28338 = distinct !{!28338, i1 false, !"_RNvMs2_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical9primitiveNtB5_21PrimitiveFieldDecoder13new_from_data"}
!28339 = distinct !{!28339, !28338, !"_RNvMs2_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical9primitiveNtB5_21PrimitiveFieldDecoder13new_from_data: argument 2"}
!28340 = distinct !{!28340, !28338, !"_RNvMs2_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical9primitiveNtB5_21PrimitiveFieldDecoder13new_from_data: argument 0"}
!28341 = distinct !{!28341, !28338, !"_RNvMs2_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical9primitiveNtB5_21PrimitiveFieldDecoder13new_from_data: argument 1"}
!28342 = distinct !{!28342, i1 false, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14NextDecodeTaskNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_"}
!28343 = distinct !{!28343, !28342, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14NextDecodeTaskNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_: argument 0"}
!28344 = distinct !{!28344, !28342, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14NextDecodeTaskNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_: argument 1"}
!28345 = distinct !{!28345, i1 false, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultTINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsjjpCCFGI3ul_14lance_encoding"}
!28346 = distinct !{!28346, !28345, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultTINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28347 = distinct !{!28347, !28345, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultTINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsjjpCCFGI3ul_14lance_encoding: argument 1"}
!28348 = distinct !{!28348, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_EEB1e_"}
!28349 = distinct !{!28349, !28348, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_EEB1e_: argument 0"}
!28350 = distinct !{!28350, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_"}
!28351 = distinct !{!28351, !28350, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_: argument 0"}
!28352 = distinct !{!28352, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBS_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2y_"}
!28353 = distinct !{!28353, !28352, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBS_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2y_: argument 0"}
!28354 = distinct !{!28354, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical10dictionary21DictionaryPageDecoderE3newBM_"}
!28355 = distinct !{!28355, !28354, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical10dictionary21DictionaryPageDecoderE3newBM_: argument 0"}
!28356 = distinct !{!28356, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_EEB1e_"}
!28357 = distinct !{!28357, !28356, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_EEB1e_: argument 0"}
!28358 = distinct !{!28358, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_"}
!28359 = distinct !{!28359, !28358, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_: argument 0"}
!28360 = distinct !{!28360, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding"}
!28361 = distinct !{!28361, !28360, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28362 = distinct !{!28362, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!28363 = distinct !{!28363, !28362, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28364 = distinct !{!28364, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_EEB1e_"}
!28365 = distinct !{!28365, !28364, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_EEB1e_: argument 0"}
!28366 = distinct !{!28366, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_"}
!28367 = distinct !{!28367, !28366, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_: argument 0"}
!28368 = distinct !{!28368, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBS_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2y_"}
!28369 = distinct !{!28369, !28368, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBS_DNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20PrimitivePageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2y_: argument 0"}
!28370 = distinct !{!28370, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding"}
!28371 = distinct !{!28371, !28370, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28372 = distinct !{!28372, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!28373 = distinct !{!28373, !28372, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!28374 = !{!28329}
!28375 = !{!28331, !28330}
!28376 = !{!28333}
!28377 = !{!28335, !28334}
!28378 = !{!28331, !28329, !28330}
!28379 = !{!28337}
!28380 = !{!28339}
end_hunk_1
