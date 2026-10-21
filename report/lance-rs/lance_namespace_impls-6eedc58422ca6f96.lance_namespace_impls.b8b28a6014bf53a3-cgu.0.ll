Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  invoke void @_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder3new(ptr noalias noundef nonnull sret([1920 x i8]) align 8 captures(none) dereferenceable(1920) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @946, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !127401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !127401
  invoke void @_RNvXs2_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_11ManifestKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey9write_key(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(1920) %i.i)
          to label %bb.c unwind label %bb.af, !noalias !127404

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !127401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1920) %i.f, ptr noundef nonnull align 8 dereferenceable(1920) %i.i, i64 1920, i1 false), !noalias !127401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !127405
  invoke void @_RNvMsd_Cs9vXXyjKaXf3_6blake3NtB5_6Hasher8finalize(ptr noalias noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1920) %i.f)
          to label %bb.e unwind label %bb.af

.body:                                            ; preds = %bb.o, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.af, %bb.i, %bb.d, %.body39
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %.body39 ], [ %i.y, %bb.d ], [ %i.ap, %bb.i ], [ %i.bg, %bb.o ], [ %i.cw, %bb.af ], [ %i.bg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  store i8 2, ptr %i.o, align 8
  resume { ptr, i32 } %.pn17.pn

bb.d:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !127406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !127405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !127401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !127401
  %i.z = load ptr, ptr %i.q, align 8, !nonnull !409, !align !410, !noundef !409
  %.val30 = load ptr, ptr %i.z, align 8, !nonnull !409, !noundef !409 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %.val31 = load ptr, ptr %i.aa, align 8, !nonnull !409, !noundef !409
  %i.ab = getelementptr i8, ptr %.val30, i64 24
  %.val32 = load ptr, ptr %i.ab, align 8, !nonnull !409, !align !410, !noundef !409 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !413, !invariant.load !409
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = and i64 %i.ae, -16
  %i.ag = getelementptr inbounds nuw i8, ptr %.val31, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr null, ptr %i.n, align 8, !alias.scope !127407
  %i.ai = getelementptr inbounds nuw i8, ptr %.val32, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !409, !nonnull !409
  %i.ak = invoke { ptr, ptr } %i.aj(ptr noundef nonnull %i.ah, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.al, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.am, ptr %i.ao, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @661) #72
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @661) #72
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val21 = load ptr, ptr %i.aq, align 8
  %.val22 = load ptr, ptr %i.ar, align 8, !nonnull !409, !align !410, !noundef !409
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val21, ptr nonnull %.val22) #73
          to label %.body unwind label %bb.v

bb.j:                                             ; preds = %._crit_edge, %bb.f
  %.val34 = phi ptr [ %.val34.pre, %._crit_edge ], [ %i.am, %bb.f ]
  %.val33 = phi ptr [ %.val33.pre, %._crit_edge ], [ %i.al, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val34, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !409, !noalias !127408, !nonnull !409
  invoke void %i.at(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull %.val33, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.i, !inline_history !324

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.j
  %i.au = load i64, ptr %i.m, align 8, !range !435, !noundef !409
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.k, label %bb.l

common.ret:                                       ; preds = %bb.ac, %bb.k
  %common.ret.op = phi { i64, ptr } [ { i64 1, ptr undef }, %bb.k ], [ %i.cr, %bb.ac ]
  ret { i64, ptr } %common.ret.op

bb.k:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i8 3, ptr %i.o, align 8
  br label %common.ret

bb.l:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noundef !409 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.az = load ptr, ptr %i.ay, align 8            ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val = load ptr, ptr %i.aq, align 8            ; 5 uses
  %.val20 = load ptr, ptr %i.ar, align 8, !nonnull !409, !align !410, !noundef !409 ; 5 uses
  %i.ba = load ptr, ptr %.val20, align 8, !invariant.load !409 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ba(ptr noundef nonnull %.val)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.val20, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !412, !invariant.load !409 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %.val20, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !413, !invariant.load !409
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) %i.bf) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.o:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val20, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !412, !invariant.load !409 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.val20, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !413, !invariant.load !409
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) %i.bl) #68
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.n
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %bb.ae, label %bb.p

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !127409)
  call void @llvm.experimental.noalias.scope.decl(metadata !127410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ax, ptr %i.d, align 8, !noalias !127411
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.az, ptr %i.bm, align 8, !noalias !127411
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !range !413, !invariant.load !409, !alias.scope !127410
  %i.bp = add nsw i64 %i.bo, -1
  %i.bq = and i64 %i.bp, -16
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !127411
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !invariant.load !409, !alias.scope !127410, !nonnull !409
  invoke void %i.bu(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.bs)
          to label %bb.t unwind label %bb.q, !noalias !127409

bb.q:                                             ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !127412
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.r, label %.body39

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.body39 unwind label %bb.s, !noalias !127409

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !127409
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.bz = load i128, ptr %i.c, align 16, !noalias !127411, !noundef !409
  %i.ca = icmp eq i128 %i.bz, 30315766894603180422979482736445024540 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !127411
  %spec.select.i = select i1 %i.ca, ptr %i.ax, ptr %i.az
  %spec.select2.i = select i1 %i.ca, ptr null, ptr %i.ax
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %spec.select.i, ptr %i.cb, align 8, !alias.scope !127409
  store ptr %spec.select2.i, ptr %i.l, align 8, !alias.scope !127409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ca, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t, %bb.w, %3
  %.sink58 = phi i64 [ 40, %bb.w ], [ 40, %3 ], [ 32, %bb.t ]
  %2 = phi ptr [ %i.ax, %bb.w ], [ %.pre.pre, %3 ], [ null, %bb.t ] ; 2 uses
  %.sroa.06.0 = phi ptr [ null, %bb.w ], [ null, %3 ], [ %i.ax, %bb.t ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !409, !align !410, !noundef !409
  %.val27 = load ptr, ptr %i.cd, align 8, !nonnull !409, !noundef !409
  %i.ce = getelementptr inbounds nuw i8, ptr %.val27, i64 %.sink58
  %i.cf = atomicrmw add ptr %i.ce, i64 1 monotonic, align 8 ; 0 uses
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.z

bb.v:                                             ; preds = %bb.i, %bb.ad
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.ch = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 6
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp samesign ugt i64 %i.ch, 1
  br i1 %i.cj, label %bb.y, label %bb.u

bb.x:                                             ; preds = %bb.y
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cl = load ptr, ptr %i.l, align 8, !noundef !409
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.body39, label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @946, ptr %i.k, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 8, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtReNtB6_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !127413
  store i64 0, ptr %i.b, align 8, !noalias !127413
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @663, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i, align 8, !noalias !127413
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 17, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !127413
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !127413
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @660, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !127413
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 32, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !127413
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !127413
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @663, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !127413
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 17, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !127413
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !127413
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 389, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !127413
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @662, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !127413
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.j, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !127413
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
          to label %3 unwind label %bb.x

3:                                                ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !127413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pre.pre = load ptr, ptr %i.l, align 8
  br label %bb.u

bb.z:                                             ; preds = %bb.u
  %i.co = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !127414
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.ab

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.z, %bb.aa, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ac

.body39:                                          ; preds = %bb.ab, %bb.r, %bb.q, %bb.ad, %bb.x
  %.pn17 = phi { ptr, i32 } [ %i.ck, %bb.ad ], [ %i.ck, %bb.x ], [ %i.cq, %bb.ab ], [ %i.bv, %bb.r ], [ %i.bv, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.body

bb.ab:                                            ; preds = %bb.aa
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.ac:                                            ; preds = %bb.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.06.1 = phi ptr [ %.sroa.06.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ null, %bb.ae ]
  store i8 1, ptr %i.o, align 8
  %i.cr = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.06.1, 1
  br label %common.ret

bb.ad:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(16) %i.l) #73
          to label %.body39 unwind label %bb.v

bb.ae:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !409, !align !410, !noundef !409
  %.val29 = load ptr, ptr %i.ct, align 8, !nonnull !409, !noundef !409
  %i.cu = getelementptr inbounds nuw i8, ptr %.val29, i64 40
  %i.cv = atomicrmw add ptr %i.cu, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.ac

bb.af:                                            ; preds = %.noexc, %bb.c, %bb.b
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body
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
  %i.i = load i8, ptr %i.h, align 1, !range !474, !noundef !409
  switch i8 %i.i, label %default.unreachable52 [
    i8 0, label %bb.b
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 3, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert36 = getelementptr i8, ptr %0, i64 24
  %.val14.pre = load ptr, ptr %.phi.trans.insert36, align 8
  br label %bb.ak

default.unreachable52:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !409, !align !410, !noundef !409 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !409, !align !410, !noundef !409
  store i8 1, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !409, !noundef !409 ; 4 uses
  store ptr %i.q, ptr %i.o, align 8
  %.val10 = load ptr, ptr %i.l, align 8, !nonnull !409, !noundef !409 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127478)
  %i.s = getelementptr inbounds nuw i8, ptr %.val10, i64 48 ; 10 uses
  %i.t = load atomic i32, ptr %i.s monotonic, align 4, !noalias !127478 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.t, 1073741822
  br i1 %or.cond3.i.i, label %bb.c, label %bb.d, !prof !436

bb.c:                                             ; preds = %bb.b
  %i.u = add nuw nsw i32 %i.t, 1
  %i.v = cmpxchg weak ptr %i.s, i32 %i.t, i32 %i.u acquire monotonic, align 4, !noalias !127478
  %i.w = extractvalue { i32, i1 } %i.v, 1
  br i1 %i.w, label %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i, label %bb.d, !prof !432

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.s)
          to label %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i unwind label %bb.ap

_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i: ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.val10, i64 56 ; 3 uses
  %i.y = load atomic i8, ptr %i.x monotonic, align 4, !noalias !127479 ; 0 uses
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.val10, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127480)
  %i.z = getelementptr inbounds nuw i8, ptr %.val10, i64 88 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !127480, !noalias !127478, !noundef !409
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.e

bb.e:                                             ; preds = %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val10, i64 96
  %.val.i.i = load i64, ptr %i.ac, align 8, !alias.scope !127480, !noalias !127478, !noundef !409
  %i.ad = getelementptr inbounds nuw i8, ptr %.val10, i64 104
  %.val5.i.i = load i64, ptr %i.ad, align 8, !alias.scope !127480, !noalias !127478, !noundef !409
  %i.ae = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECsfR8GmIBoxTX_21lance_namespace_impls(i64 %.val.i.i, i64 %.val5.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) @21), !noalias !127481 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127483)
  %i.af = lshr i64 %i.ae, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.val10, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !127484, !noalias !127478, !noundef !409 ; 2 uses
  %i.aj = load ptr, ptr %.sink.i.i.i, align 8, !alias.scope !127484, !noalias !127478, !nonnull !409, !noundef !409 ; 2 uses
  %i.ak = insertelement <16 x i8> poison, i8 %i.ag, i64 0
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bc, %bb.h ]
  %.pn.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.bd, %bb.h ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ai ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.am, align 1, !noalias !127485 ; 2 uses
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
  %.val2.i.i.i.i = load i128, ptr %i.av, align 8, !noalias !127486
  %i.aw = icmp eq i128 %.val2.i.i.i.i, 8197826300464095662947335996543484106
  br i1 %i.aw, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.g, !prof !432

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.ax = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %bb.h, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !419

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
  %i.be = atomicrmw sub ptr %i.s, i32 1 release, align 4, !noalias !127478
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  %i.bg = and i32 %i.bf, -1073741825
  %or.cond.not.i.i7.i = icmp eq i32 %i.bg, -2147483648
  br i1 %or.cond.not.i.i7.i, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i, !prof !437

bb.i:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.s, i32 noundef %i.bf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i unwind label %bb.ap

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i: ; preds = %bb.i, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  br i1 %.sroa.0.0.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2l_3AnyNtNtB4_6marker4SyncNtB3u_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i
  %i.bh = cmpxchg weak ptr %i.s, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !127487
  %i.bi = extractvalue { i32, i1 } %i.bh, 1
  br i1 %i.bi, label %.noexc17, label %bb.k, !prof !432

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 8 %i.s)
          to label %.noexc17 unwind label %bb.ap

.noexc17:                                         ; preds = %bb.k, %bb.j
  %i.bj = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !127487
  %i.bk = and i64 %i.bj, 9223372036854775807
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.l, !prof !432

bb.l:                                             ; preds = %.noexc17
  %i.bm = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc18 unwind label %bb.ap

.noexc18:                                         ; preds = %bb.l
  %i.bn = xor i1 %i.bm, true
  %i.bo = zext i1 %i.bn to i8
  br label %_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %.noexc18, %.noexc17
  %.sroa.01.0.i.i.i = phi i8 [ %i.bo, %.noexc18 ], [ 0, %.noexc17 ] ; 2 uses
  %i.bp = load atomic i8, ptr %i.x monotonic, align 8, !noalias !127487 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127488)
  %i.bq = getelementptr inbounds nuw i8, ptr %.val10, i64 96 ; 2 uses
  %.val.i11.i = load i64, ptr %i.bq, align 8, !alias.scope !127488, !noalias !127478, !noundef !409
  %i.br = getelementptr inbounds nuw i8, ptr %.val10, i64 104
  %.val5.i12.i = load i64, ptr %i.br, align 8, !alias.scope !127488, !noalias !127478, !noundef !409
  %i.bs = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECsfR8GmIBoxTX_21lance_namespace_impls(i64 %.val.i11.i, i64 %.val5.i12.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) @21), !noalias !127489 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127491)
  %i.bt = lshr i64 %i.bs, 57
  %i.bu = trunc nuw nsw i64 %i.bt to i8           ; 3 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset16read_transaction0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !413, !invariant.load !409
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) %i.cf) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.r:                                             ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val20.i, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !412, !invariant.load !409 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !413, !invariant.load !409
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) %i.cl) #68
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.q
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread132, label %bb.s

bb.s:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !152294
  call void @llvm.experimental.noalias.scope.decl(metadata !152303)
  call void @llvm.experimental.noalias.scope.decl(metadata !152304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !152294
  store ptr %i.bx, ptr %i.e, align 8, !noalias !152305
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bz, ptr %i.cm, align 8, !noalias !152305
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !range !413, !invariant.load !409, !alias.scope !152304
  %i.cp = add nsw i64 %i.co, -1
  %i.cq = and i64 %i.cp, -16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !152305
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !invariant.load !409, !alias.scope !152304, !nonnull !409
  invoke void %i.cu(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %i.cs)
          to label %bb.w unwind label %bb.t, !noalias !152303

bb.t:                                             ; preds = %bb.s
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !152306
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.u, label %.body39.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body39.i unwind label %bb.v, !noalias !152303

bb.v:                                             ; preds = %bb.u
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !152303
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.cz = load i128, ptr %i.d, align 16, !noalias !152305, !noundef !409
  %i.da = icmp eq i128 %i.cz, 124324947087582264507647401418622252678 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !152305
  %spec.select.i.i = select i1 %i.da, ptr %i.bx, ptr %i.bz
  %spec.select2.i.i = select i1 %i.da, ptr null, ptr %i.bx
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %spec.select.i.i, ptr %i.db, align 8, !alias.scope !152303, !noalias !152294
  store ptr %spec.select2.i.i, ptr %i.m, align 8, !alias.scope !152303, !noalias !152294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !152294
  br i1 %i.da, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !152294, !nonnull !409, !align !410, !noundef !409
  %.val27.i103 = load ptr, ptr %i.dd, align 8, !nonnull !409, !noundef !409
  %i.de = getelementptr inbounds nuw i8, ptr %.val27.i103, i64 32
  %i.df = atomicrmw add ptr %i.de, i64 1 monotonic, align 8 ; 0 uses
  br label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.x:                                             ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !152307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !152294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !152294
  %.pre.pre.i = load ptr, ptr %i.m, align 8, !noalias !152294 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !152294, !nonnull !409, !align !410, !noundef !409
  %.val27.i = load ptr, ptr %i.dh, align 8, !nonnull !409, !noundef !409
  %i.di = getelementptr inbounds nuw i8, ptr %.val27.i, i64 40
  %i.dj = atomicrmw add ptr %i.di, i64 1 monotonic, align 8 ; 0 uses
  %.not16.i = icmp eq ptr %.pre.pre.i, null
  br i1 %.not16.i, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.ac

bb.y:                                             ; preds = %bb.af, %bb.m
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.dl = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !152294 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, 6
  call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp samesign ugt i64 %i.dl, 1
  br i1 %i.dn, label %bb.ab, label %.thread106

.thread106:                                       ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !152294, !nonnull !409, !align !410, !noundef !409
  %.val27.i109 = load ptr, ptr %i.dp, align 8, !nonnull !409, !noundef !409
  %i.dq = getelementptr inbounds nuw i8, ptr %.val27.i109, i64 40
  %i.dr = atomicrmw add ptr %i.dq, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.ac

bb.aa:                                            ; preds = %bb.ab
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !152294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !152294
  %i.dt = load ptr, ptr %i.m, align 8, !noalias !152294, !noundef !409
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %.body39.i, label %bb.af

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !152294
  store ptr @927, ptr %i.l, align 8, !noalias !152294
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 11, ptr %i.dv, align 8, !noalias !152294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !152294
  store ptr %i.l, ptr %i.k, align 8, !noalias !152294
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtReNtB6_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !152294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !152307
  store i64 0, ptr %i.c, align 8, !noalias !152307
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @663, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !152307
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 17, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !152307
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !152307
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @660, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !152307
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 32, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !152307
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !152307
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @663, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !152307
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 17, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !152307
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !152307
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 389, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !152307
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @662, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !152307
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.k, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !152307
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c)
          to label %bb.x unwind label %bb.aa

bb.ac:                                            ; preds = %.thread106, %bb.x
  %i.dw = phi ptr [ %i.bx, %.thread106 ], [ %.pre.pre.i, %bb.x ]
  %i.dx = atomicrmw sub ptr %i.dw, i64 1 release, align 8, !noalias !152308
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.ad, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread unwind label %bb.ae

.body39.i:                                        ; preds = %bb.af, %bb.ae, %bb.aa, %bb.u, %bb.t
  %.pn17.i = phi { ptr, i32 } [ %i.ds, %bb.af ], [ %i.ds, %bb.aa ], [ %i.dz, %bb.ae ], [ %i.cv, %bb.u ], [ %i.cv, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !152294
  br label %.body.i

bb.ae:                                            ; preds = %bb.ad
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i

bb.af:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2X_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(16) %i.m) #73
          to label %.body39.i unwind label %bb.y

bb.ag:                                            ; preds = %bb.g, %.noexc.i, %bb.f
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !152294
  store i8 3, ptr %i.bo, align 8, !noalias !152294
  store i64 -3, ptr %0, align 8
  br label %common.ret

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.x, %bb.ac, %bb.ad, %.thread
  %.sroa.06.0.i105 = phi ptr [ %i.bx, %.thread ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.x ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !152294
  store i8 1, ptr %i.bo, align 8, !noalias !152294
  %.not = icmp eq ptr %.sroa.06.0.i105, null
  br i1 %.not, label %bb.ap, label %bb.ah

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread132: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !152294, !nonnull !409, !align !410, !noundef !409
  %.val29.i = load ptr, ptr %i.ec, align 8, !nonnull !409, !noundef !409
  %i.ed = getelementptr inbounds nuw i8, ptr %.val29.i, i64 40
  %i.ee = atomicrmw add ptr %i.ed, i64 1 monotonic, align 8 ; 0 uses
  store i8 1, ptr %i.bo, align 8, !noalias !152294
  br label %bb.ap

common.ret:                                       ; preds = %bb.bk, %bb.at, %bb.an, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sink = phi i8 [ 5, %bb.bk ], [ 4, %bb.at ], [ 1, %bb.an ], [ 3, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  store i8 %.sink, ptr %i.t, align 8
  ret void

bb.ah:                                            ; preds = %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %.sroa.06.0.i105, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i105, i64 16
  invoke fastcc void @_RNvXs1_NtNtCs9KQ7US1M400_11lance_table11transaction7builderNtB5_11TransactionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(344) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.ef)
          to label %bb.ak unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.eh = atomicrmw sub ptr %.sroa.06.0.i105, i64 1 release, align 8, !noalias !152309
  %i.ei = icmp eq i64 %i.eh, 1
  br i1 %i.ei, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE9drop_slowCshkPeWWG1flk_5lance(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.ao

bb.ak:                                            ; preds = %bb.ah
  %.sroa.098.0.copyload = load i64, ptr %i.r, align 8
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.489, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.599.0..sroa_idx, i64 56, i1 false)
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.592, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6100.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ej = atomicrmw sub ptr %.sroa.06.0.i105, i64 1 release, align 8, !noalias !152310
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit34

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE9drop_slowCshkPeWWG1flk_5lance(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit34 unwind label %bb.am

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.ai, %bb.aj, %bb.am
  %.pn17 = phi { ptr, i32 } [ %i.el, %bb.am ], [ %i.eg, %bb.aj ], [ %i.eg, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.am:                                            ; preds = %bb.al
  %i.el = landingpad { ptr, i32 }
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

bb.ao:                                            ; preds = %bb.bf, %bb.aj, %bb.bh, %bb.aq, %.body
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.ap:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread132, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !nonnull !409, !align !410, !noundef !409 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 280
  %.val = load ptr, ptr %i.ep, align 8, !nonnull !409, !noundef !409
  %i.eq = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 576
  store ptr %i.eo, ptr %.sroa.863.0..sroa_idx, align 8
  %.sroa.964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 584
  store ptr %i.eq, ptr %.sroa.964.0..sroa_idx, align 8
  %.sroa.1065.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 592
  store ptr %i.eo, ptr %.sroa.1065.0..sroa_idx, align 8
  %.sroa.1267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 602
  store i8 0, ptr %.sroa.1267.0..sroa_idx, align 2
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset29read_transaction_from_storage0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.es) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.ao

bb.ar:                                            ; preds = %bb.a, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  invoke fastcc void @_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset29read_transaction_from_storage0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.q, ptr noundef nonnull align 8 %i.es, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.as unwind label %bb.aq

bb.as:                                            ; preds = %bb.ar
  %i.et = load i64, ptr %i.q, align 8, !range !425, !noundef !409 ; 4 uses
  %i.eu = icmp eq i64 %i.et, -3
  br i1 %i.eu, label %bb.at, label %bb.au

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
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset29read_transaction_from_storage0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.es)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.aw:                                            ; preds = %bb.au
  %i.ew = icmp eq i64 %i.et, -2
  br i1 %i.ew, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.571.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.569, i64 280, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3, i64 56, i1 false)
  store i64 %i.et, ptr %i.es, align 8
  %.not.i35 = icmp eq i64 %i.et, -1
  br i1 %.not.i35, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache15insert_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !409, !align !410, !noundef !409
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 312
  %.val22 = load ptr, ptr %i.ez, align 8, !nonnull !409, !noundef !409
  %i.fa = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke fastcc void @_RNvXs1_NtNtCs9KQ7US1M400_11lance_table11transaction7builderNtB5_11TransactionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(344) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.es)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body37

.body37:                                          ; preds = %bb.bc, %bb.az
  %eh.lpad-body38 = phi { ptr, i32 } [ %i.fc, %bb.az ], [ %i.fh, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.body46

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !152311
  store i64 1, ptr %i.b, align 8, !noalias !152311
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.fd, align 8, !noalias !152311
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.fe, ptr noundef nonnull readonly align 8 dereferenceable(344) %i.p, i64 344, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !152312
  %i.ff = call noundef align 8 dereferenceable_or_null(360) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 360, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !152312 ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.bb, label %bb.be, !prof !441

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 360) #72
          to label %.noexc.i36 unwind label %bb.bc, !noalias !152311

.noexc.i36:                                       ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.fe)
          to label %.body37 unwind label %bb.bd, !noalias !152311

bb.bd:                                            ; preds = %bb.bc
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
begin_hunk_2_@_RNCNvNtNtCshkPeWWG1flk_5lance2io8deletion26read_dataset_deletion_file0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !413, !invariant.load !409
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) %i.cw) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val20.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !412, !invariant.load !409 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !413, !invariant.load !409
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.cz, i64 noundef range(i64 1, -9223372036854775807) %i.dc) #68
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.u
  %.not.i27 = icmp eq ptr %i.co, null
  br i1 %.not.i27, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread247, label %bb.w

bb.w:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !177084
  call void @llvm.experimental.noalias.scope.decl(metadata !177093)
  call void @llvm.experimental.noalias.scope.decl(metadata !177094)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !177084
  store ptr %i.co, ptr %i.m, align 8, !noalias !177095
  %i.dd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.cq, ptr %i.dd, align 8, !noalias !177095
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.df = load i64, ptr %i.de, align 8, !range !413, !invariant.load !409, !alias.scope !177094
  %i.dg = add nsw i64 %i.df, -1
  %i.dh = and i64 %i.dg, -16
  %i.di = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !177095
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !invariant.load !409, !alias.scope !177094, !nonnull !409
  invoke void %i.dl(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull %i.dj)
          to label %bb.aa unwind label %bb.x, !noalias !177093

bb.x:                                             ; preds = %bb.w
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !177096
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.y, label %.body39.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.body39.i unwind label %bb.z, !noalias !177093

bb.z:                                             ; preds = %bb.y
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !177093
  unreachable

bb.aa:                                            ; preds = %bb.w
  %i.dq = load i128, ptr %i.l, align 16, !noalias !177095, !noundef !409
  %i.dr = icmp eq i128 %i.dq, -77532982071035600726102740195481127890 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !177095
  %spec.select.i.i = select i1 %i.dr, ptr %i.co, ptr %i.cq
  %spec.select2.i.i = select i1 %i.dr, ptr null, ptr %i.co
  %i.ds = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %spec.select.i.i, ptr %i.ds, align 8, !alias.scope !177093, !noalias !177084
  store ptr %spec.select2.i.i, ptr %i.u, align 8, !alias.scope !177093, !noalias !177084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !177084
  br i1 %i.dr, label %.thread, label %bb.ad

.thread:                                          ; preds = %bb.aa
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !177084, !nonnull !409, !align !410, !noundef !409
  %.val27.i193 = load ptr, ptr %i.du, align 8, !nonnull !409, !noundef !409
  %i.dv = getelementptr inbounds nuw i8, ptr %.val27.i193, i64 32
  %i.dw = atomicrmw add ptr %i.dv, i64 1 monotonic, align 8 ; 0 uses
  br label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.ab:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !177097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !177084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !177084
  %.pre.pre.i = load ptr, ptr %i.u, align 8, !noalias !177084 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !177084, !nonnull !409, !align !410, !noundef !409
  %.val27.i = load ptr, ptr %i.dy, align 8, !nonnull !409, !noundef !409
  %i.dz = getelementptr inbounds nuw i8, ptr %.val27.i, i64 40
  %i.ea = atomicrmw add ptr %i.dz, i64 1 monotonic, align 8 ; 0 uses
  %.not16.i = icmp eq ptr %.pre.pre.i, null
  br i1 %.not16.i, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.ag

bb.ac:                                            ; preds = %bb.aj, %bb.q
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.ec = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !177084 ; 2 uses
  %i.ed = icmp ult i64 %i.ec, 6
  call void @llvm.assume(i1 %i.ed)
  %i.ee = icmp samesign ugt i64 %i.ec, 1
  br i1 %i.ee, label %bb.af, label %.thread196

.thread196:                                       ; preds = %bb.ad
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !177084, !nonnull !409, !align !410, !noundef !409
  %.val27.i199 = load ptr, ptr %i.eg, align 8, !nonnull !409, !noundef !409
  %i.eh = getelementptr inbounds nuw i8, ptr %.val27.i199, i64 40
  %i.ei = atomicrmw add ptr %i.eh, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.ag

bb.ae:                                            ; preds = %bb.af
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !177084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !177084
  %i.ek = load ptr, ptr %i.u, align 8, !noalias !177084, !noundef !409
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.body39.i, label %bb.aj

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !177084
  store ptr @4606, ptr %i.t, align 8, !noalias !177084
  %i.em = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 14, ptr %i.em, align 8, !noalias !177084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !177084
  store ptr %i.t, ptr %i.s, align 8, !noalias !177084
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtReNtB6_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !177084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !177097
  store i64 0, ptr %i.k, align 8, !noalias !177097
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @663, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !177097
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 17, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !177097
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !177097
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr @660, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !177097
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 32, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !177097
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !177097
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr @663, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !177097
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 17, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !177097
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !177097
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  store i32 389, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !177097
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr @662, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !177097
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr %i.s, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !177097
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.k)
          to label %bb.ab unwind label %bb.ae

bb.ag:                                            ; preds = %.thread196, %bb.ab
  %i.en = phi ptr [ %i.co, %.thread196 ], [ %.pre.pre.i, %bb.ab ]
  %i.eo = atomicrmw sub ptr %i.en, i64 1 release, align 8, !noalias !177098
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.ah, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread unwind label %bb.ai

.body39.i:                                        ; preds = %bb.aj, %bb.ai, %bb.ae, %bb.y, %bb.x
  %.pn17.i = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ej, %bb.ae ], [ %i.eq, %bb.ai ], [ %i.dm, %bb.y ], [ %i.dm, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !177084
  br label %.body.i

bb.ai:                                            ; preds = %bb.ah
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i

bb.aj:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2T_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(16) %i.u) #73
          to label %.body39.i unwind label %bb.ac

bb.ak:                                            ; preds = %bb.k, %.noexc.i, %bb.j
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !177084
  store i8 3, ptr %i.cf, align 8, !noalias !177084
  store i8 -2, ptr %0, align 8
  br label %common.ret

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.ab, %bb.ag, %bb.ah, %.thread
  %.sroa.06.0.i195 = phi ptr [ %i.co, %.thread ], [ null, %bb.ah ], [ null, %bb.ag ], [ null, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !177084
  store i8 1, ptr %i.cf, align 8, !noalias !177084
  %.not7 = icmp eq ptr %.sroa.06.0.i195, null
  br i1 %.not7, label %.thread243, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit78

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread247: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.et = load ptr, ptr %i.es, align 8, !noalias !177084, !nonnull !409, !align !410, !noundef !409
  %.val29.i = load ptr, ptr %i.et, align 8, !nonnull !409, !noundef !409
  %i.eu = getelementptr inbounds nuw i8, ptr %.val29.i, i64 40
  %i.ev = atomicrmw add ptr %i.eu, i64 1 monotonic, align 8 ; 0 uses
  store i8 1, ptr %i.cf, align 8, !noalias !177084
  br label %.thread243

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit78: ; preds = %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache15insert_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.ec
  %.sroa.8154.1 = phi ptr [ %i.nd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache15insert_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.nd, %bb.ec ], [ %.sroa.06.0.i195, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !177099)
  call void @llvm.experimental.noalias.scope.decl(metadata !177100)
  call void @llvm.experimental.noalias.scope.decl(metadata !177101)
  %.val.i.i.i = load i64, ptr %i.ew, align 8, !range !412, !alias.scope !177102, !noundef !409 ; 2 uses
  %i.ex = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ex, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.al

bb.al:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit78
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val1.i.i.i = load ptr, ptr %i.ey, align 8, !alias.scope !177102, !nonnull !409, !noundef !409
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !177102
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit

.thread243:                                       ; preds = %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread247
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !409, !align !410, !noundef !409
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !409, !align !410, !noundef !409
  store ptr %i.fa, ptr %i.cg, align 8
  %.sroa.8105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.fc, ptr %.sroa.8105.0..sroa_idx, align 8
  %.sroa.10107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1512
  store i8 0, ptr %.sroa.10107.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 1512
  br label %bb.ar

bb.am:                                            ; preds = %bb.dp, %bb.dl, %bb.ap, %bb.dq, %.body57, %.body
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit68: ; preds = %bb.ap, %.body41.thread, %.body41, %bb.ao, %.body, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.dp, %bb.do
  %.pn18.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.lx, %bb.do ], [ %.pn15.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.pn15.pn, %bb.dp ], [ %i.fj, %.body41 ], [ %i.fj, %bb.ap ], [ %i.fj, %bb.ao ], [ %.pn2.i, %.body41.thread ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !177103)
  call void @llvm.experimental.noalias.scope.decl(metadata !177104)
  call void @llvm.experimental.noalias.scope.decl(metadata !177105)
  %.val.i.i.i35 = load i64, ptr %i.fg, align 8, !range !412, !alias.scope !177106, !noundef !409 ; 2 uses
  %i.fh = icmp eq i64 %.val.i.i.i35, 0
  br i1 %i.fh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit37, label %bb.an

bb.an:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit68
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val1.i.i.i36 = load ptr, ptr %i.fi, align 8, !alias.scope !177106, !nonnull !409, !noundef !409
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i36, i64 noundef %.val.i.i.i35, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !177106
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit37

.body41:                                          ; preds = %bb.as, %bb.at
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pr = load i8, ptr %i.fo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %cond.i38 = icmp eq i8 %.pr, 3
  br i1 %cond.i38, label %bb.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit68

bb.ao:                                            ; preds = %.body41
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %i.fl = load i8, ptr %i.fk, align 8, !range !474, !noundef !409
  %cond.i.i = icmp eq i8 %i.fl, 3
  br i1 %cond.i.i, label %bb.ap, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit68

bb.ap:                                            ; preds = %bb.ao
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset17base_object_store0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.fm)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit68 unwind label %bb.am

bb.aq:                                            ; preds = %bb.a
  %.phi.trans.insert217 = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %.pre218 = load i8, ptr %.phi.trans.insert217, align 8, !range !474, !noalias !177107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177108)
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 1512 ; 3 uses
  switch i8 %.pre218, label %default.unreachable238 [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.aw
  ]

bb.ar:                                            ; preds = %.thread243, %bb.aq
  %i.fp = phi ptr [ %i.fe, %.thread243 ], [ %i.fo, %bb.aq ]
  %i.fq = phi ptr [ %i.fd, %.thread243 ], [ %i.fn, %bb.aq ] ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !177107, !nonnull !409, !align !410, !noundef !409
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !177107, !nonnull !409, !align !410, !noundef !409
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fw = load <2 x i32>, ptr %i.fu, align 8, !noalias !177107
  store <2 x i32> %i.fw, ptr %i.fv, align 8, !noalias !177107
  %.sroa.810.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.fr, ptr %.sroa.810.0..sroa_idx.i, align 8, !noalias !177107
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1504
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !177107
  br label %bb.aw

.body41.thread:                                   ; preds = %bb.au, %bb.av, %bb.ba
  %.pn2.i = phi { ptr, i32 } [ %i.gj, %bb.ba ], [ %i.fx, %bb.au ], [ %i.fx, %bb.av ]
  store i8 2, ptr %i.gb, align 8, !noalias !177107
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
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %i.fz = load i8, ptr %i.fy, align 8, !range !474, !noalias !177107, !noundef !409
  %cond.i.i40 = icmp eq i8 %i.fz, 3
  br i1 %cond.i.i40, label %bb.av, label %.body41.thread

bb.av:                                            ; preds = %bb.au
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset17base_object_store0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ga)
          to label %.body41.thread unwind label %bb.bb, !noalias !177108

bb.aw:                                            ; preds = %bb.ar, %bb.aq
  %i.gb = phi ptr [ %i.fp, %bb.ar ], [ %i.fo, %bb.aq ] ; 3 uses
  %i.gc = phi ptr [ %i.fq, %bb.ar ], [ %i.fn, %bb.aq ]
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset12object_store0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.x, ptr noundef nonnull align 8 %i.gd, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ax unwind label %bb.au

bb.ax:                                            ; preds = %bb.aw
  %i.ge = load i8, ptr %i.x, align 8, !range !415, !alias.scope !177108, !noundef !409 ; 3 uses
  %i.gf = icmp eq i8 %i.ge, -2
  br i1 %i.gf, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %i.gh = load i8, ptr %i.gg, align 8, !range !474, !noalias !177107, !noundef !409
  %cond.i4.i = icmp eq i8 %i.gh, 3
  br i1 %cond.i4.i, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset17base_object_store0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.gi)
          to label %bb.bd unwind label %bb.ba, !noalias !177108

bb.ba:                                            ; preds = %bb.az
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.body41.thread

bb.bb:                                            ; preds = %bb.av
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !177108
  unreachable

bb.bc:                                            ; preds = %bb.ax
  store i8 3, ptr %i.gb, align 8, !noalias !177107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.bd:                                            ; preds = %bb.az, %bb.ay
  store i8 1, ptr %i.gb, align 8, !noalias !177107
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx, i64 7, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6110, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6110.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.not.i49 = icmp eq i8 %i.ge, -1
  br i1 %.not.i49, label %.thread244, label %bb.be
end_hunk_2
begin_hunk_3_@_RNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
          to label %bb.x unwind label %bb.y, !noalias !178388

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gn = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !range !412, !invariant.load !409, !noalias !178388 ; 2 uses
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.x
  %i.gq = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !range !413, !invariant.load !409, !noalias !178388
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) %i.gr) #68, !noalias !178388
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !range !412, !invariant.load !409, !noalias !178388 ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %.body.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.y
  %i.gw = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !range !413, !invariant.load !409, !noalias !178388
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.gu, i64 noundef range(i64 1, -9223372036854775807) %i.gx) #68, !noalias !178388
  br label %.body.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.x
  %.not.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread536.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !178389
  call void @llvm.experimental.noalias.scope.decl(metadata !178398)
  call void @llvm.experimental.noalias.scope.decl(metadata !178399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !178389
  store ptr %i.gj, ptr %i.bf, align 8, !noalias !178400
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.gl, ptr %i.gy, align 8, !noalias !178400
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !range !413, !invariant.load !409, !alias.scope !178399, !noalias !178388
  %i.hb = add nsw i64 %i.ha, -1
  %i.hc = and i64 %i.hb, -16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !178400
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !invariant.load !409, !alias.scope !178399, !noalias !178388, !nonnull !409
  invoke void %i.hg(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.be, ptr noundef nonnull %i.he)
          to label %bb.ad unwind label %bb.aa, !noalias !178401

bb.aa:                                            ; preds = %bb.z
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = atomicrmw sub ptr %i.gj, i64 1 release, align 8, !noalias !178402
  %i.hj = icmp eq i64 %i.hi, 1
  br i1 %i.hj, label %bb.ab, label %.body39.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %.body39.i.i unwind label %bb.ac, !noalias !178401

bb.ac:                                            ; preds = %bb.ab
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !178401
  unreachable

bb.ad:                                            ; preds = %bb.z
  %i.hl = load i128, ptr %i.be, align 16, !noalias !178400, !noundef !409
  %i.hm = icmp eq i128 %i.hl, 118003311876449733876074416052600190119 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !178400
  %spec.select.i.i.i = select i1 %i.hm, ptr %i.gj, ptr %i.gl
  %spec.select2.i.i.i = select i1 %i.hm, ptr null, ptr %i.gj
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %spec.select.i.i.i, ptr %i.hn, align 8, !alias.scope !178398, !noalias !178389
  store ptr %spec.select2.i.i.i, ptr %i.bn, align 8, !alias.scope !178398, !noalias !178389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !178389
  br i1 %i.hm, label %bb.ap, label %bb.ag

bb.ae:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !178403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !178389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !178389
  %.pre.pre.i.i = load ptr, ptr %i.bn, align 8, !noalias !178389 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !178389, !nonnull !409, !align !410, !noundef !409
  %.val27.i.i = load ptr, ptr %i.hp, align 8, !noalias !178388, !nonnull !409, !noundef !409
  %i.hq = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 40
  %i.hr = atomicrmw add ptr %i.hq, i64 1 monotonic, align 8, !noalias !178388 ; 0 uses
  %.not16.i.i = icmp eq ptr %.pre.pre.i.i, null
  br i1 %.not16.i.i, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.thread, label %bb.aj

bb.af:                                            ; preds = %bb.am, %bb.t
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !178388
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.ht = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !178389 ; 2 uses
  %i.hu = icmp ult i64 %i.ht, 6
  call void @llvm.assume(i1 %i.hu)
  %i.hv = icmp samesign ugt i64 %i.ht, 1
  br i1 %i.hv, label %bb.ai, label %.thread441.i

.thread441.i:                                     ; preds = %bb.ag
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !178389, !nonnull !409, !align !410, !noundef !409
  %.val27.i444.i = load ptr, ptr %i.hx, align 8, !noalias !178388, !nonnull !409, !noundef !409
  %i.hy = getelementptr inbounds nuw i8, ptr %.val27.i444.i, i64 40
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !noalias !178388 ; 0 uses
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ai
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !178389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !178389
  %i.ib = load ptr, ptr %i.bn, align 8, !noalias !178389, !noundef !409
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %.body39.i.i, label %bb.am

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !178389
  store ptr @4993, ptr %i.bm, align 8, !noalias !178389
  %i.id = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 18, ptr %i.id, align 8, !noalias !178389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !178389
  store ptr %i.bm, ptr %i.bl, align 8, !noalias !178389
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtReNtB6_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !178389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !178403
  store i64 0, ptr %i.bd, align 8, !noalias !178403
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @663, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !178403
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 17, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !178403
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !178403
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr @660, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !178403
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i64 32, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !178403
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !178403
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store ptr @663, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !178403
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  store i64 17, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !178403
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !178403
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  store i32 389, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 4, !noalias !178403
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  store ptr @662, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !178403
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  store ptr %i.bl, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !178403
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bd)
          to label %bb.ae unwind label %bb.ah, !noalias !178388

bb.aj:                                            ; preds = %.thread441.i, %bb.ae
  %i.ie = phi ptr [ %i.gj, %.thread441.i ], [ %.pre.pre.i.i, %bb.ae ]
  %i.if = atomicrmw sub ptr %i.ie, i64 1 release, align 8, !noalias !178404
  %i.ig = icmp eq i64 %i.if, 1
  br i1 %i.ig, label %bb.ak, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.thread

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.thread unwind label %bb.al, !noalias !178388

.body39.i.i:                                      ; preds = %bb.am, %bb.al, %bb.ah, %bb.ab, %bb.aa
  %.pn17.i.i = phi { ptr, i32 } [ %i.ia, %bb.am ], [ %i.ia, %bb.ah ], [ %i.ih, %bb.al ], [ %i.hh, %bb.ab ], [ %i.hh, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !178389
  br label %.body.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i.i

bb.am:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2N_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(16) %i.bn) #73
          to label %.body39.i.i unwind label %bb.af, !noalias !178388

bb.an:                                            ; preds = %bb.n, %.noexc.i.i, %bb.m
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !178389
  store i8 3, ptr %i.ga, align 8, !noalias !178389
  br label %bb.ie

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.thread: ; preds = %bb.ak, %bb.aj, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !178389
  br label %bb.ao

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread536.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !178389, !nonnull !409, !align !410, !noundef !409
  %.val29.i.i = load ptr, ptr %i.ik, align 8, !noalias !178388, !nonnull !409, !noundef !409
  %i.il = getelementptr inbounds nuw i8, ptr %.val29.i.i, i64 40
  %i.im = atomicrmw add ptr %i.il, i64 1 monotonic, align 8, !noalias !178388 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session12index_caches21ScalarIndexDetailsKeyE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread536.i
  store i8 1, ptr %i.ga, align 8, !noalias !178389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !178387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !178387
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.io = load ptr, ptr %i.in, align 8, !noalias !178387, !nonnull !409, !align !410, !noundef !409
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !178387, !nonnull !409, !align !410, !noundef !409
  invoke void @_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset16indice_files_dir(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.io, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.iq)
          to label %bb.av unwind label %bb.au, !noalias !178388

bb.ap:                                            ; preds = %bb.ad
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !178389, !nonnull !409, !align !410, !noundef !409
  %.val27.i438.i = load ptr, ptr %i.is, align 8, !noalias !178388, !nonnull !409, !noundef !409
  %i.it = getelementptr inbounds nuw i8, ptr %.val27.i438.i, i64 32
  %i.iu = atomicrmw add ptr %i.it, i64 1 monotonic, align 8, !noalias !178388 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !178389
  store i8 1, ptr %i.ga, align 8, !noalias !178389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !178387
  store ptr %i.gj, ptr %i.cs, align 8, !noalias !178387
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %.val85.i = load ptr, ptr %i.iv, align 8, !noalias !178388, !nonnull !409, !noundef !409 ; 2 uses
  %i.iw = atomicrmw add ptr %.val85.i, i64 1 monotonic, align 8, !noalias !178388
  %i.ix = icmp slt i64 %i.iw, 0
  br i1 %i.ix, label %bb.aq, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.ap
  %i.iy = atomicrmw sub ptr %i.gj, i64 1 release, align 8, !noalias !178405
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %bb.ar, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit101.i

bb.ar:                                            ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit101.i unwind label %bb.as, !noalias !178388

bb.as:                                            ; preds = %bb.ar
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !178387
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit116.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit101.i: ; preds = %bb.ar, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !178387
  br label %bb.if

bb.at:                                            ; preds = %bb.id, %.body207.i, %bb.fx, %bb.ev, %bb.ej, %bb.dt, %bb.df, %bb.de, %bb.cj, %bb.by, %.body.i
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !178388
  unreachable

bb.au:                                            ; preds = %bb.ao
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !178387
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit122.i

bb.av:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !178406)
  %i.jd = load i8, ptr %i.cq, align 8, !range !416, !alias.scope !178407, !noalias !178387, !noundef !409 ; 2 uses
  %.not.i102.i = icmp eq i8 %i.jd, -1
  br i1 %.not.i102.i, label %bb.aw, label %bb.bv

bb.aw:                                            ; preds = %bb.av
  %i.je = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.8239.sroa.7.7.copyload432.i = load ptr, ptr %i.je, align 8, !alias.scope !178408, !noalias !178387 ; 3 uses
  %.sroa.8239.sroa.10.7..sroa_idx433.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %.sroa.4435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.jf = load <2 x ptr>, ptr %.sroa.8239.sroa.10.7..sroa_idx433.i, align 8, !alias.scope !178408, !noalias !178387
  %.sroa.8239.sroa.10.i.sroa.0.0.copyload227 = load ptr, ptr %.sroa.8239.sroa.10.7..sroa_idx433.i, align 8, !alias.scope !178408, !noalias !178387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !178387
  store <2 x ptr> %i.jf, ptr %.sroa.4435.0..sroa_idx.i, align 8, !noalias !178387
  store ptr %.sroa.8239.sroa.7.7.copyload432.i, ptr %i.cr, align 8, !noalias !178387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !178387
  %i.jg = load ptr, ptr %i.ip, align 8, !noalias !178387, !nonnull !409, !align !410, !noundef !409
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 128
  %i.ji = ptrtoint ptr %.sroa.8239.sroa.7.7.copyload432.i to i64
  invoke fastcc void @_RNvXsB_NtCs40k4W9msRzi_5alloc6stringNtCs8d5NHFTTVL0_4uuid4UuidNtB5_8ToString9to_stringCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cp, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16) %i.jh)
          to label %bb.ax unwind label %bb.bt, !noalias !178388

bb.ax:                                            ; preds = %bb.aw
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  invoke fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.jj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cr, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cp)
          to label %bb.az unwind label %bb.ay, !noalias !178388

bb.ay:                                            ; preds = %bb.ax
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !178387
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit122.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !178387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !178387
  %i.jl = load ptr, ptr %i.in, align 8, !noalias !178387, !nonnull !409, !align !410, !noundef !409
  %i.jm = getelementptr i8, ptr %i.jl, i64 280
  %.val83.i = load ptr, ptr %i.jm, align 8, !noalias !178388, !nonnull !409, !noundef !409
  %i.jn = getelementptr inbounds nuw i8, ptr %.val83.i, i64 336
  %i.jo = load ptr, ptr %i.fz, align 8, !noalias !178387, !nonnull !409, !noundef !409
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jq = load i64, ptr %i.jp, align 8, !noalias !178387, !noundef !409
  %i.jr = invoke noundef align 8 ptr @_RNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6Schema5field(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jo, i64 noundef %i.jq)
          to label %bb.ba unwind label %bb.bg, !noalias !178388 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !178387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !178387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !178387
  store ptr %i.fz, ptr %i.cm, align 8, !noalias !178387
  %.sroa.5260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5260.0..sroa_idx.i, align 8, !noalias !178387
  invoke fastcc void @_RNvNtCs40k4W9msRzi_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cn, ptr noundef nonnull @2580, ptr noundef nonnull %i.cm)
          to label %bb.bc unwind label %bb.bb, !noalias !178388

bb.bb:                                            ; preds = %bb.ba
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !178387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !178387
  br label %bb.be

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !178387
  %i.jt = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jt, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !178387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !178387
  %i.ju = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr @2581, ptr %i.ju, align 8, !alias.scope !178409, !noalias !178387
  store i8 11, ptr %i.co, align 8, !alias.scope !178409, !noalias !178387
  %.not.i103.i = icmp eq ptr %i.jr, null
  br i1 %.not.i103.i, label %bb.br, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.co)
          to label %bb.bh unwind label %bb.bf, !noalias !178388

bb.be:                                            ; preds = %bb.bf, %bb.bb
  %.pn15.i = phi { ptr, i32 } [ %i.jv, %bb.bf ], [ %i.js, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !178387
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit113.i

bb.bf:                                            ; preds = %bb.bd
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bg:                                            ; preds = %bb.az
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit113.i

bb.bh:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !178387
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.jr, ptr %i.jx, align 8, !noalias !178387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !178387
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jj)
          to label %_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i unwind label %bb.bi, !noalias !178388

_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.bh
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.jy, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2582, i64 noundef 24)
          to label %bb.bj unwind label %bb.bi, !noalias !178388

bb.bi:                                            ; preds = %_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %bb.bh
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !178387
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit113.i

bb.bj:                                            ; preds = %_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !178387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !178387
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jj)
          to label %_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit108.i unwind label %bb.bk, !noalias !178388

_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit108.i: ; preds = %bb.bj
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ka, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ck, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 14)
          to label %bb.bl unwind label %bb.bk, !noalias !178388

bb.bk:                                            ; preds = %_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit108.i, %bb.bj
  %i.kb = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.umax.v4i16
!152102 = !{!151923}
!152103 = !{!151925}
!152104 = !{!151927}
!152105 = !{!151927, !151925, !151923, !151921}
!152106 = !{!151929}
!152107 = !{!151929, !151921}
!152108 = !{!151931}
!152109 = !{!151933}
!152110 = !{!151933, !151931, !151929, !151921}
!152111 = !{!151935}
!152112 = !{!151937}
!152113 = !{!151939}
!152114 = !{!151941}
!152115 = !{!151944, !151943}
!152116 = !{!151946}
!152117 = !{!151947}
!152118 = !{!151946, !151947}
!152119 = !{!151949, !151947}
!152120 = !{!151951}
!152121 = !{!151953}
!152122 = !{!151955}
!152123 = !{!151955, !151953}
!152124 = !{!151961, !151959, !151957}
!152125 = !{!151963}
!152126 = !{!151965}
!152127 = !{!151967}
!152128 = !{!151967, !151965, !151963}
!152129 = !{!151969}
!152130 = !{!151971}
!152131 = !{!151971, !151969}
!152132 = !{!151973}
!152133 = !{!151975}
!152134 = !{!151975, !151973}
!152135 = !{!151977}
!152136 = !{!151979}
!152137 = !{!151979, !151977}
!152138 = !{!151981}
!152139 = !{!151983}
!152140 = !{!151985}
!152141 = !{!151985, !151983, !151981}
!152142 = !{!151987}
!152143 = !{!151989}
!152144 = !{!151989, !151987}
!152145 = !{!151995, !151993, !151991}
!152146 = !{!151997}
!152147 = !{!152001, !151999}
!152148 = !{!151999}
!152149 = !{!152001}
!152150 = !{!152003}
!152151 = !{!152005}
!152152 = !{!152005, !152003}
!152153 = !{!152007}
!152154 = !{!152009}
!152155 = !{!152009, !152007}
!152156 = !{!152011}
!152157 = !{!152013}
!152158 = !{!152013, !152011}
!152159 = !{!152019, !152017, !152015}
!152160 = !{!152021}
!152161 = !{!152023}
!152162 = !{!152023, !152021}
!152163 = !{!152025}
!152164 = !{!152027}
!152165 = !{!152027, !152025}
!152166 = !{!152029}
!152167 = !{!152030, !152029}
!152168 = !{!152030}
!152169 = !{!152032}
!152170 = !{!152034}
!152171 = !{!152036}
!152172 = !{!152036, !152034, !152032}
!152173 = !{!152038}
!152174 = !{!152040}
!152175 = !{!152042}
!152176 = !{!152042, !152040, !152038}
!152177 = !{!152044}
!152178 = !{!152046}
!152179 = !{!152046, !152044}
!152180 = distinct !{!152180, i1 true, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls"}
!152181 = distinct !{!152181, !152180, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152182 = distinct !{!152182, !152180, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152183 = distinct !{!152183, i1 true, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls"}
!152184 = distinct !{!152184, !152183, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152185 = distinct !{!152185, i1 true, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset19already_checked_out"}
!152186 = distinct !{!152186, !152185, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset19already_checked_out: argument 0"}
!152187 = distinct !{!152187, !152185, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset19already_checked_out: argument 1"}
!152188 = distinct !{!152188, !152185, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset19already_checked_out: argument 2"}
!152189 = distinct !{!152189, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152190 = distinct !{!152190, !152189, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152191 = distinct !{!152191, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!152192 = distinct !{!152192, !152191, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152193 = distinct !{!152193, i1 true, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!152194 = distinct !{!152194, !152193, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152195 = distinct !{!152195, i1 true, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!152196 = distinct !{!152196, !152195, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152197 = distinct !{!152197, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152198 = distinct !{!152198, !152197, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152199 = distinct !{!152199, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!152200 = distinct !{!152200, !152199, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152201 = distinct !{!152201, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls"}
!152202 = distinct !{!152202, !152201, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152203 = distinct !{!152203, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!152204 = distinct !{!152204, !152203, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152205 = distinct !{!152205, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152206 = distinct !{!152206, !152205, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152207 = distinct !{!152207, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152208 = distinct !{!152208, !152207, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152209 = distinct !{!152209, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152210 = distinct !{!152210, !152209, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152211 = distinct !{!152211, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152212 = distinct !{!152212, !152211, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152213 = distinct !{!152213, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152214 = distinct !{!152214, !152213, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152215 = distinct !{!152215, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152216 = distinct !{!152216, !152215, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152217 = distinct !{!152217, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!152218 = distinct !{!152218, !152217, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152219 = !{!152182, !152181}
!152220 = !{!152184}
!152221 = !{!152186}
!152222 = !{!152187}
!152223 = !{!152186, !152187, !152188}
!152224 = !{!152192, !152190}
!152225 = !{!152194}
!152226 = !{!152196, !152194}
!152227 = !{!152198}
!152228 = !{!152200}
!152229 = !{!152200, !152198}
!152230 = !{!152202}
!152231 = !{!152204}
!152232 = !{!152206}
!152233 = !{!152208}
!152234 = !{!152208, !152206, !152204, !152202}
!152235 = !{!152210}
!152236 = !{!152210, !152202}
!152237 = !{!152212}
!152238 = !{!152214}
!152239 = !{!152214, !152212, !152210, !152202}
!152240 = !{!152216}
!152241 = !{!152218}
!152242 = !{!152218, !152216}
!152243 = distinct !{!152243, i1 true, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls"}
!152244 = distinct !{!152244, !152243, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152245 = distinct !{!152245, i1 true, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyECsfR8GmIBoxTX_21lance_namespace_impls"}
!152246 = distinct !{!152246, !152245, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyECsfR8GmIBoxTX_21lance_namespace_impls: argument 2"}
!152247 = distinct !{!152247, !152245, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152248 = distinct !{!152248, !152245, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152249 = distinct !{!152249, i1 true, !"_RNvXs3_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_14TransactionKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey6schema"}
!152250 = distinct !{!152250, !152249, !"_RNvXs3_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_14TransactionKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey6schema: argument 0"}
!152251 = distinct !{!152251, i1 true, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish"}
!152252 = distinct !{!152252, !152251, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish: argument 1"}
!152253 = distinct !{!152253, !152251, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish: argument 0"}
!152254 = distinct !{!152254, i1 true, !"_RNvYNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecCsfR8GmIBoxTX_21lance_namespace_impls"}
!152255 = distinct !{!152255, !152254, !"_RNvYNtNtNtCshkPeWWG1flk_5lance7session6caches14TransactionKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152256 = distinct !{!152256, i1 true, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls"}
!152257 = distinct !{!152257, !152256, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152258 = distinct !{!152258, !152256, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152259 = distinct !{!152259, i1 true, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionECsfR8GmIBoxTX_21lance_namespace_impls"}
!152260 = distinct !{!152260, !152259, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152261 = distinct !{!152261, !152259, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152262 = distinct !{!152262, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!152263 = distinct !{!152263, !152262, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152264 = distinct !{!152264, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!152265 = distinct !{!152265, !152264, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152266 = distinct !{!152266, i1 true, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls"}
!152267 = distinct !{!152267, !152266, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152268 = distinct !{!152268, i1 true, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls"}
!152269 = distinct !{!152269, !152268, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152270 = distinct !{!152270, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2X_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152271 = distinct !{!152271, !152270, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2X_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152272 = distinct !{!152272, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!152273 = distinct !{!152273, !152272, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152274 = distinct !{!152274, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!152275 = distinct !{!152275, !152274, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152276 = distinct !{!152276, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152277 = distinct !{!152277, !152276, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152278 = distinct !{!152278, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!152279 = distinct !{!152279, !152278, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152280 = distinct !{!152280, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152281 = distinct !{!152281, !152280, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152282 = distinct !{!152282, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!152283 = distinct !{!152283, !152282, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152284 = distinct !{!152284, i1 true, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!152285 = distinct !{!152285, !152284, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152286 = distinct !{!152286, i1 true, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!152287 = distinct !{!152287, !152286, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152288 = distinct !{!152288, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152289 = distinct !{!152289, !152288, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152290 = distinct !{!152290, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152291 = distinct !{!152291, !152290, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152292 = distinct !{!152292, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!152293 = distinct !{!152293, !152292, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152294 = !{!152244}
!152295 = !{!152248, !152247, !152246, !152244}
!152296 = !{!152248, !152246}
!152297 = !{!152250}
!152298 = !{!152248, !152247}
!152299 = !{!152253, !152252, !152248, !152247, !152246, !152244}
!152300 = !{!152252, !152247, !152246, !152244}
!152301 = !{!152255}
!152302 = !{!152258, !152257, !152244}
!152303 = !{!152260}
!152304 = !{!152261}
!152305 = !{!152260, !152261, !152244}
!152306 = !{!152265, !152263, !152260, !152261}
!152307 = !{!152269, !152267, !152244}
!152308 = !{!152275, !152273, !152271}
!152309 = !{!152279, !152277}
!152310 = !{!152283, !152281}
!152311 = !{!152285}
!152312 = !{!152287, !152285}
!152313 = !{!152289}
!152314 = !{!152291}
!152315 = !{!152293}
!152316 = !{!152293, !152291}
!152317 = distinct !{!152317, i1 true, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultbNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls"}
!152318 = distinct !{!152318, !152317, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultbNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152319 = distinct !{!152319, !152317, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultbNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152320 = !{!152319, !152318}
!152321 = distinct !{!152321, i1 true, !"_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset24read_version_transaction0CsfR8GmIBoxTX_21lance_namespace_impls"}
!152322 = distinct !{!152322, !152321, !"_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset24read_version_transaction0CsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152323 = distinct !{!152323, !152321, !"_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset24read_version_transaction0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152324 = distinct !{!152324, i1 true, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls"}
!152325 = distinct !{!152325, !152324, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152326 = distinct !{!152326, !152324, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152327 = distinct !{!152327, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB1E_NCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB2H_7Dataset24read_version_transaction00ECsfR8GmIBoxTX_21lance_namespace_impls"}
!152328 = distinct !{!152328, !152327, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB1E_NCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB2H_7Dataset24read_version_transaction00ECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152329 = distinct !{!152329, !152327, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB1E_NCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB2H_7Dataset24read_version_transaction00ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152330 = distinct !{!152330, i1 true, !"_RNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB9_7Dataset24read_version_transaction00CsfR8GmIBoxTX_21lance_namespace_impls"}
!152331 = distinct !{!152331, !152330, !"_RNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB9_7Dataset24read_version_transaction00CsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152332 = distinct !{!152332, !152330, !"_RNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB9_7Dataset24read_version_transaction00CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152333 = distinct !{!152333, i1 true, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!152334 = distinct !{!152334, !152333, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152335 = distinct !{!152335, i1 true, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error17dataset_not_foundNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152336 = distinct !{!152336, !152335, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error17dataset_not_foundNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152337 = distinct !{!152337, !152335, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error17dataset_not_foundNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152338 = distinct !{!152338, i1 true, !"_RNvXsI_NtCs63DIHKhvmTb_10lance_core5errorINtB5_20DatasetNotFoundSnafuNtNtCs40k4W9msRzi_5alloc6string6StringEINtCs42yCtD4oGzv_5snafu9IntoErrorNtB5_5ErrorE10into_errorCsfR8GmIBoxTX_21lance_namespace_impls"}
!152339 = distinct !{!152339, !152338, !"_RNvXsI_NtCs63DIHKhvmTb_10lance_core5errorINtB5_20DatasetNotFoundSnafuNtNtCs40k4W9msRzi_5alloc6string6StringEINtCs42yCtD4oGzv_5snafu9IntoErrorNtB5_5ErrorE10into_errorCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152340 = distinct !{!152340, !152338, !"_RNvXsI_NtCs63DIHKhvmTb_10lance_core5errorINtB5_20DatasetNotFoundSnafuNtNtCs40k4W9msRzi_5alloc6string6StringEINtCs42yCtD4oGzv_5snafu9IntoErrorNtB5_5ErrorE10into_errorCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152341 = distinct !{!152341, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152342 = distinct !{!152342, !152341, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152343 = distinct !{!152343, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152344 = distinct !{!152344, !152343, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152345 = distinct !{!152345, i1 true, !"_RNvYINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3cmp9PartialEq2neCsfR8GmIBoxTX_21lance_namespace_impls"}
!152346 = distinct !{!152346, !152345, !"_RNvYINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3cmp9PartialEq2neCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152347 = distinct !{!152347, !152345, !"_RNvYINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3cmp9PartialEq2neCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152348 = distinct !{!152348, i1 true, !"_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCsfR8GmIBoxTX_21lance_namespace_impls"}
!152349 = distinct !{!152349, !152348, !"_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152350 = distinct !{!152350, !152348, !"_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152351 = distinct !{!152351, i1 true, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls"}
!152352 = distinct !{!152352, !152351, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152353 = distinct !{!152353, i1 true, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls"}
!152354 = distinct !{!152354, !152353, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152355 = distinct !{!152355, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152356 = distinct !{!152356, !152355, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152357 = distinct !{!152357, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152358 = distinct !{!152358, !152357, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152359 = distinct !{!152359, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152360 = distinct !{!152360, !152359, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152361 = distinct !{!152361, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152362 = distinct !{!152362, !152361, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152363 = distinct !{!152363, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152364 = distinct !{!152364, !152363, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152365 = distinct !{!152365, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152366 = distinct !{!152366, !152365, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152367 = distinct !{!152367, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152368 = distinct !{!152368, !152367, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152369 = distinct !{!152369, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152370 = distinct !{!152370, !152369, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152371 = distinct !{!152371, i1 true, !"_RINvNtCscI6d9CVNmLh_4core4hint8must_useNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152372 = distinct !{!152372, !152371, !"_RINvNtCscI6d9CVNmLh_4core4hint8must_useNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152373 = distinct !{!152373, !152371, !"_RINvNtCscI6d9CVNmLh_4core4hint8must_useNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152374 = distinct !{!152374, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls"}
!152375 = distinct !{!152375, !152374, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152376 = distinct !{!152376, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!152377 = distinct !{!152377, !152376, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152378 = distinct !{!152378, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152379 = distinct !{!152379, !152378, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152380 = distinct !{!152380, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152381 = distinct !{!152381, !152380, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152382 = distinct !{!152382, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152383 = distinct !{!152383, !152382, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152384 = distinct !{!152384, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152385 = distinct !{!152385, !152384, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152386 = distinct !{!152386, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152387 = distinct !{!152387, !152386, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152388 = distinct !{!152388, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls"}
!152389 = distinct !{!152389, !152388, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152390 = distinct !{!152390, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!152391 = distinct !{!152391, !152390, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152392 = distinct !{!152392, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152393 = distinct !{!152393, !152392, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152394 = distinct !{!152394, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152395 = distinct !{!152395, !152394, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152396 = distinct !{!152396, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152397 = distinct !{!152397, !152396, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152398 = distinct !{!152398, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152399 = distinct !{!152399, !152398, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152400 = distinct !{!152400, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152401 = distinct !{!152401, !152400, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152402 = !{!152323, !152322}
!152403 = !{!152323}
!152404 = !{!152326, !152325, !152323}
!152405 = !{!152329, !152328, !152323, !152322}
!152406 = !{!152329, !152323, !152322}
!152407 = !{!152332, !152331, !152329, !152328, !152323, !152322}
!152408 = !{!152332, !152329, !152328, !152323}
!152409 = !{!152334, !152332, !152329, !152328, !152323}
!152410 = !{!152329, !152323}
!152411 = !{!152340, !152339, !152337, !152336}
!152412 = !{!152331, !152329, !152328, !152323, !152322}
!152413 = !{!152342}
!152414 = !{!152344}
!152415 = !{!152344, !152342}
!152416 = !{!152344, !152342, !152332, !152329, !152328, !152323}
!152417 = !{!152346}
!152418 = !{!152347}
!152419 = !{!152349}
!152420 = !{!152350}
!152421 = !{!152349, !152346}
!152422 = !{!152350, !152347}
!152423 = !{!152349, !152350, !152346, !152347, !152323}
!152424 = !{!152352}
!152425 = !{!152354}
!152426 = !{!152358, !152356}
!152427 = !{!152358, !152356, !152323}
!152428 = !{!152356}
!152429 = !{!152358}
!152430 = !{!152360}
!152431 = !{!152362}
!152432 = !{!152362, !152360}
!152433 = !{!152362, !152360, !152323}
!152434 = !{!152364}
!152435 = !{!152366}
!152436 = !{!152366, !152364}
!152437 = !{!152366, !152364, !152323}
!152438 = !{!152368}
!152439 = !{!152370}
!152440 = !{!152370, !152368}
!152441 = !{!152370, !152368, !152323}
!152442 = !{!152373, !152372}
!152443 = !{!152375}
!152444 = !{!152377}
!152445 = !{!152379}
!152446 = !{!152381}
!152447 = !{!152381, !152379, !152377, !152375}
!152448 = !{!152381, !152379, !152377, !152375, !152323}
!152449 = !{!152383}
!152450 = !{!152383, !152375}
!152451 = !{!152385}
!152452 = !{!152387}
!152453 = !{!152387, !152385, !152383, !152375}
!152454 = !{!152387, !152385, !152383, !152375, !152323}
!152455 = !{!152389}
!152456 = !{!152391}
!152457 = !{!152393}
!152458 = !{!152395}
!152459 = !{!152395, !152393, !152391, !152389}
!152460 = !{!152395, !152393, !152391, !152389, !152323}
!152461 = !{!152397}
!152462 = !{!152397, !152389}
!152463 = !{!152399}
!152464 = !{!152401}
!152465 = !{!152401, !152399, !152397, !152389}
!152466 = !{!152401, !152399, !152397, !152389, !152323}
!152467 = distinct !{!152467, i1 true, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls"}
!152468 = distinct !{!152468, !152467, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152469 = distinct !{!152469, !152467, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152470 = distinct !{!152470, i1 true, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls"}
!152471 = distinct !{!152471, !152470, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152472 = distinct !{!152472, !152470, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152473 = distinct !{!152473, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152474 = distinct !{!152474, !152473, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152475 = distinct !{!152475, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152476 = distinct !{!152476, !152475, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152477 = distinct !{!152477, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152478 = distinct !{!152478, !152477, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152479 = distinct !{!152479, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152480 = distinct !{!152480, !152479, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152481 = distinct !{!152481, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152482 = distinct !{!152482, !152481, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152483 = distinct !{!152483, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152484 = distinct !{!152484, !152483, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152485 = distinct !{!152485, i1 true, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls"}
!152486 = distinct !{!152486, !152485, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152487 = distinct !{!152487, i1 true, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls"}
!152488 = distinct !{!152488, !152487, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!152489 = distinct !{!152489, !152487, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2c_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152490 = distinct !{!152490, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table6format2pb11TransactionNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152491 = distinct !{!152491, !152490, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table6format2pb11TransactionNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152492 = distinct !{!152492, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb11TransactionECsfR8GmIBoxTX_21lance_namespace_impls"}
!152493 = distinct !{!152493, !152492, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb11TransactionECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152494 = distinct !{!152494, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152495 = distinct !{!152495, !152494, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152496 = distinct !{!152496, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152497 = distinct !{!152497, !152496, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152498 = distinct !{!152498, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!152499 = distinct !{!152499, !152498, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152500 = distinct !{!152500, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!152501 = distinct !{!152501, !152500, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!152502 = distinct !{!152502, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE3mapINtNtB5_6option6OptionBI_ENcNtB2y_4Some0ECsfR8GmIBoxTX_21lance_namespace_impls"}
end_hunk_4
begin_hunk_5_@llvm.vector.reduce.umax.v4i16
!176892 = !{!176735, !176734, !176732, !176731, !176691, !176690, !176688, !176687}
!176893 = !{!176735, !176732, !176691, !176690, !176688, !176687}
!176894 = !{!176734, !176732, !176731, !176691, !176690, !176688, !176687}
!176895 = !{!176739, !176737}
!176896 = !{!176737}
!176897 = !{!176739}
!176898 = !{!176739, !176737, !176691, !176688}
!176899 = !{!176741}
!176900 = !{!176743}
!176901 = !{!176743, !176741, !176739, !176737}
!176902 = !{!176749, !176743, !176747, !176741, !176746, !176739, !176745, !176737, !176744, !176691, !176688}
!176903 = !{!176751, !176743, !176747, !176741, !176746, !176739, !176745, !176737, !176744, !176691, !176688}
!176904 = !{!176754, !176753}
!176905 = !{!176751, !176743, !176747, !176741, !176739, !176737, !176691, !176688}
!176906 = !{!176758, !176756, !176691, !176688}
!176907 = !{!176761, !176760}
!176908 = !{!176765, !176763, !176691, !176688}
!176909 = !{!176771, !176769, !176767}
!176910 = !{!176774, !176773}
!176911 = !{!176777, !176776, !176691, !176690, !176688, !176687}
!176912 = !{!176776, !176691, !176690, !176688, !176687}
!176913 = !{!176781, !176779}
!176914 = !{!176779}
!176915 = !{!176781}
!176916 = !{!176781, !176779, !176691, !176688}
!176917 = !{!176783}
!176918 = !{!176785}
!176919 = !{!176785, !176783, !176781, !176779}
!176920 = !{!176791, !176785, !176789, !176783, !176788, !176781, !176787, !176779, !176786, !176691, !176688}
!176921 = !{!176793, !176785, !176789, !176783, !176788, !176781, !176787, !176779, !176786, !176691, !176688}
!176922 = !{!176796, !176795}
!176923 = !{!176793, !176785, !176789, !176783, !176781, !176779, !176691, !176688}
!176924 = !{!176799, !176798}
!176925 = !{!176777, !176691, !176688}
!176926 = !{!176802, !176801}
!176927 = !{!176808, !176806, !176805, !176804, !176777, !176691, !176688}
!176928 = !{!176806, !176805, !176804, !176777, !176691, !176688}
!176929 = !{!176814, !176812, !176810, !176806, !176805, !176804, !176777, !176691, !176688}
!176930 = !{!176816, !176777, !176691, !176688}
!176931 = !{!176818, !176816, !176777, !176691, !176688}
!176932 = !{!176822, !176820, !176691, !176688}
!176933 = !{!176832, !176830, !176829, !176827, !176826, !176822, !176824, !176820, !176823, !176691, !176688}
!176934 = !{!176834, !176830, !176829, !176827, !176826, !176822, !176824, !176820, !176823, !176691, !176688}
!176935 = !{!176837, !176836}
!176936 = !{!176834, !176830, !176829, !176827, !176822, !176820, !176691, !176688}
!176937 = !{!176840, !176839}
!176938 = !{!176846, !176844, !176842}
!176939 = !{!176849, !176848}
!176940 = !{!176690, !176688, !176687}
!176941 = !{!176852, !176851, !176688}
!176942 = !{!176857, !176855}
!176943 = distinct !{!176943, i1 true, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!176944 = distinct !{!176944, !176943, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176945 = distinct !{!176945, i1 true, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!176946 = distinct !{!176946, !176945, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176947 = distinct !{!176947, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!176948 = distinct !{!176948, !176947, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176949 = distinct !{!176949, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!176950 = distinct !{!176950, !176949, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176951 = distinct !{!176951, i1 true, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls"}
!176952 = distinct !{!176952, !176951, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176953 = distinct !{!176953, i1 true, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!176954 = distinct !{!176954, !176953, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176955 = distinct !{!176955, i1 true, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!176956 = distinct !{!176956, !176955, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176957 = distinct !{!176957, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls"}
!176958 = distinct !{!176958, !176957, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176959 = distinct !{!176959, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!176960 = distinct !{!176960, !176959, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176961 = !{!176944}
!176962 = !{!176946, !176944}
!176963 = !{!176948}
!176964 = !{!176950}
!176965 = !{!176950, !176948}
!176966 = !{!176952}
!176967 = !{!176954}
!176968 = !{!176956, !176954}
!176969 = !{!176958}
!176970 = !{!176960}
!176971 = !{!176960, !176958}
!176972 = distinct !{!176972, i1 true, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls"}
!176973 = distinct !{!176973, !176972, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176974 = distinct !{!176974, !176972, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!176975 = distinct !{!176975, i1 true, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls"}
!176976 = distinct !{!176976, !176975, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176977 = distinct !{!176977, i1 true, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyECsfR8GmIBoxTX_21lance_namespace_impls"}
!176978 = distinct !{!176978, !176977, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyECsfR8GmIBoxTX_21lance_namespace_impls: argument 2"}
!176979 = distinct !{!176979, !176977, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!176980 = distinct !{!176980, !176977, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176981 = distinct !{!176981, i1 true, !"_RNvXs4_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_15DeletionFileKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey6schema"}
!176982 = distinct !{!176982, !176981, !"_RNvXs4_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_15DeletionFileKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey6schema: argument 0"}
!176983 = distinct !{!176983, i1 true, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish"}
!176984 = distinct !{!176984, !176983, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish: argument 1"}
!176985 = distinct !{!176985, !176983, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish: argument 0"}
!176986 = distinct !{!176986, i1 true, !"_RNvYNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecCsfR8GmIBoxTX_21lance_namespace_impls"}
!176987 = distinct !{!176987, !176986, !"_RNvYNtNtNtCshkPeWWG1flk_5lance7session6caches15DeletionFileKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176988 = distinct !{!176988, i1 true, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls"}
!176989 = distinct !{!176989, !176988, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!176990 = distinct !{!176990, !176988, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176991 = distinct !{!176991, i1 true, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorECsfR8GmIBoxTX_21lance_namespace_impls"}
!176992 = distinct !{!176992, !176991, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176993 = distinct !{!176993, !176991, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!176994 = distinct !{!176994, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!176995 = distinct !{!176995, !176994, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176996 = distinct !{!176996, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!176997 = distinct !{!176997, !176996, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!176998 = distinct !{!176998, i1 true, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls"}
!176999 = distinct !{!176999, !176998, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177000 = distinct !{!177000, i1 true, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls"}
!177001 = distinct !{!177001, !177000, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177002 = distinct !{!177002, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2T_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177003 = distinct !{!177003, !177002, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2T_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177004 = distinct !{!177004, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!177005 = distinct !{!177005, !177004, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177006 = distinct !{!177006, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!177007 = distinct !{!177007, !177006, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177008 = distinct !{!177008, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!177009 = distinct !{!177009, !177008, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177010 = distinct !{!177010, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!177011 = distinct !{!177011, !177010, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177012 = distinct !{!177012, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177013 = distinct !{!177013, !177012, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177014 = distinct !{!177014, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!177015 = distinct !{!177015, !177014, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177016 = distinct !{!177016, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!177017 = distinct !{!177017, !177016, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177018 = distinct !{!177018, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177019 = distinct !{!177019, !177018, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177020 = distinct !{!177020, i1 true, !"_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset25object_store_for_deletion0CsfR8GmIBoxTX_21lance_namespace_impls"}
!177021 = distinct !{!177021, !177020, !"_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset25object_store_for_deletion0CsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177022 = distinct !{!177022, !177020, !"_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset25object_store_for_deletion0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177023 = distinct !{!177023, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!177024 = distinct !{!177024, !177023, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177025 = distinct !{!177025, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!177026 = distinct !{!177026, !177025, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177027 = distinct !{!177027, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177028 = distinct !{!177028, !177027, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177029 = distinct !{!177029, i1 true, !"_RNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18read_deletion_file0CsfR8GmIBoxTX_21lance_namespace_impls"}
!177030 = distinct !{!177030, !177029, !"_RNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18read_deletion_file0CsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177031 = distinct !{!177031, !177029, !"_RNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18read_deletion_file0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177032 = distinct !{!177032, i1 true, !"_RNvMsK_NtCs9ipI1vyGjpZ_12tracing_core5fieldNtB5_8FieldSet13value_set_all"}
!177033 = distinct !{!177033, !177032, !"_RNvMsK_NtCs9ipI1vyGjpZ_12tracing_core5fieldNtB5_8FieldSet13value_set_all: argument 0"}
!177034 = distinct !{!177034, i1 true, !"_RNvXs0_NtCshTahG2RyGLb_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18read_deletion_file00ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls"}
!177035 = distinct !{!177035, !177034, !"_RNvXs0_NtCshTahG2RyGLb_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18read_deletion_file00ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177036 = distinct !{!177036, !177034, !"_RNvXs0_NtCshTahG2RyGLb_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18read_deletion_file00ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177037 = distinct !{!177037, i1 true, !"_RNvXse_NtCshTahG2RyGLb_7tracing4spanNtB5_7EnteredNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop"}
!177038 = distinct !{!177038, !177037, !"_RNvXse_NtCshTahG2RyGLb_7tracing4spanNtB5_7EnteredNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop: argument 0"}
!177039 = distinct !{!177039, i1 true, !"_RNvXse_NtCshTahG2RyGLb_7tracing4spanNtB5_7EnteredNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop"}
!177040 = distinct !{!177040, !177039, !"_RNvXse_NtCshTahG2RyGLb_7tracing4spanNtB5_7EnteredNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop: argument 0"}
!177041 = distinct !{!177041, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsfR8GmIBoxTX_21lance_namespace_impls"}
!177042 = distinct !{!177042, !177041, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177043 = distinct !{!177043, i1 true, !"_RNvXs7_NtCshTahG2RyGLb_7tracing4spanNtB5_4SpanNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop"}
!177044 = distinct !{!177044, !177043, !"_RNvXs7_NtCshTahG2RyGLb_7tracing4spanNtB5_4SpanNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop: argument 0"}
!177045 = distinct !{!177045, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshTahG2RyGLb_7tracing4span5InnerEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177046 = distinct !{!177046, !177045, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshTahG2RyGLb_7tracing4span5InnerEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177047 = distinct !{!177047, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span5InnerECsfR8GmIBoxTX_21lance_namespace_impls"}
!177048 = distinct !{!177048, !177047, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span5InnerECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177049 = distinct !{!177049, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9ipI1vyGjpZ_12tracing_core10dispatcher8DispatchECsfR8GmIBoxTX_21lance_namespace_impls"}
!177050 = distinct !{!177050, !177049, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9ipI1vyGjpZ_12tracing_core10dispatcher8DispatchECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177051 = distinct !{!177051, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ipI1vyGjpZ_12tracing_core10dispatcher4KindINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SyncNtB2v_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177052 = distinct !{!177052, !177051, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ipI1vyGjpZ_12tracing_core10dispatcher4KindINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SyncNtB2v_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177053 = distinct !{!177053, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs9ipI1vyGjpZ_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SyncNtB26_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!177054 = distinct !{!177054, !177053, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs9ipI1vyGjpZ_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SyncNtB26_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177055 = distinct !{!177055, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs9ipI1vyGjpZ_12tracing_core10subscriber10SubscriberNtNtCscI6d9CVNmLh_4core6marker4SyncNtB1D_4SendEL_ENtNtNtB1F_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!177056 = distinct !{!177056, !177055, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs9ipI1vyGjpZ_12tracing_core10subscriber10SubscriberNtNtCscI6d9CVNmLh_4core6marker4SyncNtB1D_4SendEL_ENtNtNtB1F_3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177057 = distinct !{!177057, i1 true, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!177058 = distinct !{!177058, !177057, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177059 = distinct !{!177059, i1 true, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!177060 = distinct !{!177060, !177059, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177061 = distinct !{!177061, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177062 = distinct !{!177062, !177061, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177063 = distinct !{!177063, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!177064 = distinct !{!177064, !177063, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177065 = distinct !{!177065, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177066 = distinct !{!177066, !177065, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177067 = distinct !{!177067, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!177068 = distinct !{!177068, !177067, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177069 = distinct !{!177069, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177070 = distinct !{!177070, !177069, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177071 = distinct !{!177071, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!177072 = distinct !{!177072, !177071, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177073 = distinct !{!177073, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177074 = distinct !{!177074, !177073, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177075 = distinct !{!177075, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!177076 = distinct !{!177076, !177075, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177077 = distinct !{!177077, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177078 = distinct !{!177078, !177077, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177079 = distinct !{!177079, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!177080 = distinct !{!177080, !177079, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177081 = !{!176973}
!177082 = !{!176974}
!177083 = !{!176973, !176974}
!177084 = !{!176976}
!177085 = !{!176980, !176979, !176978, !176976}
!177086 = !{!176980, !176978}
!177087 = !{!176982}
!177088 = !{!176980, !176979}
!177089 = !{!176985, !176984, !176980, !176979, !176978, !176976}
!177090 = !{!176984, !176979, !176978, !176976}
!177091 = !{!176987}
!177092 = !{!176990, !176989, !176976}
!177093 = !{!176992}
!177094 = !{!176993}
!177095 = !{!176992, !176993, !176976}
!177096 = !{!176997, !176995, !176992, !176993}
!177097 = !{!177001, !176999, !176976}
!177098 = !{!177007, !177005, !177003}
!177099 = !{!177009}
!177100 = !{!177011}
!177101 = !{!177013}
!177102 = !{!177013, !177011, !177009}
!177103 = !{!177015}
!177104 = !{!177017}
!177105 = !{!177019}
!177106 = !{!177019, !177017, !177015}
!177107 = !{!177022, !177021}
!177108 = !{!177022}
!177109 = !{!177024}
!177110 = !{!177026}
!177111 = !{!177028}
!177112 = !{!177028, !177026, !177024}
!177113 = !{!177031, !177030}
!177114 = !{!177033}
!177115 = !{!177036, !177035, !177031, !177030}
!177116 = !{!177031}
!177117 = !{!177038, !177036, !177035, !177031, !177030}
!177118 = !{!177036, !177031}
!177119 = !{!177040, !177036, !177035, !177031, !177030}
!177120 = !{!177042}
!177121 = !{!177044, !177042}
!177122 = !{!177046}
!177123 = !{!177048}
!177124 = !{!177050}
!177125 = !{!177052}
!177126 = !{!177054}
!177127 = !{!177056}
!177128 = !{!177056, !177054, !177052, !177050, !177048, !177046, !177042}
!177129 = !{!177056, !177054, !177052, !177050, !177048, !177046, !177031}
!177130 = !{!177030}
!177131 = !{!177058}
!177132 = !{!177060, !177058}
!177133 = !{!177062}
!177134 = !{!177064}
!177135 = !{!177064, !177062}
!177136 = !{!177066}
!177137 = !{!177068}
!177138 = !{!177068, !177066}
!177139 = !{!177070}
!177140 = !{!177072}
!177141 = !{!177072, !177070}
!177142 = !{!177074}
!177143 = !{!177076}
!177144 = !{!177076, !177074}
!177145 = !{!177078}
!177146 = !{!177080}
!177147 = !{!177080, !177078}
!177148 = distinct !{!177148, i1 true, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error5indexReECsfR8GmIBoxTX_21lance_namespace_impls"}
!177149 = distinct !{!177149, !177148, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error5indexReECsfR8GmIBoxTX_21lance_namespace_impls: argument 2"}
!177150 = distinct !{!177150, !177148, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error5indexReECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177151 = distinct !{!177151, !177148, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error5indexReECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177152 = distinct !{!177152, i1 true, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCsfR8GmIBoxTX_21lance_namespace_impls"}
!177153 = distinct !{!177153, !177152, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177154 = distinct !{!177154, !177152, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177155 = distinct !{!177155, i1 true, !"_RNvXsK_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringINtNtCscI6d9CVNmLh_4core7convert4FromReE4from"}
!177156 = distinct !{!177156, !177155, !"_RNvXsK_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringINtNtCscI6d9CVNmLh_4core7convert4FromReE4from: argument 1"}
!177157 = distinct !{!177157, !177155, !"_RNvXsK_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringINtNtCscI6d9CVNmLh_4core7convert4FromReE4from: argument 0"}
!177158 = distinct !{!177158, i1 true, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls"}
!177159 = distinct !{!177159, !177158, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177160 = distinct !{!177160, !177158, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177161 = distinct !{!177161, i1 true, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls"}
!177162 = distinct !{!177162, !177161, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177163 = distinct !{!177163, i1 true, !"_RINvMNtCs1nbc6HIrAcO_11prost_types3anyNtNtB5_8protobuf3Any6to_msgNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls"}
!177164 = distinct !{!177164, !177163, !"_RINvMNtCs1nbc6HIrAcO_11prost_types3anyNtNtB5_8protobuf3Any6to_msgNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177165 = distinct !{!177165, !177163, !"_RINvMNtCs1nbc6HIrAcO_11prost_types3anyNtNtB5_8protobuf3Any6to_msgNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177166 = distinct !{!177166, i1 true, !"_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!177167 = distinct !{!177167, !177166, !"_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177168 = distinct !{!177168, !177166, !"_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177169 = distinct !{!177169, i1 true, !"_RNvXs28_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_25FragmentReuseIndexDetailsNtNtCscI6d9CVNmLh_4core7default7Default7default"}
!177170 = distinct !{!177170, !177169, !"_RNvXs28_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_25FragmentReuseIndexDetailsNtNtCscI6d9CVNmLh_4core7default7Default7default: argument 0"}
!177171 = distinct !{!177171, i1 true, !"_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!177172 = distinct !{!177172, !177171, !"_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177173 = distinct !{!177173, !177171, !"_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177174 = distinct !{!177174, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!177175 = distinct !{!177175, !177174, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177176 = distinct !{!177176, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!177177 = distinct !{!177177, !177176, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177178 = distinct !{!177178, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!177179 = distinct !{!177179, !177178, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!177180 = distinct !{!177180, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!177181 = distinct !{!177181, !177180, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!177182 = distinct !{!177182, !177174, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177183 = distinct !{!177183, i1 true, !"_RINvXs27_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!177184 = distinct !{!177184, !177183, !"_RINvXs27_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177185 = distinct !{!177185, i1 true, !"_RINvMsx_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB6_7Content5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!177186 = distinct !{!177186, !177185, !"_RINvMsx_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB6_7Content5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177187 = distinct !{!177187, !177183, !"_RINvXs27_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177188 = distinct !{!177188, !177185, !"_RINvMsx_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB6_7Content5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177189 = distinct !{!177189, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMsx_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtBK_7Content5mergeQRShE0ECsfR8GmIBoxTX_21lance_namespace_impls"}
!177190 = distinct !{!177190, !177189, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMsx_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtBK_7Content5mergeQRShE0ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177191 = distinct !{!177191, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!177192 = distinct !{!177192, !177191, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177193 = distinct !{!177193, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177194 = distinct !{!177194, !177193, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177195 = distinct !{!177195, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177196 = distinct !{!177196, !177195, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177197 = distinct !{!177197, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!177198 = distinct !{!177198, !177197, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177199 = distinct !{!177199, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!177200 = distinct !{!177200, !177199, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177201 = distinct !{!177201, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177202 = distinct !{!177202, !177201, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177203 = distinct !{!177203, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!177204 = distinct !{!177204, !177203, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177205 = distinct !{!177205, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177206 = distinct !{!177206, !177205, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177207 = distinct !{!177207, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!177208 = distinct !{!177208, !177207, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177209 = distinct !{!177209, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177210 = distinct !{!177210, !177209, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177211 = distinct !{!177211, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177212 = distinct !{!177212, !177211, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177213 = distinct !{!177213, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!177214 = distinct !{!177214, !177213, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177215 = distinct !{!177215, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!177216 = distinct !{!177216, !177215, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177217 = distinct !{!177217, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177218 = distinct !{!177218, !177217, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177219 = distinct !{!177219, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!177220 = distinct !{!177220, !177219, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177221 = distinct !{!177221, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177222 = distinct !{!177222, !177221, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177223 = distinct !{!177223, i1 true, !"_RNCINvXs27_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB9_25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsfR8GmIBoxTX_21lance_namespace_impls"}
!177224 = distinct !{!177224, !177223, !"_RNCINvXs27_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB9_25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177225 = distinct !{!177225, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShE0ECsfR8GmIBoxTX_21lance_namespace_impls"}
!177226 = distinct !{!177226, !177225, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShE0ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177227 = distinct !{!177227, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls"}
!177228 = distinct !{!177228, !177227, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177229 = distinct !{!177229, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177230 = distinct !{!177230, !177229, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177231 = distinct !{!177231, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!177232 = distinct !{!177232, !177231, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177233 = distinct !{!177233, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!177234 = distinct !{!177234, !177233, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177235 = distinct !{!177235, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177236 = distinct !{!177236, !177235, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177237 = distinct !{!177237, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!177238 = distinct !{!177238, !177237, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177239 = distinct !{!177239, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177240 = distinct !{!177240, !177239, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177241 = distinct !{!177241, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!177242 = distinct !{!177242, !177241, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177243 = distinct !{!177243, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177244 = distinct !{!177244, !177243, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177245 = distinct !{!177245, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!177246 = distinct !{!177246, !177245, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177247 = distinct !{!177247, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177248 = distinct !{!177248, !177247, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177249 = distinct !{!177249, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177250 = distinct !{!177250, !177249, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177251 = distinct !{!177251, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!177252 = distinct !{!177252, !177251, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177253 = distinct !{!177253, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls"}
!177254 = distinct !{!177254, !177253, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177255 = distinct !{!177255, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177256 = distinct !{!177256, !177255, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177257 = distinct !{!177257, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!177258 = distinct !{!177258, !177257, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177259 = distinct !{!177259, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!177260 = distinct !{!177260, !177259, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177261 = distinct !{!177261, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177262 = distinct !{!177262, !177261, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177263 = distinct !{!177263, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!177264 = distinct !{!177264, !177263, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177265 = distinct !{!177265, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177266 = distinct !{!177266, !177265, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177267 = distinct !{!177267, i1 true, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls"}
!177268 = distinct !{!177268, !177267, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177269 = distinct !{!177269, !177267, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177270 = distinct !{!177270, i1 true, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2D_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls"}
!177271 = distinct !{!177271, !177270, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2D_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!177272 = distinct !{!177272, !177270, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2D_EE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177273 = distinct !{!177273, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls"}
!177274 = distinct !{!177274, !177273, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb25FragmentReuseIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177275 = distinct !{!177275, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177276 = distinct !{!177276, !177275, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177277 = distinct !{!177277, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!177278 = distinct !{!177278, !177277, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7ContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177279 = distinct !{!177279, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls"}
!177280 = distinct !{!177280, !177279, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177281 = distinct !{!177281, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177282 = distinct !{!177282, !177281, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177283 = distinct !{!177283, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!177284 = distinct !{!177284, !177283, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177285 = distinct !{!177285, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177286 = distinct !{!177286, !177285, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177287 = distinct !{!177287, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!177288 = distinct !{!177288, !177287, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177289 = distinct !{!177289, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!177290 = distinct !{!177290, !177289, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!177291 = distinct !{!177291, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!177292 = distinct !{!177292, !177291, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
end_hunk_5
begin_hunk_6_@llvm.vector.reduce.umax.v4i16
!178197 = distinct !{!178197, !178196, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178198 = distinct !{!178198, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!178199 = distinct !{!178199, !178198, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178200 = distinct !{!178200, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178201 = distinct !{!178201, !178200, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178202 = distinct !{!178202, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls"}
!178203 = distinct !{!178203, !178202, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178204 = distinct !{!178204, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!178205 = distinct !{!178205, !178204, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178206 = distinct !{!178206, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178207 = distinct !{!178207, !178206, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178208 = distinct !{!178208, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178209 = distinct !{!178209, !178208, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178210 = distinct !{!178210, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!178211 = distinct !{!178211, !178210, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCshkPeWWG1flk_5lance7session12index_caches8ProstAnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178212 = distinct !{!178212, i1 true, !"_RINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!178213 = distinct !{!178213, !178212, !"_RINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178214 = distinct !{!178214, !178212, !"_RINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178215 = distinct !{!178215, i1 true, !"_RINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!178216 = distinct !{!178216, !178215, !"_RINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178217 = distinct !{!178217, !178215, !"_RINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message5mergeQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178218 = distinct !{!178218, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!178219 = distinct !{!178219, !178218, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178220 = distinct !{!178220, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!178221 = distinct !{!178221, !178220, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178222 = distinct !{!178222, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!178223 = distinct !{!178223, !178222, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!178224 = distinct !{!178224, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!178225 = distinct !{!178225, !178224, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!178226 = distinct !{!178226, !178218, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178227 = distinct !{!178227, i1 true, !"_RINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB6_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!178228 = distinct !{!178228, !178227, !"_RINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB6_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178229 = distinct !{!178229, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!178230 = distinct !{!178230, !178229, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178231 = distinct !{!178231, !178227, !"_RINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB6_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178232 = distinct !{!178232, !178229, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178233 = distinct !{!178233, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigNCINvNtB2_7message5mergeBJ_QRShE0B2w_ECsfR8GmIBoxTX_21lance_namespace_impls"}
!178234 = distinct !{!178234, !178233, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigNCINvNtB2_7message5mergeBJ_QRShE0B2w_ECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178235 = distinct !{!178235, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!178236 = distinct !{!178236, !178235, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178237 = distinct !{!178237, !178233, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigNCINvNtB2_7message5mergeBJ_QRShE0B2w_ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178238 = distinct !{!178238, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!178239 = distinct !{!178239, !178238, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!178240 = distinct !{!178240, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!178241 = distinct !{!178241, !178240, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!178242 = distinct !{!178242, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigQRShE0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178243 = distinct !{!178243, !178242, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigQRShE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178244 = distinct !{!178244, !178242, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_details19CodeTokenizerConfigQRShE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178245 = distinct !{!178245, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!178246 = distinct !{!178246, !178245, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178247 = distinct !{!178247, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!178248 = distinct !{!178248, !178247, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178249 = distinct !{!178249, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!178250 = distinct !{!178250, !178249, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!178251 = distinct !{!178251, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!178252 = distinct !{!178252, !178251, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!178253 = distinct !{!178253, !178245, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178254 = distinct !{!178254, i1 true, !"_RINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB6_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls"}
!178255 = distinct !{!178255, !178254, !"_RINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB6_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178256 = distinct !{!178256, !178254, !"_RINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB6_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178257 = distinct !{!178257, i1 true, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178258 = distinct !{!178258, !178257, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178259 = distinct !{!178259, i1 true, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178260 = distinct !{!178260, !178259, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178261 = distinct !{!178261, i1 true, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178262 = distinct !{!178262, !178261, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178263 = distinct !{!178263, i1 true, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs1_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178264 = distinct !{!178264, !178263, !"_RNCINvXs7_NtNtCsa7501wwoJJ1_11lance_index5pbold22inverted_index_detailsNtB8_19CodeTokenizerConfigNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs1_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178265 = distinct !{!178265, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178266 = distinct !{!178266, !178265, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178267 = distinct !{!178267, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178268 = distinct !{!178268, !178267, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178269 = distinct !{!178269, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178270 = distinct !{!178270, !178269, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178271 = distinct !{!178271, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs1_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178272 = distinct !{!178272, !178271, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs1_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178273 = distinct !{!178273, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs2_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178274 = distinct !{!178274, !178273, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs2_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178275 = distinct !{!178275, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs3_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178276 = distinct !{!178276, !178275, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs3_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178277 = distinct !{!178277, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs4_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178278 = distinct !{!178278, !178277, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs4_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178279 = distinct !{!178279, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs5_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178280 = distinct !{!178280, !178279, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs5_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178281 = distinct !{!178281, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs6_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178282 = distinct !{!178282, !178281, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs6_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178283 = distinct !{!178283, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs7_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178284 = distinct !{!178284, !178283, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs7_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178285 = distinct !{!178285, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs8_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178286 = distinct !{!178286, !178285, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs8_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178287 = distinct !{!178287, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs9_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178288 = distinct !{!178288, !178287, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs9_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178289 = distinct !{!178289, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEsa_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178290 = distinct !{!178290, !178289, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEsa_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178291 = distinct !{!178291, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEsb_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178292 = distinct !{!178292, !178291, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEsb_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178293 = distinct !{!178293, i1 true, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEsc_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178294 = distinct !{!178294, !178293, !"_RNCINvXsY_NtCsa7501wwoJJ1_11lance_index5pboldNtB8_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEsc_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178295 = distinct !{!178295, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShE0ECsfR8GmIBoxTX_21lance_namespace_impls"}
!178296 = distinct !{!178296, !178295, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvYNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShE0ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178297 = distinct !{!178297, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls"}
!178298 = distinct !{!178298, !178297, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178299 = distinct !{!178299, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178300 = distinct !{!178300, !178299, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178301 = distinct !{!178301, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!178302 = distinct !{!178302, !178301, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178303 = distinct !{!178303, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178304 = distinct !{!178304, !178303, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178305 = distinct !{!178305, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!178306 = distinct !{!178306, !178305, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178307 = distinct !{!178307, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178308 = distinct !{!178308, !178307, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178309 = distinct !{!178309, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details00ECsfR8GmIBoxTX_21lance_namespace_impls"}
!178310 = distinct !{!178310, !178309, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details00ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178311 = distinct !{!178311, !178309, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details00ECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178312 = distinct !{!178312, i1 true, !"_RNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details00CsfR8GmIBoxTX_21lance_namespace_impls"}
!178313 = distinct !{!178313, !178312, !"_RNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details00CsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178314 = distinct !{!178314, !178312, !"_RNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details00CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178315 = distinct !{!178315, i1 true, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!178316 = distinct !{!178316, !178315, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178317 = distinct !{!178317, i1 true, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsfR8GmIBoxTX_21lance_namespace_impls"}
!178318 = distinct !{!178318, !178317, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178319 = distinct !{!178319, !178317, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178320 = distinct !{!178320, i1 true, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsfR8GmIBoxTX_21lance_namespace_impls"}
!178321 = distinct !{!178321, !178320, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178322 = distinct !{!178322, !178320, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178323 = distinct !{!178323, !178315, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 2"}
!178324 = distinct !{!178324, !178315, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178325 = distinct !{!178325, i1 true, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!178326 = distinct !{!178326, !178325, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178327 = distinct !{!178327, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfR8GmIBoxTX_21lance_namespace_impls"}
!178328 = distinct !{!178328, !178327, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178329 = distinct !{!178329, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!178330 = distinct !{!178330, !178329, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178331 = distinct !{!178331, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178332 = distinct !{!178332, !178331, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178333 = distinct !{!178333, i1 true, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls"}
!178334 = distinct !{!178334, !178333, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178335 = distinct !{!178335, !178333, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178336 = distinct !{!178336, i1 true, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls"}
!178337 = distinct !{!178337, !178336, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178338 = distinct !{!178338, !178336, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178339 = distinct !{!178339, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyNtNtCskAO0uQb8M5a_5prost5error11EncodeErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details0s_0ECsfR8GmIBoxTX_21lance_namespace_impls"}
!178340 = distinct !{!178340, !178339, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyNtNtCskAO0uQb8M5a_5prost5error11EncodeErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details0s_0ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178341 = distinct !{!178341, !178339, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyNtNtCskAO0uQb8M5a_5prost5error11EncodeErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details0s_0ECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178342 = distinct !{!178342, i1 true, !"_RNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details0s_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!178343 = distinct !{!178343, !178342, !"_RNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar19fetch_index_details0s_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178344 = distinct !{!178344, i1 true, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!178345 = distinct !{!178345, !178344, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178346 = distinct !{!178346, i1 true, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsfR8GmIBoxTX_21lance_namespace_impls"}
!178347 = distinct !{!178347, !178346, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178348 = distinct !{!178348, !178346, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178349 = distinct !{!178349, i1 true, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsfR8GmIBoxTX_21lance_namespace_impls"}
!178350 = distinct !{!178350, !178349, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!178351 = distinct !{!178351, !178349, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178352 = distinct !{!178352, !178344, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 2"}
!178353 = distinct !{!178353, !178344, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178354 = distinct !{!178354, i1 true, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!178355 = distinct !{!178355, !178354, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178356 = distinct !{!178356, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfR8GmIBoxTX_21lance_namespace_impls"}
!178357 = distinct !{!178357, !178356, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178358 = distinct !{!178358, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!178359 = distinct !{!178359, !178358, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178360 = distinct !{!178360, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178361 = distinct !{!178361, !178360, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178362 = distinct !{!178362, i1 true, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!178363 = distinct !{!178363, !178362, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178364 = distinct !{!178364, i1 true, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!178365 = distinct !{!178365, !178364, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178366 = distinct !{!178366, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls"}
!178367 = distinct !{!178367, !178366, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsa7501wwoJJ1_11lance_index5pbold20InvertedIndexDetailsECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178368 = distinct !{!178368, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178369 = distinct !{!178369, !178368, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178370 = distinct !{!178370, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!178371 = distinct !{!178371, !178370, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178372 = distinct !{!178372, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178373 = distinct !{!178373, !178372, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178374 = distinct !{!178374, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!178375 = distinct !{!178375, !178374, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178376 = distinct !{!178376, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178377 = distinct !{!178377, !178376, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178378 = distinct !{!178378, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178379 = distinct !{!178379, !178378, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178380 = distinct !{!178380, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!178381 = distinct !{!178381, !178380, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178382 = distinct !{!178382, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsfR8GmIBoxTX_21lance_namespace_impls"}
!178383 = distinct !{!178383, !178382, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178384 = distinct !{!178384, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!178385 = distinct !{!178385, !178384, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!178386 = !{!177952}
!178387 = !{!177955, !177954}
!178388 = !{!177955}
!178389 = !{!177957, !177955, !177954}
!178390 = !{!177961, !177960, !177959, !177957, !177955, !177954}
!178391 = !{!177961, !177959, !177955}
!178392 = !{!177963}
!178393 = !{!177961, !177960, !177955}
!178394 = !{!177966, !177965, !177961, !177960, !177959, !177957, !177955, !177954}
!178395 = !{!177965, !177960, !177959, !177957, !177955, !177954}
!178396 = !{!177968}
!178397 = !{!177971, !177970, !177957, !177955}
!178398 = !{!177973}
!178399 = !{!177974}
!178400 = !{!177973, !177974, !177957, !177955, !177954}
!178401 = !{!177973, !177955}
!178402 = !{!177978, !177976, !177973, !177974, !177955}
!178403 = !{!177982, !177980, !177957, !177955, !177954}
!178404 = !{!177988, !177986, !177984, !177955}
!178405 = !{!177992, !177990, !177955}
!178406 = !{!177994}
!178407 = !{!177995}
!178408 = !{!177994, !177995}
!178409 = !{!177997}
!178410 = !{!177999}
!178411 = !{!178001}
!178412 = !{!178003}
!178413 = !{!178003, !178001, !177999}
!178414 = !{!178003, !178001, !177999, !177955}
!178415 = !{!178005}
!178416 = !{!178007}
!178417 = !{!178009}
!178418 = !{!178009, !178007, !178005}
!178419 = !{!178009, !178007, !178005, !177955}
!178420 = !{!178011}
!178421 = !{!178013}
!178422 = !{!178015}
!178423 = !{!178015, !178013, !178011}
!178424 = !{!178015, !178013, !178011, !177955}
!178425 = !{!178018, !178017}
!178426 = !{!178020}
!178427 = !{!178022}
!178428 = !{!178024}
!178429 = !{!178024, !178022, !178020}
!178430 = !{!178024, !178022, !178020, !177955}
!178431 = !{!178030, !178028, !178026, !177955}
!178432 = !{!178032}
!178433 = !{!178034}
!178434 = !{!178036}
!178435 = !{!178036, !178034, !178032}
!178436 = !{!178036, !178034, !178032, !177955}
!178437 = !{!178038}
!178438 = !{!178040}
!178439 = !{!178042}
!178440 = !{!178042, !178040, !178038}
!178441 = !{!178042, !178040, !178038, !177955}
!178442 = !{!178044}
!178443 = !{!178046}
!178444 = !{!178047}
!178445 = !{!178046, !178047, !178048, !177955, !177954}
!178446 = !{!178046, !178047}
!178447 = !{!178050}
!178448 = !{!178052}
!178449 = !{!178052, !178050}
!178450 = !{!178052, !178050, !177955}
!178451 = !{!178054}
!178452 = !{!178056}
!178453 = !{!178056, !178054}
!178454 = !{!178056, !178054, !177955}
!178455 = !{!178066, !178064, !178062, !178060, !178059, !178058, !177955}
!178456 = !{!178068, !178062, !178060, !178059, !178058, !177955}
!178457 = !{!178070, !177955, !177954}
!178458 = !{!178072, !178070, !177955}
!178459 = !{!178070, !177955}
!178460 = !{!178074}
!178461 = !{!178075}
!178462 = !{!178074, !178075, !178076, !177955, !177954}
!178463 = !{!178074, !178075}
!178464 = !{!178078}
!178465 = !{!178080}
!178466 = !{!178081}
!178467 = !{!178080, !178081, !178082, !177955, !177954}
!178468 = !{!178080, !178081}
!178469 = !{!178084}
!178470 = !{!178085}
!178471 = !{!178084, !178085, !178086, !177955, !177954}
!178472 = !{!178084, !178085}
!178473 = !{!178088}
!178474 = !{!178089}
!178475 = !{!178088, !178089, !178090, !177955, !177954}
!178476 = !{!178088, !178089}
!178477 = !{!178092, !177955}
!178478 = !{!178100, !178098, !178096, !178094, !177955}
!178479 = !{!178102}
!178480 = !{!178104}
!178481 = !{!178104, !178102}
!178482 = !{!178104, !178102, !177955}
!178483 = !{!178106}
!178484 = !{!178108}
!178485 = !{!178110}
!178486 = !{!178110, !178108, !178106}
!178487 = !{!178110, !178108, !178106, !177955}
!178488 = !{!178112}
!178489 = !{!178114}
!178490 = !{!178116}
!178491 = !{!178116, !178114, !178112}
!178492 = !{!178116, !178114, !178112, !177955}
!178493 = !{!178118, !177955, !177954}
!178494 = !{!178118, !177955}
!178495 = !{!178120, !178118, !177955}
!178496 = !{!178122, !178120, !178118, !177955}
!178497 = !{!178124}
!178498 = !{!178124, !178120, !178118, !177955}
!178499 = !{!178126}
!178500 = !{!178128}
!178501 = !{!178128, !178126, !178124}
!178502 = !{!178133, !178128, !178131, !178126, !178130, !178124, !178129, !178120, !178118, !177955}
!178503 = !{!178135, !178128, !178131, !178126, !178130, !178124, !178129, !178120, !178118, !177955}
!178504 = !{!178137, !178120, !178118, !177955}
!178505 = !{!178137, !178120, !178118, !177955, !177954}
!178506 = !{!178139}
!178507 = !{!178140, !178139, !178120, !178118, !177955}
!178508 = !{!178142}
!178509 = !{!178144}
!178510 = !{!178144, !178142, !178139}
!178511 = !{!178146, !178120, !178118, !177955, !177954}
!178512 = !{!178151, !178144, !178149, !178142, !178148, !178140, !178139, !178147, !178120, !178118, !177955}
!178513 = !{!178153, !178144, !178149, !178142, !178148, !178140, !178139, !178147, !178120, !178118, !177955}
!178514 = !{!178155, !178139}
!178515 = !{!178157}
!178516 = !{!178159, !178120, !178118, !177955}
!178517 = !{!178162, !178157, !178160, !178159, !178120, !178118, !177955}
!178518 = !{!178157, !178160, !178159, !178120, !178118, !177955}
!178519 = !{!178157, !178159, !178120, !178118, !177955}
!178520 = !{!178120, !178118, !177955, !177954}
!178521 = !{!178166, !178165, !178164, !178118, !177955, !177954}
!178522 = !{!178166, !178164, !178118, !177955}
!178523 = !{!178168}
!178524 = !{!178166, !178165, !178118, !177955}
!178525 = !{!178171, !178170, !178166, !178165, !178164, !178118, !177955, !177954}
!178526 = !{!178170, !178165, !178164, !178118, !177955, !177954}
!178527 = !{!178173}
!178528 = !{!178175, !178118, !177955}
!178529 = !{!178177}
!178530 = !{!178179}
!178531 = !{!178179, !178177}
!178532 = !{!178179, !178177, !177955}
!178533 = !{!178181}
!178534 = !{!178183}
!178535 = !{!178183, !178181}
!178536 = !{!178183, !178181, !177955}
!178537 = !{!178185}
!178538 = !{!178187}
!178539 = !{!178189}
!178540 = !{!178189, !178187, !178185}
!178541 = !{!178189, !178187, !178185, !177955}
!178542 = !{!178191}
!178543 = !{!178193}
!178544 = !{!178195}
!178545 = !{!178195, !178193, !178191}
!178546 = !{!178195, !178193, !178191, !177955}
!178547 = !{!178197}
!178548 = !{!178199}
!178549 = !{!178201}
!178550 = !{!178201, !178199, !178197}
!178551 = !{!178201, !178199, !178197, !177955}
!178552 = !{!178203}
!178553 = !{!178205}
!178554 = !{!178207}
!178555 = !{!178207, !178205, !178203}
!178556 = !{!178207, !178205, !178203, !177955}
!178557 = !{!178209}
!178558 = !{!178211}
!178559 = !{!178211, !178209}
!178560 = !{!178211, !178209, !177955}
!178561 = !{!178214, !178213}
!178562 = !{!178217, !178216, !178214, !178213}
!178563 = !{!178217, !178214}
!178564 = !{!178221, !178219, !178217, !178214}
!178565 = !{!178223}
!178566 = !{!178221, !178219, !178217, !178216, !178214, !178213}
!178567 = !{!178214}
!178568 = !{!178225}
!178569 = !{!178219}
!178570 = !{!178225, !178221, !178219, !178217, !178216, !178214, !178213}
!178571 = !{!178219, !178226, !178217, !178216, !178214, !178213}
!178572 = !{!178228}
!178573 = !{!178230}
!178574 = !{!178232, !178230, !178231, !178228, !178217, !178216, !178214, !178213}
!178575 = !{!178234}
!178576 = !{!178236}
!178577 = !{!178236, !178234, !178230, !178228}
!178578 = !{!178236, !178237, !178234, !178232, !178231, !178217, !178214}
!178579 = !{!178236, !178237, !178234, !178232, !178230, !178231, !178228, !178217, !178216, !178214, !178213}
!178580 = !{!178236, !178237, !178232, !178231, !178217, !178214}
!178581 = !{!178239}
!178582 = !{!178241}
!178583 = !{!178241, !178236, !178237, !178234, !178232, !178230, !178231, !178228, !178217, !178216, !178214, !178213}
!178584 = !{!178234, !178230, !178228}
!178585 = !{!178237, !178232, !178231, !178217, !178214}
!178586 = !{!178237, !178234, !178232, !178230, !178231, !178228, !178217, !178216, !178214, !178213}
!178587 = !{!178248, !178246, !178244, !178243, !178237, !178232, !178231, !178217, !178214}
!178588 = !{!178248, !178246, !178244, !178237, !178232, !178231, !178217, !178214}
!178589 = !{!178250}
!178590 = !{!178248, !178246, !178244, !178243, !178237, !178234, !178232, !178230, !178231, !178228, !178217, !178216, !178214, !178213}
!178591 = !{!178252}
!178592 = !{!178246}
!178593 = !{!178252, !178248, !178246, !178244, !178243, !178237, !178234, !178232, !178230, !178231, !178228, !178217, !178216, !178214, !178213}
!178594 = !{!178246, !178253, !178244, !178243, !178237, !178234, !178232, !178230, !178231, !178228, !178217, !178216, !178214, !178213}
!178595 = !{!178256, !178255, !178244, !178243, !178237, !178234, !178232, !178230, !178231, !178228, !178217, !178216, !178214, !178213}
!178596 = !{!178258, !178256, !178255, !178244, !178243, !178237, !178234, !178232, !178230, !178231, !178228, !178217, !178216, !178214, !178213}
!178597 = !{!178256, !178244, !178237, !178232, !178231, !178217, !178214}
end_hunk_6
