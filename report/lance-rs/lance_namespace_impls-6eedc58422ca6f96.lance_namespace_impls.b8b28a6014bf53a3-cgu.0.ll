Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !130337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1920) %i.f, ptr noundef nonnull align 8 dereferenceable(1920) %i.i, i64 1920, i1 false), !noalias !130337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !130341
  invoke void @_RNvMsd_Cs9vXXyjKaXf3_6blake3NtB5_6Hasher8finalize(ptr noalias noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1920) %i.f)
          to label %bb.f unwind label %bb.d

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache3key10KeyBuilderECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.p, %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache3key10KeyBuilderECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.j, %bb.e, %.body39
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %.body39 ], [ %i.bi, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.bi, %bb.p ], [ %i.y, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache3key10KeyBuilderECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.ar, %bb.j ], [ %i.z, %bb.d ], [ %i.aa, %bb.e ]
  store i8 2, ptr %i.o, align 8
  resume { ptr, i32 } %.pn17.pn

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.body

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !130342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !130341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !130337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !130337
  %i.ab = load ptr, ptr %i.q, align 8, !nonnull !416, !align !417, !noundef !416
  %.val30 = load ptr, ptr %i.ab, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %.val31 = load ptr, ptr %i.ac, align 8, !nonnull !416, !noundef !416
  %i.ad = getelementptr i8, ptr %.val30, i64 24
  %.val32 = load ptr, ptr %i.ad, align 8, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !420, !invariant.load !416
  %i.ag = add nsw i64 %i.af, -1
  %i.ah = and i64 %i.ag, -16
  %i.ai = getelementptr inbounds nuw i8, ptr %.val31, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr null, ptr %i.n, align 8, !alias.scope !130343
  %i.ak = getelementptr inbounds nuw i8, ptr %.val32, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !416, !nonnull !416
  %i.am = invoke { ptr, ptr } %i.al(ptr noundef nonnull %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.g unwind label %bb.e       ; 2 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.an = extractvalue { ptr, ptr } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.am, 1      ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.an, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ao, ptr %i.aq, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @661) #72
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @661) #72
  unreachable

bb.j:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val21 = load ptr, ptr %i.as, align 8
  %.val22 = load ptr, ptr %i.at, align 8, !nonnull !416, !align !417, !noundef !416
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val21, ptr nonnull %.val22) #73
          to label %.body unwind label %bb.w

bb.k:                                             ; preds = %._crit_edge, %bb.g
  %.val34 = phi ptr [ %.val34.pre, %._crit_edge ], [ %i.ao, %bb.g ]
  %.val33 = phi ptr [ %.val33.pre, %._crit_edge ], [ %i.an, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val34, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !invariant.load !416, !noalias !130344, !nonnull !416
  invoke void %i.av(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull %.val33, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.j, !inline_history !325

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.k
  %i.aw = load i64, ptr %i.m, align 8, !range !442, !noundef !416
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.l, label %bb.m

common.ret:                                       ; preds = %bb.ae, %bb.l
  %common.ret.op = phi { i64, ptr } [ { i64 1, ptr undef }, %bb.l ], [ %i.ct, %bb.ae ]
  ret { i64, ptr } %common.ret.op

bb.l:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i8 3, ptr %i.o, align 8
  br label %common.ret

bb.m:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noundef !416 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val = load ptr, ptr %i.as, align 8            ; 5 uses
  %.val20 = load ptr, ptr %i.at, align 8, !nonnull !416, !align !417, !noundef !416 ; 5 uses
  %i.bc = load ptr, ptr %.val20, align 8, !invariant.load !416 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bc(ptr noundef nonnull %.val)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.val20, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.val20, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !420, !invariant.load !416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) %i.bh) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.p:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val20, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.val20, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !420, !invariant.load !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) %i.bn) #68
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.o
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !130345)
  call void @llvm.experimental.noalias.scope.decl(metadata !130346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.az, ptr %i.d, align 8, !noalias !130347
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bb, ptr %i.bo, align 8, !noalias !130347
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !420, !invariant.load !416, !alias.scope !130346, !noalias !130345
  %i.br = add nsw i64 %i.bq, -1
  %i.bs = and i64 %i.br, -16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !130347
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !416, !alias.scope !130346, !noalias !130345, !nonnull !416
  invoke void %i.bw(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.bu)
          to label %bb.u unwind label %bb.r, !noalias !130345

bb.r:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !130348
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.s, label %.body39

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.body39 unwind label %bb.t, !noalias !130345

bb.t:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !130345
  unreachable

bb.u:                                             ; preds = %bb.q
  %i.cb = load i128, ptr %i.c, align 16, !noalias !130347, !noundef !416
  %i.cc = icmp eq i128 %i.cb, 30315766894603180422979482736445024540 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !130347
  %spec.select.i = select i1 %i.cc, ptr %i.az, ptr %i.bb
  %spec.select2.i = select i1 %i.cc, ptr null, ptr %i.az
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %spec.select.i, ptr %i.cd, align 8, !alias.scope !130345, !noalias !130346
  store ptr %spec.select2.i, ptr %i.l, align 8, !alias.scope !130345, !noalias !130346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.cc, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.x, %bb.aa
  %.sink58 = phi i64 [ 40, %bb.x ], [ 40, %bb.aa ], [ 32, %bb.u ]
  %2 = phi ptr [ %i.az, %bb.x ], [ %.pre.pre, %bb.aa ], [ null, %bb.u ] ; 2 uses
  %.sroa.06.0 = phi ptr [ null, %bb.x ], [ null, %bb.aa ], [ %i.az, %bb.u ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !416, !align !417, !noundef !416
  %.val27 = load ptr, ptr %i.cf, align 8, !nonnull !416, !noundef !416
  %i.cg = getelementptr inbounds nuw i8, ptr %.val27, i64 %.sink58
  %i.ch = atomicrmw add ptr %i.cg, i64 1 monotonic, align 8 ; 0 uses
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.ab

bb.w:                                             ; preds = %bb.j, %bb.af
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.cj = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 6
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ugt i64 %i.cj, 1
  br i1 %i.cl, label %bb.z, label %bb.v

bb.y:                                             ; preds = %bb.z
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cn = load ptr, ptr %i.l, align 8, !noundef !416
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.body39, label %bb.af

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @946, ptr %i.k, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 8, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtReNtB6_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !130349
  store i64 0, ptr %i.b, align 8, !noalias !130349
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @663, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i, align 8, !noalias !130349
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 17, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !130349
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !130349
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @660, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !130349
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 32, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !130349
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !130349
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @663, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !130349
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 17, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !130349
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !130349
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 389, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !130349
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @662, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !130349
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.j, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !130349
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !130349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pre.pre = load ptr, ptr %i.l, align 8
  br label %bb.v

bb.ab:                                            ; preds = %bb.v
  %i.cq = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !130350
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.ad

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.ab, %bb.ac, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ae

.body39:                                          ; preds = %bb.s, %bb.r, %bb.af, %bb.ad, %bb.y
  %.pn17 = phi { ptr, i32 } [ %i.cs, %bb.ad ], [ %i.cm, %bb.y ], [ %i.cm, %bb.af ], [ %i.bx, %bb.r ], [ %i.bx, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.body

bb.ad:                                            ; preds = %bb.ac
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.ae:                                            ; preds = %bb.ag, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.06.1 = phi ptr [ %.sroa.06.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ null, %bb.ag ]
  store i8 1, ptr %i.o, align 8
  %i.ct = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.06.1, 1
  br label %common.ret

bb.af:                                            ; preds = %bb.y
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(16) %i.l) #73
          to label %.body39 unwind label %bb.w

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !416, !align !417, !noundef !416
  %.val29 = load ptr, ptr %i.cv, align 8, !nonnull !416, !noundef !416
  %i.cw = getelementptr inbounds nuw i8, ptr %.val29, i64 40
  %i.cx = atomicrmw add ptr %i.cw, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.ae
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache15insert_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches16IndexMetadataKeyE0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 4 uses
  %i.b = alloca [1920 x i8], align 8              ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 1                ; 4 uses
  %i.e = alloca [1920 x i8], align 8              ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !range !481, !noundef !416
  switch i8 %i.i, label %default.unreachable52 [
    i8 0, label %bb.b
    i8 1, label %bb.aj
    i8 2, label %bb.ak
    i8 3, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert36 = getelementptr i8, ptr %0, i64 24
  %.val14.pre = load ptr, ptr %.phi.trans.insert36, align 8
  br label %bb.am

default.unreachable52:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !416, !align !417, !noundef !416 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !416, !align !417, !noundef !416
  store i8 1, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !416, !noundef !416 ; 4 uses
  store ptr %i.q, ptr %i.o, align 8
  %.val10 = load ptr, ptr %i.l, align 8, !nonnull !416, !noundef !416 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130416)
  %i.s = getelementptr inbounds nuw i8, ptr %.val10, i64 48 ; 10 uses
  %i.t = load atomic i32, ptr %i.s monotonic, align 4, !noalias !130416 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.t, 1073741822
  br i1 %or.cond3.i.i, label %bb.c, label %bb.d, !prof !443

bb.c:                                             ; preds = %bb.b
  %i.u = add nuw nsw i32 %i.t, 1
  %i.v = cmpxchg weak ptr %i.s, i32 %i.t, i32 %i.u acquire monotonic, align 4, !noalias !130416
  %i.w = extractvalue { i32, i1 } %i.v, 1
  br i1 %i.w, label %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i, label %bb.d, !prof !439

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.s)
          to label %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i unwind label %bb.ab

_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i: ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.val10, i64 56 ; 3 uses
  %i.y = load atomic i8, ptr %i.x monotonic, align 4, !noalias !130417 ; 0 uses
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.val10, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130418)
  %i.z = getelementptr inbounds nuw i8, ptr %.val10, i64 88 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !130418, !noalias !130419, !noundef !416
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.e

bb.e:                                             ; preds = %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val10, i64 96
  %.val.i.i = load i64, ptr %i.ac, align 8, !alias.scope !130418, !noalias !130419, !noundef !416
  %i.ad = getelementptr inbounds nuw i8, ptr %.val10, i64 104
  %.val5.i.i = load i64, ptr %i.ad, align 8, !alias.scope !130418, !noalias !130419, !noundef !416
  %i.ae = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECsfR8GmIBoxTX_21lance_namespace_impls(i64 %.val.i.i, i64 %.val5.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) @21), !noalias !130420 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130422)
  %i.af = lshr i64 %i.ae, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.val10, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !130423, !noalias !130424, !noundef !416 ; 2 uses
  %i.aj = load ptr, ptr %.sink.i.i.i, align 8, !alias.scope !130423, !noalias !130424, !nonnull !416, !noundef !416 ; 2 uses
  %i.ak = insertelement <16 x i8> poison, i8 %i.ag, i64 0
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bc, %bb.h ]
  %.pn.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.bd, %bb.h ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ai ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.am, align 1, !noalias !130425 ; 2 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.al
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.bb, %bb.g ], [ %i.ao, %bb.f ] ; 3 uses
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = add i64 %.sroa.01.0.i.i.i.i, %i.aq
  %i.as = and i64 %i.ar, %i.ai
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds [24 x i8], ptr %i.aj, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -24
  %.val2.i.i.i.i = load i128, ptr %i.av, align 8, !noalias !130426
  %i.aw = icmp eq i128 %.val2.i.i.i.i, 8197826300464095662947335996543484106
  br i1 %i.aw, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.g, !prof !439

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.ax = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %bb.h, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !426

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.bb = and i16 %i.ba, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.bd = add i64 %.sroa.01.0.i.i.i.i, %i.bc
  br label %bb.f

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i, %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i
  %.sroa.0.0.i.i = phi i1 [ false, %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i ], [ true, %.lr.ph.i.i.i ], [ false, %._crit_edge.i.i.i ]
  %i.be = atomicrmw sub ptr %i.s, i32 1 release, align 4, !noalias !130416
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  %i.bg = and i32 %i.bf, -1073741825
  %or.cond.not.i.i7.i = icmp eq i32 %i.bg, -2147483648
  br i1 %or.cond.not.i.i7.i, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i, !prof !444

bb.i:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.s, i32 noundef %i.bf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i unwind label %bb.ab

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i: ; preds = %bb.i, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  br i1 %.sroa.0.0.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2l_3AnyNtNtB4_6marker4SyncNtB3u_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i
  %i.bh = cmpxchg weak ptr %i.s, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !130427
  %i.bi = extractvalue { i32, i1 } %i.bh, 1
  br i1 %i.bi, label %.noexc17, label %bb.k, !prof !439

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 8 %i.s)
          to label %.noexc17 unwind label %bb.ab

.noexc17:                                         ; preds = %bb.k, %bb.j
  %i.bj = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !130427
  %i.bk = and i64 %i.bj, 9223372036854775807
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.l, !prof !439

bb.l:                                             ; preds = %.noexc17
  %i.bm = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc18 unwind label %bb.ab

.noexc18:                                         ; preds = %bb.l
  %i.bn = xor i1 %i.bm, true
  %i.bo = zext i1 %i.bn to i8
  br label %_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %.noexc18, %.noexc17
  %.sroa.01.0.i.i.i = phi i8 [ %i.bo, %.noexc18 ], [ 0, %.noexc17 ] ; 2 uses
  %i.bp = load atomic i8, ptr %i.x monotonic, align 8, !noalias !130427 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130428)
  %i.bq = getelementptr inbounds nuw i8, ptr %.val10, i64 96 ; 2 uses
  %.val.i11.i = load i64, ptr %i.bq, align 8, !alias.scope !130428, !noalias !130429, !noundef !416
  %i.br = getelementptr inbounds nuw i8, ptr %.val10, i64 104
  %.val5.i12.i = load i64, ptr %i.br, align 8, !alias.scope !130428, !noalias !130429, !noundef !416
  %i.bs = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECsfR8GmIBoxTX_21lance_namespace_impls(i64 %.val.i11.i, i64 %.val5.i12.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) @21), !noalias !130430 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130432)
  %i.bt = lshr i64 %i.bs, 57
  %i.bu = trunc nuw nsw i64 %i.bt to i8           ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val10, i64 72 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !130433, !noalias !130434, !noundef !416 ; 3 uses
  %i.bx = load ptr, ptr %.sink.i.i.i, align 8, !alias.scope !130433, !noalias !130434, !nonnull !416, !noundef !416 ; 3 uses
  %i.by = insertelement <16 x i8> poison, i8 %i.bu, i64 0
  %i.bz = shufflevector <16 x i8> %i.by, <16 x i8> poison, <16 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset16read_transaction0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.ce = load i64, ptr %i.cd, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !420, !invariant.load !416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) %i.ch) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val20.i, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !range !420, !invariant.load !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) %i.cn) #68
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.r
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread132, label %bb.t

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !156032
  call void @llvm.experimental.noalias.scope.decl(metadata !156041)
  call void @llvm.experimental.noalias.scope.decl(metadata !156042)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !156032
  store ptr %i.bz, ptr %i.e, align 8, !noalias !156043
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cb, ptr %i.co, align 8, !noalias !156043
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !range !420, !invariant.load !416, !alias.scope !156042, !noalias !156041
  %i.cr = add nsw i64 %i.cq, -1
  %i.cs = and i64 %i.cr, -16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !156043
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !invariant.load !416, !alias.scope !156042, !noalias !156041, !nonnull !416
  invoke void %i.cw(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %i.cu)
          to label %bb.x unwind label %bb.u, !noalias !156041

bb.u:                                             ; preds = %bb.t
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !156044
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.v, label %.body39.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body39.i unwind label %bb.w, !noalias !156041

bb.w:                                             ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !156041
  unreachable

bb.x:                                             ; preds = %bb.t
  %i.db = load i128, ptr %i.d, align 16, !noalias !156043, !noundef !416
  %i.dc = icmp eq i128 %i.db, 124324947087582264507647401418622252678 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !156043
  %spec.select.i.i = select i1 %i.dc, ptr %i.bz, ptr %i.cb
  %spec.select2.i.i = select i1 %i.dc, ptr null, ptr %i.bz
  %i.dd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %spec.select.i.i, ptr %i.dd, align 8, !alias.scope !156041, !noalias !156045
  store ptr %spec.select2.i.i, ptr %i.m, align 8, !alias.scope !156041, !noalias !156045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !156032
  br i1 %i.dc, label %.thread.a, label %bb.aa

.thread.a:                                        ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !noalias !156032, !nonnull !416, !align !417, !noundef !416
  %.val27.i103 = load ptr, ptr %i.df, align 8, !nonnull !416, !noundef !416
  %i.dg = getelementptr inbounds nuw i8, ptr %.val27.i103, i64 32
  %i.dh = atomicrmw add ptr %i.dg, i64 1 monotonic, align 8 ; 0 uses
  br label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.y:                                             ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !156046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !156032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !156032
  %.pre.pre.i = load ptr, ptr %i.m, align 8, !noalias !156032 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !156032, !nonnull !416, !align !417, !noundef !416
  %.val27.i = load ptr, ptr %i.dj, align 8, !nonnull !416, !noundef !416
  %i.dk = getelementptr inbounds nuw i8, ptr %.val27.i, i64 40
  %i.dl = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8 ; 0 uses
  %.not16.i = icmp eq ptr %.pre.pre.i, null
  br i1 %.not16.i, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.ad

bb.z:                                             ; preds = %bb.ag, %bb.n
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.dn = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !156032 ; 2 uses
  %i.do = icmp ult i64 %i.dn, 6
  call void @llvm.assume(i1 %i.do)
  %i.dp = icmp samesign ugt i64 %i.dn, 1
  br i1 %i.dp, label %bb.ac, label %.thread106

.thread106:                                       ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !156032, !nonnull !416, !align !417, !noundef !416
  %.val27.i109 = load ptr, ptr %i.dr, align 8, !nonnull !416, !noundef !416
  %i.ds = getelementptr inbounds nuw i8, ptr %.val27.i109, i64 40
  %i.dt = atomicrmw add ptr %i.ds, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.ad

bb.ab:                                            ; preds = %bb.ac
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !156032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !156032
  %i.dv = load ptr, ptr %i.m, align 8, !noalias !156032, !noundef !416
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %.body39.i, label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !156032
  store ptr @927, ptr %i.l, align 8, !noalias !156032
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 11, ptr %i.dx, align 8, !noalias !156032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !156032
  store ptr %i.l, ptr %i.k, align 8, !noalias !156032
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtReNtB6_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !156032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !156046
  store i64 0, ptr %i.c, align 8, !noalias !156046
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @663, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !156046
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 17, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !156046
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !156046
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @660, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !156046
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 32, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !156046
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !156046
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @663, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !156046
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 17, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !156046
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !156046
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 389, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !156046
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @662, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !156046
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.k, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !156046
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c)
          to label %bb.y unwind label %bb.ab

bb.ad:                                            ; preds = %.thread106, %bb.y
  %i.dy = phi ptr [ %i.bz, %.thread106 ], [ %.pre.pre.i, %bb.y ]
  %i.dz = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !156047
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.ae, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread unwind label %bb.af

.body39.i:                                        ; preds = %bb.ag, %bb.af, %bb.ab, %bb.v, %bb.u
  %.pn17.i = phi { ptr, i32 } [ %i.eb, %bb.af ], [ %i.du, %bb.ab ], [ %i.du, %bb.ag ], [ %i.cx, %bb.u ], [ %i.cx, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !156032
  br label %.body.i

bb.af:                                            ; preds = %bb.ae
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i

bb.ag:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2X_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(16) %i.m) #73
          to label %.body39.i unwind label %bb.z

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !156032
  store i8 3, ptr %i.bq, align 8, !noalias !156032
  store i64 -3, ptr %0, align 8
  br label %common.ret

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.y, %bb.ad, %bb.ae, %.thread.a
  %.sroa.06.0.i105 = phi ptr [ %i.bz, %.thread.a ], [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.y ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !156032
  store i8 1, ptr %i.bq, align 8, !noalias !156032
  %.not = icmp eq ptr %.sroa.06.0.i105, null
  br i1 %.not, label %bb.ap, label %bb.ah

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread132: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !156032, !nonnull !416, !align !417, !noundef !416
  %.val29.i = load ptr, ptr %i.ed, align 8, !nonnull !416, !noundef !416
  %i.ee = getelementptr inbounds nuw i8, ptr %.val29.i, i64 40
  %i.ef = atomicrmw add ptr %i.ee, i64 1 monotonic, align 8 ; 0 uses
  store i8 1, ptr %i.bq, align 8, !noalias !156032
  br label %bb.ap

common.ret:                                       ; preds = %bb.bk, %bb.at, %bb.an, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sink = phi i8 [ 5, %bb.bk ], [ 4, %bb.at ], [ 1, %bb.an ], [ 3, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  store i8 %.sink, ptr %i.t, align 8
  ret void

bb.ah:                                            ; preds = %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %.sroa.06.0.i105, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i105, i64 16
  invoke fastcc void @_RNvXs1_NtNtCs9KQ7US1M400_11lance_table11transaction7builderNtB5_11TransactionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(344) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.eg)
          to label %bb.ak unwind label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE9drop_slowCshkPeWWG1flk_5lance(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ei = atomicrmw sub ptr %.sroa.06.0.i105, i64 1 release, align 8, !noalias !156048
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ak:                                            ; preds = %bb.ah
  %.sroa.098.0.copyload = load i64, ptr %i.r, align 8
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.489, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.599.0..sroa_idx, i64 56, i1 false)
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.592, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6100.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ek = atomicrmw sub ptr %.sroa.06.0.i105, i64 1 release, align 8, !noalias !156049
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %bb.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit34

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE9drop_slowCshkPeWWG1flk_5lance(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit34 unwind label %bb.am

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.aj, %bb.ai, %bb.am
  %.pn17 = phi { ptr, i32 } [ %i.em, %bb.am ], [ %i.eh, %bb.ai ], [ %i.eh, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.am:                                            ; preds = %bb.al
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit34: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.an

bb.an:                                            ; preds = %bb.bg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache15insert_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit34
  %.sroa.086.0 = phi i64 [ -2, %bb.bg ], [ %.sroa.095.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache15insert_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.098.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit34 ]
  store i64 %.sroa.086.0, ptr %0, align 8
  %.sroa.489.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.489.0..sroa_idx90, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.489, i64 56, i1 false)
  %.sroa.592.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.592.0..sroa_idx93, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.592, i64 280, i1 false)
  br label %common.ret

bb.ao:                                            ; preds = %bb.bf, %bb.ai, %bb.bh, %bb.aq, %.body
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.ap:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread132, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !nonnull !416, !align !417, !noundef !416 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 280
  %.val = load ptr, ptr %i.eq, align 8, !nonnull !416, !noundef !416
  %i.er = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 576
  store ptr %i.ep, ptr %.sroa.863.0..sroa_idx, align 8
  %.sroa.964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 584
  store ptr %i.er, ptr %.sroa.964.0..sroa_idx, align 8
  %.sroa.1065.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 592
  store ptr %i.ep, ptr %.sroa.1065.0..sroa_idx, align 8
  %.sroa.1267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 602
  store i8 0, ptr %.sroa.1267.0..sroa_idx, align 2
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset29read_transaction_from_storage0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.et) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.ao

bb.ar:                                            ; preds = %bb.a, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  invoke fastcc void @_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset29read_transaction_from_storage0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.q, ptr noundef nonnull align 8 %i.et, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.as unwind label %bb.aq

bb.as:                                            ; preds = %bb.ar
  %i.eu = load i64, ptr %i.q, align 8, !range !432, !noundef !416 ; 4 uses
  %i.ev = icmp eq i64 %i.eu, -3
  br i1 %i.ev, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.au:                                            ; preds = %bb.as
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx, i64 56, i1 false)
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.569, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.569.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset29read_transaction_from_storage0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.et)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.aw:                                            ; preds = %bb.au
  %i.ex = icmp eq i64 %i.eu, -2
  br i1 %i.ex, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.571.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.569, i64 280, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3, i64 56, i1 false)
  store i64 %i.eu, ptr %i.et, align 8
  %.not.i35 = icmp eq i64 %i.eu, -1
  br i1 %.not.i35, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache15insert_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !nonnull !416, !align !417, !noundef !416
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 312
  %.val22 = load ptr, ptr %i.fa, align 8, !nonnull !416, !noundef !416
  %i.fb = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke fastcc void @_RNvXs1_NtNtCs9KQ7US1M400_11lance_table11transaction7builderNtB5_11TransactionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(344) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.et)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body37

.body37:                                          ; preds = %bb.bc, %bb.az
  %eh.lpad-body38 = phi { ptr, i32 } [ %i.fd, %bb.az ], [ %i.fi, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.body46

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !156050
  store i64 1, ptr %i.b, align 8, !noalias !156050
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.fe, align 8, !noalias !156050
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.ff, ptr noundef nonnull readonly align 8 dereferenceable(344) %i.p, i64 344, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !156051
  %i.fg = call noundef align 8 dereferenceable_or_null(360) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 360, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !156051 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.bb, label %bb.be, !prof !448

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 360) #72
          to label %.noexc.i36 unwind label %bb.bc, !noalias !156050

.noexc.i36:                                       ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.ff)
          to label %.body37 unwind label %bb.bd, !noalias !156050

bb.bd:                                            ; preds = %bb.bc
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
begin_hunk_2_@_RNCNvNtNtCshkPeWWG1flk_5lance2io8deletion26read_dataset_deletion_file0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.cv = load i64, ptr %i.cu, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !range !420, !invariant.load !416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.cv, i64 noundef range(i64 1, -9223372036854775807) %i.cy) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.w:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val20.i, i64 8
  %i.db = load i64, ptr %i.da, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !range !420, !invariant.load !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) %i.de) #68
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.v
  %.not.i27 = icmp eq ptr %i.cq, null
  br i1 %.not.i27, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread247, label %bb.x

bb.x:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !181532
  call void @llvm.experimental.noalias.scope.decl(metadata !181541)
  call void @llvm.experimental.noalias.scope.decl(metadata !181542)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !181532
  store ptr %i.cq, ptr %i.m, align 8, !noalias !181543
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.cs, ptr %i.df, align 8, !noalias !181543
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !range !420, !invariant.load !416, !alias.scope !181542, !noalias !181541
  %i.di = add nsw i64 %i.dh, -1
  %i.dj = and i64 %i.di, -16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !181543
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !invariant.load !416, !alias.scope !181542, !noalias !181541, !nonnull !416
  invoke void %i.dn(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull %i.dl)
          to label %bb.ab unwind label %bb.y, !noalias !181541

bb.y:                                             ; preds = %bb.x
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !181544
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.z, label %.body39.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.body39.i unwind label %bb.aa, !noalias !181541

bb.aa:                                            ; preds = %bb.z
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !181541
  unreachable

bb.ab:                                            ; preds = %bb.x
  %i.ds = load i128, ptr %i.l, align 16, !noalias !181543, !noundef !416
  %i.dt = icmp eq i128 %i.ds, -77532982071035600726102740195481127890 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !181543
  %spec.select.i.i = select i1 %i.dt, ptr %i.cq, ptr %i.cs
  %spec.select2.i.i = select i1 %i.dt, ptr null, ptr %i.cq
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %spec.select.i.i, ptr %i.du, align 8, !alias.scope !181541, !noalias !181545
  store ptr %spec.select2.i.i, ptr %i.u, align 8, !alias.scope !181541, !noalias !181545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !181532
  br i1 %i.dt, label %.thread.a, label %bb.ae

.thread.a:                                        ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !181532, !nonnull !416, !align !417, !noundef !416
  %.val27.i193 = load ptr, ptr %i.dw, align 8, !nonnull !416, !noundef !416
  %i.dx = getelementptr inbounds nuw i8, ptr %.val27.i193, i64 32
  %i.dy = atomicrmw add ptr %i.dx, i64 1 monotonic, align 8 ; 0 uses
  br label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.ac:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !181546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !181532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !181532
  %.pre.pre.i = load ptr, ptr %i.u, align 8, !noalias !181532 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !181532, !nonnull !416, !align !417, !noundef !416
  %.val27.i = load ptr, ptr %i.ea, align 8, !nonnull !416, !noundef !416
  %i.eb = getelementptr inbounds nuw i8, ptr %.val27.i, i64 40
  %i.ec = atomicrmw add ptr %i.eb, i64 1 monotonic, align 8 ; 0 uses
  %.not16.i = icmp eq ptr %.pre.pre.i, null
  br i1 %.not16.i, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.ah

bb.ad:                                            ; preds = %bb.ak, %bb.r
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.ee = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !181532 ; 2 uses
  %i.ef = icmp ult i64 %i.ee, 6
  call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp samesign ugt i64 %i.ee, 1
  br i1 %i.eg, label %bb.ag, label %.thread196

.thread196:                                       ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !181532, !nonnull !416, !align !417, !noundef !416
  %.val27.i199 = load ptr, ptr %i.ei, align 8, !nonnull !416, !noundef !416
  %i.ej = getelementptr inbounds nuw i8, ptr %.val27.i199, i64 40
  %i.ek = atomicrmw add ptr %i.ej, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.ah

bb.af:                                            ; preds = %bb.ag
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !181532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !181532
  %i.em = load ptr, ptr %i.u, align 8, !noalias !181532, !noundef !416
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %.body39.i, label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !181532
  store ptr @4606, ptr %i.t, align 8, !noalias !181532
  %i.eo = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 14, ptr %i.eo, align 8, !noalias !181532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !181532
  store ptr %i.t, ptr %i.s, align 8, !noalias !181532
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtReNtB6_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !181532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !181546
  store i64 0, ptr %i.k, align 8, !noalias !181546
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @663, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !181546
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 17, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !181546
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !181546
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr @660, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !181546
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 32, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !181546
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !181546
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr @663, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !181546
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 17, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !181546
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !181546
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  store i32 389, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !181546
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr @662, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !181546
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr %i.s, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !181546
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.k)
          to label %bb.ac unwind label %bb.af

bb.ah:                                            ; preds = %.thread196, %bb.ac
  %i.ep = phi ptr [ %i.cq, %.thread196 ], [ %.pre.pre.i, %bb.ac ]
  %i.eq = atomicrmw sub ptr %i.ep, i64 1 release, align 8, !noalias !181547
  %i.er = icmp eq i64 %i.eq, 1
  br i1 %i.er, label %bb.ai, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread unwind label %bb.aj

.body39.i:                                        ; preds = %bb.ak, %bb.aj, %bb.af, %bb.z, %bb.y
  %.pn17.i = phi { ptr, i32 } [ %i.es, %bb.aj ], [ %i.el, %bb.af ], [ %i.el, %bb.ak ], [ %i.do, %bb.y ], [ %i.do, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !181532
  br label %.body.i

bb.aj:                                            ; preds = %bb.ai
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i

bb.ak:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2T_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(16) %i.u) #73
          to label %.body39.i unwind label %bb.ad

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !181532
  store i8 3, ptr %i.ch, align 8, !noalias !181532
  store i8 -2, ptr %0, align 8
  br label %common.ret

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.ac, %bb.ah, %bb.ai, %.thread.a
  %.sroa.06.0.i195 = phi ptr [ %i.cq, %.thread.a ], [ null, %bb.ai ], [ null, %bb.ah ], [ null, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !181532
  store i8 1, ptr %i.ch, align 8, !noalias !181532
  %.not7 = icmp eq ptr %.sroa.06.0.i195, null
  br i1 %.not7, label %.thread243, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit78

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread247: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !181532, !nonnull !416, !align !417, !noundef !416
  %.val29.i = load ptr, ptr %i.eu, align 8, !nonnull !416, !noundef !416
  %i.ev = getelementptr inbounds nuw i8, ptr %.val29.i, i64 40
  %i.ew = atomicrmw add ptr %i.ev, i64 1 monotonic, align 8 ; 0 uses
  store i8 1, ptr %i.ch, align 8, !noalias !181532
  br label %.thread243

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit78: ; preds = %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache15insert_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.ef
  %.sroa.8154.1 = phi ptr [ %i.nd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache15insert_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.nd, %bb.ef ], [ %.sroa.06.0.i195, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !181548)
  call void @llvm.experimental.noalias.scope.decl(metadata !181549)
  call void @llvm.experimental.noalias.scope.decl(metadata !181550)
  %.val.i.i.i = load i64, ptr %i.ex, align 8, !range !419, !alias.scope !181551, !noundef !416 ; 2 uses
  %i.ey = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ey, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.al

bb.al:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit78
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val1.i.i.i = load ptr, ptr %i.ez, align 8, !alias.scope !181551, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !181551
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit

.thread243:                                       ; preds = %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread247
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !nonnull !416, !align !417, !noundef !416
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !nonnull !416, !align !417, !noundef !416
  store ptr %i.fb, ptr %i.ci, align 8
  %.sroa.8105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.fd, ptr %.sroa.8105.0..sroa_idx, align 8
  %.sroa.10107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1512
  store i8 0, ptr %.sroa.10107.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 1512
  br label %bb.ar

bb.am:                                            ; preds = %bb.ds, %bb.do, %bb.ap, %bb.dt, %.body57, %.body
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit68: ; preds = %bb.ap, %.body41.thread, %.body41, %bb.ao, %.body, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.ds, %bb.dr
  %.pn18.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.lx, %bb.dr ], [ %.pn15.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.pn15.pn, %bb.ds ], [ %i.fk, %.body41 ], [ %i.fk, %bb.ap ], [ %i.fk, %bb.ao ], [ %.pn2.i, %.body41.thread ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !181552)
  call void @llvm.experimental.noalias.scope.decl(metadata !181553)
  call void @llvm.experimental.noalias.scope.decl(metadata !181554)
  %.val.i.i.i35 = load i64, ptr %i.fh, align 8, !range !419, !alias.scope !181555, !noundef !416 ; 2 uses
  %i.fi = icmp eq i64 %.val.i.i.i35, 0
  br i1 %i.fi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit37, label %bb.an

bb.an:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit68
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val1.i.i.i36 = load ptr, ptr %i.fj, align 8, !alias.scope !181555, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i36, i64 noundef %.val.i.i.i35, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !181555
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit37

.body41:                                          ; preds = %bb.as, %bb.at
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pr = load i8, ptr %i.fp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %cond.i38 = icmp eq i8 %.pr, 3
  br i1 %cond.i38, label %bb.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit68

bb.ao:                                            ; preds = %.body41
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %i.fm = load i8, ptr %i.fl, align 8, !range !481, !noundef !416
  %cond.i.i = icmp eq i8 %i.fm, 3
  br i1 %cond.i.i, label %bb.ap, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit68

bb.ap:                                            ; preds = %bb.ao
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset17base_object_store0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.fn)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit68 unwind label %bb.am

bb.aq:                                            ; preds = %bb.a
  %.phi.trans.insert217 = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %.pre218 = load i8, ptr %.phi.trans.insert217, align 8, !range !481, !noalias !181556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181557)
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 1512 ; 3 uses
  switch i8 %.pre218, label %default.unreachable238 [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.aw
  ]

bb.ar:                                            ; preds = %.thread243, %bb.aq
  %i.fq = phi ptr [ %i.ff, %.thread243 ], [ %i.fp, %bb.aq ]
  %i.fr = phi ptr [ %i.fe, %.thread243 ], [ %i.fo, %bb.aq ] ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !181556, !nonnull !416, !align !417, !noundef !416
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !181556, !nonnull !416, !align !417, !noundef !416
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fx = load <2 x i32>, ptr %i.fv, align 8, !noalias !181556
  store <2 x i32> %i.fx, ptr %i.fw, align 8, !noalias !181556
  %.sroa.810.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.fs, ptr %.sroa.810.0..sroa_idx.i, align 8, !noalias !181556
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1504
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !181556
  br label %bb.aw

.body41.thread:                                   ; preds = %bb.au, %bb.av, %bb.ba
  %.pn2.i = phi { ptr, i32 } [ %i.gk, %bb.ba ], [ %i.fy, %bb.au ], [ %i.fy, %bb.av ]
  store i8 2, ptr %i.gc, align 8, !noalias !181556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit68

bb.as:                                            ; preds = %bb.aq
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1935) #72
          to label %.noexc43 unwind label %.body41

.noexc43:                                         ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.aq
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1935) #72
          to label %.noexc44 unwind label %.body41

.noexc44:                                         ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.aw
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %i.ga = load i8, ptr %i.fz, align 8, !range !481, !noalias !181556, !noundef !416
  %cond.i.i40 = icmp eq i8 %i.ga, 3
  br i1 %cond.i.i40, label %bb.av, label %.body41.thread

bb.av:                                            ; preds = %bb.au
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset17base_object_store0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.gb)
          to label %.body41.thread unwind label %bb.bb, !noalias !181557

bb.aw:                                            ; preds = %bb.ar, %bb.aq
  %i.gc = phi ptr [ %i.fq, %bb.ar ], [ %i.fp, %bb.aq ] ; 3 uses
  %i.gd = phi ptr [ %i.fr, %bb.ar ], [ %i.fo, %bb.aq ]
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset12object_store0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.x, ptr noundef nonnull align 8 %i.ge, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ax unwind label %bb.au

bb.ax:                                            ; preds = %bb.aw
  %i.gf = load i8, ptr %i.x, align 8, !range !422, !alias.scope !181557, !noalias !181558, !noundef !416 ; 3 uses
  %i.gg = icmp eq i8 %i.gf, -2
  br i1 %i.gg, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %i.gi = load i8, ptr %i.gh, align 8, !range !481, !noalias !181556, !noundef !416
  %cond.i4.i = icmp eq i8 %i.gi, 3
  br i1 %cond.i4.i, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset17base_object_store0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.gj)
          to label %bb.bd unwind label %bb.ba, !noalias !181557

bb.ba:                                            ; preds = %bb.az
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body41.thread

bb.bb:                                            ; preds = %bb.av
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !181557
  unreachable

bb.bc:                                            ; preds = %bb.ax
  store i8 3, ptr %i.gc, align 8, !noalias !181556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.bd:                                            ; preds = %bb.az, %bb.ay
  store i8 1, ptr %i.gc, align 8, !noalias !181556
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx, i64 7, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6110, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6110.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.not.i49 = icmp eq i8 %i.gf, -1
  br i1 %.not.i49, label %.thread244, label %bb.be
end_hunk_2
begin_hunk_3_@_RNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.go(ptr noundef nonnull %.val.i.i)
          to label %bb.y unwind label %bb.z, !noalias !182858

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gp = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !range !419, !invariant.load !416, !noalias !182858 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.y
  %i.gs = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !range !420, !invariant.load !416, !noalias !182858
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.gq, i64 noundef range(i64 1, -9223372036854775807) %i.gt) #68, !noalias !182858
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !range !419, !invariant.load !416, !noalias !182858 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %.body.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.z
  %i.gy = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !range !420, !invariant.load !416, !noalias !182858
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.gw, i64 noundef range(i64 1, -9223372036854775807) %i.gz) #68, !noalias !182858
  br label %.body.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.y
  %.not.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread537.i, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gn) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !182859
  call void @llvm.experimental.noalias.scope.decl(metadata !182868)
  call void @llvm.experimental.noalias.scope.decl(metadata !182869)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !182859
  store ptr %i.gl, ptr %i.bf, align 8, !noalias !182870
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.gn, ptr %i.ha, align 8, !noalias !182870
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !range !420, !invariant.load !416, !alias.scope !182869, !noalias !182871
  %i.hd = add nsw i64 %i.hc, -1
  %i.he = and i64 %i.hd, -16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !182870
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !invariant.load !416, !alias.scope !182869, !noalias !182871, !nonnull !416
  invoke void %i.hi(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.be, ptr noundef nonnull %i.hg)
          to label %bb.ae unwind label %bb.ab, !noalias !182871

bb.ab:                                            ; preds = %bb.aa
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = atomicrmw sub ptr %i.gl, i64 1 release, align 8, !noalias !182872
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %bb.ac, label %.body39.i.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %.body39.i.i unwind label %bb.ad, !noalias !182871

bb.ad:                                            ; preds = %bb.ac
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !182871
  unreachable

bb.ae:                                            ; preds = %bb.aa
  %i.hn = load i128, ptr %i.be, align 16, !noalias !182870, !noundef !416
  %i.ho = icmp eq i128 %i.hn, 118003311876449733876074416052600190119 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !182870
  %spec.select.i.i.i = select i1 %i.ho, ptr %i.gl, ptr %i.gn
  %spec.select2.i.i.i = select i1 %i.ho, ptr null, ptr %i.gl
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %spec.select.i.i.i, ptr %i.hp, align 8, !alias.scope !182868, !noalias !182873
  store ptr %spec.select2.i.i.i, ptr %i.bn, align 8, !alias.scope !182868, !noalias !182873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !182859
  br i1 %i.ho, label %bb.ap, label %bb.ah

bb.af:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !182874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !182859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !182859
  %.pre.pre.i.i = load ptr, ptr %i.bn, align 8, !noalias !182859 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !182859, !nonnull !416, !align !417, !noundef !416
  %.val27.i.i = load ptr, ptr %i.hr, align 8, !noalias !182858, !nonnull !416, !noundef !416
  %i.hs = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 40
  %i.ht = atomicrmw add ptr %i.hs, i64 1 monotonic, align 8, !noalias !182858 ; 0 uses
  %.not16.i.i = icmp eq ptr %.pre.pre.i.i, null
  br i1 %.not16.i.i, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.thread, label %bb.ak

bb.ag:                                            ; preds = %bb.an, %bb.u
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !182858
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.hv = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !182859 ; 2 uses
  %i.hw = icmp ult i64 %i.hv, 6
  call void @llvm.assume(i1 %i.hw)
  %i.hx = icmp samesign ugt i64 %i.hv, 1
  br i1 %i.hx, label %bb.aj, label %.thread442.i

.thread442.i:                                     ; preds = %bb.ah
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !182859, !nonnull !416, !align !417, !noundef !416
  %.val27.i445.i = load ptr, ptr %i.hz, align 8, !noalias !182858, !nonnull !416, !noundef !416
  %i.ia = getelementptr inbounds nuw i8, ptr %.val27.i445.i, i64 40
  %i.ib = atomicrmw add ptr %i.ia, i64 1 monotonic, align 8, !noalias !182858 ; 0 uses
  br label %bb.ak

bb.ai:                                            ; preds = %bb.aj
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !182859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !182859
  %i.id = load ptr, ptr %i.bn, align 8, !noalias !182859, !noundef !416
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %.body39.i.i, label %bb.an

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !182859
  store ptr @4993, ptr %i.bm, align 8, !noalias !182859
  %i.if = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 18, ptr %i.if, align 8, !noalias !182859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !182859
  store ptr %i.bm, ptr %i.bl, align 8, !noalias !182859
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtReNtB6_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !182859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !182874
  store i64 0, ptr %i.bd, align 8, !noalias !182874
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @663, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !182874
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 17, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !182874
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !182874
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr @660, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !182874
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i64 32, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !182874
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !182874
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store ptr @663, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !182874
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  store i64 17, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !182874
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !182874
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  store i32 389, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 4, !noalias !182874
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  store ptr @662, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !182874
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  store ptr %i.bl, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !182874
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bd)
          to label %bb.af unwind label %bb.ai, !noalias !182858

bb.ak:                                            ; preds = %.thread442.i, %bb.af
  %i.ig = phi ptr [ %i.gl, %.thread442.i ], [ %.pre.pre.i.i, %bb.af ]
  %i.ih = atomicrmw sub ptr %i.ig, i64 1 release, align 8, !noalias !182875
  %i.ii = icmp eq i64 %i.ih, 1
  br i1 %i.ii, label %bb.al, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.thread

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.thread unwind label %bb.am, !noalias !182858

.body39.i.i:                                      ; preds = %bb.an, %bb.am, %bb.ai, %bb.ac, %bb.ab
  %.pn17.i.i = phi { ptr, i32 } [ %i.ij, %bb.am ], [ %i.ic, %bb.ai ], [ %i.ic, %bb.an ], [ %i.hj, %bb.ab ], [ %i.hj, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !182859
  br label %.body.i.i

bb.am:                                            ; preds = %bb.al
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i.i

bb.an:                                            ; preds = %bb.ai
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2N_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(16) %i.bn) #73
          to label %.body39.i.i unwind label %bb.ag, !noalias !182858

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !182859
  store i8 3, ptr %i.gc, align 8, !noalias !182859
  br label %bb.im

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.thread: ; preds = %bb.al, %bb.ak, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !182859
  br label %bb.ao

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread537.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !182859, !nonnull !416, !align !417, !noundef !416
  %.val29.i.i = load ptr, ptr %i.il, align 8, !noalias !182858, !nonnull !416, !noundef !416
  %i.im = getelementptr inbounds nuw i8, ptr %.val29.i.i, i64 40
  %i.in = atomicrmw add ptr %i.im, i64 1 monotonic, align 8, !noalias !182858 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread537.i
  store i8 1, ptr %i.gc, align 8, !noalias !182859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !182857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !182857
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !182857, !nonnull !416, !align !417, !noundef !416
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !182857, !nonnull !416, !align !417, !noundef !416
  invoke void @_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset16indice_files_dir(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.ip, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ir)
          to label %bb.av unwind label %bb.au, !noalias !182858

bb.ap:                                            ; preds = %bb.ae
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.it = load ptr, ptr %i.is, align 8, !noalias !182859, !nonnull !416, !align !417, !noundef !416
  %.val27.i439.i = load ptr, ptr %i.it, align 8, !noalias !182858, !nonnull !416, !noundef !416
  %i.iu = getelementptr inbounds nuw i8, ptr %.val27.i439.i, i64 32
  %i.iv = atomicrmw add ptr %i.iu, i64 1 monotonic, align 8, !noalias !182858 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !182859
  store i8 1, ptr %i.gc, align 8, !noalias !182859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !182857
  store ptr %i.gl, ptr %i.cs, align 8, !noalias !182857
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %.val85.i = load ptr, ptr %i.iw, align 8, !noalias !182858, !nonnull !416, !noundef !416 ; 2 uses
  %i.ix = atomicrmw add ptr %.val85.i, i64 1 monotonic, align 8, !noalias !182858
  %i.iy = icmp slt i64 %i.ix, 0
  br i1 %i.iy, label %bb.aq, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.ap
  %i.iz = atomicrmw sub ptr %i.gl, i64 1 release, align 8, !noalias !182876
  %i.ja = icmp eq i64 %i.iz, 1
  br i1 %i.ja, label %bb.ar, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit101.i

bb.ar:                                            ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit101.i unwind label %bb.as, !noalias !182858

bb.as:                                            ; preds = %bb.ar
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !182857
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit116.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit101.i: ; preds = %bb.ar, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !182857
  br label %bb.in

bb.at:                                            ; preds = %bb.il, %.body208.i, %bb.ge, %bb.fc, %bb.eq, %bb.ea, %bb.dm, %bb.dl, %bb.cq, %bb.ce, %.body.i
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !182858
  unreachable

bb.au:                                            ; preds = %bb.ao
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !182857
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit122.i

bb.av:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !182877)
  %i.je = load i8, ptr %i.cq, align 8, !range !423, !alias.scope !182878, !noalias !182879, !noundef !416 ; 2 uses
  %.not.i102.i = icmp eq i8 %i.je, -1
  br i1 %.not.i102.i, label %bb.aw, label %bb.cb

bb.aw:                                            ; preds = %bb.av
  %i.jf = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.8240.sroa.7.7.copyload433.i = load ptr, ptr %i.jf, align 8, !alias.scope !182880, !noalias !182857 ; 3 uses
  %.sroa.8240.sroa.10.7..sroa_idx434.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %.sroa.4436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.jg = load <2 x ptr>, ptr %.sroa.8240.sroa.10.7..sroa_idx434.i, align 8, !alias.scope !182880, !noalias !182857
  %.sroa.8240.sroa.10.i.sroa.0.0.copyload227 = load ptr, ptr %.sroa.8240.sroa.10.7..sroa_idx434.i, align 8, !alias.scope !182880, !noalias !182857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !182857
  store <2 x ptr> %i.jg, ptr %.sroa.4436.0..sroa_idx.i, align 8, !noalias !182857
  store ptr %.sroa.8240.sroa.7.7.copyload433.i, ptr %i.cr, align 8, !noalias !182857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !182857
  %i.jh = load ptr, ptr %i.iq, align 8, !noalias !182857, !nonnull !416, !align !417, !noundef !416
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 128
  %i.jj = ptrtoint ptr %.sroa.8240.sroa.7.7.copyload433.i to i64
  invoke fastcc void @_RNvXsB_NtCs40k4W9msRzi_5alloc6stringNtCs8d5NHFTTVL0_4uuid4UuidNtB5_8ToString9to_stringCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cp, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16) %i.ji)
          to label %bb.ax unwind label %bb.bz, !noalias !182858

bb.ax:                                            ; preds = %bb.aw
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  invoke fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.jk, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cr, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cp)
          to label %bb.ba unwind label %bb.ay, !noalias !182858

bb.ay:                                            ; preds = %bb.ax
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !182857
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit122.i

bb.az:                                            ; preds = %bb.ba
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit113.i

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !182857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !182857
  %i.jn = load ptr, ptr %i.io, align 8, !noalias !182857, !nonnull !416, !align !417, !noundef !416
  %i.jo = getelementptr i8, ptr %i.jn, i64 280
  %.val83.i = load ptr, ptr %i.jo, align 8, !noalias !182858, !nonnull !416, !noundef !416
  %i.jp = getelementptr inbounds nuw i8, ptr %.val83.i, i64 336
  %i.jq = load ptr, ptr %i.gb, align 8, !noalias !182857, !nonnull !416, !noundef !416
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.js = load i64, ptr %i.jr, align 8, !noalias !182857, !noundef !416
  %i.jt = invoke noundef align 8 ptr @_RNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6Schema5field(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %i.js)
          to label %bb.bb unwind label %bb.az, !noalias !182858 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !182857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !182857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !182857
  store ptr %i.gb, ptr %i.cm, align 8, !noalias !182857
  %.sroa.5261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5261.0..sroa_idx.i, align 8, !noalias !182857
  invoke fastcc void @_RNvNtCs40k4W9msRzi_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cn, ptr noundef nonnull @2580, ptr noundef nonnull %i.cm)
          to label %bb.bd unwind label %bb.bc, !noalias !182858

bb.bc:                                            ; preds = %bb.bb
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !182857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !182857
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !182857
  %i.jv = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !182857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !182857
  %i.jw = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr @2581, ptr %i.jw, align 8, !alias.scope !182881, !noalias !182882
  store i8 11, ptr %i.co, align 8, !alias.scope !182881, !noalias !182882
  %.not.i103.i = icmp eq ptr %i.jt, null
  br i1 %.not.i103.i, label %bb.bx, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.co)
          to label %bb.bh unwind label %bb.bg, !noalias !182858

bb.bf:                                            ; preds = %bb.bg, %bb.bc
  %.pn15.i = phi { ptr, i32 } [ %i.jx, %bb.bg ], [ %i.ju, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !182857
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit113.i

bb.bg:                                            ; preds = %bb.be
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !182857
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.jt, ptr %i.jy, align 8, !noalias !182857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !182857
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jk)
          to label %_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i unwind label %bb.bi, !noalias !182858

bb.bi:                                            ; preds = %bb.bh
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.bh
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ka, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2582, i64 noundef 24)
          to label %bb.bl unwind label %bb.bk, !noalias !182858

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %.pn20.i = phi { ptr, i32 } [ %i.kb, %bb.bk ], [ %i.jz, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !182857
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit113.i

bb.bk:                                            ; preds = %_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !182857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !182857
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jk)
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.umax.v4i16
!155840 = !{!155654}
!155841 = !{!155656}
!155842 = !{!155656, !155654, !155652, !155644}
!155843 = !{!155658}
!155844 = !{!155659}
!155845 = !{!155661}
!155846 = !{!155663}
!155847 = !{!155664}
!155848 = !{!155666}
!155849 = !{!155669, !155668}
!155850 = !{!155671}
!155851 = !{!155672}
!155852 = !{!155671, !155672}
!155853 = !{!155674, !155672}
!155854 = !{!155675, !155671}
!155855 = !{!155677}
!155856 = !{!155678}
!155857 = !{!155680}
!155858 = !{!155682}
!155859 = !{!155682, !155680}
!155860 = !{!155688, !155686, !155684}
!155861 = !{!155690}
!155862 = !{!155692}
!155863 = !{!155694}
!155864 = !{!155694, !155692, !155690}
!155865 = !{!155696}
!155866 = !{!155698}
!155867 = !{!155698, !155696}
!155868 = !{!155700}
!155869 = !{!155702}
!155870 = !{!155702, !155700}
!155871 = !{!155704}
!155872 = !{!155706}
!155873 = !{!155706, !155704}
!155874 = !{!155708}
!155875 = !{!155710}
!155876 = !{!155712}
!155877 = !{!155712, !155710, !155708}
!155878 = !{!155714}
!155879 = !{!155716}
!155880 = !{!155716, !155714}
!155881 = !{!155722, !155720, !155718}
!155882 = !{!155724}
!155883 = !{!155728, !155726}
!155884 = !{!155726}
!155885 = !{!155728}
!155886 = !{!155730}
!155887 = !{!155732}
!155888 = !{!155732, !155730}
!155889 = !{!155734}
!155890 = !{!155736}
!155891 = !{!155736, !155734}
!155892 = !{!155738}
!155893 = !{!155740}
!155894 = !{!155740, !155738}
!155895 = !{!155746, !155744, !155742}
!155896 = !{!155748}
!155897 = !{!155750}
!155898 = !{!155750, !155748}
!155899 = !{!155752}
!155900 = !{!155754}
!155901 = !{!155754, !155752}
!155902 = !{!155756}
!155903 = !{!155757, !155756}
!155904 = !{!155757}
!155905 = !{!155759}
!155906 = !{!155761}
!155907 = !{!155763}
!155908 = !{!155763, !155761, !155759}
!155909 = !{!155765}
!155910 = !{!155767}
!155911 = !{!155769}
!155912 = !{!155769, !155767, !155765}
!155913 = !{!155771}
!155914 = !{!155773}
!155915 = !{!155773, !155771}
!155916 = distinct !{!155916, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls"}
!155917 = distinct !{!155917, !155916, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!155918 = distinct !{!155918, !155916, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155919 = distinct !{!155919, i1 false, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls"}
!155920 = distinct !{!155920, !155919, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155921 = distinct !{!155921, i1 false, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset19already_checked_out"}
!155922 = distinct !{!155922, !155921, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset19already_checked_out: argument 0"}
!155923 = distinct !{!155923, !155921, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset19already_checked_out: argument 1"}
!155924 = distinct !{!155924, !155921, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset19already_checked_out: argument 2"}
!155925 = distinct !{!155925, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls"}
!155926 = distinct !{!155926, !155925, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155927 = distinct !{!155927, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!155928 = distinct !{!155928, !155927, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155929 = distinct !{!155929, i1 false, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!155930 = distinct !{!155930, !155929, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155931 = distinct !{!155931, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!155932 = distinct !{!155932, !155931, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155933 = distinct !{!155933, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls"}
!155934 = distinct !{!155934, !155933, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155935 = distinct !{!155935, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!155936 = distinct !{!155936, !155935, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155937 = distinct !{!155937, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls"}
!155938 = distinct !{!155938, !155937, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155939 = distinct !{!155939, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!155940 = distinct !{!155940, !155939, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155941 = distinct !{!155941, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!155942 = distinct !{!155942, !155941, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155943 = distinct !{!155943, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!155944 = distinct !{!155944, !155943, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155945 = distinct !{!155945, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls"}
!155946 = distinct !{!155946, !155945, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155947 = distinct !{!155947, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!155948 = distinct !{!155948, !155947, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155949 = distinct !{!155949, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!155950 = distinct !{!155950, !155949, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155951 = distinct !{!155951, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls"}
!155952 = distinct !{!155952, !155951, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155953 = distinct !{!155953, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!155954 = distinct !{!155954, !155953, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155955 = !{!155918, !155917}
!155956 = !{!155920}
!155957 = !{!155922}
!155958 = !{!155923}
!155959 = !{!155922, !155923, !155924}
!155960 = !{!155922, !155924}
!155961 = !{!155923, !155924}
!155962 = !{!155928, !155926}
!155963 = !{!155930}
!155964 = !{!155932, !155930}
!155965 = !{!155934}
!155966 = !{!155936}
!155967 = !{!155936, !155934}
!155968 = !{!155938}
!155969 = !{!155940}
!155970 = !{!155942}
!155971 = !{!155944}
!155972 = !{!155944, !155942, !155940, !155938}
!155973 = !{!155946}
!155974 = !{!155946, !155938}
!155975 = !{!155948}
!155976 = !{!155950}
!155977 = !{!155950, !155948, !155946, !155938}
!155978 = !{!155952}
!155979 = !{!155954}
!155980 = !{!155954, !155952}
!155981 = distinct !{!155981, i1 false, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls"}
!155982 = distinct !{!155982, !155981, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155983 = distinct !{!155983, i1 false, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyECsfR8GmIBoxTX_21lance_namespace_impls"}
!155984 = distinct !{!155984, !155983, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyECsfR8GmIBoxTX_21lance_namespace_impls: argument 2"}
!155985 = distinct !{!155985, !155983, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!155986 = distinct !{!155986, !155983, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155987 = distinct !{!155987, i1 false, !"_RNvXs3_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_14TransactionKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey6schema"}
!155988 = distinct !{!155988, !155987, !"_RNvXs3_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_14TransactionKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey6schema: argument 0"}
!155989 = distinct !{!155989, i1 false, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish"}
!155990 = distinct !{!155990, !155989, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish: argument 1"}
!155991 = distinct !{!155991, !155989, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish: argument 0"}
!155992 = distinct !{!155992, i1 false, !"_RNvYNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecCsfR8GmIBoxTX_21lance_namespace_impls"}
!155993 = distinct !{!155993, !155992, !"_RNvYNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155994 = distinct !{!155994, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls"}
!155995 = distinct !{!155995, !155994, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!155996 = distinct !{!155996, !155994, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155997 = distinct !{!155997, i1 false, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionECsfR8GmIBoxTX_21lance_namespace_impls"}
!155998 = distinct !{!155998, !155997, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!155999 = distinct !{!155999, !155997, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156000 = distinct !{!156000, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!156001 = distinct !{!156001, !156000, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156002 = distinct !{!156002, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!156003 = distinct !{!156003, !156002, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156004 = distinct !{!156004, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls"}
!156005 = distinct !{!156005, !156004, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156006 = distinct !{!156006, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls"}
!156007 = distinct !{!156007, !156006, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156008 = distinct !{!156008, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2X_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156009 = distinct !{!156009, !156008, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2X_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156010 = distinct !{!156010, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!156011 = distinct !{!156011, !156010, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156012 = distinct !{!156012, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!156013 = distinct !{!156013, !156012, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156014 = distinct !{!156014, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156015 = distinct !{!156015, !156014, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156016 = distinct !{!156016, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!156017 = distinct !{!156017, !156016, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156018 = distinct !{!156018, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156019 = distinct !{!156019, !156018, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156020 = distinct !{!156020, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!156021 = distinct !{!156021, !156020, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156022 = distinct !{!156022, i1 false, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!156023 = distinct !{!156023, !156022, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156024 = distinct !{!156024, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!156025 = distinct !{!156025, !156024, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156026 = distinct !{!156026, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156027 = distinct !{!156027, !156026, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156028 = distinct !{!156028, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156029 = distinct !{!156029, !156028, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156030 = distinct !{!156030, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!156031 = distinct !{!156031, !156030, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156032 = !{!155982}
!156033 = !{!155986, !155985, !155984, !155982}
!156034 = !{!155986, !155984}
!156035 = !{!155988}
!156036 = !{!155986, !155985}
!156037 = !{!155991, !155990, !155986, !155985, !155984, !155982}
!156038 = !{!155990, !155985, !155984, !155982}
!156039 = !{!155993}
!156040 = !{!155996, !155995, !155982}
!156041 = !{!155998}
!156042 = !{!155999}
!156043 = !{!155998, !155999, !155982}
!156044 = !{!156003, !156001, !155998, !155999}
!156045 = !{!155999, !155982}
!156046 = !{!156007, !156005, !155982}
!156047 = !{!156013, !156011, !156009}
!156048 = !{!156017, !156015}
!156049 = !{!156021, !156019}
!156050 = !{!156023}
!156051 = !{!156025, !156023}
!156052 = !{!156027}
!156053 = !{!156029}
!156054 = !{!156031}
!156055 = !{!156031, !156029}
!156056 = distinct !{!156056, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultbNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls"}
!156057 = distinct !{!156057, !156056, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultbNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156058 = distinct !{!156058, !156056, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultbNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156059 = !{!156058, !156057}
!156060 = distinct !{!156060, i1 false, !"_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset24read_version_transaction0CsfR8GmIBoxTX_21lance_namespace_impls"}
!156061 = distinct !{!156061, !156060, !"_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset24read_version_transaction0CsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156062 = distinct !{!156062, !156060, !"_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset24read_version_transaction0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156063 = distinct !{!156063, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls"}
!156064 = distinct !{!156064, !156063, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156065 = distinct !{!156065, !156063, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156066 = distinct !{!156066, i1 false, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB1E_NCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB2H_7Dataset24read_version_transaction00ECsfR8GmIBoxTX_21lance_namespace_impls"}
!156067 = distinct !{!156067, !156066, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB1E_NCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB2H_7Dataset24read_version_transaction00ECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156068 = distinct !{!156068, !156066, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB1E_NCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB2H_7Dataset24read_version_transaction00ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156069 = distinct !{!156069, i1 false, !"_RNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB9_7Dataset24read_version_transaction00CsfR8GmIBoxTX_21lance_namespace_impls"}
!156070 = distinct !{!156070, !156069, !"_RNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB9_7Dataset24read_version_transaction00CsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156071 = distinct !{!156071, !156069, !"_RNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB9_7Dataset24read_version_transaction00CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156072 = distinct !{!156072, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!156073 = distinct !{!156073, !156072, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156074 = distinct !{!156074, i1 false, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error17dataset_not_foundNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156075 = distinct !{!156075, !156074, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error17dataset_not_foundNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156076 = distinct !{!156076, !156074, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error17dataset_not_foundNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156077 = distinct !{!156077, i1 false, !"_RNvXsI_NtCs63DIHKhvmTb_10lance_core5errorINtB5_20DatasetNotFoundSnafuNtNtCs40k4W9msRzi_5alloc6string6StringEINtCs42yCtD4oGzv_5snafu9IntoErrorNtB5_5ErrorE10into_errorCsfR8GmIBoxTX_21lance_namespace_impls"}
!156078 = distinct !{!156078, !156077, !"_RNvXsI_NtCs63DIHKhvmTb_10lance_core5errorINtB5_20DatasetNotFoundSnafuNtNtCs40k4W9msRzi_5alloc6string6StringEINtCs42yCtD4oGzv_5snafu9IntoErrorNtB5_5ErrorE10into_errorCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156079 = distinct !{!156079, !156077, !"_RNvXsI_NtCs63DIHKhvmTb_10lance_core5errorINtB5_20DatasetNotFoundSnafuNtNtCs40k4W9msRzi_5alloc6string6StringEINtCs42yCtD4oGzv_5snafu9IntoErrorNtB5_5ErrorE10into_errorCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156080 = distinct !{!156080, !156074, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error17dataset_not_foundNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 3"}
!156081 = distinct !{!156081, !156074, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error17dataset_not_foundNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 2"}
!156082 = distinct !{!156082, !156077, !"_RNvXsI_NtCs63DIHKhvmTb_10lance_core5errorINtB5_20DatasetNotFoundSnafuNtNtCs40k4W9msRzi_5alloc6string6StringEINtCs42yCtD4oGzv_5snafu9IntoErrorNtB5_5ErrorE10into_errorCsfR8GmIBoxTX_21lance_namespace_impls: argument 3"}
!156083 = distinct !{!156083, !156077, !"_RNvXsI_NtCs63DIHKhvmTb_10lance_core5errorINtB5_20DatasetNotFoundSnafuNtNtCs40k4W9msRzi_5alloc6string6StringEINtCs42yCtD4oGzv_5snafu9IntoErrorNtB5_5ErrorE10into_errorCsfR8GmIBoxTX_21lance_namespace_impls: argument 2"}
!156084 = distinct !{!156084, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156085 = distinct !{!156085, !156084, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156086 = distinct !{!156086, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156087 = distinct !{!156087, !156086, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156088 = distinct !{!156088, i1 false, !"_RNvYINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3cmp9PartialEq2neCsfR8GmIBoxTX_21lance_namespace_impls"}
!156089 = distinct !{!156089, !156088, !"_RNvYINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3cmp9PartialEq2neCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156090 = distinct !{!156090, !156088, !"_RNvYINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3cmp9PartialEq2neCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156091 = distinct !{!156091, i1 false, !"_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCsfR8GmIBoxTX_21lance_namespace_impls"}
!156092 = distinct !{!156092, !156091, !"_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156093 = distinct !{!156093, !156091, !"_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156094 = distinct !{!156094, i1 false, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls"}
!156095 = distinct !{!156095, !156094, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156096 = distinct !{!156096, i1 false, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls"}
!156097 = distinct !{!156097, !156096, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156098 = distinct !{!156098, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156099 = distinct !{!156099, !156098, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156100 = distinct !{!156100, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156101 = distinct !{!156101, !156100, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156102 = distinct !{!156102, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156103 = distinct !{!156103, !156102, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156104 = distinct !{!156104, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156105 = distinct !{!156105, !156104, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156106 = distinct !{!156106, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156107 = distinct !{!156107, !156106, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156108 = distinct !{!156108, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156109 = distinct !{!156109, !156108, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156110 = distinct !{!156110, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156111 = distinct !{!156111, !156110, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156112 = distinct !{!156112, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156113 = distinct !{!156113, !156112, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156114 = distinct !{!156114, i1 false, !"_RINvNtCscI6d9CVNmLh_4core4hint8must_useNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156115 = distinct !{!156115, !156114, !"_RINvNtCscI6d9CVNmLh_4core4hint8must_useNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156116 = distinct !{!156116, !156114, !"_RINvNtCscI6d9CVNmLh_4core4hint8must_useNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156117 = distinct !{!156117, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls"}
!156118 = distinct !{!156118, !156117, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156119 = distinct !{!156119, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!156120 = distinct !{!156120, !156119, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156121 = distinct !{!156121, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156122 = distinct !{!156122, !156121, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156123 = distinct !{!156123, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156124 = distinct !{!156124, !156123, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156125 = distinct !{!156125, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156126 = distinct !{!156126, !156125, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156127 = distinct !{!156127, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156128 = distinct !{!156128, !156127, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156129 = distinct !{!156129, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156130 = distinct !{!156130, !156129, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156131 = distinct !{!156131, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls"}
!156132 = distinct !{!156132, !156131, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156133 = distinct !{!156133, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!156134 = distinct !{!156134, !156133, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156135 = distinct !{!156135, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156136 = distinct !{!156136, !156135, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156137 = distinct !{!156137, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156138 = distinct !{!156138, !156137, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156139 = distinct !{!156139, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156140 = distinct !{!156140, !156139, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156141 = distinct !{!156141, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156142 = distinct !{!156142, !156141, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156143 = distinct !{!156143, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156144 = distinct !{!156144, !156143, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156145 = !{!156062, !156061}
!156146 = !{!156062}
!156147 = !{!156065, !156064, !156062}
!156148 = !{!156068, !156067, !156062, !156061}
!156149 = !{!156068, !156062, !156061}
!156150 = !{!156071, !156070, !156068, !156067, !156062, !156061}
!156151 = !{!156071, !156068, !156067, !156062}
!156152 = !{!156073, !156071, !156068, !156067, !156062}
!156153 = !{!156068, !156062}
!156154 = !{!156079, !156078, !156076, !156075}
!156155 = !{!156083, !156082, !156081, !156080, !156070, !156068, !156067, !156062, !156061}
!156156 = !{!156085}
!156157 = !{!156087}
!156158 = !{!156087, !156085}
!156159 = !{!156087, !156085, !156071, !156068, !156067, !156062}
!156160 = !{!156089}
!156161 = !{!156090}
!156162 = !{!156092}
!156163 = !{!156093}
!156164 = !{!156092, !156089}
!156165 = !{!156093, !156090, !156062, !156061}
!156166 = !{!156093, !156090}
!156167 = !{!156092, !156089, !156062}
!156168 = !{!156092, !156093, !156089, !156090, !156062}
!156169 = !{!156095}
!156170 = !{!156097}
!156171 = !{!156101, !156099}
!156172 = !{!156101, !156099, !156062}
!156173 = !{!156099}
!156174 = !{!156101}
!156175 = !{!156103}
!156176 = !{!156105}
!156177 = !{!156105, !156103}
!156178 = !{!156105, !156103, !156062}
!156179 = !{!156107}
!156180 = !{!156109}
!156181 = !{!156109, !156107}
!156182 = !{!156109, !156107, !156062}
!156183 = !{!156111}
!156184 = !{!156113}
!156185 = !{!156113, !156111}
!156186 = !{!156113, !156111, !156062}
!156187 = !{!156116, !156115}
!156188 = !{!156118}
!156189 = !{!156120}
!156190 = !{!156122}
!156191 = !{!156124}
!156192 = !{!156124, !156122, !156120, !156118}
!156193 = !{!156124, !156122, !156120, !156118, !156062}
!156194 = !{!156126}
!156195 = !{!156126, !156118}
!156196 = !{!156128}
!156197 = !{!156130}
!156198 = !{!156130, !156128, !156126, !156118}
!156199 = !{!156130, !156128, !156126, !156118, !156062}
!156200 = !{!156132}
!156201 = !{!156134}
!156202 = !{!156136}
!156203 = !{!156138}
!156204 = !{!156138, !156136, !156134, !156132}
!156205 = !{!156138, !156136, !156134, !156132, !156062}
!156206 = !{!156140}
!156207 = !{!156140, !156132}
!156208 = !{!156142}
!156209 = !{!156144}
!156210 = !{!156144, !156142, !156140, !156132}
!156211 = !{!156144, !156142, !156140, !156132, !156062}
!156212 = distinct !{!156212, i1 false, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls"}
!156213 = distinct !{!156213, !156212, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156214 = distinct !{!156214, !156212, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156215 = distinct !{!156215, i1 false, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls"}
!156216 = distinct !{!156216, !156215, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156217 = distinct !{!156217, !156215, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156218 = distinct !{!156218, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156219 = distinct !{!156219, !156218, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156220 = distinct !{!156220, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156221 = distinct !{!156221, !156220, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156222 = distinct !{!156222, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156223 = distinct !{!156223, !156222, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156224 = distinct !{!156224, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156225 = distinct !{!156225, !156224, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156226 = distinct !{!156226, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!156227 = distinct !{!156227, !156226, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156228 = distinct !{!156228, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156229 = distinct !{!156229, !156228, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156230 = distinct !{!156230, i1 false, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls"}
!156231 = distinct !{!156231, !156230, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156232 = distinct !{!156232, !156230, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156233 = distinct !{!156233, i1 false, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls"}
!156234 = distinct !{!156234, !156233, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!156235 = distinct !{!156235, !156233, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156236 = distinct !{!156236, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table6format2pb11TransactionNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls"}
!156237 = distinct !{!156237, !156236, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table6format2pb11TransactionNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156238 = distinct !{!156238, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb11TransactionECsfR8GmIBoxTX_21lance_namespace_impls"}
!156239 = distinct !{!156239, !156238, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb11TransactionECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!156240 = distinct !{!156240, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
end_hunk_4
begin_hunk_5_@llvm.vector.reduce.umax.v4i16
!181340 = !{!181174}
!181341 = !{!181176}
!181342 = !{!181176, !181174, !181170, !181168}
!181343 = !{!181178, !181177, !181172, !181171, !181119, !181116}
!181344 = !{!181180, !181176, !181178, !181174, !181177, !181170, !181172, !181168, !181171, !181119, !181116}
!181345 = !{!181182, !181176, !181178, !181174, !181177, !181170, !181172, !181168, !181171, !181119, !181116}
!181346 = !{!181185, !181184}
!181347 = !{!181182, !181176, !181178, !181174, !181170, !181168, !181119, !181116}
!181348 = !{!181189, !181187, !181119, !181116}
!181349 = !{!181192, !181191}
!181350 = !{!181196, !181194, !181119, !181116}
!181351 = !{!181202, !181200, !181198}
!181352 = !{!181205, !181204, !181203, !181119, !181116}
!181353 = !{!181208, !181207}
!181354 = !{!181211, !181210, !181119, !181118, !181116, !181115}
!181355 = !{!181210, !181119, !181118, !181116, !181115}
!181356 = !{!181215, !181213}
!181357 = !{!181217, !181216, !181119, !181116}
!181358 = !{!181213}
!181359 = !{!181215}
!181360 = !{!181215, !181213, !181119, !181116}
!181361 = !{!181219}
!181362 = !{!181221}
!181363 = !{!181221, !181219, !181215, !181213}
!181364 = !{!181223, !181222, !181217, !181216, !181119, !181116}
!181365 = !{!181225, !181221, !181223, !181219, !181222, !181215, !181217, !181213, !181216, !181119, !181116}
!181366 = !{!181227, !181221, !181223, !181219, !181222, !181215, !181217, !181213, !181216, !181119, !181116}
!181367 = !{!181230, !181229}
!181368 = !{!181227, !181221, !181223, !181219, !181215, !181213, !181119, !181116}
!181369 = !{!181233, !181232}
!181370 = !{!181211, !181119, !181116}
!181371 = !{!181236, !181235}
!181372 = !{!181242, !181240, !181239, !181238, !181211, !181119, !181116}
!181373 = !{!181240, !181239, !181238, !181211, !181119, !181116}
!181374 = !{!181248, !181246, !181244, !181240, !181239, !181238, !181211, !181119, !181116}
!181375 = !{!181250, !181211, !181119, !181116}
!181376 = !{!181252, !181250, !181211, !181119, !181116}
!181377 = !{!181256, !181254, !181119, !181116}
!181378 = !{!181266, !181264, !181263, !181261, !181260, !181256, !181258, !181254, !181257, !181119, !181116}
!181379 = !{!181268, !181264, !181263, !181261, !181260, !181256, !181258, !181254, !181257, !181119, !181116}
!181380 = !{!181271, !181270}
!181381 = !{!181268, !181264, !181263, !181261, !181256, !181254, !181119, !181116}
!181382 = !{!181274, !181273}
!181383 = !{!181280, !181278, !181276}
!181384 = !{!181283, !181282, !181281, !181119, !181116}
!181385 = !{!181286, !181285}
!181386 = !{!181118, !181116, !181115}
!181387 = !{!181289, !181288, !181116}
!181388 = !{!181294, !181292}
!181389 = distinct !{!181389, i1 false, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!181390 = distinct !{!181390, !181389, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181391 = distinct !{!181391, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!181392 = distinct !{!181392, !181391, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181393 = distinct !{!181393, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181394 = distinct !{!181394, !181393, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181395 = distinct !{!181395, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!181396 = distinct !{!181396, !181395, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181397 = distinct !{!181397, i1 false, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls"}
!181398 = distinct !{!181398, !181397, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181399 = distinct !{!181399, i1 false, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!181400 = distinct !{!181400, !181399, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181401 = distinct !{!181401, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!181402 = distinct !{!181402, !181401, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181403 = distinct !{!181403, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181404 = distinct !{!181404, !181403, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181405 = distinct !{!181405, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!181406 = distinct !{!181406, !181405, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181407 = !{!181390}
!181408 = !{!181392, !181390}
!181409 = !{!181394}
!181410 = !{!181396}
!181411 = !{!181396, !181394}
!181412 = !{!181398}
!181413 = !{!181400}
!181414 = !{!181402, !181400}
!181415 = !{!181404}
!181416 = !{!181406}
!181417 = !{!181406, !181404}
!181418 = distinct !{!181418, i1 false, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls"}
!181419 = distinct !{!181419, !181418, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181420 = distinct !{!181420, !181418, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181421 = distinct !{!181421, i1 false, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls"}
!181422 = distinct !{!181422, !181421, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181423 = distinct !{!181423, i1 false, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyECsfR8GmIBoxTX_21lance_namespace_impls"}
!181424 = distinct !{!181424, !181423, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyECsfR8GmIBoxTX_21lance_namespace_impls: argument 2"}
!181425 = distinct !{!181425, !181423, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181426 = distinct !{!181426, !181423, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181427 = distinct !{!181427, i1 false, !"_RNvXs4_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_15DeletionFileKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey6schema"}
!181428 = distinct !{!181428, !181427, !"_RNvXs4_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_15DeletionFileKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey6schema: argument 0"}
!181429 = distinct !{!181429, i1 false, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish"}
!181430 = distinct !{!181430, !181429, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish: argument 1"}
!181431 = distinct !{!181431, !181429, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish: argument 0"}
!181432 = distinct !{!181432, i1 false, !"_RNvYNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecCsfR8GmIBoxTX_21lance_namespace_impls"}
!181433 = distinct !{!181433, !181432, !"_RNvYNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181434 = distinct !{!181434, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls"}
!181435 = distinct !{!181435, !181434, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181436 = distinct !{!181436, !181434, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181437 = distinct !{!181437, i1 false, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorECsfR8GmIBoxTX_21lance_namespace_impls"}
!181438 = distinct !{!181438, !181437, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181439 = distinct !{!181439, !181437, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181440 = distinct !{!181440, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!181441 = distinct !{!181441, !181440, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181442 = distinct !{!181442, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!181443 = distinct !{!181443, !181442, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181444 = distinct !{!181444, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls"}
!181445 = distinct !{!181445, !181444, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181446 = distinct !{!181446, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls"}
!181447 = distinct !{!181447, !181446, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181448 = distinct !{!181448, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2T_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181449 = distinct !{!181449, !181448, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2T_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181450 = distinct !{!181450, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!181451 = distinct !{!181451, !181450, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181452 = distinct !{!181452, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!181453 = distinct !{!181453, !181452, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181454 = distinct !{!181454, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!181455 = distinct !{!181455, !181454, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181456 = distinct !{!181456, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!181457 = distinct !{!181457, !181456, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181458 = distinct !{!181458, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181459 = distinct !{!181459, !181458, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181460 = distinct !{!181460, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!181461 = distinct !{!181461, !181460, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181462 = distinct !{!181462, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!181463 = distinct !{!181463, !181462, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181464 = distinct !{!181464, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181465 = distinct !{!181465, !181464, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181466 = distinct !{!181466, i1 false, !"_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset25object_store_for_deletion0CsfR8GmIBoxTX_21lance_namespace_impls"}
!181467 = distinct !{!181467, !181466, !"_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset25object_store_for_deletion0CsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181468 = distinct !{!181468, !181466, !"_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset25object_store_for_deletion0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181469 = distinct !{!181469, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!181470 = distinct !{!181470, !181469, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181471 = distinct !{!181471, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!181472 = distinct !{!181472, !181471, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181473 = distinct !{!181473, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181474 = distinct !{!181474, !181473, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181475 = distinct !{!181475, i1 false, !"_RNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18read_deletion_file0CsfR8GmIBoxTX_21lance_namespace_impls"}
!181476 = distinct !{!181476, !181475, !"_RNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18read_deletion_file0CsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181477 = distinct !{!181477, !181475, !"_RNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18read_deletion_file0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181478 = distinct !{!181478, i1 false, !"_RNvMsK_NtCs9ipI1vyGjpZ_12tracing_core5fieldNtB5_8FieldSet13value_set_all"}
!181479 = distinct !{!181479, !181478, !"_RNvMsK_NtCs9ipI1vyGjpZ_12tracing_core5fieldNtB5_8FieldSet13value_set_all: argument 0"}
!181480 = distinct !{!181480, !181478, !"_RNvMsK_NtCs9ipI1vyGjpZ_12tracing_core5fieldNtB5_8FieldSet13value_set_all: argument 2"}
!181481 = distinct !{!181481, !181478, !"_RNvMsK_NtCs9ipI1vyGjpZ_12tracing_core5fieldNtB5_8FieldSet13value_set_all: argument 1"}
!181482 = distinct !{!181482, i1 false, !"_RNvXs0_NtCshTahG2RyGLb_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18read_deletion_file00ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls"}
!181483 = distinct !{!181483, !181482, !"_RNvXs0_NtCshTahG2RyGLb_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18read_deletion_file00ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181484 = distinct !{!181484, !181482, !"_RNvXs0_NtCshTahG2RyGLb_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18read_deletion_file00ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181485 = distinct !{!181485, i1 false, !"_RNvXse_NtCshTahG2RyGLb_7tracing4spanNtB5_7EnteredNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop"}
!181486 = distinct !{!181486, !181485, !"_RNvXse_NtCshTahG2RyGLb_7tracing4spanNtB5_7EnteredNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop: argument 0"}
!181487 = distinct !{!181487, i1 false, !"_RNvXse_NtCshTahG2RyGLb_7tracing4spanNtB5_7EnteredNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop"}
!181488 = distinct !{!181488, !181487, !"_RNvXse_NtCshTahG2RyGLb_7tracing4spanNtB5_7EnteredNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop: argument 0"}
!181489 = distinct !{!181489, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsfR8GmIBoxTX_21lance_namespace_impls"}
!181490 = distinct !{!181490, !181489, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181491 = distinct !{!181491, i1 false, !"_RNvXs7_NtCshTahG2RyGLb_7tracing4spanNtB5_4SpanNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop"}
!181492 = distinct !{!181492, !181491, !"_RNvXs7_NtCshTahG2RyGLb_7tracing4spanNtB5_4SpanNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop: argument 0"}
!181493 = distinct !{!181493, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshTahG2RyGLb_7tracing4span5InnerEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181494 = distinct !{!181494, !181493, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshTahG2RyGLb_7tracing4span5InnerEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181495 = distinct !{!181495, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span5InnerECsfR8GmIBoxTX_21lance_namespace_impls"}
!181496 = distinct !{!181496, !181495, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span5InnerECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181497 = distinct !{!181497, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9ipI1vyGjpZ_12tracing_core10dispatcher8DispatchECsfR8GmIBoxTX_21lance_namespace_impls"}
!181498 = distinct !{!181498, !181497, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9ipI1vyGjpZ_12tracing_core10dispatcher8DispatchECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181499 = distinct !{!181499, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ipI1vyGjpZ_12tracing_core10dispatcher4KindINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SyncNtB2v_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181500 = distinct !{!181500, !181499, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ipI1vyGjpZ_12tracing_core10dispatcher4KindINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SyncNtB2v_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181501 = distinct !{!181501, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs9ipI1vyGjpZ_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SyncNtB26_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!181502 = distinct !{!181502, !181501, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs9ipI1vyGjpZ_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SyncNtB26_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181503 = distinct !{!181503, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs9ipI1vyGjpZ_12tracing_core10subscriber10SubscriberNtNtCscI6d9CVNmLh_4core6marker4SyncNtB1D_4SendEL_ENtNtNtB1F_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!181504 = distinct !{!181504, !181503, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs9ipI1vyGjpZ_12tracing_core10subscriber10SubscriberNtNtCscI6d9CVNmLh_4core6marker4SyncNtB1D_4SendEL_ENtNtNtB1F_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181505 = distinct !{!181505, i1 false, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!181506 = distinct !{!181506, !181505, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181507 = distinct !{!181507, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!181508 = distinct !{!181508, !181507, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181509 = distinct !{!181509, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181510 = distinct !{!181510, !181509, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181511 = distinct !{!181511, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!181512 = distinct !{!181512, !181511, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181513 = distinct !{!181513, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181514 = distinct !{!181514, !181513, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181515 = distinct !{!181515, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!181516 = distinct !{!181516, !181515, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181517 = distinct !{!181517, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181518 = distinct !{!181518, !181517, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181519 = distinct !{!181519, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!181520 = distinct !{!181520, !181519, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181521 = distinct !{!181521, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181522 = distinct !{!181522, !181521, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181523 = distinct !{!181523, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!181524 = distinct !{!181524, !181523, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181525 = distinct !{!181525, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181526 = distinct !{!181526, !181525, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181527 = distinct !{!181527, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!181528 = distinct !{!181528, !181527, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181529 = !{!181419}
!181530 = !{!181420}
!181531 = !{!181419, !181420}
!181532 = !{!181422}
!181533 = !{!181426, !181425, !181424, !181422}
!181534 = !{!181426, !181424}
!181535 = !{!181428}
!181536 = !{!181426, !181425}
!181537 = !{!181431, !181430, !181426, !181425, !181424, !181422}
!181538 = !{!181430, !181425, !181424, !181422}
!181539 = !{!181433}
!181540 = !{!181436, !181435, !181422}
!181541 = !{!181438}
!181542 = !{!181439}
!181543 = !{!181438, !181439, !181422}
!181544 = !{!181443, !181441, !181438, !181439}
!181545 = !{!181439, !181422}
!181546 = !{!181447, !181445, !181422}
!181547 = !{!181453, !181451, !181449}
!181548 = !{!181455}
!181549 = !{!181457}
!181550 = !{!181459}
!181551 = !{!181459, !181457, !181455}
!181552 = !{!181461}
!181553 = !{!181463}
!181554 = !{!181465}
!181555 = !{!181465, !181463, !181461}
!181556 = !{!181468, !181467}
!181557 = !{!181468}
!181558 = !{!181467}
!181559 = !{!181470}
!181560 = !{!181472}
!181561 = !{!181474}
!181562 = !{!181474, !181472, !181470}
!181563 = !{!181477, !181476}
!181564 = !{!181479}
!181565 = !{!181481, !181480, !181477, !181476}
!181566 = !{!181484, !181483, !181477, !181476}
!181567 = !{!181477}
!181568 = !{!181486, !181484, !181483, !181477, !181476}
!181569 = !{!181484, !181477}
!181570 = !{!181488, !181484, !181483, !181477, !181476}
!181571 = !{!181490}
!181572 = !{!181492, !181490}
!181573 = !{!181494}
!181574 = !{!181496}
!181575 = !{!181498}
!181576 = !{!181500}
!181577 = !{!181502}
!181578 = !{!181504}
!181579 = !{!181504, !181502, !181500, !181498, !181496, !181494, !181490}
!181580 = !{!181504, !181502, !181500, !181498, !181496, !181494, !181477}
!181581 = !{!181476}
!181582 = !{!181506}
!181583 = !{!181508, !181506}
!181584 = !{!181510}
!181585 = !{!181512}
!181586 = !{!181512, !181510}
!181587 = !{!181514}
!181588 = !{!181516}
!181589 = !{!181516, !181514}
!181590 = !{!181518}
!181591 = !{!181520}
!181592 = !{!181520, !181518}
!181593 = !{!181522}
!181594 = !{!181524}
!181595 = !{!181524, !181522}
!181596 = !{!181526}
!181597 = !{!181528}
!181598 = !{!181528, !181526}
!181599 = distinct !{!181599, i1 false, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error5indexReECsfR8GmIBoxTX_21lance_namespace_impls"}
!181600 = distinct !{!181600, !181599, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error5indexReECsfR8GmIBoxTX_21lance_namespace_impls: argument 2"}
!181601 = distinct !{!181601, !181599, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error5indexReECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181602 = distinct !{!181602, !181599, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error5indexReECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181603 = distinct !{!181603, i1 false, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCsfR8GmIBoxTX_21lance_namespace_impls"}
!181604 = distinct !{!181604, !181603, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181605 = distinct !{!181605, !181603, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181606 = distinct !{!181606, i1 false, !"_RNvXsK_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringINtNtCscI6d9CVNmLh_4core7convert4FromReE4from"}
!181607 = distinct !{!181607, !181606, !"_RNvXsK_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringINtNtCscI6d9CVNmLh_4core7convert4FromReE4from: argument 1"}
!181608 = distinct !{!181608, !181606, !"_RNvXsK_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringINtNtCscI6d9CVNmLh_4core7convert4FromReE4from: argument 0"}
!181609 = distinct !{!181609, i1 false, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls"}
!181610 = distinct !{!181610, !181609, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181611 = distinct !{!181611, !181609, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181612 = distinct !{!181612, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls"}
!181613 = distinct !{!181613, !181612, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181614 = distinct !{!181614, i1 false, !"_RINvMNtCs1nbc6HIrAcO_11prost_types3anyNtNtB5_8protobuf3Any6to_msgNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls"}
!181615 = distinct !{!181615, !181614, !"_RINvMNtCs1nbc6HIrAcO_11prost_types3anyNtNtB5_8protobuf3Any6to_msgNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181616 = distinct !{!181616, !181614, !"_RINvMNtCs1nbc6HIrAcO_11prost_types3anyNtNtB5_8protobuf3Any6to_msgNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181617 = distinct !{!181617, i1 false, !"_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!181618 = distinct !{!181618, !181617, !"_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181619 = distinct !{!181619, !181617, !"_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181620 = distinct !{!181620, i1 false, !"_RNvXs28_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_25FragmentReuseIndexDetailsNtNtCscI6d9CVNmLh_4core7default7Default7default"}
!181621 = distinct !{!181621, !181620, !"_RNvXs28_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_25FragmentReuseIndexDetailsNtNtCscI6d9CVNmLh_4core7default7Default7default: argument 0"}
!181622 = distinct !{!181622, i1 false, !"_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!181623 = distinct !{!181623, !181622, !"_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181624 = distinct !{!181624, !181622, !"_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181625 = distinct !{!181625, i1 false, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!181626 = distinct !{!181626, !181625, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181627 = distinct !{!181627, i1 false, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!181628 = distinct !{!181628, !181627, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181629 = distinct !{!181629, i1 false, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!181630 = distinct !{!181630, !181629, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!181631 = distinct !{!181631, i1 false, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!181632 = distinct !{!181632, !181631, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!181633 = distinct !{!181633, !181625, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181634 = distinct !{!181634, i1 false, !"_RINvXs27_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!181635 = distinct !{!181635, !181634, !"_RINvXs27_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181636 = distinct !{!181636, i1 false, !"_RINvMsx_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB6_7Content5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!181637 = distinct !{!181637, !181636, !"_RINvMsx_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB6_7Content5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181638 = distinct !{!181638, !181634, !"_RINvXs27_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181639 = distinct !{!181639, !181636, !"_RINvMsx_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB6_7Content5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181640 = distinct !{!181640, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMsx_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtBK_7Content5mergeQRShE0ECsfR8GmIBoxTX_21lance_namespace_impls"}
!181641 = distinct !{!181641, !181640, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMsx_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtBK_7Content5mergeQRShE0ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181642 = distinct !{!181642, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!181643 = distinct !{!181643, !181642, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181644 = distinct !{!181644, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181645 = distinct !{!181645, !181644, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181646 = distinct !{!181646, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181647 = distinct !{!181647, !181646, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181648 = distinct !{!181648, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!181649 = distinct !{!181649, !181648, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181650 = distinct !{!181650, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!181651 = distinct !{!181651, !181650, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181652 = distinct !{!181652, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181653 = distinct !{!181653, !181652, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181654 = distinct !{!181654, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!181655 = distinct !{!181655, !181654, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181656 = distinct !{!181656, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181657 = distinct !{!181657, !181656, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181658 = distinct !{!181658, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!181659 = distinct !{!181659, !181658, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181660 = distinct !{!181660, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181661 = distinct !{!181661, !181660, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181662 = distinct !{!181662, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181663 = distinct !{!181663, !181662, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181664 = distinct !{!181664, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!181665 = distinct !{!181665, !181664, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181666 = distinct !{!181666, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!181667 = distinct !{!181667, !181666, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181668 = distinct !{!181668, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181669 = distinct !{!181669, !181668, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181670 = distinct !{!181670, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!181671 = distinct !{!181671, !181670, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181672 = distinct !{!181672, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181673 = distinct !{!181673, !181672, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181674 = distinct !{!181674, i1 false, !"_RNCINvXs27_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB9_25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsfR8GmIBoxTX_21lance_namespace_impls"}
!181675 = distinct !{!181675, !181674, !"_RNCINvXs27_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB9_25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181676 = distinct !{!181676, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShE0ECsfR8GmIBoxTX_21lance_namespace_impls"}
!181677 = distinct !{!181677, !181676, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShE0ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181678 = distinct !{!181678, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls"}
!181679 = distinct !{!181679, !181678, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181680 = distinct !{!181680, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181681 = distinct !{!181681, !181680, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181682 = distinct !{!181682, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!181683 = distinct !{!181683, !181682, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181684 = distinct !{!181684, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!181685 = distinct !{!181685, !181684, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181686 = distinct !{!181686, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181687 = distinct !{!181687, !181686, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181688 = distinct !{!181688, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!181689 = distinct !{!181689, !181688, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181690 = distinct !{!181690, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181691 = distinct !{!181691, !181690, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181692 = distinct !{!181692, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!181693 = distinct !{!181693, !181692, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181694 = distinct !{!181694, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181695 = distinct !{!181695, !181694, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181696 = distinct !{!181696, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!181697 = distinct !{!181697, !181696, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181698 = distinct !{!181698, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181699 = distinct !{!181699, !181698, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181700 = distinct !{!181700, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181701 = distinct !{!181701, !181700, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181702 = distinct !{!181702, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!181703 = distinct !{!181703, !181702, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181704 = distinct !{!181704, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls"}
!181705 = distinct !{!181705, !181704, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181706 = distinct !{!181706, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181707 = distinct !{!181707, !181706, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181708 = distinct !{!181708, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!181709 = distinct !{!181709, !181708, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181710 = distinct !{!181710, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!181711 = distinct !{!181711, !181710, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181712 = distinct !{!181712, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181713 = distinct !{!181713, !181712, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181714 = distinct !{!181714, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!181715 = distinct !{!181715, !181714, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181716 = distinct !{!181716, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181717 = distinct !{!181717, !181716, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181718 = distinct !{!181718, i1 false, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls"}
!181719 = distinct !{!181719, !181718, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181720 = distinct !{!181720, !181718, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181721 = distinct !{!181721, i1 false, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2D_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls"}
!181722 = distinct !{!181722, !181721, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2D_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!181723 = distinct !{!181723, !181721, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2D_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181724 = distinct !{!181724, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls"}
!181725 = distinct !{!181725, !181724, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181726 = distinct !{!181726, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181727 = distinct !{!181727, !181726, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181728 = distinct !{!181728, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!181729 = distinct !{!181729, !181728, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181730 = distinct !{!181730, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!181731 = distinct !{!181731, !181730, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181732 = distinct !{!181732, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181733 = distinct !{!181733, !181732, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181734 = distinct !{!181734, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!181735 = distinct !{!181735, !181734, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181736 = distinct !{!181736, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!181737 = distinct !{!181737, !181736, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181738 = distinct !{!181738, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!181739 = distinct !{!181739, !181738, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!181740 = distinct !{!181740, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
end_hunk_5
begin_hunk_6_@llvm.vector.reduce.umax.v4i16
!182667 = distinct !{!182667, !182666, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182668 = distinct !{!182668, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!182669 = distinct !{!182669, !182668, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182670 = distinct !{!182670, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182671 = distinct !{!182671, !182670, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182672 = distinct !{!182672, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!182673 = distinct !{!182673, !182672, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182674 = distinct !{!182674, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!182675 = distinct !{!182675, !182674, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182676 = distinct !{!182676, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182677 = distinct !{!182677, !182676, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182678 = distinct !{!182678, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182679 = distinct !{!182679, !182678, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182680 = distinct !{!182680, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!182681 = distinct !{!182681, !182680, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182682 = distinct !{!182682, i1 false, !"_RINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!182683 = distinct !{!182683, !182682, !"_RINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182684 = distinct !{!182684, !182682, !"_RINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182685 = distinct !{!182685, i1 false, !"_RINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!182686 = distinct !{!182686, !182685, !"_RINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182687 = distinct !{!182687, !182685, !"_RINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182688 = distinct !{!182688, i1 false, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!182689 = distinct !{!182689, !182688, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182690 = distinct !{!182690, i1 false, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!182691 = distinct !{!182691, !182690, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182692 = distinct !{!182692, i1 false, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!182693 = distinct !{!182693, !182692, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!182694 = distinct !{!182694, i1 false, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!182695 = distinct !{!182695, !182694, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!182696 = distinct !{!182696, !182688, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182697 = distinct !{!182697, i1 false, !"_RINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB6_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!182698 = distinct !{!182698, !182697, !"_RINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB6_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182699 = distinct !{!182699, i1 false, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!182700 = distinct !{!182700, !182699, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182701 = distinct !{!182701, !182697, !"_RINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB6_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182702 = distinct !{!182702, !182699, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182703 = distinct !{!182703, i1 false, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigNCINvNtB2_7message5mergeBJ_QRShE0B2w_ECsfR8GmIBoxTX_21lance_namespace_impls"}
!182704 = distinct !{!182704, !182703, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigNCINvNtB2_7message5mergeBJ_QRShE0B2w_ECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182705 = distinct !{!182705, i1 false, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!182706 = distinct !{!182706, !182705, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182707 = distinct !{!182707, !182703, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigNCINvNtB2_7message5mergeBJ_QRShE0B2w_ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182708 = distinct !{!182708, i1 false, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!182709 = distinct !{!182709, !182708, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!182710 = distinct !{!182710, i1 false, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!182711 = distinct !{!182711, !182710, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!182712 = distinct !{!182712, i1 false, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigQRShE0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182713 = distinct !{!182713, !182712, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigQRShE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182714 = distinct !{!182714, !182712, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigQRShE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182715 = distinct !{!182715, i1 false, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!182716 = distinct !{!182716, !182715, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182717 = distinct !{!182717, i1 false, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!182718 = distinct !{!182718, !182717, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182719 = distinct !{!182719, i1 false, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!182720 = distinct !{!182720, !182719, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!182721 = distinct !{!182721, i1 false, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!182722 = distinct !{!182722, !182721, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!182723 = distinct !{!182723, !182715, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182724 = distinct !{!182724, i1 false, !"_RINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB6_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!182725 = distinct !{!182725, !182724, !"_RINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB6_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182726 = distinct !{!182726, !182724, !"_RINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB6_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182727 = distinct !{!182727, i1 false, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182728 = distinct !{!182728, !182727, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182729 = distinct !{!182729, i1 false, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182730 = distinct !{!182730, !182729, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182731 = distinct !{!182731, i1 false, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182732 = distinct !{!182732, !182731, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182733 = distinct !{!182733, i1 false, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs1_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182734 = distinct !{!182734, !182733, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs1_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182735 = distinct !{!182735, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182736 = distinct !{!182736, !182735, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182737 = distinct !{!182737, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182738 = distinct !{!182738, !182737, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182739 = distinct !{!182739, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182740 = distinct !{!182740, !182739, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182741 = distinct !{!182741, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs1_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182742 = distinct !{!182742, !182741, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs1_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182743 = distinct !{!182743, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs2_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182744 = distinct !{!182744, !182743, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs2_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182745 = distinct !{!182745, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs3_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182746 = distinct !{!182746, !182745, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs3_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182747 = distinct !{!182747, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs4_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182748 = distinct !{!182748, !182747, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs4_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182749 = distinct !{!182749, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs5_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182750 = distinct !{!182750, !182749, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs5_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182751 = distinct !{!182751, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs6_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182752 = distinct !{!182752, !182751, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs6_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182753 = distinct !{!182753, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs7_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182754 = distinct !{!182754, !182753, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs7_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182755 = distinct !{!182755, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs8_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182756 = distinct !{!182756, !182755, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs8_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182757 = distinct !{!182757, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs9_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182758 = distinct !{!182758, !182757, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs9_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182759 = distinct !{!182759, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEsa_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182760 = distinct !{!182760, !182759, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEsa_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182761 = distinct !{!182761, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEsb_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182762 = distinct !{!182762, !182761, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEsb_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182763 = distinct !{!182763, i1 false, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEsc_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182764 = distinct !{!182764, !182763, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEsc_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182765 = distinct !{!182765, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShE0ECsfR8GmIBoxTX_21lance_namespace_impls"}
!182766 = distinct !{!182766, !182765, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShE0ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182767 = distinct !{!182767, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls"}
!182768 = distinct !{!182768, !182767, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182769 = distinct !{!182769, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182770 = distinct !{!182770, !182769, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182771 = distinct !{!182771, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!182772 = distinct !{!182772, !182771, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182773 = distinct !{!182773, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182774 = distinct !{!182774, !182773, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182775 = distinct !{!182775, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!182776 = distinct !{!182776, !182775, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182777 = distinct !{!182777, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182778 = distinct !{!182778, !182777, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182779 = distinct !{!182779, i1 false, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details00ECsfR8GmIBoxTX_21lance_namespace_impls"}
!182780 = distinct !{!182780, !182779, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details00ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182781 = distinct !{!182781, !182779, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details00ECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182782 = distinct !{!182782, i1 false, !"_RNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details00CsfR8GmIBoxTX_21lance_namespace_impls"}
!182783 = distinct !{!182783, !182782, !"_RNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details00CsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182784 = distinct !{!182784, !182782, !"_RNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details00CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182785 = distinct !{!182785, i1 false, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!182786 = distinct !{!182786, !182785, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182787 = distinct !{!182787, i1 false, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsfR8GmIBoxTX_21lance_namespace_impls"}
!182788 = distinct !{!182788, !182787, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182789 = distinct !{!182789, !182787, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182790 = distinct !{!182790, i1 false, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsfR8GmIBoxTX_21lance_namespace_impls"}
!182791 = distinct !{!182791, !182790, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182792 = distinct !{!182792, !182790, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182793 = distinct !{!182793, !182785, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 2"}
!182794 = distinct !{!182794, !182785, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182795 = distinct !{!182795, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!182796 = distinct !{!182796, !182795, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182797 = distinct !{!182797, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfR8GmIBoxTX_21lance_namespace_impls"}
!182798 = distinct !{!182798, !182797, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182799 = distinct !{!182799, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!182800 = distinct !{!182800, !182799, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182801 = distinct !{!182801, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182802 = distinct !{!182802, !182801, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182803 = distinct !{!182803, i1 false, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls"}
!182804 = distinct !{!182804, !182803, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182805 = distinct !{!182805, !182803, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182806 = distinct !{!182806, i1 false, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls"}
!182807 = distinct !{!182807, !182806, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182808 = distinct !{!182808, !182806, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182809 = distinct !{!182809, i1 false, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyNtNtCskAO0uQb8M5a_5prost5error11EncodeErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details0s_0ECsfR8GmIBoxTX_21lance_namespace_impls"}
!182810 = distinct !{!182810, !182809, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyNtNtCskAO0uQb8M5a_5prost5error11EncodeErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details0s_0ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182811 = distinct !{!182811, !182809, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyNtNtCskAO0uQb8M5a_5prost5error11EncodeErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details0s_0ECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182812 = distinct !{!182812, i1 false, !"_RNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details0s_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!182813 = distinct !{!182813, !182812, !"_RNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details0s_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182814 = distinct !{!182814, i1 false, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!182815 = distinct !{!182815, !182814, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182816 = distinct !{!182816, i1 false, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsfR8GmIBoxTX_21lance_namespace_impls"}
!182817 = distinct !{!182817, !182816, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182818 = distinct !{!182818, !182816, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182819 = distinct !{!182819, i1 false, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsfR8GmIBoxTX_21lance_namespace_impls"}
!182820 = distinct !{!182820, !182819, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!182821 = distinct !{!182821, !182819, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182822 = distinct !{!182822, !182814, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 2"}
!182823 = distinct !{!182823, !182814, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182824 = distinct !{!182824, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!182825 = distinct !{!182825, !182824, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182826 = distinct !{!182826, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfR8GmIBoxTX_21lance_namespace_impls"}
!182827 = distinct !{!182827, !182826, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182828 = distinct !{!182828, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!182829 = distinct !{!182829, !182828, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182830 = distinct !{!182830, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182831 = distinct !{!182831, !182830, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182832 = distinct !{!182832, i1 false, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!182833 = distinct !{!182833, !182832, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182834 = distinct !{!182834, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!182835 = distinct !{!182835, !182834, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182836 = distinct !{!182836, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls"}
!182837 = distinct !{!182837, !182836, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182838 = distinct !{!182838, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182839 = distinct !{!182839, !182838, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182840 = distinct !{!182840, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!182841 = distinct !{!182841, !182840, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182842 = distinct !{!182842, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182843 = distinct !{!182843, !182842, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182844 = distinct !{!182844, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!182845 = distinct !{!182845, !182844, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182846 = distinct !{!182846, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182847 = distinct !{!182847, !182846, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182848 = distinct !{!182848, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182849 = distinct !{!182849, !182848, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182850 = distinct !{!182850, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!182851 = distinct !{!182851, !182850, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182852 = distinct !{!182852, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsfR8GmIBoxTX_21lance_namespace_impls"}
!182853 = distinct !{!182853, !182852, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182854 = distinct !{!182854, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!182855 = distinct !{!182855, !182854, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!182856 = !{!182418}
!182857 = !{!182421, !182420}
!182858 = !{!182421}
!182859 = !{!182423, !182421, !182420}
!182860 = !{!182427, !182426, !182425, !182423, !182421, !182420}
!182861 = !{!182427, !182425, !182421}
!182862 = !{!182429}
!182863 = !{!182427, !182426, !182421}
!182864 = !{!182432, !182431, !182427, !182426, !182425, !182423, !182421, !182420}
!182865 = !{!182431, !182426, !182425, !182423, !182421, !182420}
!182866 = !{!182434}
!182867 = !{!182437, !182436, !182423, !182421}
!182868 = !{!182439}
!182869 = !{!182440}
!182870 = !{!182439, !182440, !182423, !182421, !182420}
!182871 = !{!182439, !182421}
!182872 = !{!182444, !182442, !182439, !182440, !182421}
!182873 = !{!182440, !182423, !182421, !182420}
!182874 = !{!182448, !182446, !182423, !182421, !182420}
!182875 = !{!182454, !182452, !182450, !182421}
!182876 = !{!182458, !182456, !182421}
!182877 = !{!182460}
!182878 = !{!182461}
!182879 = !{!182460, !182421, !182420}
!182880 = !{!182460, !182461}
!182881 = !{!182463}
!182882 = !{!182465, !182464, !182421, !182420}
!182883 = !{!182467}
!182884 = !{!182469}
!182885 = !{!182471}
!182886 = !{!182471, !182469, !182467}
!182887 = !{!182471, !182469, !182467, !182421}
!182888 = !{!182473}
!182889 = !{!182475}
!182890 = !{!182477}
!182891 = !{!182477, !182475, !182473}
!182892 = !{!182477, !182475, !182473, !182421}
!182893 = !{!182479}
!182894 = !{!182481}
!182895 = !{!182483}
!182896 = !{!182483, !182481, !182479}
!182897 = !{!182483, !182481, !182479, !182421}
!182898 = !{!182486, !182485}
!182899 = !{!182487, !182421, !182420}
!182900 = !{!182489}
!182901 = !{!182491}
!182902 = !{!182493}
!182903 = !{!182493, !182491, !182489}
!182904 = !{!182493, !182491, !182489, !182421}
!182905 = !{!182499, !182497, !182495, !182421}
!182906 = !{!182501}
!182907 = !{!182503}
!182908 = !{!182505}
!182909 = !{!182505, !182503, !182501}
!182910 = !{!182505, !182503, !182501, !182421}
!182911 = !{!182507}
!182912 = !{!182509}
!182913 = !{!182511}
!182914 = !{!182511, !182509, !182507}
!182915 = !{!182511, !182509, !182507, !182421}
!182916 = !{!182513}
!182917 = !{!182515}
!182918 = !{!182516}
!182919 = !{!182515, !182517, !182421, !182420}
!182920 = !{!182515, !182516, !182517, !182421, !182420}
!182921 = !{!182515, !182516}
!182922 = !{!182517, !182421, !182420}
!182923 = !{!182519}
!182924 = !{!182521}
!182925 = !{!182521, !182519}
!182926 = !{!182521, !182519, !182421}
!182927 = !{!182523}
!182928 = !{!182525}
!182929 = !{!182525, !182523}
!182930 = !{!182525, !182523, !182421}
!182931 = !{!182535, !182533, !182531, !182529, !182528, !182527, !182421}
!182932 = !{!182537, !182531, !182529, !182528, !182527, !182421}
!182933 = !{!182539, !182421, !182420}
!182934 = !{!182541, !182539, !182421}
!182935 = !{!182539, !182421}
!182936 = !{!182543}
!182937 = !{!182544}
!182938 = !{!182543, !182545, !182421, !182420}
!182939 = !{!182543, !182544, !182545, !182421, !182420}
!182940 = !{!182543, !182544}
!182941 = !{!182545, !182421, !182420}
!182942 = !{!182547}
!182943 = !{!182549}
!182944 = !{!182550}
!182945 = !{!182549, !182551, !182421, !182420}
!182946 = !{!182549, !182550, !182551, !182421, !182420}
!182947 = !{!182549, !182550}
!182948 = !{!182551, !182421, !182420}
!182949 = !{!182553}
!182950 = !{!182554}
!182951 = !{!182553, !182555, !182421, !182420}
!182952 = !{!182553, !182554, !182555, !182421, !182420}
!182953 = !{!182553, !182554}
!182954 = !{!182555, !182421, !182420}
!182955 = !{!182557}
!182956 = !{!182558}
!182957 = !{!182557, !182559, !182421, !182420}
!182958 = !{!182557, !182558, !182559, !182421, !182420}
!182959 = !{!182557, !182558}
!182960 = !{!182559, !182421, !182420}
!182961 = !{!182561, !182421}
!182962 = !{!182569, !182567, !182565, !182563, !182421}
!182963 = !{!182571}
!182964 = !{!182573}
!182965 = !{!182573, !182571}
!182966 = !{!182573, !182571, !182421}
!182967 = !{!182575}
!182968 = !{!182577}
!182969 = !{!182579}
!182970 = !{!182579, !182577, !182575}
!182971 = !{!182579, !182577, !182575, !182421}
!182972 = !{!182581}
!182973 = !{!182583}
!182974 = !{!182585}
!182975 = !{!182585, !182583, !182581}
!182976 = !{!182585, !182583, !182581, !182421}
!182977 = !{!182587, !182421, !182420}
!182978 = !{!182587, !182421}
!182979 = !{!182589, !182587, !182421}
!182980 = !{!182591, !182589, !182587, !182421}
!182981 = !{!182593}
!182982 = !{!182594, !182589, !182587, !182421}
!182983 = !{!182593, !182589, !182587, !182421}
!182984 = !{!182596}
!182985 = !{!182598}
!182986 = !{!182598, !182596, !182593}
!182987 = !{!182600, !182599, !182594, !182589, !182587, !182421}
!182988 = !{!182602, !182598, !182600, !182596, !182599, !182593, !182594, !182589, !182587, !182421}
!182989 = !{!182604, !182598, !182600, !182596, !182599, !182593, !182594, !182589, !182587, !182421}
!182990 = !{!182606, !182589, !182587, !182421}
!182991 = !{!182606, !182589, !182587, !182421, !182420}
!182992 = !{!182608}
!182993 = !{!182610, !182609, !182589, !182587, !182421}
!182994 = !{!182610, !182608, !182589, !182587, !182421}
!182995 = !{!182612}
!182996 = !{!182614}
!182997 = !{!182614, !182612, !182608}
!182998 = !{!182616, !182615, !182610, !182609, !182589, !182587, !182421}
!182999 = !{!182618, !182589, !182587, !182421, !182420}
!183000 = !{!182620, !182614, !182616, !182612, !182615, !182610, !182608, !182609, !182589, !182587, !182421}
!183001 = !{!182622, !182614, !182616, !182612, !182615, !182610, !182608, !182609, !182589, !182587, !182421}
!183002 = !{!182624, !182608}
!183003 = !{!182625, !182610, !182609, !182589, !182587, !182421}
!183004 = !{!182627}
!183005 = !{!182630, !182629, !182589, !182587, !182421}
!183006 = !{!182632, !182627, !182630, !182629, !182589, !182587, !182421}
!183007 = !{!182627, !182630, !182629, !182589, !182587, !182421}
!183008 = !{!182627, !182629, !182589, !182587, !182421}
!183009 = !{!182589, !182587, !182421, !182420}
!183010 = !{!182636, !182635, !182634, !182587, !182421, !182420}
!183011 = !{!182636, !182634, !182587, !182421}
!183012 = !{!182638}
!183013 = !{!182636, !182635, !182587, !182421}
!183014 = !{!182641, !182640, !182636, !182635, !182634, !182587, !182421, !182420}
!183015 = !{!182640, !182635, !182634, !182587, !182421, !182420}
!183016 = !{!182643}
!183017 = !{!182645, !182587, !182421}
!183018 = !{!182647}
!183019 = !{!182649}
!183020 = !{!182649, !182647}
!183021 = !{!182649, !182647, !182421}
!183022 = !{!182651}
!183023 = !{!182653}
!183024 = !{!182653, !182651}
!183025 = !{!182653, !182651, !182421}
!183026 = !{!182655}
!183027 = !{!182657}
!183028 = !{!182659}
!183029 = !{!182659, !182657, !182655}
!183030 = !{!182659, !182657, !182655, !182421}
!183031 = !{!182661}
!183032 = !{!182663}
!183033 = !{!182665}
!183034 = !{!182665, !182663, !182661}
!183035 = !{!182665, !182663, !182661, !182421}
!183036 = !{!182667}
!183037 = !{!182669}
!183038 = !{!182671}
!183039 = !{!182671, !182669, !182667}
!183040 = !{!182671, !182669, !182667, !182421}
!183041 = !{!182673}
!183042 = !{!182675}
!183043 = !{!182677}
!183044 = !{!182677, !182675, !182673}
!183045 = !{!182677, !182675, !182673, !182421}
!183046 = !{!182679}
!183047 = !{!182681}
!183048 = !{!182681, !182679}
!183049 = !{!182681, !182679, !182421}
!183050 = !{!182684, !182683}
!183051 = !{!182687, !182686, !182684, !182683}
!183052 = !{!182687, !182684}
!183053 = !{!182691, !182689, !182687, !182684}
!183054 = !{!182693}
!183055 = !{!182691, !182689, !182687, !182686, !182684, !182683}
!183056 = !{!182684}
!183057 = !{!182695}
!183058 = !{!182689}
!183059 = !{!182695, !182691, !182689, !182687, !182686, !182684, !182683}
!183060 = !{!182689, !182696, !182687, !182686, !182684, !182683}
!183061 = !{!182698}
!183062 = !{!182700}
!183063 = !{!182702, !182700, !182701, !182698, !182687, !182686, !182684, !182683}
!183064 = !{!182704}
!183065 = !{!182706}
!183066 = !{!182706, !182704, !182700, !182698}
!183067 = !{!182707, !182702, !182701, !182687, !182686, !182684, !182683}
end_hunk_6
