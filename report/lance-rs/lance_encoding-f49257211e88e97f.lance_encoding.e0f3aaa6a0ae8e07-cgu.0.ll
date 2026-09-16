Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RNvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB2_16InlineBitpacking10chunk_data:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !32191)
  %i.cj = load ptr, ptr %i.bp, align 8, !alias.scope !32192, !noalias !32193, !nonnull !75, !noundef !75
  %i.ck = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !32194
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bp)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i unwind label %bb.i, !noalias !32193

bb.i:                                             ; preds = %bb.h
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32195)
  call void @llvm.experimental.noalias.scope.decl(metadata !32196)
  call void @llvm.experimental.noalias.scope.decl(metadata !32197)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !32198, !noalias !32193, !nonnull !75, !noundef !75
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !32199
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.j, label %.body.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cn)
          to label %.body.i unwind label %bb.l, !noalias !32193

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32200)
  call void @llvm.experimental.noalias.scope.decl(metadata !32201)
  call void @llvm.experimental.noalias.scope.decl(metadata !32202)
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !32203, !noalias !32193, !nonnull !75, !noundef !75
  %i.ct = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !32204
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.k, label %.body.thread

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cr)
          to label %.body.thread unwind label %bb.bu, !noalias !32193

bb.l:                                             ; preds = %bb.j
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !32193
  unreachable

bb.m:                                             ; preds = %bb.bo
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.n:                                             ; preds = %bb.f
  store ptr %i.cg, ptr %i.bl, align 8, !alias.scope !32205, !noalias !32206
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.cd, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !32205, !noalias !32206
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %i.cf, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !32205, !noalias !32206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !32181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !32181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !32181
  store ptr %i.bp, ptr %i.bg, align 8, !noalias !32207
  store i8 0, ptr %i.bf, align 1, !noalias !32207
  %i.cx = invoke { ptr, ptr } @_RNvXsb_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB7_4data19FixedWidthDataBlockNtB5_7GetStat8get_stat(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bp, i8 noundef 0)
          to label %.noexc73.i unwind label %bb.q, !noalias !32193 ; 2 uses

.noexc73.i:                                       ; preds = %bb.n
  %i.cy = extractvalue { ptr, ptr } %i.cx, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %bb.o, label %bb.r, !prof !81

bb.o:                                             ; preds = %.noexc73.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !32207
  store ptr %i.bg, ptr %i.be, align 8, !noalias !32207
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtB6_5Debug3fmtBA_, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !32207
  %i.cz = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bf, ptr %i.cz, align 8, !noalias !32207
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr @_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtB4_4StatNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !32207
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @4586, ptr noundef nonnull %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4587) #66
          to label %.noexc74.i unwind label %bb.q, !noalias !32193

.noexc74.i:                                       ; preds = %bb.o
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.s, %.body78.i, %bb.q
  %.pn64.pn.i = phi { ptr, i32 } [ %i.dd, %bb.q ], [ %.pn64.i, %bb.s ], [ %.pn64.i, %.body78.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32208)
  call void @llvm.experimental.noalias.scope.decl(metadata !32209)
  call void @llvm.experimental.noalias.scope.decl(metadata !32210)
  call void @llvm.experimental.noalias.scope.decl(metadata !32211)
  %i.da = load ptr, ptr %i.bl, align 8, !alias.scope !32212, !noalias !32181, !nonnull !75, !noundef !75
  %i.db = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !32213
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.bu, !noalias !32193

bb.q:                                             ; preds = %bb.bn, %bb.o, %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.r:                                             ; preds = %.noexc73.i
  %i.de = extractvalue { ptr, ptr } %i.cx, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !32181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !32181
  store ptr %i.cy, ptr %i.bk, align 8, !noalias !32181
  %i.df = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.de, ptr %i.df, align 8, !noalias !32181
  %i.dg = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bk)
          to label %bb.u unwind label %bb.t, !noalias !32193 ; 2 uses

.body78.i:                                        ; preds = %bb.ak, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit135.i, %bb.ag, %.body.i.sink.split.i.i, %bb.ae, %bb.t
  %.pn64.i = phi { ptr, i32 } [ %eh.lpad-body12.i.ph.i.i, %.body.i.sink.split.i.i ], [ %i.dk, %bb.t ], [ %i.ej, %bb.ag ], [ %i.eg, %bb.ae ], [ %.pn62.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit135.i ], [ %.pn62.i, %bb.ak ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32214)
  call void @llvm.experimental.noalias.scope.decl(metadata !32215)
  %i.dh = load ptr, ptr %i.bk, align 8, !alias.scope !32216, !noalias !32181, !nonnull !75, !noundef !75
  %i.di = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !32217
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.s:                                             ; preds = %.body78.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bk)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.bu, !noalias !32193

bb.t:                                             ; preds = %bb.ab, %bb.w, %bb.u, %bb.r
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body78.i

bb.u:                                             ; preds = %bb.r
  %i.dl = extractvalue { ptr, ptr } %i.dg, 0      ; 4 uses
  %i.dm = extractvalue { ptr, ptr } %i.dg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !32181
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !invariant.load !75, !noalias !32193, !nonnull !75
  invoke void %i.do(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bh, ptr noundef %i.dl)
          to label %bb.v unwind label %bb.t, !noalias !32193

bb.v:                                             ; preds = %bb.u
  %i.dp = load i128, ptr %i.bh, align 16, !noalias !32181, !noundef !75
  %i.dq = icmp eq i128 %i.dp, 160558909810114970933442868382829364862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !32181
  br i1 %i.dq, label %bb.x, label %bb.w, !prof !78

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #66
          to label %bb.aa unwind label %bb.t, !noalias !32193

bb.x:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !32193, !nonnull !75, !noundef !75
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 40 ; 3 uses
  %i.du = load i64, ptr %i.dt, align 8, !noalias !32193, !noundef !75 ; 3 uses
  %i.dv = lshr i64 %i.du, 3                       ; 10 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.dx = and i64 %i.du, -8                       ; 4 uses
  %.not.i77.i = icmp ugt i64 %i.dx, 9223372036854775800
  br i1 %.not.i77.i, label %bb.ab, label %bb.y, !prof !80

bb.y:                                             ; preds = %bb.x
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32218
  %i.dz = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32218 ; 3 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.by, %bb.bc, %bb.aq, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit83.i, %bb.ab, %bb.w
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.x
  %.sroa.4174.0.ph.i = phi i64 [ 8, %bb.z ], [ 0, %bb.x ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4174.0.ph.i, i64 %i.dx) #66
          to label %bb.aa unwind label %bb.t, !noalias !32193

.thread.i:                                        ; preds = %bb.y
  %i.eb = icmp eq i64 %i.dv, 0
  call void @llvm.assume(i1 %i.eb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !32181
  br label %bb.am

bb.ac:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !32219)
  %i.ec = load i64, ptr %i.dw, align 8, !alias.scope !32220, !noalias !32221, !noundef !75 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br i1 %i.ed, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.ac
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @469) #66
          to label %.noexc.i.i.i unwind label %bb.ag, !noalias !32222

.split.i.i:                                       ; preds = %bb.ac, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedhE0NCB1E_s_0E0B1O_.exit.i.i
  %.sroa.012.sroa.7.0.i.i = phi i64 [ %i.ep, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedhE0NCB1E_s_0E0B1O_.exit.i.i ], [ 0, %bb.ac ] ; 5 uses
  %.sroa.012.sroa.6.0.i.i = phi ptr [ %.sroa.011.sroa.4.0.copyload.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedhE0NCB1E_s_0E0B1O_.exit.i.i ], [ %i.dz, %bb.ac ] ; 2 uses
  %.sroa.012.sroa.0.0.i.i = phi i64 [ %.sroa.011.sroa.0.0.copyload.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedhE0NCB1E_s_0E0B1O_.exit.i.i ], [ %i.dv, %bb.ac ] ; 2 uses
  %.sroa.6.0.i.i = phi i64 [ %i.er, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedhE0NCB1E_s_0E0B1O_.exit.i.i ], [ 0, %bb.ac ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.sroa.012.sroa.7.0.i.i
  %.val10.i.i = load i64, ptr %i.ee, align 8, !noalias !32223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !32224
  store i64 %.sroa.012.sroa.0.0.i.i, ptr %i.bd, align 8, !noalias !32225
  store ptr %.sroa.012.sroa.6.0.i.i, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !32225
  store i64 %.sroa.012.sroa.7.0.i.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !32225
  %i.ef = icmp eq i64 %.sroa.012.sroa.7.0.i.i, %.sroa.012.sroa.0.0.i.i
  br i1 %i.ef, label %bb.ad, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedhE0NCB1E_s_0E0B1O_.exit.i.i

.noexc.i.i.i:                                     ; preds = %.split.us.i.i
  unreachable

bb.ad:                                            ; preds = %.split.i.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsmwebYWU4SQ_15crossbeam_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %._crit_edge.i.i.i unwind label %bb.ae, !noalias !32226

._crit_edge.i.i.i:                                ; preds = %bb.ad
  %.pre.i.i.i = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !32227, !noalias !32224
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedhE0NCB1E_s_0E0B1O_.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !32228, !noalias !32224 ; 2 uses
  %i.eh = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.eh, label %.body78.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !32228, !noalias !32224, !nonnull !75, !noundef !75
  br label %.body.i.sink.split.i.i

.body.i.sink.split.i.i:                           ; preds = %bb.ag, %bb.af
  %.sroa.012.sroa.0.0.copyload.sink.i.i = phi i64 [ %.val.i.i.i.i.i, %bb.af ], [ %i.dv, %bb.ag ]
  %.sroa.012.sroa.6.0.copyload.sink.i.i = phi ptr [ %.val1.i.i.i.i.i, %bb.af ], [ %i.dz, %bb.ag ]
  %eh.lpad-body12.i.ph.i.i = phi { ptr, i32 } [ %i.eg, %bb.af ], [ %i.ej, %bb.ag ]
  %i.ei = shl nuw i64 %.sroa.012.sroa.0.0.copyload.sink.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.sroa.6.0.copyload.sink.i.i, i64 noundef %i.ei, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32222
  br label %.body78.i

bb.ag:                                            ; preds = %.split.us.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = icmp eq i64 %i.dv, 0
  br i1 %i.ek, label %.body78.i, label %.body.i.sink.split.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedhE0NCB1E_s_0E0B1O_.exit.i.i: ; preds = %._crit_edge.i.i.i, %.split.i.i
  %i.el = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.012.sroa.6.0.i.i, %.split.i.i ]
  %i.em = shl i64 %.val10.i.i, 10
  %i.en = udiv i64 %i.em, %i.ec                   ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.sroa.012.sroa.7.0.i.i
  store i64 %i.en, ptr %i.eo, align 8, !noalias !32226
  %i.ep = add nuw nsw i64 %.sroa.012.sroa.7.0.i.i, 1 ; 2 uses
  %.sroa.011.sroa.0.0.copyload.i.i = load i64, ptr %i.bd, align 8, !noalias !32229 ; 4 uses
  %.sroa.011.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !32229 ; 4 uses
  %i.eq = add i64 %.sroa.6.0.i.i, 1
  %i.er = add i64 %i.eq, %i.en                    ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !32224
  %i.es = icmp eq i64 %i.ep, %i.dv
  br i1 %i.es, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedhE0NCB2Y_s_0E0EB38_.exit.i, label %.split.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedhE0NCB2Y_s_0E0EB38_.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedhE0NCB1E_s_0E0B1O_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !32181
  %.not.i80.i = icmp slt i64 %i.er, 0
  br i1 %.not.i80.i, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit83.i, label %bb.ah, !prof !32230

bb.ah:                                            ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedhE0NCB2Y_s_0E0EB38_.exit.i
  %i.et = icmp eq i64 %i.er, 0
  br i1 %i.et, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32231
  %i.eu = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !32231 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit83.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ew = ptrtoint ptr %i.eu to i64
  br label %bb.am

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit135.i: ; preds = %bb.ck, %bb.cj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_.exit.i, %bb.al
  %.sroa.0141.0206.i = phi i64 [ %.sroa.011.sroa.0.0.copyload.i.i, %bb.al ], [ %.sroa.0141.0211.ph.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_.exit.i ], [ %.sroa.0141.0211.ph.i, %bb.cj ], [ %.sroa.0141.0211.ph.i, %bb.ck ] ; 2 uses
  %.sroa.5142.0199.i = phi ptr [ %.sroa.011.sroa.4.0.copyload.i.i, %bb.al ], [ %.sroa.5142.0204.ph.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_.exit.i ], [ %.sroa.5142.0204.ph.i, %bb.cj ], [ %.sroa.5142.0204.ph.i, %bb.ck ] ; 2 uses
  %.pn62.i = phi { ptr, i32 } [ %i.ez, %bb.al ], [ %.pn.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_.exit.i ], [ %.pn60245.i, %bb.cj ], [ %.pn60245.i, %bb.ck ] ; 2 uses
  %i.ex = icmp eq i64 %.sroa.0141.0206.i, 0
  br i1 %i.ex, label %.body78.i, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit135.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5142.0199.i) ]
  %i.ey = shl nuw i64 %.sroa.0141.0206.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5142.0199.i, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32232
  br label %.body78.i

bb.al:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit83.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit135.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit83.i: ; preds = %bb.ai, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedhE0NCB2Y_s_0E0EB38_.exit.i
  %.sroa.4178.0.i = phi i64 [ 1, %bb.ai ], [ 0, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedhE0NCB2Y_s_0E0EB38_.exit.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4178.0.i, i64 %i.er) #66
          to label %bb.aa unwind label %bb.al, !noalias !32193

bb.am:                                            ; preds = %bb.aj, %bb.ah, %.thread.i
  %.sroa.0141.0211.ph.i = phi i64 [ 0, %.thread.i ], [ %.sroa.011.sroa.0.0.copyload.i.i, %bb.ah ], [ %.sroa.011.sroa.0.0.copyload.i.i, %bb.aj ] ; 5 uses
  %.sroa.5142.0204.ph.i = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i ], [ %.sroa.011.sroa.4.0.copyload.i.i, %bb.ah ], [ %.sroa.011.sroa.4.0.copyload.i.i, %bb.aj ] ; 8 uses
  %.sroa.9.0195.ph.i = phi i64 [ 0, %.thread.i ], [ 0, %bb.ah ], [ %i.er, %bb.aj ]
  %.sroa.10180.0.ph.i = phi i64 [ 1, %.thread.i ], [ 1, %bb.ah ], [ %i.ew, %bb.aj ]
  %i.fa = inttoptr i64 %.sroa.10180.0.ph.i to ptr
  store i64 %.sroa.9.0195.ph.i, ptr %i.bj, align 8, !noalias !32181
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 7 uses
  store ptr %i.fa, ptr %i.fb, align 8, !noalias !32181
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 8 uses
  store i64 0, ptr %i.fc, align 8, !noalias !32181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !32181
  %i.fd = shl i64 %i.dv, 5                        ; 4 uses
  %i.fe = icmp ugt i64 %i.du, 4611686018427387903
  %.not.i84.i = icmp ugt i64 %i.fd, 9223372036854775800
  %or.cond.i85.i = or i1 %i.fe, %.not.i84.i
  br i1 %or.cond.i85.i, label %bb.aq, label %bb.an, !prof !80

bb.an:                                            ; preds = %bb.am
  %i.ff = icmp eq i64 %i.fd, 0
  br i1 %i.ff, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32233
  %i.fg = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32233 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fi = ptrtoint ptr %i.fg to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_.exit.i: ; preds = %bb.ci, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i
  br i1 %.sroa.032.1.i, label %bb.cj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit135.i

.thread238.i:                                     ; preds = %bb.aq
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.aq:                                            ; preds = %bb.ao, %bb.am
  %.sroa.4182.0.ph.i = phi i64 [ 8, %bb.ao ], [ 0, %bb.am ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4182.0.ph.i, i64 %i.fd) #66
          to label %bb.aa unwind label %.thread238.i, !noalias !32193

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i: ; preds = %bb.ap, %bb.an
  %.sroa.10184.0.i = phi i64 [ %i.fi, %bb.ap ], [ 8, %bb.an ]
  %.sroa.4182.0.i = phi i64 [ %i.dv, %bb.ap ], [ 0, %bb.an ] ; 2 uses
  %i.fk = inttoptr i64 %.sroa.10184.0.i to ptr    ; 2 uses
  %i.fl = icmp samesign ule i64 %i.dv, %.sroa.4182.0.i
  call void @llvm.assume(i1 %i.fl)
  store i64 %.sroa.4182.0.i, ptr %i.bi, align 8, !noalias !32181
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  store ptr %i.fk, ptr %i.fm, align 8, !noalias !32181
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 4 uses
  store i64 0, ptr %i.fn, align 8, !noalias !32181
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5142.0204.ph.i) ]
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5142.0204.ph.i, i64 %i.dv
  %i.fp = add nsw i64 %i.dv, -1                   ; 6 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %.thread251.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i, %bb.cg
  %i.fr = phi ptr [ %i.kk, %bb.cg ], [ %i.fk, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i ]
  %i.fs = phi i64 [ %i.fw, %bb.cg ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i ] ; 8 uses
  %.sroa.0148.0288.i = phi ptr [ %i.fv, %bb.cg ], [ %.sroa.5142.0204.ph.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i ] ; 3 uses
  %.sroa.10151.0286.i = phi i64 [ %i.ft, %bb.cg ], [ %i.fp, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i ]
  %i.ft = add nsw i64 %.sroa.10151.0286.i, -1     ; 2 uses
  %i.fu = icmp eq ptr %.sroa.0148.0288.i, %i.fo
  br i1 %i.fu, label %.thread251.i, label %bb.ar

.loopexit.i:                                      ; preds = %bb.cc, %bb.bx
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body129.i

.loopexit.split-lp.i:                             ; preds = %bb.ce, %.invoke.i, %bb.by, %bb.at, %bb.as
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body129.i

bb.ar:                                            ; preds = %.lr.ph.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0148.0288.i, i64 8
  %i.fw = add nuw nsw i64 %i.fs, 1                ; 3 uses
  %i.fx = shl nuw i64 %i.fs, 10                   ; 4 uses
  %.val69.i = load ptr, ptr %i.dr, align 8, !noalias !32193
  %.val70.i = load i64, ptr %i.dt, align 8, !noalias !32193, !noundef !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !32181
  store i64 %i.fs, ptr %i.bc, align 8, !noalias !32181
  %i.fy = lshr i64 %.val70.i, 3                   ; 2 uses
  %i.fz = icmp samesign ult i64 %i.fs, %i.fy
  br i1 %i.fz, label %bb.bv, label %bb.as, !prof !78

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !32181
  store i64 %i.fy, ptr %i.bb, align 8, !noalias !32181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !32181
  store ptr %i.bc, ptr %i.ba, align 8, !noalias !32181
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !32181
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bb, ptr %i.ga, align 8, !noalias !32181
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !32181
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @2075, ptr noundef nonnull %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2076) #66
          to label %.noexc88.i unwind label %.loopexit.split-lp.i, !noalias !32193

.noexc88.i:                                       ; preds = %bb.as
  unreachable

.thread251.i:                                     ; preds = %bb.cg, %.lr.ph.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i
  %i.gb = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i ], [ %i.fs, %.lr.ph.i ], [ %i.fw, %bb.cg ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bp, i64 40 ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !32180, !noalias !32193, !noundef !75
  %i.ge = and i64 %i.gd, 1023                     ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  %..i = select i1 %i.gf, i64 1024, i64 %i.ge     ; 4 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32234
  %i.gg = call noundef dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 1024, i64 noundef range(i64 1, 17) 1) #63, !noalias !32234 ; 5 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.at, label %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.at:                                            ; preds = %.thread251.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1024) #66
          to label %.noexc90.i unwind label %.loopexit.split-lp.i, !noalias !32193

.noexc90.i:                                       ; preds = %bb.at
  unreachable

_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %.thread251.i
  %i.gi = load i64, ptr %i.gc, align 8, !alias.scope !32180, !noalias !32193, !noundef !75
  %i.gj = sub i64 %i.gi, %..i                     ; 4 uses
  %i.gk = icmp ugt i64 %i.gj, %i.cf
  br i1 %i.gk, label %.invoke388.i, label %bb.au, !prof !81

bb.au:                                            ; preds = %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.gl = sub nuw i64 %i.cf, %i.gj                ; 2 uses
  %.not.i.i.i = icmp eq i64 %..i, %i.gl
  br i1 %.not.i.i.i, label %bb.ax, label %bb.av, !prof !78

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 1, 1025) %..i, i64 noundef range(i64 0, -9223372036854775808) %i.gl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #66
          to label %.noexc91.i unwind label %bb.aw, !noalias !32193

.noexc91.i:                                       ; preds = %bb.av
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %.body106.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEBL_.exit.i.i, %bb.aw
  %.sroa.032.3.i = phi i1 [ true, %bb.aw ], [ false, %.body106.i ], [ true, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEBL_.exit.i.i ]
  %.pn.i = phi { ptr, i32 } [ %i.gm, %bb.aw ], [ %i.ig, %.body106.i ], [ %i.ht, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEBL_.exit.i.i ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gg, i64 noundef 1024, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !32235
  br label %.body129.i

bb.aw:                                            ; preds = %.invoke386.i, %bb.be, %.invoke388.i, %bb.bc, %bb.bb, %bb.ay, %bb.av
  %i.gm = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB2_16InlineBitpacking10chunk_data:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !32294)
  call void @llvm.experimental.noalias.scope.decl(metadata !32295)
  %i.kx = load ptr, ptr %i.bo, align 8, !alias.scope !32296, !noalias !32290, !nonnull !75, !noundef !75
  %i.ky = atomicrmw sub ptr %i.kx, i64 1 release, align 8, !noalias !32297
  %i.kz = icmp eq i64 %i.ky, 1
  br i1 %i.kz, label %bb.cm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i16

bb.cm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bo)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i16 unwind label %bb.cn, !noalias !32290

bb.cn:                                            ; preds = %bb.cm
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32298)
  call void @llvm.experimental.noalias.scope.decl(metadata !32299)
  call void @llvm.experimental.noalias.scope.decl(metadata !32300)
  %i.lc = load ptr, ptr %i.lb, align 8, !alias.scope !32301, !noalias !32290, !nonnull !75, !noundef !75
  %i.ld = atomicrmw sub ptr %i.lc, i64 1 release, align 8, !noalias !32302
  %i.le = icmp eq i64 %i.ld, 1
  br i1 %i.le, label %bb.co, label %.body.i19

bb.co:                                            ; preds = %bb.cn
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lb)
          to label %.body.i19 unwind label %bb.cq, !noalias !32290

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i16: ; preds = %bb.cm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32303)
  call void @llvm.experimental.noalias.scope.decl(metadata !32304)
  call void @llvm.experimental.noalias.scope.decl(metadata !32305)
  %i.lg = load ptr, ptr %i.lf, align 8, !alias.scope !32306, !noalias !32290, !nonnull !75, !noundef !75
  %i.lh = atomicrmw sub ptr %i.lg, i64 1 release, align 8, !noalias !32307
  %i.li = icmp eq i64 %i.lh, 1
  br i1 %i.li, label %bb.cp, label %.body.thread

bb.cp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i16
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lf)
          to label %.body.thread unwind label %bb.ez, !noalias !32290

bb.cq:                                            ; preds = %bb.co
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !32290
  unreachable

bb.cr:                                            ; preds = %bb.et, %bb.cl
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.cs:                                            ; preds = %bb.cl
  %i.ll = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !32289, !noundef !75 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.lo = load i64, ptr %i.ln, align 8, !noalias !32289, !noundef !75 ; 2 uses
  %i.lp = lshr i64 %i.lo, 1                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !32289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !32289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !32289
  store ptr %i.bo, ptr %i.aq, align 8, !noalias !32308
  store i8 0, ptr %i.ap, align 1, !noalias !32308
  %i.lq = invoke { ptr, ptr } @_RNvXsb_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB7_4data19FixedWidthDataBlockNtB5_7GetStat8get_stat(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo, i8 noundef 0)
          to label %.noexc80.i unwind label %bb.cv, !noalias !32290 ; 2 uses

.noexc80.i:                                       ; preds = %bb.cs
  %i.lr = extractvalue { ptr, ptr } %i.lq, 0      ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i21, label %bb.ct, label %bb.cw, !prof !81

bb.ct:                                            ; preds = %.noexc80.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !32308
  store ptr %i.aq, ptr %i.ao, align 8, !noalias !32308
  %.sroa.45.0..sroa_idx.i.i82 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtB6_5Debug3fmtBA_, ptr %.sroa.45.0..sroa_idx.i.i82, align 8, !noalias !32308
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.ap, ptr %i.ls, align 8, !noalias !32308
  %.sroa.49.0..sroa_idx.i.i83 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr @_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtB4_4StatNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i83, align 8, !noalias !32308
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @4586, ptr noundef nonnull %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4587) #66
          to label %.noexc81.i unwind label %bb.cv, !noalias !32290

.noexc81.i:                                       ; preds = %bb.ct
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i20: ; preds = %bb.cx, %.body85.i, %bb.cv
  %.pn65.pn.i = phi { ptr, i32 } [ %i.lw, %bb.cv ], [ %.pn65.i, %bb.cx ], [ %.pn65.i, %.body85.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32309)
  call void @llvm.experimental.noalias.scope.decl(metadata !32310)
  call void @llvm.experimental.noalias.scope.decl(metadata !32311)
  call void @llvm.experimental.noalias.scope.decl(metadata !32312)
  %i.lt = load ptr, ptr %i.av, align 8, !alias.scope !32313, !noalias !32289, !nonnull !75, !noundef !75
  %i.lu = atomicrmw sub ptr %i.lt, i64 1 release, align 8, !noalias !32314
  %i.lv = icmp eq i64 %i.lu, 1
  br i1 %i.lv, label %bb.cu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.cu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i20
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.ez, !noalias !32290

bb.cv:                                            ; preds = %bb.es, %bb.ct, %bb.cs
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i20

bb.cw:                                            ; preds = %.noexc80.i
  %i.lx = extractvalue { ptr, ptr } %i.lq, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lx) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !32289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !32289
  store ptr %i.lr, ptr %i.au, align 8, !noalias !32289
  %i.ly = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.lx, ptr %i.ly, align 8, !noalias !32289
  %i.lz = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.au)
          to label %bb.cz unwind label %bb.cy, !noalias !32290 ; 2 uses

.body85.i:                                        ; preds = %bb.dp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit139.i, %bb.dl, %.body.i.sink.split.i.i74, %bb.dj, %bb.cy
  %.pn65.i = phi { ptr, i32 } [ %eh.lpad-body12.i.ph.i.i77, %.body.i.sink.split.i.i74 ], [ %i.md, %bb.cy ], [ %i.nc, %bb.dl ], [ %i.mz, %bb.dj ], [ %.pn63.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit139.i ], [ %.pn63.i, %bb.dp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32315)
  call void @llvm.experimental.noalias.scope.decl(metadata !32316)
  %i.ma = load ptr, ptr %i.au, align 8, !alias.scope !32317, !noalias !32289, !nonnull !75, !noundef !75
  %i.mb = atomicrmw sub ptr %i.ma, i64 1 release, align 8, !noalias !32318
  %i.mc = icmp eq i64 %i.mb, 1
  br i1 %i.mc, label %bb.cx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i20

bb.cx:                                            ; preds = %.body85.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i20 unwind label %bb.ez, !noalias !32290

bb.cy:                                            ; preds = %bb.dg, %bb.db, %bb.cz, %bb.cw
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %.body85.i

bb.cz:                                            ; preds = %bb.cw
  %i.me = extractvalue { ptr, ptr } %i.lz, 0      ; 4 uses
  %i.mf = extractvalue { ptr, ptr } %i.lz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !32289
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mh = load ptr, ptr %i.mg, align 8, !invariant.load !75, !noalias !32290, !nonnull !75
  invoke void %i.mh(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ar, ptr noundef %i.me)
          to label %bb.da unwind label %bb.cy, !noalias !32290

bb.da:                                            ; preds = %bb.cz
  %i.mi = load i128, ptr %i.ar, align 16, !noalias !32289, !noundef !75
  %i.mj = icmp eq i128 %i.mi, 160558909810114970933442868382829364862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !32289
  br i1 %i.mj, label %bb.dc, label %bb.db, !prof !78

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #66
          to label %bb.df unwind label %bb.cy, !noalias !32290

bb.dc:                                            ; preds = %bb.da
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.me) ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 32 ; 3 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !noalias !32290, !nonnull !75, !noundef !75
  %i.mm = getelementptr inbounds nuw i8, ptr %i.me, i64 40 ; 3 uses
  %i.mn = load i64, ptr %i.mm, align 8, !noalias !32290, !noundef !75 ; 3 uses
  %i.mo = lshr i64 %i.mn, 3                       ; 10 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.mq = and i64 %i.mn, -8                       ; 4 uses
  %.not.i84.i22 = icmp ugt i64 %i.mq, 9223372036854775800
  br i1 %.not.i84.i22, label %bb.dg, label %bb.dd, !prof !80

bb.dd:                                            ; preds = %bb.dc
  %i.mr = icmp eq i64 %i.mq, 0
  br i1 %i.mr, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, label %bb.de

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %bb.dd
  %i.ms = icmp eq i64 %i.mo, 0
  call void @llvm.assume(i1 %i.ms)
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedtE0NCB2Y_s_0E0EB38_.exit.i

bb.de:                                            ; preds = %bb.dd
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32319
  %i.mt = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.mq, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32319 ; 3 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.dg, label %bb.dh

bb.df:                                            ; preds = %bb.fd, %bb.eh, %bb.dv, %bb.dr, %bb.dg, %bb.db
  unreachable

bb.dg:                                            ; preds = %bb.de, %bb.dc
  %.sroa.4180.0.ph.i = phi i64 [ 8, %bb.de ], [ 0, %bb.dc ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4180.0.ph.i, i64 %i.mq) #66
          to label %bb.df unwind label %bb.cy, !noalias !32290

bb.dh:                                            ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !32320)
  %i.mv = load i64, ptr %i.mp, align 8, !alias.scope !32321, !noalias !32322, !noundef !75 ; 2 uses
  %i.mw = icmp eq i64 %i.mv, 0
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i24 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  br i1 %i.mw, label %.split.us.i.i80, label %.split.i.i25

.split.us.i.i80:                                  ; preds = %bb.dh
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @469) #66
          to label %.noexc.i.i.i81 unwind label %bb.dl, !noalias !32323

.split.i.i25:                                     ; preds = %bb.dh, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedtE0NCB1E_s_0E0B1O_.exit.i.i
  %.sroa.012.sroa.7.0.i.i26 = phi i64 [ %i.ni, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedtE0NCB1E_s_0E0B1O_.exit.i.i ], [ 0, %bb.dh ] ; 5 uses
  %.sroa.012.sroa.6.0.i.i27 = phi ptr [ %.sroa.011.sroa.4.0.copyload.i.i32, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedtE0NCB1E_s_0E0B1O_.exit.i.i ], [ %i.mt, %bb.dh ] ; 2 uses
  %.sroa.012.sroa.0.0.i.i28 = phi i64 [ %.sroa.011.sroa.0.0.copyload.i.i31, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedtE0NCB1E_s_0E0B1O_.exit.i.i ], [ %i.mo, %bb.dh ] ; 2 uses
  %.sroa.6.0.i.i29 = phi i64 [ %i.nk, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedtE0NCB1E_s_0E0B1O_.exit.i.i ], [ 0, %bb.dh ]
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %.sroa.012.sroa.7.0.i.i26
  %.val10.i.i30 = load i64, ptr %i.mx, align 8, !noalias !32324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !32325
  store i64 %.sroa.012.sroa.0.0.i.i28, ptr %i.an, align 8, !noalias !32326
  store ptr %.sroa.012.sroa.6.0.i.i27, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i23, align 8, !noalias !32326
  store i64 %.sroa.012.sroa.7.0.i.i26, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i24, align 8, !noalias !32326
  %i.my = icmp eq i64 %.sroa.012.sroa.7.0.i.i26, %.sroa.012.sroa.0.0.i.i28
  br i1 %i.my, label %bb.di, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedtE0NCB1E_s_0E0B1O_.exit.i.i

.noexc.i.i.i81:                                   ; preds = %.split.us.i.i80
  unreachable

bb.di:                                            ; preds = %.split.i.i25
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsmwebYWU4SQ_15crossbeam_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %._crit_edge.i.i.i78 unwind label %bb.dj, !noalias !32327

._crit_edge.i.i.i78:                              ; preds = %bb.di
  %.pre.i.i.i79 = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i23, align 8, !alias.scope !32328, !noalias !32325
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedtE0NCB1E_s_0E0B1O_.exit.i.i

bb.dj:                                            ; preds = %bb.di
  %i.mz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i72 = load i64, ptr %i.an, align 8, !alias.scope !32329, !noalias !32325 ; 2 uses
  %i.na = icmp eq i64 %.val.i.i.i.i.i72, 0
  br i1 %i.na, label %.body85.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.val1.i.i.i.i.i73 = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i23, align 8, !alias.scope !32329, !noalias !32325, !nonnull !75, !noundef !75
  br label %.body.i.sink.split.i.i74

.body.i.sink.split.i.i74:                         ; preds = %bb.dl, %bb.dk
  %.sroa.012.sroa.0.0.copyload.sink.i.i75 = phi i64 [ %.val.i.i.i.i.i72, %bb.dk ], [ %i.mo, %bb.dl ]
  %.sroa.012.sroa.6.0.copyload.sink.i.i76 = phi ptr [ %.val1.i.i.i.i.i73, %bb.dk ], [ %i.mt, %bb.dl ]
  %eh.lpad-body12.i.ph.i.i77 = phi { ptr, i32 } [ %i.mz, %bb.dk ], [ %i.nc, %bb.dl ]
  %i.nb = shl nuw i64 %.sroa.012.sroa.0.0.copyload.sink.i.i75, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.sroa.6.0.copyload.sink.i.i76, i64 noundef %i.nb, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32323
  br label %.body85.i

bb.dl:                                            ; preds = %.split.us.i.i80
  %i.nc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nd = icmp eq i64 %i.mo, 0
  br i1 %i.nd, label %.body85.i, label %.body.i.sink.split.i.i74

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedtE0NCB1E_s_0E0B1O_.exit.i.i: ; preds = %._crit_edge.i.i.i78, %.split.i.i25
  %i.ne = phi ptr [ %.pre.i.i.i79, %._crit_edge.i.i.i78 ], [ %.sroa.012.sroa.6.0.i.i27, %.split.i.i25 ]
  %i.nf = shl i64 %.val10.i.i30, 10
  %i.ng = udiv i64 %i.nf, %i.mv                   ; 2 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %.sroa.012.sroa.7.0.i.i26
  store i64 %i.ng, ptr %i.nh, align 8, !noalias !32327
  %i.ni = add nuw nsw i64 %.sroa.012.sroa.7.0.i.i26, 1 ; 2 uses
  %.sroa.011.sroa.0.0.copyload.i.i31 = load i64, ptr %i.an, align 8, !noalias !32330 ; 2 uses
  %.sroa.011.sroa.4.0.copyload.i.i32 = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i23, align 8, !noalias !32330 ; 2 uses
  %i.nj = add i64 %.sroa.6.0.i.i29, 1
  %i.nk = add i64 %i.nj, %i.ng                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !32325
  %i.nl = icmp eq i64 %i.ni, %i.mo
  br i1 %i.nl, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedtE0NCB2Y_s_0E0EB38_.exit.i, label %.split.i.i25

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedtE0NCB2Y_s_0E0EB38_.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedtE0NCB1E_s_0E0B1O_.exit.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i
  %.sroa.9.0.i = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i ], [ %i.nk, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedtE0NCB1E_s_0E0B1O_.exit.i.i ] ; 4 uses
  %.sroa.5146.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i ], [ %.sroa.011.sroa.4.0.copyload.i.i32, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedtE0NCB1E_s_0E0B1O_.exit.i.i ] ; 7 uses
  %.sroa.0145.0.i = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i ], [ %.sroa.011.sroa.0.0.copyload.i.i31, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedtE0NCB1E_s_0E0B1O_.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !32289
  %i.nm = shl i64 %.sroa.9.0.i, 1                 ; 4 uses
  %i.nn = icmp slt i64 %.sroa.9.0.i, 0
  %.not.i87.i = icmp ugt i64 %i.nm, 9223372036854775806
  %or.cond.i88.i = or i1 %i.nn, %.not.i87.i
  br i1 %or.cond.i88.i, label %bb.dr, label %bb.dm, !prof !80

bb.dm:                                            ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedtE0NCB2Y_s_0E0EB38_.exit.i
  %i.no = icmp eq i64 %i.nm, 0
  br i1 %i.no, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit90.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32331
  %i.np = call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.nm, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !32331 ; 2 uses
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.nr = ptrtoint ptr %i.np to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit90.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit139.i: ; preds = %bb.fp, %bb.fo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_.exit.i48, %bb.dq
  %.pn63.i = phi { ptr, i32 } [ %i.nu, %bb.dq ], [ %.pn.pn.i39, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_.exit.i48 ], [ %.pn61203.i, %bb.fo ], [ %.pn61203.i, %bb.fp ] ; 2 uses
  %i.ns = icmp eq i64 %.sroa.0145.0.i, 0
  br i1 %i.ns, label %.body85.i, label %bb.dp

bb.dp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit139.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5146.0.i) ]
  %i.nt = shl nuw i64 %.sroa.0145.0.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5146.0.i, i64 noundef %i.nt, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32332
  br label %.body85.i

bb.dq:                                            ; preds = %bb.dr
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit139.i

bb.dr:                                            ; preds = %bb.dn, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedtE0NCB2Y_s_0E0EB38_.exit.i
  %.sroa.4184.0.ph.i = phi i64 [ 2, %bb.dn ], [ 0, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedtE0NCB2Y_s_0E0EB38_.exit.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4184.0.ph.i, i64 %i.nm) #66
          to label %bb.df unwind label %bb.dq, !noalias !32290

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit90.i: ; preds = %bb.do, %bb.dm
  %.sroa.10186.0.i = phi i64 [ %i.nr, %bb.do ], [ 2, %bb.dm ]
  %.sroa.4184.0.i = phi i64 [ %.sroa.9.0.i, %bb.do ], [ 0, %bb.dm ] ; 2 uses
  %i.nv = inttoptr i64 %.sroa.10186.0.i to ptr
  %i.nw = icmp samesign ule i64 %.sroa.9.0.i, %.sroa.4184.0.i
  call void @llvm.assume(i1 %i.nw)
  store i64 %.sroa.4184.0.i, ptr %i.at, align 8, !noalias !32289
  %i.nx = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 7 uses
  store ptr %i.nv, ptr %i.nx, align 8, !noalias !32289
  %i.ny = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 8 uses
  store i64 0, ptr %i.ny, align 8, !noalias !32289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !32289
  %i.nz = shl i64 %i.mo, 5                        ; 4 uses
  %i.oa = icmp ugt i64 %i.mn, 4611686018427387903
  %.not.i91.i = icmp ugt i64 %i.nz, 9223372036854775800
  %or.cond.i92.i = or i1 %i.oa, %.not.i91.i
  br i1 %or.cond.i92.i, label %bb.dv, label %bb.ds, !prof !80

bb.ds:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit90.i
  %i.ob = icmp eq i64 %i.nz, 0
  br i1 %i.ob, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit94.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32333
  %i.oc = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.nz, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32333 ; 2 uses
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.oe = ptrtoint ptr %i.oc to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit94.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_.exit.i48: ; preds = %bb.fn, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i47
  br i1 %.sroa.032.1.i38, label %bb.fo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit139.i

.thread.i71:                                      ; preds = %bb.dv
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.dv:                                            ; preds = %bb.dt, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit90.i
  %.sroa.4188.0.ph.i = phi i64 [ 8, %bb.dt ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit90.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4188.0.ph.i, i64 %i.nz) #66
          to label %bb.df unwind label %.thread.i71, !noalias !32290

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit94.i: ; preds = %bb.du, %bb.ds
  %.sroa.10190.0.i = phi i64 [ %i.oe, %bb.du ], [ 8, %bb.ds ]
  %.sroa.4188.0.i = phi i64 [ %i.mo, %bb.du ], [ 0, %bb.ds ] ; 2 uses
  %i.og = inttoptr i64 %.sroa.10190.0.i to ptr    ; 2 uses
  %i.oh = icmp samesign ule i64 %i.mo, %.sroa.4188.0.i
  call void @llvm.assume(i1 %i.oh)
  store i64 %.sroa.4188.0.i, ptr %i.as, align 8, !noalias !32289
  %i.oi = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  store ptr %i.og, ptr %i.oi, align 8, !noalias !32289
  %i.oj = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 4 uses
  store i64 0, ptr %i.oj, align 8, !noalias !32289
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5146.0.i) ]
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5146.0.i, i64 %i.mo
  %i.ol = add nsw i64 %i.mo, -1                   ; 6 uses
  %i.om = icmp eq i64 %i.ol, 0
  br i1 %i.om, label %.thread209.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit94.i
  %i.on = lshr i64 %i.lo, 11                      ; 2 uses
  %i.oo = shl nuw nsw i64 %i.on, 10
  %i.op = sub nsw i64 %i.lp, %i.oo
  %i.oq = add nuw i64 %i.lp, 1024
  %i.or = lshr i64 %i.oq, 10
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.fl, %.lr.ph.preheader.i
  %i.os = phi ptr [ %i.to, %bb.fl ], [ %i.og, %.lr.ph.preheader.i ]
  %i.ot = phi i64 [ %i.ox, %bb.fl ], [ 0, %.lr.ph.preheader.i ] ; 10 uses
  %.sroa.0152.0246.i = phi ptr [ %i.ow, %bb.fl ], [ %.sroa.5146.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10155.0244.i = phi i64 [ %i.ou, %bb.fl ], [ %i.ol, %.lr.ph.preheader.i ]
  %i.ou = add nsw i64 %.sroa.10155.0244.i, -1     ; 2 uses
  %i.ov = icmp eq ptr %.sroa.0152.0246.i, %i.ok
  br i1 %i.ov, label %.thread209.i, label %bb.dw

.loopexit.i52:                                    ; preds = %bb.fh, %bb.fc
  %lpad.loopexit.i53 = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

.loopexit.split-lp.i36:                           ; preds = %bb.fj, %.invoke.i69, %bb.fd, %bb.dy, %bb.dx
  %lpad.loopexit.split-lp.i37 = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

bb.dw:                                            ; preds = %.lr.ph.i33
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.0152.0246.i, i64 8
  %i.ox = add nuw nsw i64 %i.ot, 1                ; 3 uses
  %i.oy = shl nuw nsw i64 %i.ot, 10               ; 2 uses
  %.val76.i = load ptr, ptr %i.mk, align 8, !noalias !32290
  %.val77.i = load i64, ptr %i.mm, align 8, !noalias !32290, !noundef !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !32289
  store i64 %i.ot, ptr %i.am, align 8, !noalias !32289
  %i.oz = lshr i64 %.val77.i, 3                   ; 2 uses
  %i.pa = icmp samesign ult i64 %i.ot, %i.oz
  br i1 %i.pa, label %bb.fa, label %bb.dx, !prof !78

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !32289
  store i64 %i.oz, ptr %i.al, align 8, !noalias !32289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !32289
  store ptr %i.am, ptr %i.ak, align 8, !noalias !32289
  %.sroa.42.0..sroa_idx.i.i34 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i34, align 8, !noalias !32289
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.al, ptr %i.pb, align 8, !noalias !32289
  %.sroa.46.0..sroa_idx.i.i35 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i35, align 8, !noalias !32289
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @2075, ptr noundef nonnull %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2076) #66
          to label %.noexc95.i unwind label %.loopexit.split-lp.i36, !noalias !32290

.noexc95.i:                                       ; preds = %bb.dx
  unreachable

.thread209.i:                                     ; preds = %bb.fl, %.lr.ph.i33, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit94.i
  %i.pc = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit94.i ], [ %i.ot, %.lr.ph.i33 ], [ %i.ox, %bb.fl ] ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 3 uses
  %i.pe = load i64, ptr %i.pd, align 8, !alias.scope !32288, !noalias !32290, !noundef !75
  %i.pf = and i64 %i.pe, 1023                     ; 2 uses
  %i.pg = icmp eq i64 %i.pf, 0
  %..i54 = select i1 %i.pg, i64 1024, i64 %i.pf   ; 4 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32334
  %i.ph = call noundef align 2 dereferenceable_or_null(2048) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 2048, i64 noundef range(i64 1, 17) 2) #63, !noalias !32334 ; 5 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %bb.dy, label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.dy:                                            ; preds = %.thread209.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 2048) #66
          to label %.noexc98.i unwind label %.loopexit.split-lp.i36, !noalias !32290

.noexc98.i:                                       ; preds = %bb.dy
  unreachable

_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %.thread209.i
  %i.pj = load i64, ptr %i.pd, align 8, !alias.scope !32288, !noalias !32290, !noundef !75
  %i.pk = sub i64 %i.pj, %..i54                   ; 4 uses
  %i.pl = icmp ugt i64 %i.pk, %i.lp
  br i1 %i.pl, label %.invoke339.i, label %bb.dz, !prof !81

bb.dz:                                            ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.pm = sub nuw nsw i64 %i.lp, %i.pk            ; 2 uses
  %.not.i.i.i55 = icmp eq i64 %..i54, %i.pm
  br i1 %.not.i.i.i55, label %bb.ec, label %bb.ea, !prof !78

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvNvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 1, 1025) %..i54, i64 noundef range(i64 0, 4611686018427387904) %i.pm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #66
          to label %.noexc99.i unwind label %bb.eb, !noalias !32290
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB2_16InlineBitpacking10chunk_data:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !32390)
  call void @llvm.experimental.noalias.scope.decl(metadata !32391)
  %i.uc = load ptr, ptr %i.bn, align 8, !alias.scope !32392, !noalias !32386, !nonnull !75, !noundef !75
  %i.ud = atomicrmw sub ptr %i.uc, i64 1 release, align 8, !noalias !32393
  %i.ue = icmp eq i64 %i.ud, 1
  br i1 %i.ue, label %bb.fr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i89

bb.fr:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bn)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i89 unwind label %bb.fs, !noalias !32386

bb.fs:                                            ; preds = %bb.fr
  %i.uf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32394)
  call void @llvm.experimental.noalias.scope.decl(metadata !32395)
  call void @llvm.experimental.noalias.scope.decl(metadata !32396)
  %i.uh = load ptr, ptr %i.ug, align 8, !alias.scope !32397, !noalias !32386, !nonnull !75, !noundef !75
  %i.ui = atomicrmw sub ptr %i.uh, i64 1 release, align 8, !noalias !32398
  %i.uj = icmp eq i64 %i.ui, 1
  br i1 %i.uj, label %bb.ft, label %.body.i92

bb.ft:                                            ; preds = %bb.fs
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ug)
          to label %.body.i92 unwind label %bb.fv, !noalias !32386

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i89: ; preds = %bb.fr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32399)
  call void @llvm.experimental.noalias.scope.decl(metadata !32400)
  call void @llvm.experimental.noalias.scope.decl(metadata !32401)
  %i.ul = load ptr, ptr %i.uk, align 8, !alias.scope !32402, !noalias !32386, !nonnull !75, !noundef !75
  %i.um = atomicrmw sub ptr %i.ul, i64 1 release, align 8, !noalias !32403
  %i.un = icmp eq i64 %i.um, 1
  br i1 %i.un, label %bb.fu, label %.body.thread

bb.fu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i89
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.uk)
          to label %.body.thread unwind label %bb.ie, !noalias !32386

bb.fv:                                            ; preds = %bb.ft
  %i.uo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !32386
  unreachable

bb.fw:                                            ; preds = %bb.hy, %bb.fq
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.fx:                                            ; preds = %bb.fq
  %i.uq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8, !noalias !32385, !noundef !75 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ut = load i64, ptr %i.us, align 8, !noalias !32385, !noundef !75 ; 2 uses
  %i.uu = lshr i64 %i.ut, 2                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !32385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !32385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !32385
  store ptr %i.bn, ptr %i.aa, align 8, !noalias !32404
  store i8 0, ptr %i.z, align 1, !noalias !32404
  %i.uv = invoke { ptr, ptr } @_RNvXsb_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB7_4data19FixedWidthDataBlockNtB5_7GetStat8get_stat(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bn, i8 noundef 0)
          to label %.noexc80.i95 unwind label %bb.ga, !noalias !32386 ; 2 uses

.noexc80.i95:                                     ; preds = %bb.fx
  %i.uw = extractvalue { ptr, ptr } %i.uv, 0      ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i96, label %bb.fy, label %bb.gb, !prof !81

bb.fy:                                            ; preds = %.noexc80.i95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !32404
  store ptr %i.aa, ptr %i.y, align 8, !noalias !32404
  %.sroa.45.0..sroa_idx.i.i224 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtB6_5Debug3fmtBA_, ptr %.sroa.45.0..sroa_idx.i.i224, align 8, !noalias !32404
  %i.ux = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.ux, align 8, !noalias !32404
  %.sroa.49.0..sroa_idx.i.i225 = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtB4_4StatNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i225, align 8, !noalias !32404
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @4586, ptr noundef nonnull %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4587) #66
          to label %.noexc81.i226 unwind label %bb.ga, !noalias !32386

.noexc81.i226:                                    ; preds = %bb.fy
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i93: ; preds = %bb.gc, %.body85.i97, %bb.ga
  %.pn65.pn.i94 = phi { ptr, i32 } [ %i.vb, %bb.ga ], [ %.pn65.i98, %bb.gc ], [ %.pn65.i98, %.body85.i97 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32405)
  call void @llvm.experimental.noalias.scope.decl(metadata !32406)
  call void @llvm.experimental.noalias.scope.decl(metadata !32407)
  call void @llvm.experimental.noalias.scope.decl(metadata !32408)
  %i.uy = load ptr, ptr %i.af, align 8, !alias.scope !32409, !noalias !32385, !nonnull !75, !noundef !75
  %i.uz = atomicrmw sub ptr %i.uy, i64 1 release, align 8, !noalias !32410
  %i.va = icmp eq i64 %i.uz, 1
  br i1 %i.va, label %bb.fz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.fz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i93
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.ie, !noalias !32386

bb.ga:                                            ; preds = %bb.hx, %bb.fy, %bb.fx
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i93

bb.gb:                                            ; preds = %.noexc80.i95
  %i.vc = extractvalue { ptr, ptr } %i.uv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vc) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !32385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !32385
  store ptr %i.uw, ptr %i.ae, align 8, !noalias !32385
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.vc, ptr %i.vd, align 8, !noalias !32385
  %i.ve = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae)
          to label %bb.ge unwind label %bb.gd, !noalias !32386 ; 2 uses

.body85.i97:                                      ; preds = %bb.gu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsjjpCCFGI3ul_14lance_encoding.exit139.i, %bb.gq, %.body.i.sink.split.i.i214, %bb.go, %bb.gd
  %.pn65.i98 = phi { ptr, i32 } [ %eh.lpad-body12.i.ph.i.i217, %.body.i.sink.split.i.i214 ], [ %i.vi, %bb.gd ], [ %i.wh, %bb.gq ], [ %i.we, %bb.go ], [ %.pn63.i148, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsjjpCCFGI3ul_14lance_encoding.exit139.i ], [ %.pn63.i148, %bb.gu ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32411)
  call void @llvm.experimental.noalias.scope.decl(metadata !32412)
  %i.vf = load ptr, ptr %i.ae, align 8, !alias.scope !32413, !noalias !32385, !nonnull !75, !noundef !75
  %i.vg = atomicrmw sub ptr %i.vf, i64 1 release, align 8, !noalias !32414
  %i.vh = icmp eq i64 %i.vg, 1
  br i1 %i.vh, label %bb.gc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i93

bb.gc:                                            ; preds = %.body85.i97
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i93 unwind label %bb.ie, !noalias !32386

bb.gd:                                            ; preds = %bb.gl, %bb.gg, %bb.ge, %bb.gb
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %.body85.i97

bb.ge:                                            ; preds = %bb.gb
  %i.vj = extractvalue { ptr, ptr } %i.ve, 0      ; 4 uses
  %i.vk = extractvalue { ptr, ptr } %i.ve, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !32385
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 24
  %i.vm = load ptr, ptr %i.vl, align 8, !invariant.load !75, !noalias !32386, !nonnull !75
  invoke void %i.vm(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ab, ptr noundef %i.vj)
          to label %bb.gf unwind label %bb.gd, !noalias !32386

bb.gf:                                            ; preds = %bb.ge
  %i.vn = load i128, ptr %i.ab, align 16, !noalias !32385, !noundef !75
  %i.vo = icmp eq i128 %i.vn, 160558909810114970933442868382829364862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !32385
  br i1 %i.vo, label %bb.gh, label %bb.gg, !prof !78

bb.gg:                                            ; preds = %bb.gf
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #66
          to label %bb.gk unwind label %bb.gd, !noalias !32386

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vj) ]
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vj, i64 32 ; 3 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !noalias !32386, !nonnull !75, !noundef !75
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vj, i64 40 ; 3 uses
  %i.vs = load i64, ptr %i.vr, align 8, !noalias !32386, !noundef !75 ; 3 uses
  %i.vt = lshr i64 %i.vs, 3                       ; 10 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.vv = and i64 %i.vs, -8                       ; 4 uses
  %.not.i84.i99 = icmp ugt i64 %i.vv, 9223372036854775800
  br i1 %.not.i84.i99, label %bb.gl, label %bb.gi, !prof !80

bb.gi:                                            ; preds = %bb.gh
  %i.vw = icmp eq i64 %i.vv, 0
  br i1 %i.vw, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i223, label %bb.gj

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i223: ; preds = %bb.gi
  %i.vx = icmp eq i64 %i.vt, 0
  call void @llvm.assume(i1 %i.vx)
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedmE0NCB2Y_s_0E0EB38_.exit.i

bb.gj:                                            ; preds = %bb.gi
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32415
  %i.vy = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.vv, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32415 ; 3 uses
  %i.vz = icmp eq ptr %i.vy, null
  br i1 %i.vz, label %bb.gl, label %bb.gm

bb.gk:                                            ; preds = %bb.ii, %bb.hm, %bb.ha, %bb.gw, %bb.gl, %bb.gg
  unreachable

bb.gl:                                            ; preds = %bb.gj, %bb.gh
  %.sroa.4180.0.ph.i222 = phi i64 [ 8, %bb.gj ], [ 0, %bb.gh ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4180.0.ph.i222, i64 %i.vv) #66
          to label %bb.gk unwind label %bb.gd, !noalias !32386

bb.gm:                                            ; preds = %bb.gj
  call void @llvm.experimental.noalias.scope.decl(metadata !32416)
  %i.wa = load i64, ptr %i.vu, align 8, !alias.scope !32417, !noalias !32418, !noundef !75 ; 2 uses
  %i.wb = icmp eq i64 %i.wa, 0
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i100 = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i101 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br i1 %i.wb, label %.split.us.i.i220, label %.split.i.i102

.split.us.i.i220:                                 ; preds = %bb.gm
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @469) #66
          to label %.noexc.i.i.i221 unwind label %bb.gq, !noalias !32419

.split.i.i102:                                    ; preds = %bb.gm, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedmE0NCB1E_s_0E0B1O_.exit.i.i
  %.sroa.012.sroa.7.0.i.i103 = phi i64 [ %i.wn, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedmE0NCB1E_s_0E0B1O_.exit.i.i ], [ 0, %bb.gm ] ; 5 uses
  %.sroa.012.sroa.6.0.i.i104 = phi ptr [ %.sroa.011.sroa.4.0.copyload.i.i109, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedmE0NCB1E_s_0E0B1O_.exit.i.i ], [ %i.vy, %bb.gm ] ; 2 uses
  %.sroa.012.sroa.0.0.i.i105 = phi i64 [ %.sroa.011.sroa.0.0.copyload.i.i108, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedmE0NCB1E_s_0E0B1O_.exit.i.i ], [ %i.vt, %bb.gm ] ; 2 uses
  %.sroa.6.0.i.i106 = phi i64 [ %i.wp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedmE0NCB1E_s_0E0B1O_.exit.i.i ], [ 0, %bb.gm ]
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %.sroa.012.sroa.7.0.i.i103
  %.val10.i.i107 = load i64, ptr %i.wc, align 8, !noalias !32420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !32421
  store i64 %.sroa.012.sroa.0.0.i.i105, ptr %i.x, align 8, !noalias !32422
  store ptr %.sroa.012.sroa.6.0.i.i104, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i100, align 8, !noalias !32422
  store i64 %.sroa.012.sroa.7.0.i.i103, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i101, align 8, !noalias !32422
  %i.wd = icmp eq i64 %.sroa.012.sroa.7.0.i.i103, %.sroa.012.sroa.0.0.i.i105
  br i1 %i.wd, label %bb.gn, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedmE0NCB1E_s_0E0B1O_.exit.i.i

.noexc.i.i.i221:                                  ; preds = %.split.us.i.i220
  unreachable

bb.gn:                                            ; preds = %.split.i.i102
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsmwebYWU4SQ_15crossbeam_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %._crit_edge.i.i.i218 unwind label %bb.go, !noalias !32423

._crit_edge.i.i.i218:                             ; preds = %bb.gn
  %.pre.i.i.i219 = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i100, align 8, !alias.scope !32424, !noalias !32421
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedmE0NCB1E_s_0E0B1O_.exit.i.i

bb.go:                                            ; preds = %bb.gn
  %i.we = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i212 = load i64, ptr %i.x, align 8, !alias.scope !32425, !noalias !32421 ; 2 uses
  %i.wf = icmp eq i64 %.val.i.i.i.i.i212, 0
  br i1 %i.wf, label %.body85.i97, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %.val1.i.i.i.i.i213 = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i100, align 8, !alias.scope !32425, !noalias !32421, !nonnull !75, !noundef !75
  br label %.body.i.sink.split.i.i214

.body.i.sink.split.i.i214:                        ; preds = %bb.gq, %bb.gp
  %.sroa.012.sroa.0.0.copyload.sink.i.i215 = phi i64 [ %.val.i.i.i.i.i212, %bb.gp ], [ %i.vt, %bb.gq ]
  %.sroa.012.sroa.6.0.copyload.sink.i.i216 = phi ptr [ %.val1.i.i.i.i.i213, %bb.gp ], [ %i.vy, %bb.gq ]
  %eh.lpad-body12.i.ph.i.i217 = phi { ptr, i32 } [ %i.we, %bb.gp ], [ %i.wh, %bb.gq ]
  %i.wg = shl nuw i64 %.sroa.012.sroa.0.0.copyload.sink.i.i215, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.sroa.6.0.copyload.sink.i.i216, i64 noundef %i.wg, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32419
  br label %.body85.i97

bb.gq:                                            ; preds = %.split.us.i.i220
  %i.wh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wi = icmp eq i64 %i.vt, 0
  br i1 %i.wi, label %.body85.i97, label %.body.i.sink.split.i.i214

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedmE0NCB1E_s_0E0B1O_.exit.i.i: ; preds = %._crit_edge.i.i.i218, %.split.i.i102
  %i.wj = phi ptr [ %.pre.i.i.i219, %._crit_edge.i.i.i218 ], [ %.sroa.012.sroa.6.0.i.i104, %.split.i.i102 ]
  %i.wk = shl i64 %.val10.i.i107, 10
  %i.wl = udiv i64 %i.wk, %i.wa                   ; 2 uses
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %.sroa.012.sroa.7.0.i.i103
  store i64 %i.wl, ptr %i.wm, align 8, !noalias !32423
  %i.wn = add nuw nsw i64 %.sroa.012.sroa.7.0.i.i103, 1 ; 2 uses
  %.sroa.011.sroa.0.0.copyload.i.i108 = load i64, ptr %i.x, align 8, !noalias !32426 ; 2 uses
  %.sroa.011.sroa.4.0.copyload.i.i109 = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i100, align 8, !noalias !32426 ; 2 uses
  %i.wo = add i64 %.sroa.6.0.i.i106, 1
  %i.wp = add i64 %i.wo, %i.wl                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !32421
  %i.wq = icmp eq i64 %i.wn, %i.vt
  br i1 %i.wq, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedmE0NCB2Y_s_0E0EB38_.exit.i, label %.split.i.i102

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedmE0NCB2Y_s_0E0EB38_.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedmE0NCB1E_s_0E0B1O_.exit.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i223
  %.sroa.9.0.i110 = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i223 ], [ %i.wp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedmE0NCB1E_s_0E0B1O_.exit.i.i ] ; 4 uses
  %.sroa.5146.0.i112 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i223 ], [ %.sroa.011.sroa.4.0.copyload.i.i109, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedmE0NCB1E_s_0E0B1O_.exit.i.i ] ; 7 uses
  %.sroa.0145.0.i113 = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i223 ], [ %.sroa.011.sroa.0.0.copyload.i.i108, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedmE0NCB1E_s_0E0B1O_.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !32385
  %i.wr = shl i64 %.sroa.9.0.i110, 2              ; 4 uses
  %i.ws = icmp ugt i64 %.sroa.9.0.i110, 4611686018427387903
  %.not.i87.i114 = icmp ugt i64 %i.wr, 9223372036854775804
  %or.cond.i88.i115 = or i1 %i.ws, %.not.i87.i114
  br i1 %or.cond.i88.i115, label %bb.gw, label %bb.gr, !prof !80

bb.gr:                                            ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedmE0NCB2Y_s_0E0EB38_.exit.i
  %i.wt = icmp eq i64 %i.wr, 0
  br i1 %i.wt, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit90.i116, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32427
  %i.wu = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.wr, i64 noundef range(i64 1, -9223372036854775807) 4) #63, !noalias !32427 ; 2 uses
  %i.wv = icmp eq ptr %i.wu, null
  br i1 %i.wv, label %bb.gw, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ww = ptrtoint ptr %i.wu to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit90.i116

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsjjpCCFGI3ul_14lance_encoding.exit139.i: ; preds = %bb.iu, %bb.it, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_.exit.i147, %bb.gv
  %.pn63.i148 = phi { ptr, i32 } [ %i.wz, %bb.gv ], [ %.pn.pn.i137, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_.exit.i147 ], [ %.pn61203.i149, %bb.it ], [ %.pn61203.i149, %bb.iu ] ; 2 uses
  %i.wx = icmp eq i64 %.sroa.0145.0.i113, 0
  br i1 %i.wx, label %.body85.i97, label %bb.gu

bb.gu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsjjpCCFGI3ul_14lance_encoding.exit139.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5146.0.i112) ]
  %i.wy = shl nuw i64 %.sroa.0145.0.i113, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5146.0.i112, i64 noundef %i.wy, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32428
  br label %.body85.i97

bb.gv:                                            ; preds = %bb.gw
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsjjpCCFGI3ul_14lance_encoding.exit139.i

bb.gw:                                            ; preds = %bb.gs, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedmE0NCB2Y_s_0E0EB38_.exit.i
  %.sroa.4184.0.ph.i211 = phi i64 [ 4, %bb.gs ], [ 0, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedmE0NCB2Y_s_0E0EB38_.exit.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4184.0.ph.i211, i64 %i.wr) #66
          to label %bb.gk unwind label %bb.gv, !noalias !32386

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit90.i116: ; preds = %bb.gt, %bb.gr
  %.sroa.10186.0.i117 = phi i64 [ %i.ww, %bb.gt ], [ 4, %bb.gr ]
  %.sroa.4184.0.i118 = phi i64 [ %.sroa.9.0.i110, %bb.gt ], [ 0, %bb.gr ] ; 2 uses
  %i.xa = inttoptr i64 %.sroa.10186.0.i117 to ptr
  %i.xb = icmp samesign ule i64 %.sroa.9.0.i110, %.sroa.4184.0.i118
  call void @llvm.assume(i1 %i.xb)
  store i64 %.sroa.4184.0.i118, ptr %i.ad, align 8, !noalias !32385
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 7 uses
  store ptr %i.xa, ptr %i.xc, align 8, !noalias !32385
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 8 uses
  store i64 0, ptr %i.xd, align 8, !noalias !32385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !32385
  %i.xe = shl i64 %i.vt, 5                        ; 4 uses
  %i.xf = icmp ugt i64 %i.vs, 4611686018427387903
  %.not.i91.i119 = icmp ugt i64 %i.xe, 9223372036854775800
  %or.cond.i92.i120 = or i1 %i.xf, %.not.i91.i119
  br i1 %or.cond.i92.i120, label %bb.ha, label %bb.gx, !prof !80

bb.gx:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit90.i116
  %i.xg = icmp eq i64 %i.xe, 0
  br i1 %i.xg, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit94.i121, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32429
  %i.xh = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.xe, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32429 ; 2 uses
  %i.xi = icmp eq ptr %i.xh, null
  br i1 %i.xi, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.xj = ptrtoint ptr %i.xh to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit94.i121

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_.exit.i147: ; preds = %bb.is, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i145
  br i1 %.sroa.032.1.i136, label %bb.it, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsjjpCCFGI3ul_14lance_encoding.exit139.i

.thread.i210:                                     ; preds = %bb.ha
  %i.xk = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.ha:                                            ; preds = %bb.gy, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit90.i116
  %.sroa.4188.0.ph.i209 = phi i64 [ 8, %bb.gy ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit90.i116 ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4188.0.ph.i209, i64 %i.xe) #66
          to label %bb.gk unwind label %.thread.i210, !noalias !32386

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit94.i121: ; preds = %bb.gz, %bb.gx
  %.sroa.10190.0.i122 = phi i64 [ %i.xj, %bb.gz ], [ 8, %bb.gx ]
  %.sroa.4188.0.i123 = phi i64 [ %i.vt, %bb.gz ], [ 0, %bb.gx ] ; 2 uses
  %i.xl = inttoptr i64 %.sroa.10190.0.i122 to ptr ; 2 uses
  %i.xm = icmp samesign ule i64 %i.vt, %.sroa.4188.0.i123
  call void @llvm.assume(i1 %i.xm)
  store i64 %.sroa.4188.0.i123, ptr %i.ac, align 8, !noalias !32385
  %i.xn = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  store ptr %i.xl, ptr %i.xn, align 8, !noalias !32385
  %i.xo = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  store i64 0, ptr %i.xo, align 8, !noalias !32385
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5146.0.i112) ]
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5146.0.i112, i64 %i.vt
  %i.xq = add nsw i64 %i.vt, -1                   ; 6 uses
  %i.xr = icmp eq i64 %i.xq, 0
  br i1 %i.xr, label %.thread209.i163, label %.lr.ph.preheader.i124

.lr.ph.preheader.i124:                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit94.i121
  %i.xs = lshr i64 %i.ut, 12                      ; 2 uses
  %i.xt = shl nuw nsw i64 %i.xs, 10
  %i.xu = sub nsw i64 %i.uu, %i.xt
  %i.xv = add nuw nsw i64 %i.uu, 1024
  %i.xw = lshr i64 %i.xv, 10
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %bb.iq, %.lr.ph.preheader.i124
  %i.xx = phi ptr [ %i.act, %bb.iq ], [ %i.xl, %.lr.ph.preheader.i124 ]
  %i.xy = phi i64 [ %i.yc, %bb.iq ], [ 0, %.lr.ph.preheader.i124 ] ; 10 uses
  %.sroa.0152.0246.i126 = phi ptr [ %i.yb, %bb.iq ], [ %.sroa.5146.0.i112, %.lr.ph.preheader.i124 ] ; 3 uses
  %.sroa.10155.0244.i128 = phi i64 [ %i.xz, %bb.iq ], [ %i.xq, %.lr.ph.preheader.i124 ]
  %i.xz = add nsw i64 %.sroa.10155.0244.i128, -1  ; 2 uses
  %i.ya = icmp eq ptr %.sroa.0152.0246.i126, %i.xp
  br i1 %i.ya, label %.thread209.i163, label %bb.hb

.loopexit.i156:                                   ; preds = %bb.im, %bb.ih
  %lpad.loopexit.i157 = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i135

.loopexit.split-lp.i133:                          ; preds = %bb.io, %.invoke.i207, %bb.ii, %bb.hd, %bb.hc
  %lpad.loopexit.split-lp.i134 = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i135

bb.hb:                                            ; preds = %.lr.ph.i125
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.0152.0246.i126, i64 8
  %i.yc = add nuw nsw i64 %i.xy, 1                ; 3 uses
  %i.yd = shl nuw nsw i64 %i.xy, 10               ; 2 uses
  %.val76.i129 = load ptr, ptr %i.vp, align 8, !noalias !32386
  %.val77.i130 = load i64, ptr %i.vr, align 8, !noalias !32386, !noundef !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !32385
  store i64 %i.xy, ptr %i.w, align 8, !noalias !32385
  %i.ye = lshr i64 %.val77.i130, 3                ; 2 uses
  %i.yf = icmp samesign ult i64 %i.xy, %i.ye
  br i1 %i.yf, label %bb.if, label %bb.hc, !prof !78

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !32385
  store i64 %i.ye, ptr %i.v, align 8, !noalias !32385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !32385
  store ptr %i.w, ptr %i.u, align 8, !noalias !32385
  %.sroa.42.0..sroa_idx.i.i131 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i131, align 8, !noalias !32385
  %i.yg = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.yg, align 8, !noalias !32385
  %.sroa.46.0..sroa_idx.i.i132 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i132, align 8, !noalias !32385
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @2075, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2076) #66
          to label %.noexc95.i152 unwind label %.loopexit.split-lp.i133, !noalias !32386

.noexc95.i152:                                    ; preds = %bb.hc
  unreachable

.thread209.i163:                                  ; preds = %bb.iq, %.lr.ph.i125, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit94.i121
  %i.yh = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit94.i121 ], [ %i.xy, %.lr.ph.i125 ], [ %i.yc, %bb.iq ] ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 3 uses
  %i.yj = load i64, ptr %i.yi, align 8, !alias.scope !32384, !noalias !32386, !noundef !75
  %i.yk = and i64 %i.yj, 1023                     ; 2 uses
  %i.yl = icmp eq i64 %i.yk, 0
  %..i164 = select i1 %i.yl, i64 1024, i64 %i.yk  ; 4 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32430
  %i.ym = call noundef align 4 dereferenceable_or_null(4096) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 4096, i64 noundef range(i64 1, 17) 4) #63, !noalias !32430 ; 5 uses
  %i.yn = icmp eq ptr %i.ym, null
  br i1 %i.yn, label %bb.hd, label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.hd:                                            ; preds = %.thread209.i163
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 4096) #66
          to label %.noexc98.i202 unwind label %.loopexit.split-lp.i133, !noalias !32386

.noexc98.i202:                                    ; preds = %bb.hd
  unreachable

_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %.thread209.i163
  %i.yo = load i64, ptr %i.yi, align 8, !alias.scope !32384, !noalias !32386, !noundef !75
  %i.yp = sub i64 %i.yo, %..i164                  ; 4 uses
  %i.yq = icmp ugt i64 %i.yp, %i.uu
  br i1 %i.yq, label %.invoke339.i200, label %bb.he, !prof !81

bb.he:                                            ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.yr = sub nuw nsw i64 %i.uu, %i.yp            ; 2 uses
  %.not.i.i.i165 = icmp eq i64 %..i164, %i.yr
  br i1 %.not.i.i.i165, label %bb.hh, label %bb.hf, !prof !78

bb.hf:                                            ; preds = %bb.he
  invoke void @_RNvNvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 1, 1025) %..i164, i64 noundef range(i64 0, 2305843009213693952) %i.yr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #66
          to label %.noexc99.i168 unwind label %bb.hg, !noalias !32386
end_hunk_2
begin_hunk_3_@_RNvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB2_16InlineBitpacking10chunk_data:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !32486)
  call void @llvm.experimental.noalias.scope.decl(metadata !32487)
  %i.adh = load ptr, ptr %i.bm, align 8, !alias.scope !32488, !noalias !32482, !nonnull !75, !noundef !75
  %i.adi = atomicrmw sub ptr %i.adh, i64 1 release, align 8, !noalias !32489
  %i.adj = icmp eq i64 %i.adi, 1
  br i1 %i.adj, label %bb.iw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i232

bb.iw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bm)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i232 unwind label %bb.ix, !noalias !32482

bb.ix:                                            ; preds = %bb.iw
  %i.adk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32490)
  call void @llvm.experimental.noalias.scope.decl(metadata !32491)
  call void @llvm.experimental.noalias.scope.decl(metadata !32492)
  %i.adm = load ptr, ptr %i.adl, align 8, !alias.scope !32493, !noalias !32482, !nonnull !75, !noundef !75
  %i.adn = atomicrmw sub ptr %i.adm, i64 1 release, align 8, !noalias !32494
  %i.ado = icmp eq i64 %i.adn, 1
  br i1 %i.ado, label %bb.iy, label %.body.i235

bb.iy:                                            ; preds = %bb.ix
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.adl)
          to label %.body.i235 unwind label %bb.ja, !noalias !32482

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i232: ; preds = %bb.iw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.adp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32495)
  call void @llvm.experimental.noalias.scope.decl(metadata !32496)
  call void @llvm.experimental.noalias.scope.decl(metadata !32497)
  %i.adq = load ptr, ptr %i.adp, align 8, !alias.scope !32498, !noalias !32482, !nonnull !75, !noundef !75
  %i.adr = atomicrmw sub ptr %i.adq, i64 1 release, align 8, !noalias !32499
  %i.ads = icmp eq i64 %i.adr, 1
  br i1 %i.ads, label %bb.iz, label %.body.thread

bb.iz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i232
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.adp)
          to label %.body.thread unwind label %bb.lh, !noalias !32482

bb.ja:                                            ; preds = %bb.iy
  %i.adt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !32482
  unreachable

bb.jb:                                            ; preds = %bb.lb, %bb.iv
  %i.adu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.jc:                                            ; preds = %bb.iv
  %i.adv = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.adw = load ptr, ptr %i.adv, align 8, !noalias !32481, !noundef !75 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ady = load i64, ptr %i.adx, align 8, !noalias !32481, !noundef !75 ; 2 uses
  %i.adz = lshr i64 %i.ady, 3                     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !32481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !32481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !32481
  store ptr %i.bm, ptr %i.k, align 8, !noalias !32500
  store i8 0, ptr %i.j, align 1, !noalias !32500
  %i.aea = invoke { ptr, ptr } @_RNvXsb_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB7_4data19FixedWidthDataBlockNtB5_7GetStat8get_stat(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bm, i8 noundef 0)
          to label %.noexc74.i238 unwind label %bb.jf, !noalias !32482 ; 2 uses

.noexc74.i238:                                    ; preds = %bb.jc
  %i.aeb = extractvalue { ptr, ptr } %i.aea, 0    ; 2 uses
  %.not.i.i239 = icmp eq ptr %i.aeb, null
  br i1 %.not.i.i239, label %bb.jd, label %bb.jg, !prof !81

bb.jd:                                            ; preds = %.noexc74.i238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !32500
  store ptr %i.k, ptr %i.i, align 8, !noalias !32500
  %.sroa.45.0..sroa_idx.i.i308 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtB6_5Debug3fmtBA_, ptr %.sroa.45.0..sroa_idx.i.i308, align 8, !noalias !32500
  %i.aec = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.aec, align 8, !noalias !32500
  %.sroa.49.0..sroa_idx.i.i309 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtB4_4StatNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i309, align 8, !noalias !32500
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @4586, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4587) #66
          to label %.noexc75.i unwind label %bb.jf, !noalias !32482

.noexc75.i:                                       ; preds = %bb.jd
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i236: ; preds = %bb.jh, %.body79.i, %bb.jf
  %.pn65.pn.i237 = phi { ptr, i32 } [ %i.aeg, %bb.jf ], [ %.pn65.i240, %bb.jh ], [ %.pn65.i240, %.body79.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32501)
  call void @llvm.experimental.noalias.scope.decl(metadata !32502)
  call void @llvm.experimental.noalias.scope.decl(metadata !32503)
  call void @llvm.experimental.noalias.scope.decl(metadata !32504)
  %i.aed = load ptr, ptr %i.p, align 8, !alias.scope !32505, !noalias !32481, !nonnull !75, !noundef !75
  %i.aee = atomicrmw sub ptr %i.aed, i64 1 release, align 8, !noalias !32506
  %i.aef = icmp eq i64 %i.aee, 1
  br i1 %i.aef, label %bb.je, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.je:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i236
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.lh, !noalias !32482

bb.jf:                                            ; preds = %bb.la, %bb.jd, %bb.jc
  %i.aeg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i236

bb.jg:                                            ; preds = %.noexc74.i238
  %i.aeh = extractvalue { ptr, ptr } %i.aea, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aeh) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !32481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !32481
  store ptr %i.aeb, ptr %i.o, align 8, !noalias !32481
  %i.aei = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.aeh, ptr %i.aei, align 8, !noalias !32481
  %i.aej = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o)
          to label %bb.jj unwind label %bb.ji, !noalias !32482 ; 2 uses

.body79.i:                                        ; preds = %bb.jz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit135.i, %bb.jv, %.body.i.sink.split.i.i299, %bb.jt, %bb.ji
  %.pn65.i240 = phi { ptr, i32 } [ %eh.lpad-body12.i.ph.i.i302, %.body.i.sink.split.i.i299 ], [ %i.aen, %bb.ji ], [ %i.afm, %bb.jv ], [ %i.afj, %bb.jt ], [ %.pn63.i264, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit135.i ], [ %.pn63.i264, %bb.jz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32507)
  call void @llvm.experimental.noalias.scope.decl(metadata !32508)
  %i.aek = load ptr, ptr %i.o, align 8, !alias.scope !32509, !noalias !32481, !nonnull !75, !noundef !75
  %i.ael = atomicrmw sub ptr %i.aek, i64 1 release, align 8, !noalias !32510
  %i.aem = icmp eq i64 %i.ael, 1
  br i1 %i.aem, label %bb.jh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i236

bb.jh:                                            ; preds = %.body79.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i236 unwind label %bb.lh, !noalias !32482

bb.ji:                                            ; preds = %bb.jq, %bb.jl, %bb.jj, %bb.jg
  %i.aen = landingpad { ptr, i32 }
          cleanup
  br label %.body79.i

bb.jj:                                            ; preds = %bb.jg
  %i.aeo = extractvalue { ptr, ptr } %i.aej, 0    ; 4 uses
  %i.aep = extractvalue { ptr, ptr } %i.aej, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !32481
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 24
  %i.aer = load ptr, ptr %i.aeq, align 8, !invariant.load !75, !noalias !32482, !nonnull !75
  invoke void %i.aer(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noundef %i.aeo)
          to label %bb.jk unwind label %bb.ji, !noalias !32482

bb.jk:                                            ; preds = %bb.jj
  %i.aes = load i128, ptr %i.l, align 16, !noalias !32481, !noundef !75
  %i.aet = icmp eq i128 %i.aes, 160558909810114970933442868382829364862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !32481
  br i1 %i.aet, label %bb.jm, label %bb.jl, !prof !78

bb.jl:                                            ; preds = %bb.jk
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #66
          to label %bb.jp unwind label %bb.ji, !noalias !32482

bb.jm:                                            ; preds = %bb.jk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aeo) ]
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aeo, i64 32 ; 3 uses
  %i.aev = load ptr, ptr %i.aeu, align 8, !noalias !32482, !nonnull !75, !noundef !75
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeo, i64 40 ; 3 uses
  %i.aex = load i64, ptr %i.aew, align 8, !noalias !32482, !noundef !75 ; 3 uses
  %i.aey = lshr i64 %i.aex, 3                     ; 10 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.afa = and i64 %i.aex, -8                     ; 4 uses
  %.not.i78.i = icmp ugt i64 %i.afa, 9223372036854775800
  br i1 %.not.i78.i, label %bb.jq, label %bb.jn, !prof !80

bb.jn:                                            ; preds = %bb.jm
  %i.afb = icmp eq i64 %i.afa, 0
  br i1 %i.afb, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i307, label %bb.jo

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i307: ; preds = %bb.jn
  %i.afc = icmp eq i64 %i.aey, 0
  call void @llvm.assume(i1 %i.afc)
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedyE0NCB2Y_s_0E0EB38_.exit.i

bb.jo:                                            ; preds = %bb.jn
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32511
  %i.afd = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.afa, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32511 ; 3 uses
  %i.afe = icmp eq ptr %i.afd, null
  br i1 %i.afe, label %bb.jq, label %bb.jr

bb.jp:                                            ; preds = %bb.kf, %bb.kb, %bb.jq, %bb.jl
  unreachable

bb.jq:                                            ; preds = %bb.jo, %bb.jm
  %.sroa.4176.0.ph.i = phi i64 [ 8, %bb.jo ], [ 0, %bb.jm ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4176.0.ph.i, i64 %i.afa) #66
          to label %bb.jp unwind label %bb.ji, !noalias !32482

bb.jr:                                            ; preds = %bb.jo
  call void @llvm.experimental.noalias.scope.decl(metadata !32512)
  %i.aff = load i64, ptr %i.aez, align 8, !alias.scope !32513, !noalias !32514, !noundef !75 ; 2 uses
  %i.afg = icmp eq i64 %i.aff, 0
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i241 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i242 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br i1 %i.afg, label %.split.us.i.i305, label %.split.i.i243

.split.us.i.i305:                                 ; preds = %bb.jr
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @469) #66
          to label %.noexc.i.i.i306 unwind label %bb.jv, !noalias !32515

.split.i.i243:                                    ; preds = %bb.jr, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_.exit.i.i
  %.sroa.012.sroa.7.0.i.i244 = phi i64 [ %i.afs, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_.exit.i.i ], [ 0, %bb.jr ] ; 5 uses
  %.sroa.012.sroa.6.0.i.i245 = phi ptr [ %.sroa.011.sroa.4.0.copyload.i.i250, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_.exit.i.i ], [ %i.afd, %bb.jr ] ; 2 uses
  %.sroa.012.sroa.0.0.i.i246 = phi i64 [ %.sroa.011.sroa.0.0.copyload.i.i249, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_.exit.i.i ], [ %i.aey, %bb.jr ] ; 2 uses
  %.sroa.6.0.i.i247 = phi i64 [ %i.afu, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_.exit.i.i ], [ 0, %bb.jr ]
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.aev, i64 %.sroa.012.sroa.7.0.i.i244
  %.val10.i.i248 = load i64, ptr %i.afh, align 8, !noalias !32516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !32517
  store i64 %.sroa.012.sroa.0.0.i.i246, ptr %i.h, align 8, !noalias !32518
  store ptr %.sroa.012.sroa.6.0.i.i245, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i241, align 8, !noalias !32518
  store i64 %.sroa.012.sroa.7.0.i.i244, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i242, align 8, !noalias !32518
  %i.afi = icmp eq i64 %.sroa.012.sroa.7.0.i.i244, %.sroa.012.sroa.0.0.i.i246
  br i1 %i.afi, label %bb.js, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_.exit.i.i

.noexc.i.i.i306:                                  ; preds = %.split.us.i.i305
  unreachable

bb.js:                                            ; preds = %.split.i.i243
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsmwebYWU4SQ_15crossbeam_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %._crit_edge.i.i.i303 unwind label %bb.jt, !noalias !32519

._crit_edge.i.i.i303:                             ; preds = %bb.js
  %.pre.i.i.i304 = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i241, align 8, !alias.scope !32520, !noalias !32517
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_.exit.i.i

bb.jt:                                            ; preds = %bb.js
  %i.afj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i297 = load i64, ptr %i.h, align 8, !alias.scope !32521, !noalias !32517 ; 2 uses
  %i.afk = icmp eq i64 %.val.i.i.i.i.i297, 0
  br i1 %i.afk, label %.body79.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %.val1.i.i.i.i.i298 = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i241, align 8, !alias.scope !32521, !noalias !32517, !nonnull !75, !noundef !75
  br label %.body.i.sink.split.i.i299

.body.i.sink.split.i.i299:                        ; preds = %bb.jv, %bb.ju
  %.sroa.012.sroa.0.0.copyload.sink.i.i300 = phi i64 [ %.val.i.i.i.i.i297, %bb.ju ], [ %i.aey, %bb.jv ]
  %.sroa.012.sroa.6.0.copyload.sink.i.i301 = phi ptr [ %.val1.i.i.i.i.i298, %bb.ju ], [ %i.afd, %bb.jv ]
  %eh.lpad-body12.i.ph.i.i302 = phi { ptr, i32 } [ %i.afj, %bb.ju ], [ %i.afm, %bb.jv ]
  %i.afl = shl nuw i64 %.sroa.012.sroa.0.0.copyload.sink.i.i300, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.sroa.6.0.copyload.sink.i.i301, i64 noundef %i.afl, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32515
  br label %.body79.i

bb.jv:                                            ; preds = %.split.us.i.i305
  %i.afm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afn = icmp eq i64 %i.aey, 0
  br i1 %i.afn, label %.body79.i, label %.body.i.sink.split.i.i299

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_.exit.i.i: ; preds = %._crit_edge.i.i.i303, %.split.i.i243
  %i.afo = phi ptr [ %.pre.i.i.i304, %._crit_edge.i.i.i303 ], [ %.sroa.012.sroa.6.0.i.i245, %.split.i.i243 ]
  %i.afp = shl i64 %.val10.i.i248, 10
  %i.afq = udiv i64 %i.afp, %i.aff                ; 2 uses
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %.sroa.012.sroa.7.0.i.i244
  store i64 %i.afq, ptr %i.afr, align 8, !noalias !32519
  %i.afs = add nuw nsw i64 %.sroa.012.sroa.7.0.i.i244, 1 ; 2 uses
  %.sroa.011.sroa.0.0.copyload.i.i249 = load i64, ptr %i.h, align 8, !noalias !32522 ; 2 uses
  %.sroa.011.sroa.4.0.copyload.i.i250 = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i241, align 8, !noalias !32522 ; 2 uses
  %i.aft = add i64 %.sroa.6.0.i.i247, 1
  %i.afu = add i64 %i.aft, %i.afq                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !32517
  %i.afv = icmp eq i64 %i.afs, %i.aey
  br i1 %i.afv, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedyE0NCB2Y_s_0E0EB38_.exit.i, label %.split.i.i243

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedyE0NCB2Y_s_0E0EB38_.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_.exit.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i307
  %.sroa.9.0.i251 = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i307 ], [ %i.afu, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_.exit.i.i ] ; 4 uses
  %.sroa.5142.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i307 ], [ %.sroa.011.sroa.4.0.copyload.i.i250, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_.exit.i.i ] ; 7 uses
  %.sroa.0141.0.i = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i307 ], [ %.sroa.011.sroa.0.0.copyload.i.i249, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !32481
  %i.afw = shl i64 %.sroa.9.0.i251, 3             ; 4 uses
  %i.afx = icmp ugt i64 %.sroa.9.0.i251, 2305843009213693951
  %.not.i81.i = icmp ugt i64 %i.afw, 9223372036854775800
  %or.cond.i82.i = or i1 %i.afx, %.not.i81.i
  br i1 %or.cond.i82.i, label %bb.kb, label %bb.jw, !prof !80

bb.jw:                                            ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedyE0NCB2Y_s_0E0EB38_.exit.i
  %i.afy = icmp eq i64 %i.afw, 0
  br i1 %i.afy, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit84.i, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32523
  %i.afz = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.afw, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32523 ; 2 uses
  %i.aga = icmp eq ptr %i.afz, null
  br i1 %i.aga, label %bb.kb, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.agb = ptrtoint ptr %i.afz to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit84.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit135.i: ; preds = %bb.lt, %bb.ls, %.body130.i, %bb.ka
  %.pn63.i264 = phi { ptr, i32 } [ %i.age, %bb.ka ], [ %.pn.i276, %.body130.i ], [ %.pn61199.i, %bb.ls ], [ %.pn61199.i, %bb.lt ] ; 2 uses
  %i.agc = icmp eq i64 %.sroa.0141.0.i, 0
  br i1 %i.agc, label %.body79.i, label %bb.jz

bb.jz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit135.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5142.0.i) ]
  %i.agd = shl nuw i64 %.sroa.0141.0.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5142.0.i, i64 noundef %i.agd, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32524
  br label %.body79.i

bb.ka:                                            ; preds = %bb.kb
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit135.i

bb.kb:                                            ; preds = %bb.jx, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedyE0NCB2Y_s_0E0EB38_.exit.i
  %.sroa.4180.0.ph.i296 = phi i64 [ 8, %bb.jx ], [ 0, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedyE0NCB2Y_s_0E0EB38_.exit.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4180.0.ph.i296, i64 %i.afw) #66
          to label %bb.jp unwind label %bb.ka, !noalias !32482

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit84.i: ; preds = %bb.jy, %bb.jw
  %.sroa.10182.0.i = phi i64 [ %i.agb, %bb.jy ], [ 8, %bb.jw ]
  %.sroa.4180.0.i = phi i64 [ %.sroa.9.0.i251, %bb.jy ], [ 0, %bb.jw ] ; 2 uses
  %i.agf = inttoptr i64 %.sroa.10182.0.i to ptr
  %i.agg = icmp samesign ule i64 %.sroa.9.0.i251, %.sroa.4180.0.i
  call void @llvm.assume(i1 %i.agg)
  store i64 %.sroa.4180.0.i, ptr %i.n, align 8, !noalias !32481
  %i.agh = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 7 uses
  store ptr %i.agf, ptr %i.agh, align 8, !noalias !32481
  %i.agi = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 8 uses
  store i64 0, ptr %i.agi, align 8, !noalias !32481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !32481
  %i.agj = shl i64 %i.aey, 5                      ; 4 uses
  %i.agk = icmp ugt i64 %i.aex, 4611686018427387903
  %.not.i85.i = icmp ugt i64 %i.agj, 9223372036854775800
  %or.cond.i86.i = or i1 %i.agk, %.not.i85.i
  br i1 %or.cond.i86.i, label %bb.kf, label %bb.kc, !prof !80

bb.kc:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit84.i
  %i.agl = icmp eq i64 %i.agj, 0
  br i1 %i.agl, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit88.i, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32525
  %i.agm = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.agj, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !32525 ; 2 uses
  %i.agn = icmp eq ptr %i.agm, null
  br i1 %i.agn, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.ago = ptrtoint ptr %i.agm to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit88.i

.thread.i295:                                     ; preds = %bb.kf
  %i.agp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ls

bb.kf:                                            ; preds = %bb.kd, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit84.i
  %.sroa.4184.0.ph.i294 = phi i64 [ 8, %bb.kd ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit84.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4184.0.ph.i294, i64 %i.agj) #66
          to label %bb.jp unwind label %.thread.i295, !noalias !32482

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit88.i: ; preds = %bb.ke, %bb.kc
  %.sroa.10186.0.i253 = phi i64 [ %i.ago, %bb.ke ], [ 8, %bb.kc ]
  %.sroa.4184.0.i254 = phi i64 [ %i.aey, %bb.ke ], [ 0, %bb.kc ] ; 2 uses
  %i.agq = inttoptr i64 %.sroa.10186.0.i253 to ptr ; 2 uses
  %i.agr = icmp samesign ule i64 %i.aey, %.sroa.4184.0.i254
  call void @llvm.assume(i1 %i.agr)
  store i64 %.sroa.4184.0.i254, ptr %i.m, align 8, !noalias !32481
  %i.ags = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.agq, ptr %i.ags, align 8, !noalias !32481
  %i.agt = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.agt, align 8, !noalias !32481
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5142.0.i) ]
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5142.0.i, i64 %i.aey
  %i.agv = add nsw i64 %i.aey, -1                 ; 6 uses
  %i.agw = icmp eq i64 %i.agv, 0
  br i1 %i.agw, label %.thread205.i, label %.lr.ph.preheader.i255

.lr.ph.preheader.i255:                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit88.i
  %i.agx = lshr i64 %i.ady, 13                    ; 2 uses
  %i.agy = shl nuw nsw i64 %i.agx, 10
  %i.agz = sub nsw i64 %i.adz, %i.agy
  %i.aha = add nuw nsw i64 %i.adz, 1024
  %i.ahb = lshr i64 %i.aha, 10
  br label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %bb.lr, %.lr.ph.preheader.i255
  %i.ahc = phi ptr [ %i.alu, %bb.lr ], [ %i.agq, %.lr.ph.preheader.i255 ]
  %i.ahd = phi i64 [ %i.ahh, %bb.lr ], [ 0, %.lr.ph.preheader.i255 ] ; 10 uses
  %.sroa.0148.0240.i = phi ptr [ %i.ahg, %bb.lr ], [ %.sroa.5142.0.i, %.lr.ph.preheader.i255 ] ; 3 uses
  %.sroa.10151.0238.i = phi i64 [ %i.ahe, %bb.lr ], [ %i.agv, %.lr.ph.preheader.i255 ]
  %i.ahe = add nsw i64 %.sroa.10151.0238.i, -1    ; 2 uses
  %i.ahf = icmp eq ptr %.sroa.0148.0240.i, %i.agu
  br i1 %i.ahf, label %.thread205.i, label %bb.kg

.loopexit.i267:                                   ; preds = %bb.ln, %bb.lj
  %lpad.loopexit.i268 = landingpad { ptr, i32 }
          cleanup
  br label %.body130.thread.i

.loopexit.split-lp.i260:                          ; preds = %bb.lp, %.invoke.i292, %bb.ki, %bb.kh
  %lpad.loopexit.split-lp.i261 = landingpad { ptr, i32 }
          cleanup
  br label %.body130.thread.i

bb.kg:                                            ; preds = %.lr.ph.i256
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.0148.0240.i, i64 8
  %i.ahh = add nuw nsw i64 %i.ahd, 1              ; 3 uses
  %i.ahi = shl nuw nsw i64 %i.ahd, 10             ; 2 uses
  %.val70.i257 = load ptr, ptr %i.aeu, align 8, !noalias !32482
  %.val71.i = load i64, ptr %i.aew, align 8, !noalias !32482, !noundef !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !32481
  store i64 %i.ahd, ptr %i.g, align 8, !noalias !32481
  %i.ahj = lshr i64 %.val71.i, 3                  ; 2 uses
  %i.ahk = icmp samesign ult i64 %i.ahd, %i.ahj
  br i1 %i.ahk, label %bb.li, label %bb.kh, !prof !78

bb.kh:                                            ; preds = %bb.kg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !32481
  store i64 %i.ahj, ptr %i.f, align 8, !noalias !32481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32481
  store ptr %i.g, ptr %i.e, align 8, !noalias !32481
  %.sroa.42.0..sroa_idx.i.i258 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i258, align 8, !noalias !32481
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.ahl, align 8, !noalias !32481
  %.sroa.46.0..sroa_idx.i.i259 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i259, align 8, !noalias !32481
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @2075, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2076) #66
          to label %.noexc89.i unwind label %.loopexit.split-lp.i260, !noalias !32482

.noexc89.i:                                       ; preds = %bb.kh
  unreachable

.thread205.i:                                     ; preds = %bb.lr, %.lr.ph.i256, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit88.i
  %i.ahm = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit88.i ], [ %i.ahd, %.lr.ph.i256 ], [ %i.ahh, %bb.lr ] ; 3 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 3 uses
  %i.aho = load i64, ptr %i.ahn, align 8, !alias.scope !32480, !noalias !32482, !noundef !75
  %i.ahp = and i64 %i.aho, 1023                   ; 2 uses
  %i.ahq = icmp eq i64 %i.ahp, 0
  %..i273 = select i1 %i.ahq, i64 1024, i64 %i.ahp ; 4 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !32526
  %i.ahr = call noundef align 8 dereferenceable_or_null(8192) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 8192, i64 noundef range(i64 1, 17) 8) #63, !noalias !32526 ; 5 uses
  %i.ahs = icmp eq ptr %i.ahr, null
  br i1 %i.ahs, label %bb.ki, label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.ki:                                            ; preds = %.thread205.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 8192) #66
          to label %.noexc92.i unwind label %.loopexit.split-lp.i260, !noalias !32482

.noexc92.i:                                       ; preds = %bb.ki
  unreachable

_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %.thread205.i
  %i.aht = load i64, ptr %i.ahn, align 8, !alias.scope !32480, !noalias !32482, !noundef !75
  %i.ahu = sub i64 %i.aht, %..i273                ; 4 uses
  %i.ahv = icmp ugt i64 %i.ahu, %i.adz
  br i1 %i.ahv, label %.invoke328.i, label %bb.kj, !prof !81

bb.kj:                                            ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.ahw = sub nuw nsw i64 %i.adz, %i.ahu         ; 2 uses
  %.not.i.i.i274 = icmp eq i64 %..i273, %i.ahw
  br i1 %.not.i.i.i274, label %bb.km, label %bb.kk, !prof !78

bb.kk:                                            ; preds = %bb.kj
  invoke void @_RNvNvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 1, 1025) %..i273, i64 noundef range(i64 0, 1152921504606846976) %i.ahw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #66
          to label %.noexc93.i unwind label %bb.kl, !noalias !32482

.noexc93.i:                                       ; preds = %bb.kk
  unreachable
end_hunk_3
begin_hunk_4_@llvm.umax.i128
!32022 = distinct !{!32022, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_"}
!32023 = distinct !{!32023, !32022, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_: argument 0"}
!32024 = distinct !{!32024, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32025 = distinct !{!32025, !32024, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32026 = distinct !{!32026, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32027 = distinct !{!32027, !32026, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32028 = distinct !{!32028, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32029 = distinct !{!32029, !32028, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32030 = distinct !{!32030, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_"}
!32031 = distinct !{!32031, !32030, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_: argument 0"}
!32032 = distinct !{!32032, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEEB2L_"}
!32033 = distinct !{!32033, !32032, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEEB2L_: argument 0"}
!32034 = distinct !{!32034, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2h_"}
!32035 = distinct !{!32035, !32034, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2h_: argument 0"}
!32036 = distinct !{!32036, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_"}
!32037 = distinct !{!32037, !32036, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_: argument 0"}
!32038 = distinct !{!32038, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEEB2L_"}
!32039 = distinct !{!32039, !32038, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEEB2L_: argument 0"}
!32040 = distinct !{!32040, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2h_"}
!32041 = distinct !{!32041, !32040, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2h_: argument 0"}
!32042 = distinct !{!32042, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmE8push_mutCsjjpCCFGI3ul_14lance_encoding"}
!32043 = distinct !{!32043, !32042, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmE8push_mutCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32044 = distinct !{!32044, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkE8push_mutBP_"}
!32045 = distinct !{!32045, !32044, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkE8push_mutBP_: argument 0"}
!32046 = distinct !{!32046, !32044, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkE8push_mutBP_: argument 1"}
!32047 = distinct !{!32047, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_"}
!32048 = distinct !{!32048, !32047, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEEB1i_: argument 0"}
!32049 = distinct !{!32049, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEBM_"}
!32050 = distinct !{!32050, !32049, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkEBM_: argument 0"}
!32051 = distinct !{!32051, !"_RINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB3_16InlineBitpacking15bitpack_chunkedyEB9_"}
!32052 = distinct !{!32052, !32051, !"_RINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB3_16InlineBitpacking15bitpack_chunkedyEB9_: argument 1"}
!32053 = distinct !{!32053, !32051, !"_RINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB3_16InlineBitpacking15bitpack_chunkedyEB9_: argument 0"}
!32054 = distinct !{!32054, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_"}
!32055 = distinct !{!32055, !32054, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_: argument 0"}
!32056 = distinct !{!32056, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_"}
!32057 = distinct !{!32057, !32056, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_: argument 0"}
!32058 = distinct !{!32058, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32059 = distinct !{!32059, !32058, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32060 = distinct !{!32060, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32061 = distinct !{!32061, !32060, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32062 = distinct !{!32062, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32063 = distinct !{!32063, !32062, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32064 = distinct !{!32064, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_"}
!32065 = distinct !{!32065, !32064, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_: argument 0"}
!32066 = distinct !{!32066, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEEB2L_"}
!32067 = distinct !{!32067, !32066, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEEB2L_: argument 0"}
!32068 = distinct !{!32068, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2h_"}
!32069 = distinct !{!32069, !32068, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2h_: argument 0"}
!32070 = distinct !{!32070, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_"}
!32071 = distinct !{!32071, !32070, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_: argument 0"}
!32072 = distinct !{!32072, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEEB2L_"}
!32073 = distinct !{!32073, !32072, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEEB2L_: argument 0"}
!32074 = distinct !{!32074, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2h_"}
!32075 = distinct !{!32075, !32074, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2h_: argument 0"}
!32076 = distinct !{!32076, !"_RNvYNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtNtB6_10statistics7GetStat11expect_statB6_"}
!32077 = distinct !{!32077, !32076, !"_RNvYNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtNtB6_10statistics7GetStat11expect_statB6_: argument 0"}
!32078 = distinct !{!32078, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding"}
!32079 = distinct !{!32079, !32078, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32080 = distinct !{!32080, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32081 = distinct !{!32081, !32080, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32082 = distinct !{!32082, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32083 = distinct !{!32083, !32082, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32084 = distinct !{!32084, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32085 = distinct !{!32085, !32084, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32086 = distinct !{!32086, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding"}
!32087 = distinct !{!32087, !32086, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32088 = distinct !{!32088, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32089 = distinct !{!32089, !32088, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32090 = distinct !{!32090, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!32091 = distinct !{!32091, !32090, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32092 = distinct !{!32092, !"_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedyE0NCB2Y_s_0E0EB38_"}
!32093 = distinct !{!32093, !32092, !"_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedyE0NCB2Y_s_0E0EB38_: argument 2"}
!32094 = distinct !{!32094, !32092, !"_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedyE0NCB2Y_s_0E0EB38_: argument 1"}
!32095 = distinct !{!32095, !32092, !"_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvNtNtBY_8adapters3map8map_foldRyTjjEB1C_NCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB32_16InlineBitpacking15bitpack_chunkedyE0NCB2Y_s_0E0EB38_: argument 0"}
!32096 = distinct !{!32096, !"_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_"}
!32097 = distinct !{!32097, !32096, !"_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_: argument 1"}
!32098 = distinct !{!32098, !32096, !"_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRyTjjETINtNtCs40k4W9msRzi_5alloc3vec3VecjEjENCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB1I_16InlineBitpacking15bitpack_chunkedyE0NCB1E_s_0E0B1O_: argument 0"}
!32099 = distinct !{!32099, !"_RNCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB5_16InlineBitpacking15bitpack_chunkedyEs_0Bb_"}
!32100 = distinct !{!32100, !32099, !"_RNCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB5_16InlineBitpacking15bitpack_chunkedyEs_0Bb_: argument 1"}
!32101 = distinct !{!32101, !32099, !"_RNCINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB5_16InlineBitpacking15bitpack_chunkedyEs_0Bb_: argument 0"}
!32102 = distinct !{!32102, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsjjpCCFGI3ul_14lance_encoding"}
!32103 = distinct !{!32103, !32102, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32104 = distinct !{!32104, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding"}
!32105 = distinct !{!32105, !32104, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32106 = distinct !{!32106, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!32107 = distinct !{!32107, !32106, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32108 = distinct !{!32108, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding"}
!32109 = distinct !{!32109, !32108, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32110 = distinct !{!32110, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!32111 = distinct !{!32111, !32110, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32112 = distinct !{!32112, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding"}
!32113 = distinct !{!32113, !32112, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32114 = distinct !{!32114, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!32115 = distinct !{!32115, !32114, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32116 = distinct !{!32116, !"_RNvXs4_NtCscI6d9CVNmLh_4core5sliceSyINtB5_13CloneFromSpecyE15spec_clone_fromCsjjpCCFGI3ul_14lance_encoding"}
!32117 = distinct !{!32117, !32116, !"_RNvXs4_NtCscI6d9CVNmLh_4core5sliceSyINtB5_13CloneFromSpecyE15spec_clone_fromCsjjpCCFGI3ul_14lance_encoding: argument 1"}
!32118 = distinct !{!32118, !32116, !"_RNvXs4_NtCscI6d9CVNmLh_4core5sliceSyINtB5_13CloneFromSpecyE15spec_clone_fromCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32119 = distinct !{!32119, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implyECsjjpCCFGI3ul_14lance_encoding"}
!32120 = distinct !{!32120, !32119, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implyECsjjpCCFGI3ul_14lance_encoding: argument 1"}
!32121 = distinct !{!32121, !32119, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implyECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32122 = distinct !{!32122, !32119, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implyECsjjpCCFGI3ul_14lance_encoding: argument 2"}
!32123 = distinct !{!32123, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding"}
!32124 = distinct !{!32124, !32123, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32125 = distinct !{!32125, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkE8push_mutBP_"}
!32126 = distinct !{!32126, !32125, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkE8push_mutBP_: argument 0"}
!32127 = distinct !{!32127, !32125, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkE8push_mutBP_: argument 1"}
!32128 = distinct !{!32128, !"_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_vecyEB5_"}
!32129 = distinct !{!32129, !32128, !"_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_vecyEB5_: argument 1"}
!32130 = distinct !{!32130, !32128, !"_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_vecyEB5_: argument 0"}
!32131 = distinct !{!32131, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding"}
!32132 = distinct !{!32132, !32131, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32133 = distinct !{!32133, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding"}
!32134 = distinct !{!32134, !32133, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32135 = distinct !{!32135, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding"}
!32136 = distinct !{!32136, !32135, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32137 = distinct !{!32137, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding"}
!32138 = distinct !{!32138, !32137, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32139 = distinct !{!32139, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32140 = distinct !{!32140, !32139, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32141 = distinct !{!32141, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding"}
!32142 = distinct !{!32142, !32141, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32143 = distinct !{!32143, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32144 = distinct !{!32144, !32143, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32145 = distinct !{!32145, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32146 = distinct !{!32146, !32145, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32147 = distinct !{!32147, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32148 = distinct !{!32148, !32147, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32149 = distinct !{!32149, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_"}
!32150 = distinct !{!32150, !32149, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_: argument 0"}
!32151 = distinct !{!32151, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_"}
!32152 = distinct !{!32152, !32151, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_: argument 0"}
!32153 = distinct !{!32153, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32154 = distinct !{!32154, !32153, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32155 = distinct !{!32155, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32156 = distinct !{!32156, !32155, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32157 = distinct !{!32157, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32158 = distinct !{!32158, !32157, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32159 = distinct !{!32159, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_"}
!32160 = distinct !{!32160, !32159, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_: argument 0"}
!32161 = distinct !{!32161, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEEB2L_"}
!32162 = distinct !{!32162, !32161, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEEB2L_: argument 0"}
!32163 = distinct !{!32163, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2h_"}
!32164 = distinct !{!32164, !32163, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2h_: argument 0"}
!32165 = distinct !{!32165, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_"}
!32166 = distinct !{!32166, !32165, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_: argument 0"}
!32167 = distinct !{!32167, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEEB2L_"}
!32168 = distinct !{!32168, !32167, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEEB2L_: argument 0"}
!32169 = distinct !{!32169, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2h_"}
!32170 = distinct !{!32170, !32169, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2h_: argument 0"}
!32171 = distinct !{!32171, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding"}
!32172 = distinct !{!32172, !32171, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32173 = distinct !{!32173, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkE8push_mutBP_"}
!32174 = distinct !{!32174, !32173, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkE8push_mutBP_: argument 0"}
!32175 = distinct !{!32175, !32173, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock14MiniBlockChunkE8push_mutBP_: argument 1"}
!32176 = distinct !{!32176, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding"}
!32177 = distinct !{!32177, !32176, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32178 = distinct !{!32178, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding"}
!32179 = distinct !{!32179, !32178, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32180 = !{!31659}
!32181 = !{!31660, !31659}
!32182 = !{!31662}
!32183 = !{!31663}
!32184 = !{!31663, !31659}
!32185 = !{!31662, !31660}
!32186 = !{!31662, !31663, !31660, !31659}
!32187 = !{!31665}
!32188 = !{!31667}
!32189 = !{!31669}
!32190 = !{!31671}
!32191 = !{!31673}
!32192 = !{!31673, !31671, !31669, !31667, !31665, !31659}
!32193 = !{!31660}
!32194 = !{!31673, !31671, !31669, !31667, !31665, !31660}
!32195 = !{!31675}
!32196 = !{!31677}
!32197 = !{!31679}
!32198 = !{!31679, !31677, !31675, !31665, !31659}
!32199 = !{!31679, !31677, !31675, !31660}
!32200 = !{!31681}
!32201 = !{!31683}
!32202 = !{!31685}
!32203 = !{!31685, !31683, !31681, !31665, !31659}
!32204 = !{!31685, !31683, !31681, !31660}
!32205 = !{!31688, !31687, !31662}
!32206 = !{!31663, !31660, !31659}
!32207 = !{!31690, !31660, !31659}
!32208 = !{!31692}
!32209 = !{!31694}
!32210 = !{!31696}
!32211 = !{!31698}
!32212 = !{!31698, !31696, !31694, !31692}
!32213 = !{!31698, !31696, !31694, !31692, !31660}
!32214 = !{!31700}
!32215 = !{!31702}
!32216 = !{!31702, !31700}
!32217 = !{!31702, !31700, !31660}
!32218 = !{!31704, !31660}
!32219 = !{!31706}
!32220 = !{!31706, !31659}
!32221 = !{!31711, !31710, !31708, !31707, !31660}
!32222 = !{!31711, !31710, !31708, !31707, !31706, !31660}
!32223 = !{!31708, !31707, !31706, !31660}
!32224 = !{!31714, !31713, !31711, !31710, !31708, !31707, !31706, !31660, !31659}
!32225 = !{!31714, !31711, !31710, !31708, !31707, !31706, !31660, !31659}
!32226 = !{!31714, !31713, !31711, !31710, !31708, !31707, !31706, !31660}
!32227 = !{!31716}
!32228 = !{!31718}
!32229 = !{!31713, !31710, !31708, !31707, !31706, !31660, !31659}
!32230 = !{!"branch_weights", i32 1718855933, i32 428627715}
!32231 = !{!31720, !31660}
!32232 = !{!31722, !31660}
!32233 = !{!31724, !31660}
!32234 = !{!31728, !31726, !31660}
!32235 = !{!31730, !31660}
!32236 = !{!31736, !31735, !31733, !31732}
!32237 = !{!31737, !31660}
!32238 = !{!31739}
!32239 = !{!31741}
!32240 = !{!31742, !31660, !31659}
!32241 = !{!31742, !31660}
!32242 = !{!31741, !31742, !31660}
!32243 = !{!31741, !31660}
!32244 = !{!31745, !31744, !31660, !31659}
!32245 = !{!31747, !31745, !31744, !31660}
!32246 = !{!31745, !31744, !31660}
!32247 = !{!31749, !31660}
!32248 = !{!31751, !31660}
!32249 = !{!31753}
!32250 = !{!31755}
!32251 = !{!31755, !31753}
!32252 = !{!31755, !31753, !31660}
!32253 = !{!31757}
!32254 = !{!31759}
!32255 = !{!31761}
!32256 = !{!31763}
!32257 = !{!31763, !31761, !31759, !31757}
!32258 = !{!31763, !31761, !31759, !31757, !31660}
!32259 = !{!31765}
!32260 = !{!31767}
!32261 = !{!31769}
!32262 = !{!31771}
!32263 = !{!31773}
!32264 = !{!31773, !31771, !31769, !31767, !31765, !31659}
!32265 = !{!31773, !31771, !31769, !31767, !31765, !31660}
!32266 = !{!31775}
!32267 = !{!31777}
!32268 = !{!31779}
!32269 = !{!31779, !31777, !31775, !31765, !31659}
!32270 = !{!31779, !31777, !31775, !31660}
!32271 = !{!31781}
!32272 = !{!31783}
!32273 = !{!31785}
!32274 = !{!31785, !31783, !31781, !31765, !31659}
!32275 = !{!31785, !31783, !31781, !31660}
!32276 = !{!31787}
!32277 = !{!31789}
!32278 = !{!31790, !31660, !31659}
!32279 = !{!31790, !31660}
!32280 = !{!31789, !31790, !31660}
!32281 = !{!31789, !31660}
!32282 = !{!31792}
!32283 = !{!31794}
!32284 = !{!31792, !31660}
!32285 = !{!31794, !31792, !31660}
!32286 = !{!31796}
!32287 = !{!31796, !31660}
!32288 = !{!31798}
!32289 = !{!31799, !31798}
!32290 = !{!31799}
!32291 = !{!31801}
!32292 = !{!31803}
!32293 = !{!31805}
!32294 = !{!31807}
!32295 = !{!31809}
!32296 = !{!31809, !31807, !31805, !31803, !31801, !31798}
!32297 = !{!31809, !31807, !31805, !31803, !31801, !31799}
!32298 = !{!31811}
!32299 = !{!31813}
!32300 = !{!31815}
!32301 = !{!31815, !31813, !31811, !31801, !31798}
!32302 = !{!31815, !31813, !31811, !31799}
!32303 = !{!31817}
!32304 = !{!31819}
!32305 = !{!31821}
!32306 = !{!31821, !31819, !31817, !31801, !31798}
!32307 = !{!31821, !31819, !31817, !31799}
!32308 = !{!31823, !31799, !31798}
!32309 = !{!31825}
!32310 = !{!31827}
!32311 = !{!31829}
!32312 = !{!31831}
!32313 = !{!31831, !31829, !31827, !31825}
!32314 = !{!31831, !31829, !31827, !31825, !31799}
!32315 = !{!31833}
!32316 = !{!31835}
!32317 = !{!31835, !31833}
!32318 = !{!31835, !31833, !31799}
!32319 = !{!31837, !31799}
!32320 = !{!31839}
!32321 = !{!31839, !31798}
!32322 = !{!31844, !31843, !31841, !31840, !31799}
!32323 = !{!31844, !31843, !31841, !31840, !31839, !31799}
!32324 = !{!31841, !31840, !31839, !31799}
!32325 = !{!31847, !31846, !31844, !31843, !31841, !31840, !31839, !31799, !31798}
!32326 = !{!31847, !31844, !31843, !31841, !31840, !31839, !31799, !31798}
!32327 = !{!31847, !31846, !31844, !31843, !31841, !31840, !31839, !31799}
!32328 = !{!31849}
!32329 = !{!31851}
!32330 = !{!31846, !31843, !31841, !31840, !31839, !31799, !31798}
!32331 = !{!31853, !31799}
!32332 = !{!31855, !31799}
!32333 = !{!31857, !31799}
!32334 = !{!31861, !31859, !31799}
!32335 = !{!31867, !31866, !31864, !31863}
!32336 = !{!31868, !31799}
!32337 = !{!31870}
!32338 = !{!31872}
!32339 = !{!31873, !31799, !31798}
!32340 = !{!31873, !31799}
!32341 = !{!31872, !31873, !31799}
!32342 = !{!31872, !31799}
!32343 = !{!31876, !31875, !31799, !31798}
!32344 = !{!31878, !31876, !31875, !31799}
!32345 = !{!31876, !31875, !31799}
!32346 = !{!31880, !31799}
!32347 = !{!31882}
!32348 = !{!31884}
!32349 = !{!31884, !31882}
!32350 = !{!31884, !31882, !31799}
!32351 = !{!31886}
!32352 = !{!31888}
!32353 = !{!31890}
!32354 = !{!31892}
!32355 = !{!31892, !31890, !31888, !31886}
!32356 = !{!31892, !31890, !31888, !31886, !31799}
!32357 = !{!31894}
!32358 = !{!31896}
!32359 = !{!31898}
!32360 = !{!31900}
!32361 = !{!31902}
!32362 = !{!31902, !31900, !31898, !31896, !31894, !31798}
!32363 = !{!31902, !31900, !31898, !31896, !31894, !31799}
!32364 = !{!31904}
!32365 = !{!31906}
!32366 = !{!31908}
!32367 = !{!31908, !31906, !31904, !31894, !31798}
!32368 = !{!31908, !31906, !31904, !31799}
!32369 = !{!31910}
!32370 = !{!31912}
!32371 = !{!31914}
!32372 = !{!31914, !31912, !31910, !31894, !31798}
!32373 = !{!31914, !31912, !31910, !31799}
!32374 = !{!31916}
!32375 = !{!31918}
!32376 = !{!31919, !31799, !31798}
!32377 = !{!31919, !31799}
!32378 = !{!31918, !31919, !31799}
!32379 = !{!31918, !31799}
!32380 = !{!31921}
!32381 = !{!31923}
!32382 = !{!31921, !31799}
!32383 = !{!31923, !31921, !31799}
!32384 = !{!31925}
!32385 = !{!31926, !31925}
!32386 = !{!31926}
!32387 = !{!31928}
!32388 = !{!31930}
!32389 = !{!31932}
!32390 = !{!31934}
!32391 = !{!31936}
!32392 = !{!31936, !31934, !31932, !31930, !31928, !31925}
!32393 = !{!31936, !31934, !31932, !31930, !31928, !31926}
!32394 = !{!31938}
!32395 = !{!31940}
!32396 = !{!31942}
!32397 = !{!31942, !31940, !31938, !31928, !31925}
!32398 = !{!31942, !31940, !31938, !31926}
!32399 = !{!31944}
!32400 = !{!31946}
!32401 = !{!31948}
!32402 = !{!31948, !31946, !31944, !31928, !31925}
!32403 = !{!31948, !31946, !31944, !31926}
!32404 = !{!31950, !31926, !31925}
!32405 = !{!31952}
!32406 = !{!31954}
!32407 = !{!31956}
!32408 = !{!31958}
!32409 = !{!31958, !31956, !31954, !31952}
!32410 = !{!31958, !31956, !31954, !31952, !31926}
!32411 = !{!31960}
!32412 = !{!31962}
!32413 = !{!31962, !31960}
!32414 = !{!31962, !31960, !31926}
!32415 = !{!31964, !31926}
!32416 = !{!31966}
!32417 = !{!31966, !31925}
!32418 = !{!31971, !31970, !31968, !31967, !31926}
!32419 = !{!31971, !31970, !31968, !31967, !31966, !31926}
!32420 = !{!31968, !31967, !31966, !31926}
!32421 = !{!31974, !31973, !31971, !31970, !31968, !31967, !31966, !31926, !31925}
!32422 = !{!31974, !31971, !31970, !31968, !31967, !31966, !31926, !31925}
!32423 = !{!31974, !31973, !31971, !31970, !31968, !31967, !31966, !31926}
!32424 = !{!31976}
!32425 = !{!31978}
!32426 = !{!31973, !31970, !31968, !31967, !31966, !31926, !31925}
!32427 = !{!31980, !31926}
!32428 = !{!31982, !31926}
!32429 = !{!31984, !31926}
!32430 = !{!31988, !31986, !31926}
!32431 = !{!31994, !31993, !31991, !31990}
!32432 = !{!31995, !31926}
!32433 = !{!31997}
!32434 = !{!31999}
!32435 = !{!32000, !31926, !31925}
!32436 = !{!32000, !31926}
!32437 = !{!31999, !32000, !31926}
!32438 = !{!31999, !31926}
!32439 = !{!32003, !32002, !31926, !31925}
!32440 = !{!32005, !32003, !32002, !31926}
!32441 = !{!32003, !32002, !31926}
!32442 = !{!32007, !31926}
!32443 = !{!32009}
!32444 = !{!32011}
!32445 = !{!32011, !32009}
!32446 = !{!32011, !32009, !31926}
!32447 = !{!32013}
!32448 = !{!32015}
!32449 = !{!32017}
!32450 = !{!32019}
!32451 = !{!32019, !32017, !32015, !32013}
!32452 = !{!32019, !32017, !32015, !32013, !31926}
!32453 = !{!32021}
!32454 = !{!32023}
!32455 = !{!32025}
!32456 = !{!32027}
!32457 = !{!32029}
!32458 = !{!32029, !32027, !32025, !32023, !32021, !31925}
!32459 = !{!32029, !32027, !32025, !32023, !32021, !31926}
!32460 = !{!32031}
!32461 = !{!32033}
!32462 = !{!32035}
!32463 = !{!32035, !32033, !32031, !32021, !31925}
!32464 = !{!32035, !32033, !32031, !31926}
!32465 = !{!32037}
!32466 = !{!32039}
!32467 = !{!32041}
!32468 = !{!32041, !32039, !32037, !32021, !31925}
!32469 = !{!32041, !32039, !32037, !31926}
!32470 = !{!32043}
!32471 = !{!32045}
!32472 = !{!32046, !31926, !31925}
!32473 = !{!32046, !31926}
!32474 = !{!32045, !32046, !31926}
!32475 = !{!32045, !31926}
!32476 = !{!32048}
!32477 = !{!32050}
!32478 = !{!32048, !31926}
!32479 = !{!32050, !32048, !31926}
!32480 = !{!32052}
!32481 = !{!32053, !32052}
!32482 = !{!32053}
!32483 = !{!32055}
!32484 = !{!32057}
!32485 = !{!32059}
!32486 = !{!32061}
!32487 = !{!32063}
!32488 = !{!32063, !32061, !32059, !32057, !32055, !32052}
!32489 = !{!32063, !32061, !32059, !32057, !32055, !32053}
!32490 = !{!32065}
!32491 = !{!32067}
!32492 = !{!32069}
!32493 = !{!32069, !32067, !32065, !32055, !32052}
!32494 = !{!32069, !32067, !32065, !32053}
!32495 = !{!32071}
!32496 = !{!32073}
!32497 = !{!32075}
!32498 = !{!32075, !32073, !32071, !32055, !32052}
!32499 = !{!32075, !32073, !32071, !32053}
!32500 = !{!32077, !32053, !32052}
!32501 = !{!32079}
!32502 = !{!32081}
!32503 = !{!32083}
!32504 = !{!32085}
!32505 = !{!32085, !32083, !32081, !32079}
!32506 = !{!32085, !32083, !32081, !32079, !32053}
!32507 = !{!32087}
!32508 = !{!32089}
!32509 = !{!32089, !32087}
!32510 = !{!32089, !32087, !32053}
!32511 = !{!32091, !32053}
!32512 = !{!32093}
!32513 = !{!32093, !32052}
!32514 = !{!32098, !32097, !32095, !32094, !32053}
!32515 = !{!32098, !32097, !32095, !32094, !32093, !32053}
!32516 = !{!32095, !32094, !32093, !32053}
!32517 = !{!32101, !32100, !32098, !32097, !32095, !32094, !32093, !32053, !32052}
!32518 = !{!32101, !32098, !32097, !32095, !32094, !32093, !32053, !32052}
!32519 = !{!32101, !32100, !32098, !32097, !32095, !32094, !32093, !32053}
!32520 = !{!32103}
!32521 = !{!32105}
!32522 = !{!32100, !32097, !32095, !32094, !32093, !32053, !32052}
!32523 = !{!32107, !32053}
!32524 = !{!32109, !32053}
!32525 = !{!32111, !32053}
!32526 = !{!32115, !32113, !32053}
!32527 = !{!32121, !32120, !32118, !32117}
!32528 = !{!32122, !32053}
!32529 = !{!32124}
!32530 = !{!32126}
!32531 = !{!32127, !32053, !32052}
!32532 = !{!32127, !32053}
!32533 = !{!32126, !32127, !32053}
!32534 = !{!32126, !32053}
!32535 = !{!32130, !32129, !32053, !32052}
!32536 = !{!32132, !32130, !32129, !32053}
!32537 = !{!32130, !32129, !32053}
!32538 = !{!32134, !32053}
!32539 = !{!32136, !32053}
!32540 = !{!32138}
!32541 = !{!32140}
!32542 = !{!32140, !32138}
!32543 = !{!32140, !32138, !32053}
!32544 = !{!32142}
!32545 = !{!32144}
!32546 = !{!32146}
!32547 = !{!32148}
!32548 = !{!32148, !32146, !32144, !32142}
!32549 = !{!32148, !32146, !32144, !32142, !32053}
!32550 = !{!32150}
!32551 = !{!32152}
!32552 = !{!32154}
!32553 = !{!32156}
!32554 = !{!32158}
!32555 = !{!32158, !32156, !32154, !32152, !32150, !32052}
!32556 = !{!32158, !32156, !32154, !32152, !32150, !32053}
!32557 = !{!32160}
!32558 = !{!32162}
!32559 = !{!32164}
!32560 = !{!32164, !32162, !32160, !32150, !32052}
!32561 = !{!32164, !32162, !32160, !32053}
!32562 = !{!32166}
!32563 = !{!32168}
!32564 = !{!32170}
!32565 = !{!32170, !32168, !32166, !32150, !32052}
!32566 = !{!32170, !32168, !32166, !32053}
!32567 = !{!32172}
!32568 = !{!32174}
!32569 = !{!32175, !32053, !32052}
!32570 = !{!32175, !32053}
!32571 = !{!32174, !32175, !32053}
!32572 = !{!32174, !32053}
!32573 = !{!32177, !32053}
!32574 = !{!32179}
!32575 = !{!32179, !32053}
!32576 = distinct !{!32576, !"_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer5empty"}
!32577 = distinct !{!32577, !32576, !"_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer5empty: argument 0"}
!32578 = distinct !{!32578, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding"}
!32579 = distinct !{!32579, !32578, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32580 = distinct !{!32580, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_"}
!32581 = distinct !{!32581, !32580, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_: argument 0"}
!32582 = distinct !{!32582, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32583 = distinct !{!32583, !32582, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32584 = distinct !{!32584, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32585 = distinct !{!32585, !32584, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32586 = distinct !{!32586, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32587 = distinct !{!32587, !32586, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32588 = !{!32577}
!32589 = !{!32579, !32577}
!32590 = !{!32587, !32585, !32583, !32581}
!32591 = distinct !{!32591, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding"}
!32592 = distinct !{!32592, !32591, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32593 = distinct !{!32593, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjjpCCFGI3ul_14lance_encoding"}
!32594 = distinct !{!32594, !32593, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32595 = distinct !{!32595, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding"}
!32596 = distinct !{!32596, !32595, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32597 = distinct !{!32597, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjjpCCFGI3ul_14lance_encoding"}
!32598 = distinct !{!32598, !32597, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32599 = distinct !{!32599, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding"}
!32600 = distinct !{!32600, !32599, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32601 = !{!32592}
!32602 = !{!32594}
!32603 = !{!32596, !32594}
!32604 = !{!32598}
!32605 = !{!32600, !32598}
!32606 = distinct !{!32606, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding"}
!32607 = distinct !{!32607, !32606, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32608 = distinct !{!32608, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!32609 = distinct !{!32609, !32608, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32610 = distinct !{!32610, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32611 = distinct !{!32611, !32610, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32612 = distinct !{!32612, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32613 = distinct !{!32613, !32612, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32614 = distinct !{!32614, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32615 = distinct !{!32615, !32614, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32616 = distinct !{!32616, !"_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding"}
!32617 = distinct !{!32617, !32616, !"_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32618 = distinct !{!32618, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!32619 = distinct !{!32619, !32618, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32620 = distinct !{!32620, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!32621 = distinct !{!32621, !32620, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0:thread:thread"}
!32622 = distinct !{!32622, !32620, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0:thread"}
!32623 = distinct !{!32623, !"_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding"}
!32624 = distinct !{!32624, !32623, !"_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32625 = distinct !{!32625, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!32626 = distinct !{!32626, !32625, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32627 = distinct !{!32627, !32620, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32628 = distinct !{!32628, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!32629 = distinct !{!32629, !32628, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32630 = distinct !{!32630, !"_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_vechEB5_"}
!32631 = distinct !{!32631, !32630, !"_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_vechEB5_: argument 0"}
!32632 = distinct !{!32632, !32630, !"_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_vechEB5_: argument 1"}
!32633 = distinct !{!32633, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding"}
!32634 = distinct !{!32634, !32633, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32635 = distinct !{!32635, !"_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_veclEB5_"}
!32636 = distinct !{!32636, !32635, !"_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_veclEB5_: argument 0"}
!32637 = distinct !{!32637, !32635, !"_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_veclEB5_: argument 1"}
!32638 = distinct !{!32638, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding"}
!32639 = distinct !{!32639, !32638, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32640 = distinct !{!32640, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_"}
!32641 = distinct !{!32641, !32640, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_: argument 0"}
!32642 = distinct !{!32642, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32643 = distinct !{!32643, !32642, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32644 = distinct !{!32644, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32645 = distinct !{!32645, !32644, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32646 = distinct !{!32646, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32647 = distinct !{!32647, !32646, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32648 = distinct !{!32648, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_"}
!32649 = distinct !{!32649, !32648, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_: argument 0"}
!32650 = distinct !{!32650, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32651 = distinct !{!32651, !32650, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32652 = distinct !{!32652, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32653 = distinct !{!32653, !32652, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32654 = distinct !{!32654, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32655 = distinct !{!32655, !32654, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32656 = distinct !{!32656, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32657 = distinct !{!32657, !32656, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32658 = distinct !{!32658, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32659 = distinct !{!32659, !32658, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32660 = distinct !{!32660, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32661 = distinct !{!32661, !32660, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32662 = distinct !{!32662, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferlEECsjjpCCFGI3ul_14lance_encoding"}
!32663 = distinct !{!32663, !32662, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferlEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32664 = distinct !{!32664, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32665 = distinct !{!32665, !32664, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32666 = distinct !{!32666, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32667 = distinct !{!32667, !32666, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32668 = distinct !{!32668, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32669 = distinct !{!32669, !32668, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32670 = distinct !{!32670, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferlEECsjjpCCFGI3ul_14lance_encoding"}
!32671 = distinct !{!32671, !32670, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferlEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32672 = distinct !{!32672, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32673 = distinct !{!32673, !32672, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32674 = distinct !{!32674, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32675 = distinct !{!32675, !32674, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32676 = distinct !{!32676, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32677 = distinct !{!32677, !32676, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32678 = distinct !{!32678, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_"}
!32679 = distinct !{!32679, !32678, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_: argument 0"}
!32680 = distinct !{!32680, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32681 = distinct !{!32681, !32680, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32682 = distinct !{!32682, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32683 = distinct !{!32683, !32682, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32684 = distinct !{!32684, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32685 = distinct !{!32685, !32684, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32686 = distinct !{!32686, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!32687 = distinct !{!32687, !32686, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32688 = distinct !{!32688, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!32689 = distinct !{!32689, !32688, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32690 = distinct !{!32690, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsjjpCCFGI3ul_14lance_encoding"}
!32691 = distinct !{!32691, !32690, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32692 = distinct !{!32692, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32693 = distinct !{!32693, !32692, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32694 = distinct !{!32694, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32695 = distinct !{!32695, !32694, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32696 = distinct !{!32696, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32697 = distinct !{!32697, !32696, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32698 = distinct !{!32698, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferlEECsjjpCCFGI3ul_14lance_encoding"}
!32699 = distinct !{!32699, !32698, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferlEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32700 = distinct !{!32700, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32701 = distinct !{!32701, !32700, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32702 = distinct !{!32702, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32703 = distinct !{!32703, !32702, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32704 = distinct !{!32704, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32705 = distinct !{!32705, !32704, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32706 = distinct !{!32706, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_"}
!32707 = distinct !{!32707, !32706, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_: argument 0"}
!32708 = distinct !{!32708, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!32709 = distinct !{!32709, !32708, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32710 = distinct !{!32710, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!32711 = distinct !{!32711, !32710, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32712 = distinct !{!32712, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!32713 = distinct !{!32713, !32712, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32714 = distinct !{!32714, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsjjpCCFGI3ul_14lance_encoding"}
!32715 = distinct !{!32715, !32714, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32716 = distinct !{!32716, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding"}
!32717 = distinct !{!32717, !32716, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!32718 = distinct !{!32718, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
end_hunk_4
